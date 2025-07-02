`timescale 1ns / 1ps

module top(
    input clk,
    input reset,
    input btnC,
    output [1:0] led
    );

    // wire w_btn_debounce;
    // wire w_tick;
    // reg r_led_toggle = 1'b0;
    // reg r_100msled_toggle = 1'b0;
    // reg r_500msled_toggle = 1'b0;
    // reg [$clog2(500)-1:0] r_ms_count = 0;
    // reg [$clog2(100)-1:0] r_ms_count_100 = 0;

    wire o_clean_btn;

    none_dff_button dut_btn(
        .i_clk(clk),
        .i_reset(reset),
        .i_noisy_btn(btnC),
        .o_clean_btn(o_clean_btn)
    );

    // button_debounce u_button_debounce(
    //     .i_clk(clk),
    //     .i_reset(reset),
    //     .i_btnC(btnC),
    //     .o_led(w_btn_debounce)
    // );

    // tick_generator u_tick_generator(
    //     .clk(clk),
    //     .reset(reset),
    //     .tick(w_tick)
    // );
    
    // always @ (posedge w_btn_debounce or posedge reset) begin
    //     if(reset) begin
    //         r_ms_count <= 0;
    //     end else begin
    //         r_led_toggle <= ~r_led_toggle;
    //     end
    // end
    
    // always @ (posedge w_tick or posedge reset) begin
    //     if(reset) begin
    //         r_ms_count <= 0;
    //         r_100msled_toggle <= 1'b0;
    //         r_500msled_toggle <= 1'b0;           
    //     end else begin
    //         if (r_ms_count == 500 - 1) begin
    //             r_ms_count <= 0;
    //             r_500msled_toggle <= ~r_500msled_toggle;
    //         end else begin
    //              r_ms_count <= r_ms_count + 1;  
    //         end
        
    //         if (r_ms_count_100 == 100 - 1) begin
    //             r_ms_count_100 <= 0;
    //             r_100msled_toggle <= ~r_100msled_toggle;
    //         end else begin
    //              r_ms_count_100 <= r_ms_count_100 + 1;  
    //         end    
    //     end
    // end  

    // assign led[0] = (r_500msled_toggle == 1) ? 1'b1 : 1'b0; 
    // assign led[1] = (r_100msled_toggle == 1) ? 1'b1 : 1'b0; 
    
endmodule
