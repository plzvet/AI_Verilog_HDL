`timescale 1ns / 1ps

module top(
    input clk,
    input reset,  // btnU
    input [2:0] btn,
    input [7:0] sw,
    input RsRx,
    inout dht11_data,
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
    wire [13:0] w_seg_data2;

    wire [$clog2(11600) - 1:0] w_dht11_humid;
    wire [$clog2(11600) - 1:0] w_dht11_temp;

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
        .send_data(w_dht11_temp),
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
        .input_data(w_dht11_temp),
        .an(an),
        .seg_data(seg)
    );

    dht11_controller u_dht11_controller(
        .clk(clk),
        .reset(reset),
        .data_io(dht11_data),
        .humidity(w_dht11_humid),       // 14bit
        .temperature(w_dht11_temp),     // 14bit
        .led(led[7:0])
    );
    
endmodule
