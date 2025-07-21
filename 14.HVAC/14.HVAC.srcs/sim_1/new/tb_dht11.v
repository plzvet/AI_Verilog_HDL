`timescale 1ns / 1ps

module tb_dht11;

    reg clk;
    reg reset;
    wire dht11_data;
    
    // inout 핀을 제어하기 위해 reg와 wire를 분리
    reg dht11_data_drv;
    reg dht11_data_drv_en;
    wire dht11_data_internal;

    // 출력 관찰용
    wire [7:0] humid_int, humid_frac;
    wire [7:0] temp_int, temp_frac;
    wire valid;

    // DUT 인스턴스
    dht11 uut (
        .clk(clk),
        .reset(reset),
        .dht11_data(dht11_data_internal),
        .dht11_humid_int(humid_int),
        .dht11_humid_frac(humid_frac),
        .dht11_temp_int(temp_int),
        .dht11_temp_frac(temp_frac),
        .dht11_valid(valid)
    );

    // clock generation (100MHz)
    initial clk = 0;
    always #5 clk = ~clk;

    // inout 처리
    assign dht11_data_internal = dht11_data_drv_en ? dht11_data_drv : 1'bz;
    assign dht11_data = dht11_data_internal;

    initial begin
        reset = 1;
        dht11_data_drv = 1;
        dht11_data_drv_en = 0;

        #100;
        reset = 0;

        // Power-on wait time
        #10_000;

        // DHT11 start signal 확인 후 응답 시작
        wait (dht11_data == 0); // MCU가 18ms low 신호를 줌

        // MCU가 high로 전환하면 → DHT11 응답 시작
        wait (dht11_data == 1);

        // ↓↓↓ 여기서부터 DHT11 시뮬레이션 ↓↓↓

        // 1. DHT11의 80us Low 응답
        #(80_000);
        dht11_data_drv_en = 1;
        dht11_data_drv = 0;

        // 2. 80us High 응답
        #(80_000);
        dht11_data_drv = 1;

        // 3. 데이터 전송 (40bit)
        // 습도 55.0, 온도 24.0, checksum = 55 + 0 + 24 + 0 = 79
        send_bit(8'd55); // humid_int
        send_bit(8'd0);  // humid_frac
        send_bit(8'd24); // temp_int
        send_bit(8'd0);  // temp_frac
        send_bit(8'd79); // checksum

        // 끝
        dht11_data_drv_en = 0;
    end

    // UART처럼 1bit씩 50us low → high 길이로 전달
    task send_bit;
        input [7:0] byte;
        integer i;
        begin
            for (i = 7; i >= 0; i = i - 1) begin
                // bit 시작 → 50us low
                dht11_data_drv = 0;
                #(50_000);

                // bit 전송 (high 시간: 26~28us = 0 / 70us = 1)
                dht11_data_drv = 1;
                if (byte[i])
                    #(70_000);
                else
                    #(26_000);
            end
        end
    endtask
endmodule
