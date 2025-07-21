`timescale 1ns / 1ps

module top(
    input clk,
    input reset,  // btnU
    input [2:0] btn,
    input [7:0] sw,
    input RsRx,
    output RsTx,
    output [7:0] seg,
    output [3:0] an,
    output [15:0] led
    );

    wire w_tick;
    wire w_rx_done;
    wire [2:0] w_btn_debounce;
    wire [7:0] w_rx_data;
    wire [13:0] w_seg_data;

    button_debounce u0_button_debounce(
        .i_clk(clk),
        .i_reset(reset),
        .i_btn(btn[0]),
        .o_btn_clean(w_btn_debounce[0])
    );
    button_debounce u1_button_debounce(
        .i_clk(clk),
        .i_reset(reset),
        .i_btn(btn[1]),
        .o_btn_clean(w_btn_debounce[1])
    );
    button_debounce u2_button_debounce(
        .i_clk(clk),
        .i_reset(reset),
        .i_btn(btn[2]),
        .o_btn_clean(w_btn_debounce[2])
    );

    tick_generator u_tick_generator(
        .clk(clk),
        .reset(reset),
        .tick(w_tick)
    );

    uart_controller u_uart_controller(
        .clk(clk),
        .reset(reset),
        .rx(RsRx),
        .send_data(w_seg_data),
        .rx_data(w_rx_data),
        .rx_done(w_rx_done),
        .tx(RsTx)
    );

    command_controller u_command_controller (
        .btn(w_btn_debounce), // btn[0]: L btn[1]:C btn[2]:R
        .clk(clk),
        .reset(reset),  // btnU
        .rx_data(w_rx_data),
        .rx_done(w_rx_done),
        .sw(sw),
        .led(led),
        .seg_data(w_seg_data)
    );

    fnd_controller u_fnd_controller (
        .clk(clk),
        .reset(reset),
        .input_data(w_seg_data),
        .an(an),
        .seg_data(seg)
    );

    assign led = (w_rx_data == "0") ? 16'b0000_0000_0000_0001 :
             (w_rx_data == "1") ? 16'b0000_0000_0000_0010 :
             (w_rx_data == "2") ? 16'b0000_0000_0000_0100 :
             (w_rx_data == "3") ? 16'b0000_0000_0000_1000 :
             (w_rx_data == "4") ? 16'b0000_0000_0001_0000 :
             (w_rx_data == "5") ? 16'b0000_0000_0010_0000 :
             (w_rx_data == "6") ? 16'b0000_0000_0100_0000 :
             (w_rx_data == "7") ? 16'b0000_0000_1000_0000 :
             (w_rx_data == "8") ? 16'b0000_0001_0000_0000 :
             (w_rx_data == "9") ? 16'b0000_0010_0000_0000 :
                                  16'b0000_0000_0000_0000;  // default

endmodule
