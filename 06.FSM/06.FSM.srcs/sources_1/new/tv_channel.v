`timescale 1ns / 1ps

module tv_channel(
    input clk,
    input reset,
    input up, dn,
    output [3:0] ch
    );

    reg [3:0] next_state = 0;
    reg [3:0] state = 0;

    // next state logic(조합논리) 
    always @(up or dn or state) begin
        if (up & ~dn) begin
            if (state == 9) next_state = 0;
            else next_state = state + 1;
        end else if (~up & dn) begin
            if (state == 0) next_state = 9;
            else next_state = state - 1;
        end else next_state = state;
    end


    // 현재 상태 레지스터
    // state register(순차논리) 
    always @(posedge clk or negedge reset) begin
        if (!reset) state <= 4'h0;
        else state <= next_state;
    end

    // output logic
    // 조합논리
    assign ch = state;

endmodule
