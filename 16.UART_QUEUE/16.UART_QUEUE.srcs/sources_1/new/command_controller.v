`timescale 1ns / 1ps

module command_controller #(
    parameter CMD_BUFFER_SIZE = 64 // 최대 명령어 길이 (널 문자를 포함)
)(
    input             clk,                
    input             reset,              
    input       [7:0] data_in,    // FIFO 에서 뽑은 8 bit data
    input             valid,      // empty 가 아니라면 valid -> high
    output reg        request,    // 큐에 데이터 요청 신호 (연속 요청을 위해 high 유지)
    output reg [15:0] led         // LED 제어 (16개 LED, 0-15번)
);

    // 상태 머신 (FSM) 정의
    parameter                   STATE_IDLE          = 3'b000,   // 대기 상태, 새로운 명령어 시작 대기
                                STATE_RECEIVING_CMD = 3'b001,   // 명령어 문자열 수신 중
                                STATE_PARSING_CMD   = 3'b010,   // 수신된 명령어 파싱 중 (명령어 종류 식별)
                                STATE_PARSING_ARG   = 3'b011,   // 인자 파싱 중 (예: LED 번호)
                                STATE_EXECUTING_CMD = 3'b100,   // 파싱된 명령어 실행 중
                                STATE_ERROR         = 3'b101;   // 오류 상태

    

    reg [2:0] current_state;
    reg [2:0] next_state;    

    // 명령어 버퍼 (수신된 문자열 문자를 저장)
    reg [7:0] cmd_buffer [0:CMD_BUFFER_SIZE-1];
    reg [$clog2(CMD_BUFFER_SIZE):0] cmd_idx; // cmd_buffer의 현재 쓰기 인덱스
    
    // 명령어 종료 문자 정의 (ASCII 값)
    localparam CR   = 8'h0D; // 캐리지 리턴 (Carriage Return)
    localparam LF   = 8'h0A; // 라인 피드 (Line Feed)
    localparam NULL = 8'h00; // C-스타일 문자열 종료 문자 (버퍼 내 문자열 끝을 표시하는 데 사용)

    // 파싱된 명령어 종류를 나타내는 플래그
    reg is_cmd_led_all_on;   // ledallon 명령을 위한 새 플래그
    reg is_cmd_led_all_off;  // ledalloff 명령을 위한 새 플래그
    reg is_cmd_led_single_on; // ledXXon 명령을 위한 새 플래그
    reg is_cmd_led_single_off; // ledXXoff 명령을 위한 새 플래그

    // 인자 파싱을 위한 임시 변수
    reg [3:0] single_led_num;        // 파싱된 단일 LED 번호 (0-15)
    reg [$clog2(CMD_BUFFER_SIZE):0] arg_parse_idx; // cmd_buffer에서 인자 자릿수를 반복하는 인덱스
    reg [31:0] current_parsed_num;   // 다중 사이클 파싱 중 숫자 값을 누적하는 변수

    // STATE_PARSING_ARG를 위한 인자 타입
    localparam ARG_TYPE_NONE       = 2'b00;
    localparam ARG_TYPE_LED_NUM    = 2'b10;
    reg [1:0] parsing_arg_type;


    // 메인 FSM 및 모든 동기 로직
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // 리셋 시 모든 상태 및 출력 초기화
            current_state <= STATE_IDLE;
            cmd_idx <= 0;
            request <= 1'b0;
            led <= 16'h0000; // 리셋 시 모든 LED 끄기
            is_cmd_led_all_on <= 1'b0;
            is_cmd_led_all_off <= 1'b0;
            is_cmd_led_single_on <= 1'b0;
            is_cmd_led_single_off <= 1'b0;

            single_led_num <= 4'h0;
            arg_parse_idx <= 0;
            current_parsed_num <= 0;
            parsing_arg_type <= ARG_TYPE_NONE;

        end else begin
            // 클럭 에지에서 현재 상태를 다음 상태로 업데이트
            current_state <= next_state;

            // 펄스 신호에 대한 기본값 설정 (high로 설정되지 않으면 매 클럭 사이클마다 리셋)
            request <= 1'b0;
            // temp_read_trigger <= 1'b0; // 제거됨
            // parser_error_flag <= 1'b0; // 제거됨

            // FSM 로직 (현재 상태에 따라 다음 상태 결정 및 출력 제어)
            case (current_state)
                STATE_IDLE: begin
                    // 데이터가 있으면 명령어 수신 시작
                    if (valid) begin
                        request <= 1'b1; // 큐에 데이터 요청
                        next_state <= STATE_RECEIVING_CMD;
                        cmd_idx <= 0; // 새 명령어를 위해 버퍼 인덱스 리셋

                        // 새 명령어를 위해 모든 명령어 플래그 및 인자 값 리셋
                        is_cmd_led_all_on <= 1'b0;
                        is_cmd_led_all_off <= 1'b0;
                        is_cmd_led_single_on <= 1'b0;
                        is_cmd_led_single_off <= 1'b0;

                        single_led_num <= 4'h0;
                        current_parsed_num <= 0;
                        parsing_arg_type <= ARG_TYPE_NONE;
                    end else begin
                        next_state <= STATE_IDLE; // 데이터가 없으면 계속 대기
                    end
                end

                STATE_RECEIVING_CMD: begin
                    if (valid) begin
                        request <= 1'b1; // 다음 데이터 요청

                        // 명령어 종료 문자 (CR 또는 LF) 감지
                        if (data_in == CR || data_in == LF) begin
                            // CR LF 처리:
                            // 이전 문자가 CR이고 현재 LF라면, LF는 무시하고 CR까지 명령어로 간주
                            if (cmd_idx > 0 && cmd_buffer[cmd_idx-1] == CR && data_in == LF) begin
                                cmd_buffer[cmd_idx-1] <= NULL; // 이전 CR을 NULL로 대체하여 문자열 종료
                            end else begin
                                cmd_buffer[cmd_idx] <= NULL;   // 널 문자 삽입 (C-스타일 문자열)
                            end
                            next_state <= STATE_PARSING_CMD; // 파싱 단계로 전환
                        end
                        // 버퍼 오버플로우 방지 (널 문자를 위한 공간으로 CMD_BUFFER_SIZE -1)
                        else if (cmd_idx < CMD_BUFFER_SIZE - 1) begin
                            cmd_buffer[cmd_idx] <= data_in; // 큐에서 읽은 데이터를 버퍼에 저장
                            cmd_idx <= cmd_idx + 1;               // 인덱스 증가
                            next_state <= STATE_RECEIVING_CMD;    // 계속 수신
                        end else begin
                            // 버퍼 오버플로우! (명령어가 너무 길다)
                            next_state <= STATE_ERROR; // 오류 상태로 전환
                        end
                    end else begin
                        // 큐에 데이터가 없으면 대기 (명령어 계속 수신 중)
                        next_state <= STATE_RECEIVING_CMD;
                    end
                end

                STATE_PARSING_CMD: begin
                    // cmd_buffer의 내용을 파싱하여 명령어 식별
                    // Verilog에서 문자열 비교는 각 바이트를 개별적으로 비교해야 함.

                    // "ledallon" 명령어 확인 (9바이트 + NULL)
                    if (cmd_buffer[0] == "l" && cmd_buffer[1] == "e" && cmd_buffer[2] == "d" &&
                        cmd_buffer[3] == "a" && cmd_buffer[4] == "l" && cmd_buffer[5] == "l" &&
                        cmd_buffer[6] == "o" && cmd_buffer[7] == "n" && cmd_buffer[8] == NULL) begin
                        is_cmd_led_all_on <= 1'b1;
                        next_state <= STATE_EXECUTING_CMD;
                    end
                    // "ledalloff" 명령어 확인 (10바이트 + NULL)
                    else if (cmd_buffer[0] == "l" && cmd_buffer[1] == "e" && cmd_buffer[2] == "d" &&
                             cmd_buffer[3] == "a" && cmd_buffer[4] == "l" && cmd_buffer[5] == "l" &&
                             cmd_buffer[6] == "o" && cmd_buffer[7] == "f" && cmd_buffer[8] == "f" &&
                             cmd_buffer[9] == NULL) begin
                        is_cmd_led_all_off <= 1'b1;
                        next_state <= STATE_EXECUTING_CMD;
                    end
                    // "ledXXon" 명령어 확인 (6바이트 + NULL, XX는 숫자)
                    else if (cmd_buffer[0] == "l" && cmd_buffer[1] == "e" && cmd_buffer[2] == "d" &&
                             cmd_buffer[5] == "o" && cmd_buffer[6] == "n" && cmd_buffer[7] == NULL) begin
                        // 숫자가 유효한지 확인
                        if ((cmd_buffer[3] >= "0" && cmd_buffer[3] <= "9") &&
                            (cmd_buffer[4] >= "0" && cmd_buffer[4] <= "9")) begin
                            is_cmd_led_single_on <= 1'b1;
                            parsing_arg_type <= ARG_TYPE_LED_NUM; // 인자 파싱 타입을 LED 번호로 설정
                            arg_parse_idx <= 3; // LED 번호 파싱 시작 인덱스 (3번째 문자부터)
                            current_parsed_num <= 0; // 누적 변수 리셋
                            next_state <= STATE_PARSING_ARG;
                        end else begin
                            // parser_error_flag <= 1'b1; // 제거됨
                            next_state <= STATE_ERROR; // 유효하지 않은 LED 번호 형식
                        end
                    end
                    // "ledXXoff" 명령어 확인 (7바이트 + NULL, XX는 숫자)
                    else if (cmd_buffer[0] == "l" && cmd_buffer[1] == "e" && cmd_buffer[2] == "d" &&
                             cmd_buffer[5] == "o" && cmd_buffer[6] == "f" && cmd_buffer[7] == "f" &&
                             cmd_buffer[8] == NULL) begin
                        // 숫자가 유효한지 확인
                        if ((cmd_buffer[3] >= "0" && cmd_buffer[3] <= "9") &&
                            (cmd_buffer[4] >= "0" && cmd_buffer[4] <= "9")) begin
                            is_cmd_led_single_off <= 1'b1;
                            parsing_arg_type <= ARG_TYPE_LED_NUM; // 인자 파싱 타입을 LED 번호로 설정
                            arg_parse_idx <= 3; // LED 번호 파싱 시작 인덱스 (3번째 문자부터)
                            current_parsed_num <= 0; // 누적 변수 리셋
                            next_state <= STATE_PARSING_ARG;
                        end else begin
                            // parser_error_flag <= 1'b1; // 제거됨
                            next_state <= STATE_ERROR; // 유효하지 않은 LED 번호 형식
                        end
                    end

                    else begin
                        // 알 수 없는 명령어 또는 파싱 오류
                        next_state <= STATE_ERROR; // 오류 상태로 전환
                    end
                end

                STATE_PARSING_ARG: begin
                    // 인자(숫자)를 다중 사이클로 ASCII에서 정수로 변환
                    // 한 클럭 사이클에 한 자릿수 처리
                    if (arg_parse_idx < CMD_BUFFER_SIZE) begin // 인덱스가 버퍼 범위 내에 있는지 확인
                        if (cmd_buffer[arg_parse_idx] >= "0" && cmd_buffer[arg_parse_idx] <= "9") begin
                            // 현재 문자가 숫자: 숫자를 누적
                            current_parsed_num <= current_parsed_num * 10 + (cmd_buffer[arg_parse_idx] - "0");
                            arg_parse_idx <= arg_parse_idx + 1; // 버퍼의 다음 문자로 이동
                            next_state <= STATE_PARSING_ARG; // 다음 자릿수를 처리하기 위해 이 상태 유지
                        end else if (cmd_buffer[arg_parse_idx] == NULL) begin
                            // 숫자의 끝 (널 문자 발견)
                            // 파싱된 숫자가 해당 타입의 예상 범위에 맞는지 확인
                            if (parsing_arg_type == ARG_TYPE_LED_NUM) begin
                                if (current_parsed_num > 15) begin // LED 번호는 0-15
                                    is_cmd_led_single_on <= 1'b0; // 이 명령어 무효화
                                    is_cmd_led_single_off <= 1'b0; // 이 명령어 무효화
                                    single_led_num <= 4'h0; // 값 리셋
                                    next_state <= STATE_ERROR;
                                end else begin
                                    single_led_num <= current_parsed_num; // 최종 파싱된 LED 번호 저장
                                    next_state <= STATE_EXECUTING_CMD; // 인자 파싱 완료, 실행 단계로 진행
                                end
                            end else begin
                                // 예상치 못한 인자 타입
                                next_state <= STATE_ERROR;
                            end
                        end else begin
                            // 인자에서 숫자도 널 문자도 아닌 문자 발견 (오류)

                            is_cmd_led_single_on <= 1'b0;
                            is_cmd_led_single_off <= 1'b0;
                            single_led_num <= 4'h0;
                            next_state <= STATE_ERROR; // 오류 상태로 전환
                        end
                    end else begin
                        // 인자 버퍼 오버플로우 또는 예상치 못한 종료 (오류: 널 문자 누락)
                        is_cmd_led_single_on <= 1'b0;
                        is_cmd_led_single_off <= 1'b0;

                        single_led_num <= 4'h0;
                        next_state <= STATE_ERROR;
                    end
                end

                STATE_EXECUTING_CMD: begin
                    // 파싱된 명령어 플래그에 따라 하드웨어 제어 신호 활성화
                    if (is_cmd_led_all_on) begin
                        led <= 16'hFFFF; // 모든 16개 LED 켜기
                    end else if (is_cmd_led_all_off) begin
                        led <= 16'h0000; // 모든 16개 LED 끄기
                    end else if (is_cmd_led_single_on) begin
                        // 특정 LED 켜기 (다른 LED는 현재 상태 유지)
                        led <= led | (16'b1 << single_led_num);
                    end else if (is_cmd_led_single_off) begin
                        // 특정 LED 끄기 (다른 LED는 현재 상태 유지)
                        led <= led & ~(16'b1 << single_led_num);
                    end
                    // 명령어 실행 완료, IDLE 상태로 복귀
                    next_state <= STATE_IDLE;
                end

                STATE_ERROR: begin
                    // 오류 상태 처리
                    // (예: 오류 LED 켜기, UART로 오류 메시지 전송 등)
                    // 현재는 단순히 IDLE로 복귀합니다.
                    next_state <= STATE_IDLE;
                end
            endcase
        end
    end

endmodule
