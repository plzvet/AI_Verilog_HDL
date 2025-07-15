`timescale 1ns / 1ps

module top_buzzer(
    input           clk,
    input           reset,
    input           btnU,
    input           btnC,
    input           btnR,
    input           btnD,
    input           btnL,
    output          btn_clean,
    output  [1:0]   led,
    output          buzzer
    );

    parameter M500MS = 50_000_000;

    wire w_btnU, w_btnC, w_btnR, w_btnD, w_btnL; // 도 레 미 파 솔
    reg [21:0] r_clk_cnt [4:0]; // 2d array
    reg [4:0] r_buzzer_frequency;

    button_debounce  u_btnU_debounce(
    .i_clk(clk), .i_reset(reset), .i_btn(btnU), .o_btn_clean(w_btnU)
    );
    button_debounce  u_btnC_debounce(
    .i_clk(clk), .i_reset(reset), .i_btn(btnC), .o_btn_clean(w_btnC)
    );
    button_debounce  u_btnR_debounce(
    .i_clk(clk), .i_reset(reset), .i_btn(btnR), .o_btn_clean(w_btnR)
    );
    button_debounce  u_btnD_debounce(
    .i_clk(clk), .i_reset(reset), .i_btn(btnD), .o_btn_clean(w_btnD)
    );
    button_debounce  u_btnL_debounce(
    .i_clk(clk), .i_reset(reset), .i_btn(btnL), .o_btn_clean(w_btnL)
    );

    // 100MHz / Target Hz / 2
    
     
    // 도 (130.8147Hz) <== 100M를 764,444분주
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            r_clk_cnt[0] <= 22'd0;
            r_buzzer_frequency[0] <= 5'd0;
        end else begin
            if (!w_btnU) begin
                r_clk_cnt[0] <= 22'd0;
                r_buzzer_frequency[0] <= 5'd0;        
            end else begin
                if (r_clk_cnt[0] == 22'd382_222 - 1) begin
                    r_clk_cnt[0] <= 22'd0;
                    r_buzzer_frequency[0] <= ~r_buzzer_frequency[0];
                end else begin
                    r_clk_cnt[0] <= r_clk_cnt[0] + 1'b1;
                end
            end 
        end
    end

    // 레 (146.8324Hz) <== 100M를 681,060분주
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            r_clk_cnt[1] <= 22'd0;
            r_buzzer_frequency[1] <= 5'd0;
        end else begin
            if (!w_btnC) begin
                r_clk_cnt[1] <= 22'd0;
                r_buzzer_frequency[1] <= 5'd0;        
            end else begin
                if (r_clk_cnt[1] == 22'd340_530 - 1) begin
                    r_clk_cnt[1] <= 22'd0;
                    r_buzzer_frequency[1] <= ~r_buzzer_frequency[1];
                end else begin
                    r_clk_cnt[1] <= r_clk_cnt[1] + 1'b1;
                end
            end 
        end
    end

    // 미 (164.8138Hz) <== 100M를 606,758분주
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            r_clk_cnt[2] <= 22'd0;
            r_buzzer_frequency[2] <= 5'd0;
        end else begin
            if (!w_btnR) begin
                r_clk_cnt[2] <= 22'd0;
                r_buzzer_frequency[2] <= 5'd0;        
            end else begin
                if (r_clk_cnt[2] == 22'd303_379 - 1) begin
                    r_clk_cnt[2] <= 22'd0;
                    r_buzzer_frequency[2] <= ~r_buzzer_frequency[2];
                end else begin
                    r_clk_cnt[2] <= r_clk_cnt[2] + 1'b1;
                end
            end 
        end
    end

    // 파 (349.2282Hz) <== 100M를 572,690분주
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            r_clk_cnt[3] <= 22'd0;
            r_buzzer_frequency[3] <= 5'd0;
        end else begin
            if (!w_btnD) begin
                r_clk_cnt[3] <= 22'd0;
                r_buzzer_frequency[3] <= 5'd0;        
            end else begin
                if (r_clk_cnt[3] == 22'd286_345 - 1) begin
                    r_clk_cnt[3] <= 22'd0;
                    r_buzzer_frequency[3] <= ~r_buzzer_frequency[3];
                end else begin
                    r_clk_cnt[3] <= r_clk_cnt[3] + 1'b1;
                end
            end 
        end
    end

    // 솔 (195.9977Hz) <== 100M를 510,204분주
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            r_clk_cnt[4] <= 22'd0;
            r_buzzer_frequency[4] <= 5'd0;
        end else begin
            if (!w_btnL) begin
                r_clk_cnt[4] <= 22'd0;
                r_buzzer_frequency[4] <= 5'd0;        
            end else begin
                if (r_clk_cnt[4] == 22'd255_102 - 1) begin
                    r_clk_cnt[4] <= 22'd0;
                    r_buzzer_frequency[4] <= ~r_buzzer_frequency[4];
                end else begin
                    r_clk_cnt[4] <= r_clk_cnt[4] + 1'b1;
                end
            end 
        end
    end    

    assign btn_clean = w_btnU;
    assign buzzer = r_buzzer_frequency[0] |
                    r_buzzer_frequency[1] |
                    r_buzzer_frequency[2] |
                    r_buzzer_frequency[3] |
                    r_buzzer_frequency[4];

endmodule