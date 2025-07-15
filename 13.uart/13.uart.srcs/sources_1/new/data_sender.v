`timescale 1ns / 1ps

module data_sender(
    input clk,
    input reset,
    input [7:0] send_data,
    input start_trigger,
    input tx_busy,
    input tx_done,
    output reg tx_start,
    output reg [7:0] tx_data
    );

    reg [6:0] r_data_cnt = 0;

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

endmodule


