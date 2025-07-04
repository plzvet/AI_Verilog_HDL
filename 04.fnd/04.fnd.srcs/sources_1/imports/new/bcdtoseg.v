`timescale 1ns / 1ps

module sec_min_clk(
        input tick,  // 1ms
        input reset,
        output reg [5:0] sec_min
    );
    
    parameter _1sec_count = 1000;

    reg [$clog2(_1sec_count)-1:0] r_msec_counter = 0;     // msec count
    reg [$clog2(60)-1:0] r_sec_counter = 0;               // sec count
    reg [$clog2(60)-1:0] r_min_counter = 0;               // min count

    always @(posedge tick or posedge reset) begin
        if(reset) begin
            r_msec_counter <= 0;
            r_sec_counter  <= 0;
            r_min_counter  <= 0;
        end else begin
            if ( r_msec_counter == _1sec_count - 1) begin
                r_msec_counter <= 0;
                r_sec_counter <= r_sec_counter + 1;
            end else begin
                r_msec_counter <= r_msec_counter + 1;
            end

        if(r_sec_counter == 60 - 1) begin
            r_sec_counter <= 0;
            r_min_counter <= r_min_counter + 1;
        end

        if(r_min_counter == 60 - 1) begin
            r_min_counter <= 0;
        end

        end
    end


endmodule
