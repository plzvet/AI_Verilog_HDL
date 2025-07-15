`timescale 1ns / 1ps

module tb_mw;

    reg clk;
    reg reset;
    reg btnC;
    reg btnU;
    reg btnL;
    reg btnR;
    reg btnD;

    wire [15:0] led;
    wire [3:0] an;
    wire [7:0] seg;

    microwave_top uut (
        .clk(clk),
        .reset(reset),
        .btnC(btnC),
        .btnU(btnU),
        .btnL(btnL),
        .btnR(btnR),
        .btnD(btnD),
        .led(led),
        .an(an),
        .seg(seg)
    );

    // 100MHz Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;   // 10ns period
    end

    initial begin
        // Initial values
        reset = 1;
        btnC = 0;
        btnU = 0;
        btnL = 0;
        btnR = 0;
        btnD = 0;

        // Apply reset
        #100;
        reset = 0;

        // 1. // state --> TIME
        #1000000 btnL = 1;     // 100us 후 버튼 ON
        #10000000 btnL = 0;    // 10ms 유지 후 OFF

        // // 2. 시간 증가 (0 > 2 > 1초)
        // #2000000 btnU = 1;
        // #10000000 btnU = 0;
        // #5000000 btnU = 1;
        // #10000000 btnU = 0;
        // #2000000 btnD = 1;
        // #10000000 btnD = 0;


        // 3. 분 변경모드
        #1000000 btnR = 1;
        #10000000 btnR = 0;
        // -------------------
        #1000000 btnD = 1;
        #10000000 btnD = 0;
        // 시간 올라가야 함(분)
        // 1분 4초
        // #1000000 btnD = 1;
        // #10000000 btnD = 0;
        // 0분 4초
        
        // 4. 동작시작
        #1000000 btnL = 1;     // 100us 후 버튼 ON
        #10000000 btnL = 0;    // 10ms 유지 후 OFF
        // 동작시작

        // // 5. Press btnD for 10ms
        // #10000000 btnL = 1;    // 10ms 후 버튼 ON
        // #10000000 btnL = 0;    // 10ms 유지 후 OFF
        // // 동작 중지

        // // 6. 문 열기
        // #1000000 btnC = 1;
        // #10000000 btnC = 0;

        // // 7. 문 닫기
        // #1000000 btnC = 1;
        // #10000000 btnC = 0;

        // // 8. 동작 다시시작
        // #1000000 btnL = 1;     // 100us 후 버튼 ON
        // #10000000 btnL = 0;    // 10ms 유지 후 OFF

        // 2.5초후 동작 종료
        // 피니쉬타임 관찰해야함
 
        #2000000000;
        $stop;
    end

endmodule