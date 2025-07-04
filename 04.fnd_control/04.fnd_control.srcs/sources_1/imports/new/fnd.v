`timescale 1ns / 1ps

module fnd_module(
    input [3:0] num,
    input clk,
    output reg [3:0] digit_select,
    output reg [7:0] seg
    );


    always @(*) begin
        case (num)
            0: seg <= 8'hC0; 
            1: seg <= 8'hF9; 
            2: seg <= 8'hA4; 
            3: seg <= 8'hB0; 
            4: seg <= 8'h99; 
            5: seg <= 8'h92; 
            6: seg <= 8'h82; 
            7: seg <= 8'hF8; 
            8: seg <= 8'h80; 
            9: seg <= 8'h90; 
            default: seg = 8'hFF;
        endcase
    end

    always @(posedge clk) begin
        digit_select <= 2'b0;
    end


endmodule
