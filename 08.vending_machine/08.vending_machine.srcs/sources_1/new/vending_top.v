`timescale 1ns / 1ps

module vending_top(
        input clk,
        input reset,
        input [3:0] btn,
        output [3:0] an,
        output [7:0] seg
    );

    wire [3:0] w_o_clean_btn;
    wire [15:0] w_coin;
    wire [1:0] w_state;
    wire [7:0] w_coffee_time;

    none_dff_button u_none_dff_button(
        .i_clk(clk),
        .i_reset(reset),
        .i_noisy_btn(btn),
        .o_clean_btn(w_o_clean_btn)
    );

    coin_counter u_coin_counter(
        .clk(clk),
        .reset(reset),
        .btn(w_o_clean_btn[1:0]), // btn[0] : btnL 100원 투입, btn[1] : btnC 500원 투입
        .state(w_state),
        .coffee_time(w_coffee_time),
        .coin(w_coin)
    );

    vending_fsm u_vending_fsm(
        .clk(clk),
        .reset(reset),
        .coin(w_coin),
        .coffee_time(w_coffee_time),
        .btn(btn),
        .state(w_state)        
    );

    fnd_controller u_fnd_controller(
        .clk(clk),
        .state(w_state),
        .coin(w_coin),
        .reset(reset),
        .an(an),
        .seg(seg)
    );

endmodule
