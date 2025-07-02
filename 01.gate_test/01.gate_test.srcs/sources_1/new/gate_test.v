`timescale 1ns / 1ps

module gate_test(
    input a,
    input b,
    output [5:0] led
    // output led1,
    // output led2,
    // output led3,
    // output led4,
    // output led5
    );

    assign led[0] = a & b;        // and
    assign led[1] = a | b;        // or
    assign led[2] = ~(a & b);     // nand
    assign led[3] = ~(a | b);     // nor 
    assign led[4] = a ^ b;        // xor
    assign led[5] = ~a;           // not

endmodule
