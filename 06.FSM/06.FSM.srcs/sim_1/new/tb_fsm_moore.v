`timescale 1ns / 1ps

module tb_fsm_moore();

    reg clk, rstn;
    reg go, ws;
    wire rd, ds;

    fsm_moore dut_fsm_moore(
        .clk(clk), 
        .rstn(rstn), 
        .go(go),
        .ws(ws),
        .rd(rd),
        .ds(ds)
    );


    initial clk = 0;
    always #5 clk = ~ clk;

    initial begin
        #0 rstn = 0; // reset O
        #20 rstn = 1; // reset X
        
        #10 go = 1;  // -> READ
        #10 go = 1;  // -> DLY
        #10 ws = 1;  // -> READ  rd = 1, ds = 0
        #10          // -> DLY,  rd = 1, ds = 0
        #10 ws = 0;  // -> DONE, ds = 1, rd = 0   
        #10          // -> IDLE, ds = 0, rd = 0
        #10 go = 1;  // -> READ
        #10 rstn = 0; // RESET, -> IDLE
        #20 $finish;
    end

endmodule