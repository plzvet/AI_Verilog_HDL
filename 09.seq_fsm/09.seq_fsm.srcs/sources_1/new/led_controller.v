`timescale 1ns / 1ps

module led_controller(
        input clk,
        input reset,
        input [2:0] state,
        input [6:0] sr7,
        output reg [15:0] led
    );

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

    always @(posedge clk or posedge reset) begin
        if(reset)
            led <= 0;
        else begin
            if(state == S_00) 
                led[15] <= 1'b1;
            else if(state == S_11)
                led[14] <= 1'b1;
            else
                led[15:14] <= 2'b00;

            led[6:0] <= sr7;   
        end
    end
endmodule
