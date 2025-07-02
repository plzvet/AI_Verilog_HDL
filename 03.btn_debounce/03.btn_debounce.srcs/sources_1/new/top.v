`timescale 1ns / 1ps

module top(
    input clk,
    input reset,
    input btnC,
    output led
    );

    wire w_btn_debounce;
    reg r_led_toggle = 1'b0;

    button_debounce u_button_debounce(
    .i_clk(clk),
    .i_reset(reset),
    .i_btnC(btnC),
    .o_led(w_btn_debounce)
    );

    always@(posedge w_btn_debounce) begin
        r_led_toggle <= ~r_led_toggle;
    end

    assign led = (r_led_toggle == 1) ? 1'b1 : 1'b0; 
    
endmodule
