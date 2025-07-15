`timescale 1ns / 1ps

module fsm_mealy(
        input clk, 
        input reset,
        input [1:0] d_out, // 최근 bit 입력 
        output reg [2:0] state
    );

    reg [2:0] next_state;

    /*
    1. 입력: btnU 를 누르면 1이 btnD를 누르면 0이 입력 되도록 구현 한다. 
            입력 되는 상황은 led6~led0로 left shift표시 되도록 하고 
            동일한 입력 2개(00 또는 11) 발견 시
            00이면 led15 on 11이면 led14를 on
            그렇지 않은경우는 led15 led14를 off로 처리 한다. 
    */

    parameter IDLE = 3'b000;
    parameter S_0  = 3'b001;
    parameter S_00 = 3'b010;
    parameter S_1  = 3'b011;
    parameter S_11 = 3'b100;

    
    always @(d_out) begin
        case(state)
            IDLE  : next_state = (d_out == 2'b10) ? S_0 : 
                                 (d_out == 2'b11) ? S_1 : IDLE;

            S_0   : next_state = (d_out == 2'b10) ? S_00 : 
                                 (d_out == 2'b11) ? S_1  : S_0;

            S_00  : next_state = (d_out == 2'b10) ? S_00 : 
                                 (d_out == 2'b11) ? S_1  : S_00;

            S_1   : next_state = (d_out == 2'b10) ? S_0  : 
                                 (d_out == 2'b11) ? S_11 : S_1;

            S_11  : next_state = (d_out == 2'b10) ? S_0  : 
                                 (d_out == 2'b11) ? S_11 : S_11;
            default: next_state = state;
        endcase
    end

    always @(posedge clk or posedge reset) begin
        if(reset)
            state <= 0;
        else 
            state <= next_state;
    end                  
endmodule

module fsm_moore(
        input clk,
        input rstn,
        input go,
        input ws,
        output rd,
        output ds
    );

    reg [1:0] state, next_state;

    parameter IDLE   = 2'b00;
    parameter READ   = 2'b01;
    parameter DLY    = 2'b10;
    parameter DONE   = 2'b11;

    always @(go or ws or state) begin
        case(state)
            IDLE : next_state = go ? READ : IDLE;
            READ : next_state = DLY;
            DLY  : next_state = ws ? READ : DONE;
            DONE : next_state = IDLE;
            default next_state = IDLE;
        endcase
    end

    always @(posedge clk or negedge rstn) begin
        if(!rstn)
            state <= 0;
        else
            state <= next_state;
    end

    assign rd = (state == READ) || (state == DLY);
    assign ds = (state == DONE);

endmodule