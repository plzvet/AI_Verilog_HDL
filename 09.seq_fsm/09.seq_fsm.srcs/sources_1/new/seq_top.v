`timescale 1ns / 1ps

module seq_top(
    input clk,
    input reset,
    input [1:0] btn, // btn[0] up, btn[1] down
    output [15:0] led
    );

    wire [1:0] w_d_out;
    wire [1:0] w_btn;    
    wire [2:0] w_state;
    wire [6:0] w_sr7;

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
        .sr7(w_sr7)
    );

    fsm_mealy u_fsm_mealy(
        .clk(clk), 
        .reset(reset),
        .d_out(w_d_out), // 최근 bit 입력 
        .state(w_state)
    );

    led_controller u_led(
        .clk(clk),
        .reset(reset),
        .state(w_state),
        .sr7(w_sr7),
        .led(led)
    );

endmodule
