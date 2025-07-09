`timescale 1ns / 1ps

module fsm_mealy(
        input clk, 
        input rstn, 
        input done, 
        output ack
    );

    reg [1:0] state, next_state;

    parameter ready = 2'b00;
    parameter trans = 2'b01;
    parameter write = 2'b10;
    parameter read  = 2'b11;
    
    always @(done or state) begin
        case(state)
            ready : next_state = (done == 1) ? trans : ready;
            trans : next_state = (done == 0) ? write : trans;
            write : next_state = (done == 1) ? read  : write;
            read  : next_state = (done == 1) ? ready : read;
            default: next_state = ready;
        endcase
    end

    always @(posedge clk or negedge rstn) begin
        if(!rstn)
            state <= 0;
        else 
            state <= next_state;
    end

    assign ack =  ((state == trans) && (done == 1)) ||
                  ((state == read) && (done == 1));
                  
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