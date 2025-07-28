`timescale 1ns / 1ps

module tb_fifo();

    parameter DATA_WIDTH = 16;
    parameter FIFO_DEPTH = 8;
    parameter PTR_SIZE = 3;

    reg                       i_clk;
    reg                       i_resetn;
    reg                       i_ren;
    reg                       i_wen;
    reg    [DATA_WIDTH-1:0]   i_wdata;

    wire   [DATA_WIDTH-1:0]   o_rdata;
    wire                      o_empty;
    wire                      o_full;

    fifo fifo (               .i_clk       (i_clk),
                              .i_resetn    (i_resetn),
                              .i_ren       (i_ren),
                              .i_wen       (i_wen),
                              .i_wdata     (i_wdata),
                              
                              .o_rdata     (o_rdata),
                              .o_empty     (o_empty),
                              .o_full       (o_full)      );

    always #5 i_clk = ~i_clk;
    initial begin
        i_clk = 1'd0; i_resetn = 1'd1;
        i_ren = 1'd0; i_wen = 1'd0;
        #1
        i_resetn = 1'd0;
        #1
        i_resetn = 1'd1;
        #13
        i_wen = 1'd1;
        i_wdata = 'd100;
        #10
        i_wdata = 'd101;
        #10
        i_wdata = 'd102;
        #10
        i_wdata = 'd103;
        #10
        i_wdata = 'd104;
        #10
        i_wdata = 'd105;
        #10
        i_wdata = 'd106;
        #10
        i_wdata = 'd107;
        #10
        i_wdata = 'd108;
        #10
        i_wen = 1'd0;
        #10
        i_ren = 1'd1;
        #100
        i_ren = 1'd0;
        i_wen = 1'd1;
        #10
        i_wdata = 'd44;
        #10
        i_wdata = 'd55;
        #10
        i_wdata = 'd66;
        #20
        $finish;
    end

endmodule
