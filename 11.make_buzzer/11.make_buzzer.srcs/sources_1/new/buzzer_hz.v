`timescale 1ns / 1ps

module buzzer_hz(
    input           clk,
    input           reset,
    input   [11:0]  TargetHz,
    input           btn,
    output          reg r_buzzer_frequency
    );

    parameter M500MS = 50_000_000;

    wire w_btn;
    reg [21:0] r_clk_cnt; // 2d array

    // 100MHz / Target Hz / 2
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            r_clk_cnt <= 22'd0;
            r_buzzer_frequency <= 1'b0;
        end else begin
            if (!w_btn) begin
                r_clk_cnt <= 22'd0;
                r_buzzer_frequency <= 1'b0;        
            end else begin
                if (r_clk_cnt == (M500MS/TargetHz) - 1) begin
                    r_clk_cnt <= 22'd0;
                    r_buzzer_frequency <= ~r_buzzer_frequency;
                end else begin
                    r_clk_cnt <= r_clk_cnt + 1'b1;
                end
            end 
        end
    end

endmodule