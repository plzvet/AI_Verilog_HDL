`timescale 1ns / 1ps

module shift_top(
    input clk,
    input reset,
    input [1:0] btn, // btn[0] up, btn[1] down
    output [15:0] led
    );

    wire [1:0] w_btn;
    wire w_d_out;
    wire [6:0] w_sr7_detect;

    none_dff_button u_btnU(
        .i_clk(clk),
        .i_reset(reset),
        .i_noisy_btn(btn),
        .o_clean_btn(w_btn) // btnU 누르면 1, btnD 누르면 0
    );

    sr_detect u_sr_detect(
        .clk(clk),
        .reset(reset),
        .din(w_btn),
        .dout(w_d_out),
        .sr7_detect(w_sr7_detect)
    );

    assign led[10:9] = w_btn;
    assign led[7:1] = w_sr7_detect;
    assign led[0] = w_d_out;
endmodule
