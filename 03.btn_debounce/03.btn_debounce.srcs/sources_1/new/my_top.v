`timescale 1ns / 1ps

module my_top(
    input clk,
    input reset,
    input btnC,
    output led
    );

 
    reg r_led_toggle = 1'b0;
    wire o_clean_btn;

    none_dff_button u_btn(
        .i_clk(clk),
        .i_reset(reset),
        .i_noisy_btn(btnC),
        .o_clean_btn(o_clean_btn)
    );


    always @ (posedge o_clean_btn or posedge reset) begin
        if(reset) begin
            r_led_toggle <= 0;
        end else begin
            r_led_toggle <= ~r_led_toggle;
        end
    end
    
    assign led = (r_led_toggle == 1) ? 1'b1 : 1'b0; 
    
endmodule

