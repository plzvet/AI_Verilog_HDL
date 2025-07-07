`timescale 1ns / 1ps

module tb_fsm();

    reg clk, rstn;
    reg done;
    wire ack;


    fsm_mealy dut_fsm_mealy(
        .clk(clk), 
        .rstn(rstn), 
        .done(done), 
        .ack(ack)
    );


    initial clk = 0;
    always #5 clk = ~ clk;

    initial begin
        #0 rstn = 0; // reset O
        #20 rstn = 1; // reset X
        
        #10 done = 0; // -> ready ack 0
        #10 done = 1; // -> trans ack 1
        #10 done = 1; // -> trans ack 0
        #10 done = 0; // -> write ack 0
        #10 done = 0; // -> write ack 0
        #10 done = 1; // -> read  ack 1
        #10 done = 0; // -> read  ack 0
        #10 done = 1; // -> ready ack 0
        #10 done = 0; // -> ready ack 0
        #10 done = 1; // -> trans ack 1
        #10 rstn = 0; // -> ready
        #10 rstn = 1;

        #20 $finish;
    end

endmodule