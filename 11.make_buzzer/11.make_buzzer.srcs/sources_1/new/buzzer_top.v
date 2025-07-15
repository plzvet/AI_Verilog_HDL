`timescale 1ns / 1ps

module buzzer_top(
    input clk,
    input reset,
    input btnL,
    output buzzer
);

    // 상태 정의
    parameter S1 = 3'd0;
    parameter S2 = 3'd1;
    parameter S3 = 3'd2;
    parameter S4 = 3'd3;
    parameter S5 = 3'd4;

    reg [31:0] timer;
    reg [11:0] TargetHz;
    reg [2:0] state;

    reg buzzer_enable;
    wire buzzer_signal;
    wire w_btnL;
    
    button_debounce u_btnL_debounce(
        .i_clk(clk),
        .i_reset(reset),
        .i_btn(btnL),
        .o_btn_clean(w_btnL)
        );

    // 상태 전환 및 타이머
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= S1;
            timer <= 0;
        end else if (w_btnL) begin
            state <= (state == S5) ? S1 : state + 1;
            timer <= 0;
        end else begin
            case(state)
                S1, S2, S3, S4: begin
                    if (timer < 7_000_000) // 70ms @100MHz
                        timer <= timer + 1;
                end
                S5: begin
                    if (timer < 300_000_000) // 3초
                        timer <= timer + 1;
                end
            endcase
        end
    end

    // 주파수 & 부저 활성화 결정
    always @(*) begin
        case (state)
            S1: begin TargetHz = 1000; buzzer_enable = (timer < 7_000_000); end
            S2: begin TargetHz = 2000; buzzer_enable = (timer < 7_000_000); end
            S3: begin TargetHz = 3000; buzzer_enable = (timer < 7_000_000); end
            S4: begin TargetHz = 4000; buzzer_enable = (timer < 7_000_000); end
            S5: begin TargetHz = 0;    buzzer_enable = 0;                  end
            default: begin TargetHz = 0; buzzer_enable = 0; end
        endcase
    end

    // buzzer_hz 모듈 인스턴스
    buzzer_hz u_buzzer_hz (
        .clk(clk),
        .reset(reset),
        .TargetHz(TargetHz),
        .btn(buzzer_enable), // 타이머 기간 동안만 동작
        .r_buzzer_frequency(buzzer_signal)
    );

    assign buzzer = buzzer_signal;

endmodule