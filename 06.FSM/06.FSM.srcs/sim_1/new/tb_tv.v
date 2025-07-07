`timescale 1ns / 1ps

module tb_tv();


    reg clk, reset;
    reg up, dn;
    wire [3:0] ch;


    tv_channel dut_tv(
    .clk(clk),
    .reset(reset),
    .up(up), .dn(dn),
    .ch(ch)
    );


    initial clk = 0;
    always #5 clk = ~ clk;

    initial begin
        #0 reset = 1; up = 1'b1; dn = 1'b0;
        #90 up = 1'b0; dn = 1'b1;
        #50 up = 1'b1;
        #20 up = 1'b0; dn = 1'b0;
        #30 up = 1'b0; dn = 1'b0;
        #120 $finish;
    end
endmodule
