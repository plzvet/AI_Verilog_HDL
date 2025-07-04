`timescale 1ns / 1ps

module updown_top(
    input clk,
    input reset,
    input [2:0] btn,
    input [7:0] sw,
    output [3:0] an,
    output [7:0] seg,
    output [15:0] led
    );

    wire [13:0] w_seg_data;
    wire [2:0] w_o_clean_btn;

    btn_command_controller u_btn_command_controller(
        .clk(clk),
        .reset(reset),
        .btn(w_o_clean_btn), // btn[0] : L, btn[1] : C, btn[2] : R
        .sw(sw),
        .seg_data(w_seg_data),
        .led(led)
    );

    fnd_controller u_fnd_controller(
        .clk(clk),
        .in_data(w_seg_data),
        .reset(reset),
        .an(an),
        .seg(seg)
    );

    none_dff_button u_none_dff_button(
        .i_clk(clk),
        .i_reset(reset),
        .i_noisy_btn(btn),
        .o_clean_btn(w_o_clean_btn)
    );

endmodule
