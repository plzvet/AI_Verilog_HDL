`timescale 1ns / 1ps

module data_sender(
    input clk,
    input reset,
    input [13:0] send_data,
    input start_trigger,
    input tx_busy,
    input tx_done,
    output reg tx_start,
    output reg [7:0] tx_data
    );

    reg [6:0] r_data_cnt = 0;
    reg [1:0] name_cnt;
    reg [2:0] _4num_cnt;
    reg [7:0] my_name [2:0] = {"P", "J", "K"};

    reg [7:0] up_cnt [0:3];

    function [7:0] ret (input [3:0] a);
    begin
        case (a) 
            4'd0 : ret = 8'b00110000;
            4'd1 : ret = 8'b00110001;
            4'd2 : ret = 8'b00110010;
            4'd3 : ret = 8'b00110011;
            4'd4 : ret = 8'b00110100;
            4'd5 : ret = 8'b00110101;
            4'd6 : ret = 8'b00110110;
            4'd7 : ret = 8'b00110111;
            4'd8 : ret = 8'b00111000;
            4'd9 : ret = 8'b00111001;
            default : ret = 8'b00110000;
        endcase
    end    
    endfunction

    always @(*) begin
        up_cnt[0] = ret(send_data / 1000);
        up_cnt[1] = ret((send_data % 1000) / 100);
        up_cnt[2] = ret((send_data % 100) / 10);
        up_cnt[3] = ret(send_data % 10);               
    end


    // 1초에 한번씩 up counter 값 출력
    always @(posedge clk, posedge reset) begin
        if(reset) begin
            tx_start   <= 0;
            _4num_cnt <= 0;
        end else begin
            tx_start <= 1'b0;
            if (start_trigger && !tx_busy) begin
                tx_data <= up_cnt[0];
                tx_start <= 1'b1;
                _4num_cnt <= 1;
            end else if (tx_done) begin
                if(_4num_cnt <= 3) begin
                    tx_data  <= up_cnt[_4num_cnt];
                    tx_start <= 1'b1;
                    _4num_cnt <= _4num_cnt + 1;                 
                end
            end else begin
                tx_start <= 1'b0;
            end
        end
    end

    /*
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            tx_start <= 0;
        end else begin
            if (start_trigger && !tx_busy) begin
                tx_start <= 1'b1;
                if (r_data_cnt == 7'd10) begin // '0' ~ '9' 10자
                    r_data_cnt <= 1;
                    tx_data <= send_data;
                end else begin 
                    tx_data <= send_data + r_data_cnt;
                    r_data_cnt <= r_data_cnt + 1;
                end
            end else begin
                tx_start <= 1'b0;
            end
        end
    end
    */

endmodule


