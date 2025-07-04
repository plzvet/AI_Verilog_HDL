`timescale 1ns / 1ps

module fnd_controller(
    input clk,
    input [13:0] in_data,
    input reset,
    output [3:0] an,
    output [7:0] seg
    );
    
    wire [1:0] w_sel;
    wire [3:0] w_digit_1;
    wire [3:0] w_digit_10;
    wire [3:0] w_digit_100;
    wire [3:0] w_digit_1000;

    fnd_digit_select u_digit_select(
    .clk(clk),
    .reset(reset),
    .sel(w_sel)
    );

    digit_split u_digit_split(
    .in_data(in_data),
    .digit_1(w_digit_1),
    .digit_10(w_digit_10),
    .digit_100(w_digit_100),
    .digit_1000(w_digit_1000)
    );

    fnd_digit_display u_digit_display(
    .digit_sel(w_sel),
    .digit_1(w_digit_1),
    .digit_10(w_digit_10),
    .digit_100(w_digit_100),
    .digit_1000(w_digit_1000),
    .an(an),
    .seg(seg)
    );

endmodule

module fnd_digit_select(
    input clk,
    input reset,
    output reg [1:0] sel
);

    wire w_tick;
    reg [1:0] r_digit_sel = 0;
    
    // 1000Hz, 1ms 타이머
    tick_generator #(
        .TICK_HZ(1000)
    ) u_tick_generator (
        .clk(clk),
        .reset(reset),
        .tick(w_tick)
    );

    always @(posedge w_tick or posedge reset) begin
        if(reset) begin
            r_digit_sel <= 0;
            sel <= 0;
        end else begin
            r_digit_sel <= r_digit_sel + 1;
            case (r_digit_sel)
                0 : sel <= 2'b00;
                1 : sel <= 2'b01;
                2 : sel <= 2'b10; 
                3 : sel <= 2'b11;    
            endcase
        end
    end

endmodule

module digit_split(
    input [13:0] in_data,
    output [3:0] digit_1,
    output [3:0] digit_10,
    output [3:0] digit_100,
    output [3:0] digit_1000
);
    // fnd용 숫자 변환
    assign digit_1 = in_data % 10;
    assign digit_10 = (in_data / 10) % 10;
    assign digit_100 = (in_data / 100) % 10;
    assign digit_1000 = (in_data / 1000) % 10;
endmodule

module fnd_digit_display(
    input [1:0] digit_sel,
    input [3:0] digit_1,
    input [3:0] digit_10,
    input [3:0] digit_100,
    input [3:0] digit_1000,
    output reg [3:0] an,
    output reg [7:0] seg
);
    // FND display 출력
    reg [3:0] bcd_data;

    always @(digit_sel) begin
        case (digit_sel)
            2'b00 : begin 
                an <= 4'b1110;
                bcd_data <= digit_1;
            end
            2'b01 : begin 
                an <= 4'b1101;
                bcd_data <= digit_10;
            end
            2'b10 : begin 
                an <= 4'b1011;
                bcd_data <= digit_100;
            end
            2'b11 : begin 
                an <= 4'b0111;
                bcd_data <= digit_1000;
            end   
        endcase
    end

    always @(bcd_data) begin
        case (bcd_data)
            0: seg <= 8'hC0; 
            1: seg <= 8'hF9; 
            2: seg <= 8'hA4; 
            3: seg <= 8'hB0; 
            4: seg <= 8'h99; 
            5: seg <= 8'h92; 
            6: seg <= 8'h82; 
            7: seg <= 8'hF8; 
            8: seg <= 8'h80; 
            9: seg <= 8'h90; 
            default: seg = 8'hFF;
        endcase
    end
endmodule
