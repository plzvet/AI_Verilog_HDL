`timescale 1ns / 1ps

module sr_detect(
    input clk,
    input reset,
    input [1:0] din,    // din[0]: Down 버튼, din[1]: Up 버튼
    output reg dout,
    output reg [6:0] sr7_detect
);

    reg [1:0] prev_btn;
    wire p_btnU, p_btnD;

    assign p_btnU = din[0] & ~prev_btn[0];  // Up 버튼 상승 엣지
    assign p_btnD = din[1] & ~prev_btn[1];  // Down 버튼 상승 엣지
    

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sr7_detect <= 7'b0000000;
            prev_btn   <= 2'b00;
            dout       <= 1'b0;
        end else begin
            // 시프트 레지스터 입력 처리
            if (p_btnU) begin
                sr7_detect <= {sr7_detect[5:0], 1'b1};
            end else if (p_btnD) begin
                sr7_detect <= {sr7_detect[5:0], 1'b0};
            end

            // 항상 prev_btn 업데이트 (엣지 검출용)
            prev_btn <= din;

            // 항상 dout 업데이트 (현재 시프트 레지스터에 따라)
            dout <= (sr7_detect == 7'b1010111) ? 1'b1 : 1'b0;
        end
    end

endmodule
