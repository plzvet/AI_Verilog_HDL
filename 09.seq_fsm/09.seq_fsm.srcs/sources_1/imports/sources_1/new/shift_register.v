`timescale 1ns / 1ps

module sr_detect(
    input clk,
    input reset,
    input [1:0] din,    // din[0]: UP 버튼, din[1]: DOWN 버튼
    output reg [1:0] dout,
    output reg [6:0] sr7
);

    reg [1:0] prev_btn;
    wire p_btnU = din[0] & ~prev_btn[0];  // Up 버튼 상승 엣지 
    wire p_btnD = din[1] & ~prev_btn[1];  // Down 버튼 상승 엣지

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sr7        <= 7'b0;
            prev_btn   <= 2'b00;
            dout       <= 1'b0;
        end else begin
            prev_btn <= din;

            // 시프트 레지스터 입력 처리
            if (p_btnU) begin
                sr7 <= {sr7[5:0], 1'b1};
                dout <= 2'b11;
            end else if (p_btnD) begin
                sr7 <= {sr7[5:0], 1'b0};
                dout <= 2'b10;
            end          
        end
        dout <= 2'b00;
    end

endmodule
