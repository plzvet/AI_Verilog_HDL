`timescale 1ns / 1ps

module tick_generator(
    input wire clk,
    input wire reset,
    output reg tick
    );

    parameter INPUT_FREQ = 100_000_000;
    parameter TICK_HZ = 1000;
    parameter TICK_COUNT = INPUT_FREQ / TICK_HZ; // 100_000

    reg [$clog2(TICK_COUNT)-1:0] r_tick_counter = 0; // 16 bits

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            r_tick_counter <= 0;
            tick <= 0;
        end else begin
            if (r_tick_counter == TICK_COUNT-1) begin
                r_tick_counter <= 0;
                tick <= 1'b1;
            end else begin
                r_tick_counter <= r_tick_counter + 1;
                tick <= 1'b0;
            end
        end        
    end

endmodule
