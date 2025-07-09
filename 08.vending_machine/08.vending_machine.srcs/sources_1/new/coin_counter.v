`timescale 1ns / 1ps

module coin_counter(
        input clk,
        input reset,
        input [1:0] btn, // btn[0] : btnL 100원 투입, btn[1] : btnC 500원 투입
                         // btn[2] : btnR 커피뽑기,   btn[3] : btnD 동전반환
        input [1:0] state,
        output reg [7:0] coffee_time,
        output reg [15:0] coin
    );

    reg [31:0] r_counter_coffee;
    reg [1:0] prev_btnL = 2'b0000;
    parameter IDLE   = 2'b00;
    parameter WAIT   = 2'b01;
    parameter COFFEE = 2'b10;
    parameter RETURN = 2'b11;

    always @ (posedge clk or posedge reset) begin
        if(reset) begin
            coin <= 16'd0;
            prev_btnL <= 2'b0;
        end else if (state == IDLE) begin
            if (btn[0] && !prev_btnL[0]) begin // 처음 눌려진 상태
                coin[7:0] <= coin[7:0] + 8'd1;
            end
            if (btn[1] && !prev_btnL[1]) begin // 처음 눌려진 상태
                coin[7:0] <= coin[7:0] + 8'd5;
            end
            prev_btnL <= btn;
        end else if (state == WAIT) begin
            if (btn[0] && !prev_btnL[0]) begin // 처음 눌려진 상태
                coin[7:0] <= coin[7:0] + 8'd1;
            end
            if (btn[1] && !prev_btnL[1]) begin // 처음 눌려진 상태
                coin[7:0] <= coin[7:0] + 8'd5;
            end
            prev_btnL <= btn;       
        end else if (state == COFFEE) begin
            coin <= {coffee_time, coin[7:0] - 8'd3};
        end else if (state == RETURN) begin
            coin <= 16'd0;
        end else begin
            prev_btnL <= 2'b0;
        end           
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            r_counter_coffee <= 0;
            coffee_time      <= 0;
        end else if(state == COFFEE) begin
            if(r_counter_coffee == 32'd1_0000_0000 - 1) begin
                coffee_time <= coffee_time + 1;
                r_counter_coffee <= 0;
            end else begin
                r_counter_coffee <= r_counter_coffee + 1;
            end
        end else begin
            r_counter_coffee <= 0;
            coffee_time      <= 0;            
        end 
    end    

endmodule




