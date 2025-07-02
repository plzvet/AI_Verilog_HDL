`timescale 1ns / 1ps

module tb_btn();
    reg clk;
    reg reset;
    reg i_noisy_btn;
    wire o_clean_btn;

    none_dff_button dut_btn(
        .i_clk(clk),
        .i_reset(reset),
        .i_noisy_btn(i_noisy_btn),
        .o_clean_btn(o_clean_btn)
    );

    initial clk = 0;
    always #5 clk = ~clk;  // 100MHz

    initial begin
        $monitor("time=%t | noisy_btn=%b | clean_btn=%b", $time, i_noisy_btn, o_clean_btn);

        reset = 0; i_noisy_btn = 0;
        #20 reset = 1;
        #20 reset = 0;

        #1_000_000 i_noisy_btn = 1;  
        // #20_000  i_noisy_btn = 0;
        // #20_000  i_noisy_btn = 1;
        // #200_000 i_noisy_btn = 0;  // 200us 후에 떨어짐


        #30_000_000 i_noisy_btn = 0;


        #10_000_000 $finish;  // 시뮬레이션 1ms까지
    end
endmodule