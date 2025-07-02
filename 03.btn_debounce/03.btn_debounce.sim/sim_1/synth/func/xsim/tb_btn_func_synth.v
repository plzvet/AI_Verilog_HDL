// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Jul  2 16:26:58 2025
// Host        : DESKTOP-CSNIEDM running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/project/FPGA/src/03.btn_debounce/03.btn_debounce.sim/sim_1/synth/func/xsim/tb_btn_func_synth.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module tick_generator
   (CLK,
    clk_IBUF_BUFG,
    reset_IBUF);
  output CLK;
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire CLK;
  wire clk_IBUF_BUFG;
  wire [16:1]data0;
  wire [16:0]r_tick_counter;
  wire r_tick_counter0_carry__0_n_0;
  wire r_tick_counter0_carry__0_n_1;
  wire r_tick_counter0_carry__0_n_2;
  wire r_tick_counter0_carry__0_n_3;
  wire r_tick_counter0_carry__1_n_0;
  wire r_tick_counter0_carry__1_n_1;
  wire r_tick_counter0_carry__1_n_2;
  wire r_tick_counter0_carry__1_n_3;
  wire r_tick_counter0_carry__2_n_1;
  wire r_tick_counter0_carry__2_n_2;
  wire r_tick_counter0_carry__2_n_3;
  wire r_tick_counter0_carry_n_0;
  wire r_tick_counter0_carry_n_1;
  wire r_tick_counter0_carry_n_2;
  wire r_tick_counter0_carry_n_3;
  wire \r_tick_counter[16]_i_2_n_0 ;
  wire \r_tick_counter[16]_i_3_n_0 ;
  wire \r_tick_counter[16]_i_4_n_0 ;
  wire \r_tick_counter[16]_i_5_n_0 ;
  wire [16:0]r_tick_counter_0;
  wire reset_IBUF;
  wire tick;
  wire [3:3]NLW_r_tick_counter0_carry__2_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_tick_counter0_carry
       (.CI(1'b0),
        .CO({r_tick_counter0_carry_n_0,r_tick_counter0_carry_n_1,r_tick_counter0_carry_n_2,r_tick_counter0_carry_n_3}),
        .CYINIT(r_tick_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(r_tick_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_tick_counter0_carry__0
       (.CI(r_tick_counter0_carry_n_0),
        .CO({r_tick_counter0_carry__0_n_0,r_tick_counter0_carry__0_n_1,r_tick_counter0_carry__0_n_2,r_tick_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(r_tick_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_tick_counter0_carry__1
       (.CI(r_tick_counter0_carry__0_n_0),
        .CO({r_tick_counter0_carry__1_n_0,r_tick_counter0_carry__1_n_1,r_tick_counter0_carry__1_n_2,r_tick_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(r_tick_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_tick_counter0_carry__2
       (.CI(r_tick_counter0_carry__1_n_0),
        .CO({NLW_r_tick_counter0_carry__2_CO_UNCONNECTED[3],r_tick_counter0_carry__2_n_1,r_tick_counter0_carry__2_n_2,r_tick_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(r_tick_counter[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_tick_counter[0]_i_1 
       (.I0(r_tick_counter[0]),
        .O(r_tick_counter_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[10]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[10]),
        .O(r_tick_counter_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[11]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[11]),
        .O(r_tick_counter_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[12]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[12]),
        .O(r_tick_counter_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[13]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[13]),
        .O(r_tick_counter_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[14]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[14]),
        .O(r_tick_counter_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[15]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[15]),
        .O(r_tick_counter_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[16]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[16]),
        .O(r_tick_counter_0[16]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \r_tick_counter[16]_i_2 
       (.I0(r_tick_counter[4]),
        .I1(r_tick_counter[3]),
        .I2(r_tick_counter[6]),
        .I3(r_tick_counter[5]),
        .O(\r_tick_counter[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \r_tick_counter[16]_i_3 
       (.I0(r_tick_counter[0]),
        .I1(r_tick_counter[15]),
        .I2(r_tick_counter[16]),
        .I3(r_tick_counter[2]),
        .I4(r_tick_counter[1]),
        .O(\r_tick_counter[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_tick_counter[16]_i_4 
       (.I0(r_tick_counter[12]),
        .I1(r_tick_counter[11]),
        .I2(r_tick_counter[14]),
        .I3(r_tick_counter[13]),
        .O(\r_tick_counter[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \r_tick_counter[16]_i_5 
       (.I0(r_tick_counter[7]),
        .I1(r_tick_counter[8]),
        .I2(r_tick_counter[10]),
        .I3(r_tick_counter[9]),
        .O(\r_tick_counter[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[1]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[1]),
        .O(r_tick_counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[2]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[2]),
        .O(r_tick_counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[3]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[3]),
        .O(r_tick_counter_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[4]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[4]),
        .O(r_tick_counter_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[5]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[5]),
        .O(r_tick_counter_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[6]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[6]),
        .O(r_tick_counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[7]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[7]),
        .O(r_tick_counter_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[8]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[8]),
        .O(r_tick_counter_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_tick_counter[9]_i_1 
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .I4(data0[9]),
        .O(r_tick_counter_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[0]),
        .Q(r_tick_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[10]),
        .Q(r_tick_counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[11]),
        .Q(r_tick_counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[12]),
        .Q(r_tick_counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[13]),
        .Q(r_tick_counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[14]),
        .Q(r_tick_counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[15]),
        .Q(r_tick_counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[16]),
        .Q(r_tick_counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[1]),
        .Q(r_tick_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[2]),
        .Q(r_tick_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[3]),
        .Q(r_tick_counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[4]),
        .Q(r_tick_counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[5]),
        .Q(r_tick_counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[6]),
        .Q(r_tick_counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[7]),
        .Q(r_tick_counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[8]),
        .Q(r_tick_counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \r_tick_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_tick_counter_0[9]),
        .Q(r_tick_counter[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    tick_i_1
       (.I0(\r_tick_counter[16]_i_2_n_0 ),
        .I1(\r_tick_counter[16]_i_3_n_0 ),
        .I2(\r_tick_counter[16]_i_4_n_0 ),
        .I3(\r_tick_counter[16]_i_5_n_0 ),
        .O(tick));
  FDCE #(
    .INIT(1'b0)) 
    tick_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(tick),
        .Q(CLK));
endmodule

(* NotValidForBitStream *)
module top
   (clk,
    reset,
    btnC,
    led);
  input clk;
  input reset;
  input btnC;
  output [1:0]led;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]led;
  wire [1:0]led_OBUF;
  wire r_100msled_toggle_i_1_n_0;
  wire r_100msled_toggle_i_2_n_0;
  wire r_500msled_toggle_i_1_n_0;
  wire r_500msled_toggle_i_2_n_0;
  wire [8:0]r_ms_count;
  wire \r_ms_count[5]_i_2_n_0 ;
  wire \r_ms_count[8]_i_2_n_0 ;
  wire \r_ms_count[8]_i_3_n_0 ;
  wire [6:0]r_ms_count_100;
  wire \r_ms_count_100[6]_i_1_n_0 ;
  wire \r_ms_count_100[6]_i_3_n_0 ;
  wire \r_ms_count_100_reg_n_0_[0] ;
  wire \r_ms_count_100_reg_n_0_[1] ;
  wire \r_ms_count_100_reg_n_0_[2] ;
  wire \r_ms_count_100_reg_n_0_[3] ;
  wire \r_ms_count_100_reg_n_0_[4] ;
  wire \r_ms_count_100_reg_n_0_[5] ;
  wire \r_ms_count_100_reg_n_0_[6] ;
  wire \r_ms_count_reg_n_0_[0] ;
  wire \r_ms_count_reg_n_0_[1] ;
  wire \r_ms_count_reg_n_0_[2] ;
  wire \r_ms_count_reg_n_0_[3] ;
  wire \r_ms_count_reg_n_0_[4] ;
  wire \r_ms_count_reg_n_0_[5] ;
  wire \r_ms_count_reg_n_0_[6] ;
  wire \r_ms_count_reg_n_0_[7] ;
  wire \r_ms_count_reg_n_0_[8] ;
  wire reset;
  wire reset_IBUF;
  wire tick;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFBF0040)) 
    r_100msled_toggle_i_1
       (.I0(r_100msled_toggle_i_2_n_0),
        .I1(\r_ms_count_100_reg_n_0_[1] ),
        .I2(\r_ms_count_100_reg_n_0_[0] ),
        .I3(\r_ms_count_100_reg_n_0_[2] ),
        .I4(led_OBUF[1]),
        .O(r_100msled_toggle_i_1_n_0));
  LUT4 #(
    .INIT(16'hFDFF)) 
    r_100msled_toggle_i_2
       (.I0(\r_ms_count_100_reg_n_0_[6] ),
        .I1(\r_ms_count_100_reg_n_0_[3] ),
        .I2(\r_ms_count_100_reg_n_0_[4] ),
        .I3(\r_ms_count_100_reg_n_0_[5] ),
        .O(r_100msled_toggle_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    r_100msled_toggle_reg
       (.C(tick),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_100msled_toggle_i_1_n_0),
        .Q(led_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000400)) 
    r_500msled_toggle_i_1
       (.I0(\r_ms_count_reg_n_0_[3] ),
        .I1(\r_ms_count_reg_n_0_[4] ),
        .I2(\r_ms_count_reg_n_0_[2] ),
        .I3(r_500msled_toggle_i_2_n_0),
        .I4(\r_ms_count[5]_i_2_n_0 ),
        .I5(led_OBUF[0]),
        .O(r_500msled_toggle_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    r_500msled_toggle_i_2
       (.I0(\r_ms_count_reg_n_0_[8] ),
        .I1(\r_ms_count_reg_n_0_[7] ),
        .I2(\r_ms_count_reg_n_0_[6] ),
        .I3(\r_ms_count_reg_n_0_[5] ),
        .O(r_500msled_toggle_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    r_500msled_toggle_reg
       (.C(tick),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_500msled_toggle_i_1_n_0),
        .Q(led_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ms_count[0]_i_1 
       (.I0(\r_ms_count[8]_i_3_n_0 ),
        .I1(\r_ms_count_reg_n_0_[0] ),
        .O(r_ms_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \r_ms_count[1]_i_1 
       (.I0(\r_ms_count[8]_i_3_n_0 ),
        .I1(\r_ms_count_reg_n_0_[0] ),
        .I2(\r_ms_count_reg_n_0_[1] ),
        .O(r_ms_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \r_ms_count[2]_i_1 
       (.I0(\r_ms_count[8]_i_3_n_0 ),
        .I1(\r_ms_count_reg_n_0_[0] ),
        .I2(\r_ms_count_reg_n_0_[1] ),
        .I3(\r_ms_count_reg_n_0_[2] ),
        .O(r_ms_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \r_ms_count[3]_i_1 
       (.I0(\r_ms_count[8]_i_3_n_0 ),
        .I1(\r_ms_count_reg_n_0_[1] ),
        .I2(\r_ms_count_reg_n_0_[0] ),
        .I3(\r_ms_count_reg_n_0_[2] ),
        .I4(\r_ms_count_reg_n_0_[3] ),
        .O(r_ms_count[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \r_ms_count[4]_i_1 
       (.I0(\r_ms_count[8]_i_3_n_0 ),
        .I1(\r_ms_count_reg_n_0_[2] ),
        .I2(\r_ms_count_reg_n_0_[0] ),
        .I3(\r_ms_count_reg_n_0_[1] ),
        .I4(\r_ms_count_reg_n_0_[3] ),
        .I5(\r_ms_count_reg_n_0_[4] ),
        .O(r_ms_count[4]));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \r_ms_count[5]_i_1 
       (.I0(\r_ms_count_reg_n_0_[4] ),
        .I1(\r_ms_count_reg_n_0_[2] ),
        .I2(\r_ms_count[5]_i_2_n_0 ),
        .I3(\r_ms_count_reg_n_0_[3] ),
        .I4(\r_ms_count[8]_i_3_n_0 ),
        .I5(\r_ms_count_reg_n_0_[5] ),
        .O(r_ms_count[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_ms_count[5]_i_2 
       (.I0(\r_ms_count_reg_n_0_[1] ),
        .I1(\r_ms_count_reg_n_0_[0] ),
        .O(\r_ms_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \r_ms_count[6]_i_1 
       (.I0(\r_ms_count[8]_i_2_n_0 ),
        .I1(\r_ms_count[8]_i_3_n_0 ),
        .I2(\r_ms_count_reg_n_0_[6] ),
        .O(r_ms_count[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \r_ms_count[7]_i_1 
       (.I0(\r_ms_count_reg_n_0_[6] ),
        .I1(\r_ms_count[8]_i_2_n_0 ),
        .I2(\r_ms_count[8]_i_3_n_0 ),
        .I3(\r_ms_count_reg_n_0_[7] ),
        .O(r_ms_count[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \r_ms_count[8]_i_1 
       (.I0(\r_ms_count_reg_n_0_[7] ),
        .I1(\r_ms_count[8]_i_2_n_0 ),
        .I2(\r_ms_count_reg_n_0_[6] ),
        .I3(\r_ms_count[8]_i_3_n_0 ),
        .I4(\r_ms_count_reg_n_0_[8] ),
        .O(r_ms_count[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_ms_count[8]_i_2 
       (.I0(\r_ms_count_reg_n_0_[5] ),
        .I1(\r_ms_count_reg_n_0_[3] ),
        .I2(\r_ms_count_reg_n_0_[1] ),
        .I3(\r_ms_count_reg_n_0_[0] ),
        .I4(\r_ms_count_reg_n_0_[2] ),
        .I5(\r_ms_count_reg_n_0_[4] ),
        .O(\r_ms_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \r_ms_count[8]_i_3 
       (.I0(\r_ms_count_reg_n_0_[0] ),
        .I1(\r_ms_count_reg_n_0_[1] ),
        .I2(\r_ms_count_reg_n_0_[4] ),
        .I3(\r_ms_count_reg_n_0_[2] ),
        .I4(\r_ms_count_reg_n_0_[3] ),
        .I5(r_500msled_toggle_i_2_n_0),
        .O(\r_ms_count[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ms_count_100[0]_i_1 
       (.I0(\r_ms_count_100_reg_n_0_[0] ),
        .O(r_ms_count_100[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ms_count_100[1]_i_1 
       (.I0(\r_ms_count_100_reg_n_0_[0] ),
        .I1(\r_ms_count_100_reg_n_0_[1] ),
        .O(r_ms_count_100[1]));
  LUT6 #(
    .INIT(64'hFFFF00000000FDFF)) 
    \r_ms_count_100[2]_i_1 
       (.I0(\r_ms_count_100_reg_n_0_[6] ),
        .I1(\r_ms_count_100_reg_n_0_[3] ),
        .I2(\r_ms_count_100_reg_n_0_[4] ),
        .I3(\r_ms_count_100_reg_n_0_[5] ),
        .I4(\r_ms_count_100[6]_i_3_n_0 ),
        .I5(\r_ms_count_100_reg_n_0_[2] ),
        .O(r_ms_count_100[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_ms_count_100[3]_i_1 
       (.I0(\r_ms_count_100_reg_n_0_[2] ),
        .I1(\r_ms_count_100_reg_n_0_[0] ),
        .I2(\r_ms_count_100_reg_n_0_[1] ),
        .I3(\r_ms_count_100_reg_n_0_[3] ),
        .O(r_ms_count_100[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_ms_count_100[4]_i_1 
       (.I0(\r_ms_count_100_reg_n_0_[3] ),
        .I1(\r_ms_count_100_reg_n_0_[1] ),
        .I2(\r_ms_count_100_reg_n_0_[0] ),
        .I3(\r_ms_count_100_reg_n_0_[2] ),
        .I4(\r_ms_count_100_reg_n_0_[4] ),
        .O(r_ms_count_100[4]));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    \r_ms_count_100[5]_i_1 
       (.I0(\r_ms_count_100_reg_n_0_[6] ),
        .I1(\r_ms_count_100_reg_n_0_[5] ),
        .I2(\r_ms_count_100_reg_n_0_[2] ),
        .I3(\r_ms_count_100_reg_n_0_[3] ),
        .I4(\r_ms_count_100_reg_n_0_[4] ),
        .I5(\r_ms_count_100[6]_i_3_n_0 ),
        .O(r_ms_count_100[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \r_ms_count_100[6]_i_1 
       (.I0(reset_IBUF),
        .O(\r_ms_count_100[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAA2)) 
    \r_ms_count_100[6]_i_2 
       (.I0(\r_ms_count_100_reg_n_0_[6] ),
        .I1(\r_ms_count_100_reg_n_0_[5] ),
        .I2(\r_ms_count_100[6]_i_3_n_0 ),
        .I3(\r_ms_count_100_reg_n_0_[2] ),
        .I4(\r_ms_count_100_reg_n_0_[4] ),
        .I5(\r_ms_count_100_reg_n_0_[3] ),
        .O(r_ms_count_100[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_ms_count_100[6]_i_3 
       (.I0(\r_ms_count_100_reg_n_0_[0] ),
        .I1(\r_ms_count_100_reg_n_0_[1] ),
        .O(\r_ms_count_100[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_ms_count_100_reg[0] 
       (.C(tick),
        .CE(\r_ms_count_100[6]_i_1_n_0 ),
        .D(r_ms_count_100[0]),
        .Q(\r_ms_count_100_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ms_count_100_reg[1] 
       (.C(tick),
        .CE(\r_ms_count_100[6]_i_1_n_0 ),
        .D(r_ms_count_100[1]),
        .Q(\r_ms_count_100_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ms_count_100_reg[2] 
       (.C(tick),
        .CE(\r_ms_count_100[6]_i_1_n_0 ),
        .D(r_ms_count_100[2]),
        .Q(\r_ms_count_100_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ms_count_100_reg[3] 
       (.C(tick),
        .CE(\r_ms_count_100[6]_i_1_n_0 ),
        .D(r_ms_count_100[3]),
        .Q(\r_ms_count_100_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ms_count_100_reg[4] 
       (.C(tick),
        .CE(\r_ms_count_100[6]_i_1_n_0 ),
        .D(r_ms_count_100[4]),
        .Q(\r_ms_count_100_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ms_count_100_reg[5] 
       (.C(tick),
        .CE(\r_ms_count_100[6]_i_1_n_0 ),
        .D(r_ms_count_100[5]),
        .Q(\r_ms_count_100_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ms_count_100_reg[6] 
       (.C(tick),
        .CE(\r_ms_count_100[6]_i_1_n_0 ),
        .D(r_ms_count_100[6]),
        .Q(\r_ms_count_100_reg_n_0_[6] ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \r_ms_count_reg[0] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_ms_count[0]),
        .Q(\r_ms_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_ms_count_reg[1] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_ms_count[1]),
        .Q(\r_ms_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_ms_count_reg[2] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_ms_count[2]),
        .Q(\r_ms_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_ms_count_reg[3] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_ms_count[3]),
        .Q(\r_ms_count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_ms_count_reg[4] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_ms_count[4]),
        .Q(\r_ms_count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_ms_count_reg[5] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_ms_count[5]),
        .Q(\r_ms_count_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_ms_count_reg[6] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_ms_count[6]),
        .Q(\r_ms_count_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_ms_count_reg[7] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_ms_count[7]),
        .Q(\r_ms_count_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_ms_count_reg[8] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_ms_count[8]),
        .Q(\r_ms_count_reg_n_0_[8] ));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  tick_generator u_tick_generator
       (.CLK(tick),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_IBUF(reset_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
