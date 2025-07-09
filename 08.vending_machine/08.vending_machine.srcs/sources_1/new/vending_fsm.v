`timescale 1ns / 1ps

module vending_fsm(
        input clk,
        input reset,
        input [7:0] coffee_time,
        input [15:0] coin,
        input [3:0] btn,
        output reg [1:0] state        
    );

    reg [1:0] next_state;

    parameter IDLE   = 2'b00;
    parameter WAIT   = 2'b01;
    parameter COFFEE = 2'b10;
    parameter RETURN = 2'b11;

    always @(btn or state) begin
        case(state)
            IDLE   : next_state = (btn[0] == 1 || btn[1] == 1) ? WAIT : IDLE;
            WAIT   : next_state = (coin[7:0] >= 8'd3 && btn[2] == 1) ? COFFEE : 
                                                       (btn[3] == 1) ? RETURN : WAIT;
            COFFEE : next_state = WAIT;
            RETURN : next_state = IDLE;
            default: next_state = IDLE;
        endcase
    end

    always @(posedge clk or posedge reset) begin
        if(reset)
            state <= IDLE;
        else if((state == COFFEE) && (coffee_time == 8'd13))
            state <= next_state;
        else if(state != COFFEE)
            state <= next_state;
    end

endmodule