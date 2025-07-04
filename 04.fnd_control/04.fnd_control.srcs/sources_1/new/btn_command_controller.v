`timescale 1ns / 1ps

module btn_command_controller(
    input clk,
    input reset,
    input [2:0] btn, // btn[0] : L, btn[1] : C, btn[2] : R
    input [7:0] sw,
    output reg run_state,
    output [13:0] seg_data,
    output reg [15:0] led
    );

    parameter IDLE_MODE     = 3'b000;
    parameter UP_COUNTER    = 3'b001;
    parameter DOWN_COUNTER  = 3'b010;
    parameter SLIDE_SW_READ = 3'b011;

    reg [2:0] prev_btnL = 3'b000;
    reg [2:0] r_mode    = 3'b000; 
    reg [19:0] r_counter;
    reg [13:0] r_ms10_counter;
    reg clear = 0;

    // mode check, btn[0]
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            r_mode <= 0;
            prev_btnL[0] <= 0;
        end else begin
            if (btn[0] && !prev_btnL[0]) begin // 처음 눌려진 상태
                r_mode <= (r_mode == IDLE_MODE) ? UP_COUNTER : r_mode + 1;
            end
            prev_btnL[0] <= btn[0];
            case (r_mode)
                0 : led[15:12] <= 4'b1000; 
                1 : led[15:12] <= 4'b0100;
                2 : led[15:12] <= 4'b0010;
                3 : led[15:12] <= 4'b0001; 
            endcase
        end
    end

    // run/stop, btn[1]
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            run_state <= 0;
            prev_btnL[1] <= 0;         
        end else begin
            if (btn[1] && !prev_btnL[1]) begin // 처음 눌려진 상태
                run_state <= ~run_state;
            end
            prev_btnL[1] <= btn[1];
        end
    end

    // value clear, btn[2]
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            clear <= 0;
            prev_btnL[2] <= 0;       
        end else begin
            if (btn[2] && !prev_btnL[2]) begin // 처음 눌려진 상태
                clear <= ~clear; 
            end
            prev_btnL[2] <= btn[2];
        end
    end    

    // up/down counter
    always @(posedge clk or posedge reset) begin
        if (reset || clear) begin
            r_counter <= 0;
            r_ms10_counter <= 0;
        end else if (r_mode == UP_COUNTER) begin
            if (r_counter == 20'd1_000_000 - 1) begin // 10ms
                r_ms10_counter <= r_ms10_counter + 1;
                r_counter <= 0;
            end else begin
                if(run_state)
                    r_counter <= r_counter + 1;
            end
        end else if (r_mode == DOWN_COUNTER) begin
            if (r_counter == 20'd1_000_000 - 1) begin // 10ms
                if(r_ms10_counter > 0)
                    r_ms10_counter <= r_ms10_counter - 1;
                else
                    r_ms10_counter <= 0;
                r_counter <= 0;
            end else begin
                if(run_state)
                    r_counter <= r_counter + 1;
            end
        end else begin
            r_ms10_counter <= 0;
            r_counter <= 0;
        end
    end


    assign seg_data = (r_mode == UP_COUNTER) ? r_ms10_counter :
                      (r_mode == DOWN_COUNTER ) ? r_ms10_counter : sw; 

endmodule
