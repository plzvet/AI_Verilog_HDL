`timescale 1ns / 1ps

module btn_command_controller(
    input clk,
    input reset,
    input [3:0] btn, // btn[0] : L, btn[1] : C, btn[2] : R
    output [2:0] mode,
    output [13:0] seg_data,
    output reg [15:0] led
    );

    parameter IDLE_MODE     = 3'b000;
    parameter MINSEC_WATCH  = 3'b001;
    parameter STOPWATCH     = 3'b010;

    reg [3:0] prev_btnL = 4'b000;
    reg [2:0] r_mode    = 3'b000; 
    reg [19:0] r_counter;
    reg [13:0] r_ms10_counter;

    reg [31:0] r_counter_minsec;
    reg [7:0] r_sec;

    reg [31:0] r_counter_stoptime;
    reg [7:0] r_sec_stoptime;

    reg [31:0] r_counter_idle;
    reg [7:0] r_sec_idle;

    reg [31:0] circle_speed = 32'd1_0000_0000;
    reg [31:0] speed_table [0:3];
    reg [1:0]  speed_idx = 0;
    reg clear = 0;
    reg run_state = 0;

    // mode check, btn[0]
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            r_mode <= 0;
            prev_btnL[0] <= 0;
        end else begin
            if (btn[0] && !prev_btnL[0]) begin // 처음 눌려진 상태
                r_mode <= (r_mode == STOPWATCH) ? IDLE_MODE : r_mode + 1;
            end else if((r_mode == STOPWATCH) && r_sec_stoptime == 30) begin
                r_mode <= IDLE_MODE; 
            end
            prev_btnL[0] <= btn[0];    
            case (r_mode)
                0 : begin 
                    led[15:13] <= 3'b100; // IDLE MODE
                    speed_table[0] <= 32'd100_000_000;  // 1초
                    speed_table[1] <= 32'd50_000_000;   // 0.5초
                    speed_table[2] <= 32'd25_000_000;   // 0.25초
                    speed_table[3] <= 32'd10_000_000;   // 0.1초   
                    end
                1 : led[15:13] <= 3'b010; // MINSEC_WATCH
                2 : led[15:13] <= 3'b001; // STOPWATCH
            endcase
        end
    end

    // STOPWATCH run/stop, btn v[1]
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            run_state <= 0;
            prev_btnL[1] <= 0;         
        end else if (r_mode == STOPWATCH) begin
            if (btn[1] && !prev_btnL[1]) begin  // 처음 눌려진 상태
                run_state <= ~run_state;        // runstate 1 : RUN, 0 : STOP
            end
            prev_btnL[1] <= btn[1];
        end else begin
            run_state <= 0;
            prev_btnL[1] <= 0;
        end
    end

    // STOPWATCH clear, btn[2]
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            prev_btnL[2] <= 0;
            clear <= 0;       
        end else begin
            if (btn[2] && !prev_btnL[2]) begin // 처음 눌려진 상태
                clear <= 1'b1; 
            end else begin
                clear <= 1'b0;
            end
            prev_btnL[2] <= btn[2];
        end
    end

    // Circle Speed Control 함수, btn[3]
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            prev_btnL[3] <= 0;
            speed_idx <= 0;
            circle_speed <= 32'd1_0000_0000;
        end else begin
            if (btn[3] && !prev_btnL[3]) begin // 처음 눌려진 상태
                if (speed_idx == 2'd3)
                    speed_idx <= 0;
                else
                    speed_idx <= speed_idx + 1;
            circle_speed <= speed_table[speed_idx];  // 속도 변경
            end 
            prev_btnL[3] <= btn[3];
        end
    end      

    // STOPWATCH 동작
    always @(posedge clk or posedge reset) begin
        if (reset) begin // 리셋
            r_counter <= 0;
            r_ms10_counter <= 0;
            r_counter_stoptime <= 0;
            r_sec_stoptime <= 0;
        end else if (clear) begin // 스탑워치 값 클리어
            r_counter <= 0;
            r_ms10_counter <= 0;            
        end else if (r_mode == STOPWATCH) begin // 스탑워치 동작
            if (r_counter == 20'd1_000_000 - 1) begin // 10ms
                r_ms10_counter <= r_ms10_counter + 1;
                r_counter <= 0;
            end else begin
                if(run_state && (r_mode == STOPWATCH)) // run 모드에서 카운터증가
                    r_counter <= r_counter + 1;
                else if(!run_state && (r_mode == STOPWATCH)) begin // 스탑워치에서 stop 상황일때 카운터
                    if(r_counter_stoptime == 32'd1_0000_0000 - 1) begin
                        r_counter_stoptime <= 0;
                        r_sec_stoptime <= r_sec_stoptime + 1;
                    end
                    else begin
                        r_counter_stoptime <= r_counter_stoptime + 1;
                    end
                end

            end
        end else begin // r_mode != STOPWATCH 상황 스탑워치 동작 중지
            r_ms10_counter <= 0; // 스탑워치 동작중 아닐땐 카운터 0
            r_counter <= 0;
            r_counter_stoptime <= 0;
            r_sec_stoptime <= 0;
        end
    end

    // 분초시계
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            r_counter_minsec <= 0;
            r_sec            <= 0;
        end else if (r_mode == MINSEC_WATCH) begin
            if (r_counter_minsec == 32'd1_0000_0000 - 1) begin // 1sec
                r_sec <= r_sec + 1;
                r_counter_minsec <= 0;
            end else begin
                    r_counter_minsec <= r_counter_minsec + 1;
            end
        end else begin
            r_counter_minsec <= 0;
            r_sec            <= 0;
        end
    end
    
    // IDLE COUNTER
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            r_counter_idle <= 0;
            r_sec_idle     <= 0;
        end else if (r_mode == IDLE_MODE) begin
            if (r_counter_idle == circle_speed - 1) begin // 1sec
                r_sec_idle <= r_sec_idle + 1;
                r_counter_idle <= 0;
            end else begin
                    r_counter_idle <= r_counter_idle + 1;
            end
        end else begin
            r_counter_idle <= 0;
            r_sec_idle     <= 0;
        end
    end

    assign seg_data = (r_mode == IDLE_MODE) ? r_sec_idle % 13:
                      (r_mode == MINSEC_WATCH) ? r_sec : r_ms10_counter; // STOPWATCH : r_ms10_counter

    assign mode = r_mode;
 
endmodule
