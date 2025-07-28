`timescale 1ns / 1ps

module top (

);

    fifo u_fifo(
        .i_clk,
        .i_resetn,
        .i_ren,
        .i_wen,
        .i_wdata,
        .o_rdata,
        .o_empty,
        .o_full
    );

    command_controller(
    input             clk,                
    input             reset,              
    input       [7:0] data_in,    // FIFO 에서 뽑은 8 bit data
    input             valid,      // empty 가 아니라면 valid -> high
    output reg        request,    // 큐에 데이터 요청 신호 (연속 요청을 위해 high 유지)
    output reg [15:0] led         // LED 제어 (16개 LED, 0-15번)
);

    uart_rx(
    input clk,
    input reset,
    input rx,
    output reg [7:0] data_out,
    output reg rx_done
    );
   

    /* 
    ledallon: 모든 16개 LED를 켭니다.

    ledalloff: 모든 16개 LED를 끕니다.

    ledXXon: 특정 LED(XX)를 켭니다. (예: led00on, led05on, led15on)

    ledXXoff: 특정 LED(XX)를 끕니다. (예: led00off, led05off, led15off)

    SET_BRIGHT XXX: 밝기 값을 설정합니다. (XXX는 0~255 사이의 10진수 숫자, 예: SET_BRIGHT 100)
    */

endmodule
