# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new top work:top:NOFILE -nosplit
load symbol RTL_MUX2 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_MUX17 work MUX pin S input.bot pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_OR work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_MUX85 work MUX pin S input.bot pinBus I0 input.left [13:0] pinBus I1 input.left [13:0] pinBus O output.right [13:0] fillcolor 1
load symbol RTL_AND0 work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_INV work INV pin I0 input pin O output fillcolor 1
load symbol RTL_LEQ work RTL(<=) pin O output.right pinBus I0 input.left [13:0] pinBus I1 input.left [13:0] fillcolor 1
load symbol RTL_REG__BREG_122 work GEN pin C input.clk.left pin CE input.left pin D input.left pin Q output.right fillcolor 1
load symbol RTL_MUX74 work MUX pin S input.bot pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol button_debounce work:button_debounce:NOFILE HIERBOX pin i_btn input.left pin i_clk input.left pin i_reset input.left pin led output.right pin o_btn_clean output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol button_debounce work:abstract:NOFILE HIERBOX pin i_btn input.left pin i_clk input.left pin i_reset input.left pin led output.right pin o_btn_clean output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol command_controller work:command_controller:NOFILE HIERBOX pin btnL input.left pin clk input.left pin reset input.left pin rx_done input.left pinBus mode_enable output.right [4:0] pinBus rx_data input.left [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol data_sender work:data_sender:NOFILE HIERBOX pin clk input.left pin reset input.left pin start_trigger input.left pin tx_busy input.left pin tx_done input.left pin tx_start output.right pinBus send_data input.left [13:0] pinBus tx_data output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol dht11_data_sender work:dht11_data_sender:NOFILE HIERBOX pin clk input.left pin reset input.left pin start_trigger input.left pin tx_busy input.left pin tx_done input.left pin tx_start output.right pinBus humidity input.left [13:0] pinBus temperature input.left [13:0] pinBus tx_data output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol hvac_pwm_dcmotor work:hvac_pwm_dcmotor:NOFILE HIERBOX pin PWM_OUT output.right pin clk input.left pin enable input.left pin manual_mode input.left pinBus in1_in2 output.right [1:0] pinBus measured_temp input.left [13:0] pinBus target_temp input.left [13:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol dht11_controller work:dht11_controller:NOFILE HIERBOX pin clk input.left pin data_io inout.right pin reset input.left pinBus humidity output.right [13:0] pinBus temperature output.right [13:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol fnd_controller work:fnd_controller:NOFILE HIERBOX pin clk input.left pin reset input.left pinBus an output.right [3:0] pinBus input_data input.left [13:0] pinBus seg_data output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol fnd_controller work:abstract:NOFILE HIERBOX pin clk input.left pin reset input.left pinBus an output.right [3:0] pinBus input_data input.left [13:0] pinBus seg_data output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol hcsr04 work:hcsr04:NOFILE HIERBOX pin clk input.left pin done output.right pin echo input.left pin reset input.left pin start input.left pin trig output.right pinBus distance_cm output.right [13:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol fnd_rotate work:fnd_rotate:NOFILE HIERBOX pin clk input.left pin idle_enable input.left pin reset input.left pinBus an output.right [3:0] pinBus seg output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol distance_latch_controller work:distance_latch_controller:NOFILE HIERBOX pin clk input.left pin done input.left pin reset input.left pinBus distance_cm input.left [13:0] pinBus latched_distance output.right [13:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol minsec_stopwatch work:minsec_stopwatch:NOFILE HIERBOX pin buzzer_sw output.right pin clk input.left pin reset input.left pin sw_enable input.left pinBus an output.right [3:0] pinBus btn input.left [3:0] pinBus seg output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol microwave_top work:microwave_top:NOFILE HIERBOX pin PWM_OUT output.right pin PWM_SERVO output.right pin buzzer output.right pin clk input.left pin digit_sel input.left pin mw_enable input.left pin reset input.left pinBus an output.right [3:0] pinBus btn input.left [4:0] pinBus in1_in2 output.right [1:0] pinBus seg output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol manual_temp_controller work:manual_temp_controller:NOFILE HIERBOX pin btn_dec input.left pin btn_inc input.left pin clk input.left pin man_enable input.left pin reset input.left pin rx_done input.left pinBus rx_data input.left [7:0] pinBus temp_applied output.right [13:0] pinBus temp_manual output.right [13:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol tick_generator work:tick_generator:NOFILE HIERBOX pin clk input.left pin reset input.left pin tick output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol uart_rx work:uart_rx:NOFILE HIERBOX pin clk input.left pin reset input.left pin rx input.left pin rx_done output.right pinBus data_out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol uart_tx work:abstract:NOFILE HIERBOX pin clk input.left pin reset input.left pin tx output.right pin tx_busy output.right pin tx_done output.right pin tx_start input.left pinBus tx_data input.left [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol uart_tx work:uart_tx:NOFILE HIERBOX pin clk input.left pin reset input.left pin tx output.right pin tx_busy output.right pin tx_done output.right pin tx_start input.left pinBus tx_data input.left [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ultra_buzzer_controller work:ultra_buzzer_controller:NOFILE HIERBOX pin buzzer_out output.right pin clk input.left pin hvac_enable input.left pin reset input.left pinBus distance input.left [13:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX437 work MUX pin S0 input.bot pin S1 input.bot pin S2 input.bot pin S3 input.bot pin S4 input.bot pinBus I0 input.left [13:0] pinBus I1 input.left [13:0] pinBus I2 input.left [13:0] pinBus I3 input.left [13:0] pinBus I4 input.left [13:0] pinBus I5 input.left [13:0] pinBus O output.right [13:0] fillcolor 1
load port PWM_OUT output -pg 1 -lvl 12 -x 4840 -y 850
load port PWM_OUT_HVAC output -pg 1 -lvl 12 -x 4840 -y 700
load port PWM_SERVO output -pg 1 -lvl 12 -x 4840 -y 870
load port RsRx input -pg 1 -lvl 0 -x 0 -y 1400
load port RsTx output -pg 1 -lvl 12 -x 4840 -y 210
load port buzzer output -pg 1 -lvl 12 -x 4840 -y 1090
load port clk input -pg 1 -lvl 0 -x 0 -y 1030
load port dht11_data inout -pg 1 -lvl 12 -x 4840 -y 1290
load port echo input -pg 1 -lvl 0 -x 0 -y 1220
load port reset input -pg 1 -lvl 0 -x 0 -y 1050
load port trig output -pg 1 -lvl 12 -x 4840 -y 1450
load portBus an output [3:0] -attr @name an[3:0] -pg 1 -lvl 12 -x 4840 -y 1350
load portBus btn input [4:0] -attr @name btn[4:0] -pg 1 -lvl 0 -x 0 -y 430
load portBus in1_in2 output [1:0] -attr @name in1_in2[1:0] -pg 1 -lvl 12 -x 4840 -y 930
load portBus in1_in2_HVAC output [1:0] -attr @name in1_in2_HVAC[1:0] -pg 1 -lvl 12 -x 4840 -y 720
load portBus led output [15:0] -attr @name led[15:0] -pg 1 -lvl 12 -x 4840 -y 1410
load portBus seg output [7:0] -attr @name seg[7:0] -pg 1 -lvl 12 -x 4840 -y 1210
load portBus sw input [14:0] -attr @name sw[14:0] -pg 1 -lvl 0 -x 0 -y 1460
load inst RsTx_i RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 11 -x 4590 -y 210
load inst an0_i RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 10 -x 4030 -y 890
load inst an1_i RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 9 -x 3590 -y 960
load inst an2_i RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 8 -x 3170 -y 970
load inst an3_i RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 7 -x 2670 -y 980
load inst an_i RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 11 -x 4590 -y 1350
load inst buzzer0_i RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 10 -x 4030 -y 1070
load inst buzzer1_i RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 9 -x 3590 -y 820
load inst buzzer2_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 7 -x 2670 -y 770
load inst buzzer2_i__0 RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 8 -x 3170 -y 830
load inst buzzer3_i RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 7 -x 2670 -y 860
load inst buzzer_btn0_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 5 -x 1660 -y 590
load inst buzzer_btn1_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 4 -x 1190 -y 590
load inst buzzer_btn2_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 3 -x 790 -y 590
load inst buzzer_btn_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 6 -x 2150 -y 590
load inst buzzer_i RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 11 -x 4590 -y 1090
load inst display_value0_i RTL_MUX85 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[13:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[13:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[13:0] -pg 1 -lvl 6 -x 2150 -y 1330
load inst display_value1_i RTL_AND0 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 6 -x 2150 -y 1450
load inst display_value2_i RTL_AND0 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 5 -x 1660 -y 1390
load inst display_value2_i__0 RTL_INV work -attr @cell(#000000) RTL_INV -pg 1 -lvl 5 -x 1660 -y 1460
load inst display_value_i RTL_MUX85 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[13:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[13:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[13:0] -pg 1 -lvl 7 -x 2670 -y 1440
load inst enable0_i RTL_AND0 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 10 -x 4030 -y 430
load inst motor_enable1_i RTL_LEQ work -attr @cell(#000000) RTL_LEQ -pinBusAttr I0 @name I0[13:0] -pinBusAttr I1 @name I1[13:0] -pinBusAttr I1 @attr V=B\"00000000000101\" -pg 1 -lvl 8 -x 3170 -y 290
load inst motor_enable_i RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 9 -x 3590 -y 350
load inst r_tick0_i RTL_INV work -attr @cell(#000000) RTL_INV -pg 1 -lvl 1 -x 100 -y 1120
load inst r_tick_reg RTL_REG__BREG_122 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 2 -x 350 -y 1090
load inst seg0_i RTL_MUX74 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 10 -x 4030 -y 1190
load inst seg1_i RTL_MUX74 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 9 -x 3590 -y 1200
load inst seg2_i RTL_MUX74 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 8 -x 3170 -y 1090
load inst seg3_i RTL_MUX74 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 7 -x 2670 -y 1130
load inst seg_i RTL_MUX74 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 11 -x 4590 -y 1210
load inst start_trigger0_i RTL_AND0 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3170 -y 390
load inst start_trigger0_i__0 RTL_AND0 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3170 -y 510
load inst start_trigger1_i RTL_AND0 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2670 -y 380
load inst start_trigger1_i__0 RTL_AND0 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2670 -y 490
load inst start_trigger2_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 5 -x 1660 -y 1020
load inst start_trigger2_i__0 RTL_INV work -attr @cell(#000000) RTL_INV -pg 1 -lvl 6 -x 2150 -y 500
load inst u0_button_debounce button_debounce work:button_debounce:NOFILE -autohide -attr @cell(#000000) button_debounce -pinAttr led @attr n/c -pg 1 -lvl 2 -x 350 -y 420
load inst u1_button_debounce button_debounce work:abstract:NOFILE -autohide -attr @cell(#000000) button_debounce -pinAttr led @attr n/c -pg 1 -lvl 2 -x 350 -y 550
load inst u2_button_debounce button_debounce work:abstract:NOFILE -autohide -attr @cell(#000000) button_debounce -pinAttr led @attr n/c -pg 1 -lvl 2 -x 350 -y 680
load inst u3_button_debounce button_debounce work:abstract:NOFILE -autohide -attr @cell(#000000) button_debounce -pinAttr led @attr n/c -pg 1 -lvl 2 -x 350 -y 810
load inst u4_button_debounce button_debounce work:abstract:NOFILE -autohide -attr @cell(#000000) button_debounce -pinAttr led @attr n/c -pg 1 -lvl 2 -x 350 -y 940
load inst u_command_controller command_controller work:command_controller:NOFILE -autohide -attr @cell(#000000) command_controller -pinBusAttr mode_enable @name mode_enable[4:0] -pinBusAttr rx_data @name rx_data[7:0] -pg 1 -lvl 10 -x 4030 -y 1500
load inst u_data_sender data_sender work:data_sender:NOFILE -autohide -attr @cell(#000000) data_sender -pinBusAttr send_data @name send_data[13:0] -pinBusAttr tx_data @name tx_data[7:0] -pg 1 -lvl 9 -x 3590 -y 80
load inst u_data_sender_dht dht11_data_sender work:dht11_data_sender:NOFILE -autohide -attr @cell(#000000) dht11_data_sender -pinBusAttr humidity @name humidity[13:0] -pinBusAttr temperature @name temperature[13:0] -pinBusAttr tx_data @name tx_data[7:0] -pg 1 -lvl 9 -x 3590 -y 490
load inst u_dc_motor hvac_pwm_dcmotor work:hvac_pwm_dcmotor:NOFILE -autohide -attr @cell(#000000) hvac_pwm_dcmotor -pinBusAttr in1_in2 @name in1_in2[1:0] -pinBusAttr measured_temp @name measured_temp[13:0] -pinBusAttr target_temp @name target_temp[13:0] -pg 1 -lvl 11 -x 4590 -y 670
load inst u_dht11_controller dht11_controller work:dht11_controller:NOFILE -autohide -attr @cell(#000000) dht11_controller -pinBusAttr humidity @name humidity[13:0] -pinBusAttr temperature @name temperature[13:0] -pg 1 -lvl 2 -x 350 -y 1310
load inst u_fnd_controller fnd_controller work:fnd_controller:NOFILE -autohide -attr @cell(#000000) fnd_controller -pinBusAttr an @name an[3:0] -pinBusAttr input_data @name input_data[13:0] -pinBusAttr seg_data @name seg_data[7:0] -pg 1 -lvl 7 -x 2670 -y 1300
load inst u_fnd_controller_hvac fnd_controller work:abstract:NOFILE -autohide -attr @cell(#000000) fnd_controller -pinBusAttr an @name an[3:0] -pinBusAttr input_data @name input_data[13:0] -pinBusAttr seg_data @name seg_data[7:0] -pg 1 -lvl 8 -x 3170 -y 1200
load inst u_hcsr04 hcsr04 work:hcsr04:NOFILE -autohide -attr @cell(#000000) hcsr04 -pinBusAttr distance_cm @name distance_cm[13:0] -pg 1 -lvl 3 -x 790 -y 1150
load inst u_idle_fnd fnd_rotate work:fnd_rotate:NOFILE -autohide -attr @cell(#000000) fnd_rotate -pinBusAttr an @name an[3:0] -pinBusAttr seg @name seg[7:0] -pg 1 -lvl 6 -x 2150 -y 950
load inst u_latch distance_latch_controller work:distance_latch_controller:NOFILE -autohide -attr @cell(#000000) distance_latch_controller -pinBusAttr distance_cm @name distance_cm[13:0] -pinBusAttr latched_distance @name latched_distance[13:0] -pg 1 -lvl 4 -x 1190 -y 1050
load inst u_minsec_stopwatch minsec_stopwatch work:minsec_stopwatch:NOFILE -autohide -attr @cell(#000000) minsec_stopwatch -pinBusAttr an @name an[3:0] -pinBusAttr btn @name btn[3:0] -pinBusAttr seg @name seg[7:0] -pg 1 -lvl 10 -x 4030 -y 1320
load inst u_mw_controller microwave_top work:microwave_top:NOFILE -autohide -attr @cell(#000000) microwave_top -pinBusAttr an @name an[3:0] -pinBusAttr btn @name btn[4:0] -pinBusAttr in1_in2 @name in1_in2[1:0] -pinBusAttr seg @name seg[7:0] -pg 1 -lvl 11 -x 4590 -y 840
load inst u_temp_manual_ctrl manual_temp_controller work:manual_temp_controller:NOFILE -autohide -attr @cell(#000000) manual_temp_controller -pinBusAttr rx_data @name rx_data[7:0] -pinBusAttr temp_applied @name temp_applied[13:0] -pinBusAttr temp_manual @name temp_manual[13:0] -pg 1 -lvl 5 -x 1660 -y 780
load inst u_tick_generator tick_generator work:tick_generator:NOFILE -autohide -attr @cell(#000000) tick_generator -pg 1 -lvl 1 -x 100 -y 1020
load inst u_uart_rx uart_rx work:uart_rx:NOFILE -autohide -attr @cell(#000000) uart_rx -pinBusAttr data_out @name data_out[7:0] -pg 1 -lvl 4 -x 1190 -y 1230
load inst u_uart_tx_dht uart_tx work:abstract:NOFILE -autohide -attr @cell(#000000) uart_tx -pinBusAttr tx_data @name tx_data[7:0] -pg 1 -lvl 10 -x 4030 -y 610
load inst u_uart_tx_ultra uart_tx work:uart_tx:NOFILE -autohide -attr @cell(#000000) uart_tx -pinBusAttr tx_data @name tx_data[7:0] -pg 1 -lvl 10 -x 4030 -y 140
load inst u_ultra_buzzer ultra_buzzer_controller work:ultra_buzzer_controller:NOFILE -autohide -attr @cell(#000000) ultra_buzzer_controller -pinBusAttr distance @name distance[13:0] -pg 1 -lvl 6 -x 2150 -y 800
load inst w_seg_data0_i RTL_MUX85 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[13:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[13:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[13:0] -pg 1 -lvl 5 -x 1660 -y 1130
load inst w_seg_data_dht11_i RTL_MUX85 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[13:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[13:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[13:0] -pg 1 -lvl 4 -x 1190 -y 1370
load inst w_seg_data_i RTL_MUX437 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[13:0] -pinBusAttr I0 @attr S0=1'b1 -pinBusAttr I1 @name I1[13:0] -pinBusAttr I1 @attr S1=1'b1 -pinBusAttr I2 @name I2[13:0] -pinBusAttr I2 @attr S2=1'b1 -pinBusAttr I3 @name I3[13:0] -pinBusAttr I3 @attr S3=1'b1 -pinBusAttr I4 @name I4[13:0] -pinBusAttr I4 @attr S4=1'b1 -pinBusAttr I5 @name I5[13:0] -pinBusAttr I5 @attr default -pinBusAttr O @name O[13:0] -pg 1 -lvl 6 -x 2150 -y 1160
load inst w_seg_data_tick_i RTL_MUX85 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[13:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[13:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[13:0] -pg 1 -lvl 3 -x 790 -y 1320
load net <const0> -ground -pin an3_i I1[3] -pin an3_i I1[2] -pin an3_i I1[1] -pin an3_i I1[0] -pin buzzer3_i I1 -pin display_value0_i I1[13] -pin display_value0_i I1[12] -pin display_value0_i I1[11] -pin display_value0_i I1[10] -pin display_value0_i I1[9] -pin display_value0_i I1[8] -pin display_value0_i I1[7] -pin display_value0_i I1[6] -pin display_value0_i I1[5] -pin display_value0_i I1[4] -pin display_value0_i I1[3] -pin display_value0_i I1[2] -pin display_value0_i I1[1] -pin display_value0_i I1[0] -port led[15] -port led[14] -port led[13] -port led[12] -port led[11] -port led[10] -port led[9] -port led[8] -port led[7] -port led[6] -port led[5] -pin motor_enable1_i I1[13] -pin motor_enable1_i I1[12] -pin motor_enable1_i I1[11] -pin motor_enable1_i I1[10] -pin motor_enable1_i I1[9] -pin motor_enable1_i I1[8] -pin motor_enable1_i I1[7] -pin motor_enable1_i I1[6] -pin motor_enable1_i I1[5] -pin motor_enable1_i I1[4] -pin motor_enable1_i I1[3] -pin motor_enable1_i I1[1] -pin motor_enable_i I0 -pin w_seg_data_dht11_i I1[13] -pin w_seg_data_dht11_i I1[12] -pin w_seg_data_dht11_i I1[11] -pin w_seg_data_dht11_i I1[10] -pin w_seg_data_dht11_i I1[9] -pin w_seg_data_dht11_i I1[8] -pin w_seg_data_dht11_i I1[7] -pin w_seg_data_dht11_i I1[6] -pin w_seg_data_dht11_i I1[5] -pin w_seg_data_dht11_i I1[4] -pin w_seg_data_dht11_i I1[3] -pin w_seg_data_dht11_i I1[2] -pin w_seg_data_dht11_i I1[1] -pin w_seg_data_dht11_i I1[0] -pin w_seg_data_i I0[13] -pin w_seg_data_i I0[12] -pin w_seg_data_i I0[11] -pin w_seg_data_i I0[10] -pin w_seg_data_i I0[9] -pin w_seg_data_i I0[8] -pin w_seg_data_i I0[7] -pin w_seg_data_i I0[6] -pin w_seg_data_i I0[5] -pin w_seg_data_i I0[4] -pin w_seg_data_i I0[3] -pin w_seg_data_i I0[2] -pin w_seg_data_i I0[1] -pin w_seg_data_i I0[0] -pin w_seg_data_i I2[13] -pin w_seg_data_i I2[12] -pin w_seg_data_i I2[11] -pin w_seg_data_i I2[10] -pin w_seg_data_i I2[9] -pin w_seg_data_i I2[8] -pin w_seg_data_i I2[7] -pin w_seg_data_i I2[6] -pin w_seg_data_i I2[5] -pin w_seg_data_i I2[4] -pin w_seg_data_i I2[3] -pin w_seg_data_i I2[2] -pin w_seg_data_i I2[1] -pin w_seg_data_i I2[0] -pin w_seg_data_i I3[13] -pin w_seg_data_i I3[12] -pin w_seg_data_i I3[11] -pin w_seg_data_i I3[10] -pin w_seg_data_i I3[9] -pin w_seg_data_i I3[8] -pin w_seg_data_i I3[7] -pin w_seg_data_i I3[6] -pin w_seg_data_i I3[5] -pin w_seg_data_i I3[4] -pin w_seg_data_i I3[3] -pin w_seg_data_i I3[2] -pin w_seg_data_i I3[1] -pin w_seg_data_i I3[0] -pin w_seg_data_i I4[13] -pin w_seg_data_i I4[12] -pin w_seg_data_i I4[11] -pin w_seg_data_i I4[10] -pin w_seg_data_i I4[9] -pin w_seg_data_i I4[8] -pin w_seg_data_i I4[7] -pin w_seg_data_i I4[6] -pin w_seg_data_i I4[5] -pin w_seg_data_i I4[4] -pin w_seg_data_i I4[3] -pin w_seg_data_i I4[2] -pin w_seg_data_i I4[1] -pin w_seg_data_i I4[0] -pin w_seg_data_i I5[13] -pin w_seg_data_i I5[12] -pin w_seg_data_i I5[11] -pin w_seg_data_i I5[10] -pin w_seg_data_i I5[9] -pin w_seg_data_i I5[8] -pin w_seg_data_i I5[7] -pin w_seg_data_i I5[6] -pin w_seg_data_i I5[5] -pin w_seg_data_i I5[4] -pin w_seg_data_i I5[3] -pin w_seg_data_i I5[2] -pin w_seg_data_i I5[1] -pin w_seg_data_i I5[0]
load net <const1> -power -pin motor_enable1_i I1[2] -pin motor_enable1_i I1[0] -pin motor_enable_i I1 -pin seg3_i I1[7] -pin seg3_i I1[6] -pin seg3_i I1[5] -pin seg3_i I1[4] -pin seg3_i I1[3] -pin seg3_i I1[2] -pin seg3_i I1[1] -pin seg3_i I1[0]
load net PWM_OUT -port PWM_OUT -pin u_mw_controller PWM_OUT
netloc PWM_OUT 1 11 1 NJ 850
load net PWM_OUT_HVAC -port PWM_OUT_HVAC -pin u_dc_motor PWM_OUT
netloc PWM_OUT_HVAC 1 11 1 NJ 700
load net PWM_SERVO -port PWM_SERVO -pin u_mw_controller PWM_SERVO
netloc PWM_SERVO 1 11 1 NJ 870
load net RsRx -port RsRx -pin u_uart_rx rx
netloc RsRx 1 0 4 NJ 1400 NJ 1400 NJ 1400 1020J
load net RsTx -port RsTx -pin RsTx_i O
netloc RsTx 1 11 1 NJ 210
load net RsTx_dht -pin RsTx_i I1 -pin u_uart_tx_dht tx
netloc RsTx_dht 1 10 1 4400 220n
load net RsTx_ultra -pin RsTx_i I0 -pin u_uart_tx_ultra tx
netloc RsTx_ultra 1 10 1 4400 150n
load net an0_i_n_0 -attr @rip O[3] -pin an0_i O[3] -pin an_i I1[3]
load net an0_i_n_1 -attr @rip O[2] -pin an0_i O[2] -pin an_i I1[2]
load net an0_i_n_2 -attr @rip O[1] -pin an0_i O[1] -pin an_i I1[1]
load net an0_i_n_3 -attr @rip O[0] -pin an0_i O[0] -pin an_i I1[0]
load net an1_i_n_0 -attr @rip O[3] -pin an0_i I1[3] -pin an1_i O[3]
load net an1_i_n_1 -attr @rip O[2] -pin an0_i I1[2] -pin an1_i O[2]
load net an1_i_n_2 -attr @rip O[1] -pin an0_i I1[1] -pin an1_i O[1]
load net an1_i_n_3 -attr @rip O[0] -pin an0_i I1[0] -pin an1_i O[0]
load net an2_i_n_0 -attr @rip O[3] -pin an1_i I1[3] -pin an2_i O[3]
load net an2_i_n_1 -attr @rip O[2] -pin an1_i I1[2] -pin an2_i O[2]
load net an2_i_n_2 -attr @rip O[1] -pin an1_i I1[1] -pin an2_i O[1]
load net an2_i_n_3 -attr @rip O[0] -pin an1_i I1[0] -pin an2_i O[0]
load net an3_i_n_0 -attr @rip O[3] -pin an2_i I1[3] -pin an3_i O[3]
load net an3_i_n_1 -attr @rip O[2] -pin an2_i I1[2] -pin an3_i O[2]
load net an3_i_n_2 -attr @rip O[1] -pin an2_i I1[1] -pin an3_i O[1]
load net an3_i_n_3 -attr @rip O[0] -pin an2_i I1[0] -pin an3_i O[0]
load net an[0] -attr @rip O[0] -port an[0] -pin an_i O[0]
load net an[1] -attr @rip O[1] -port an[1] -pin an_i O[1]
load net an[2] -attr @rip O[2] -port an[2] -pin an_i O[2]
load net an[3] -attr @rip O[3] -port an[3] -pin an_i O[3]
load net btn[0] -attr @rip btn[0] -port btn[0] -pin u0_button_debounce i_btn
load net btn[1] -attr @rip btn[1] -port btn[1] -pin u1_button_debounce i_btn
load net btn[2] -attr @rip btn[2] -port btn[2] -pin u2_button_debounce i_btn
load net btn[3] -attr @rip btn[3] -port btn[3] -pin u3_button_debounce i_btn
load net btn[4] -attr @rip btn[4] -port btn[4] -pin u4_button_debounce i_btn
load net buzzer -port buzzer -pin buzzer_i O
netloc buzzer 1 11 1 NJ 1090
load net buzzer0 -pin buzzer0_i O -pin buzzer_i I1
netloc buzzer0 1 10 1 4220 1070n
load net buzzer1 -pin buzzer0_i I1 -pin buzzer1_i O
netloc buzzer1 1 9 1 3750 820n
load net buzzer2 -pin buzzer1_i I1 -pin buzzer2_i__0 O
netloc buzzer2 1 8 1 N 830
load net buzzer2_i_n_0 -pin buzzer1_i I0 -pin buzzer2_i O -pin buzzer2_i__0 I0
netloc buzzer2_i_n_0 1 7 2 2860 770 3380
load net buzzer3 -pin buzzer2_i__0 I1 -pin buzzer3_i O
netloc buzzer3 1 7 1 2860 840n
load net buzzer_btn -pin buzzer2_i I1 -pin buzzer3_i I0 -pin buzzer_btn_i O
netloc buzzer_btn 1 6 1 2540 590n
load net buzzer_btn0 -pin buzzer_btn0_i O -pin buzzer_btn_i I0
netloc buzzer_btn0 1 5 1 1860 580n
load net buzzer_btn1 -pin buzzer_btn0_i I0 -pin buzzer_btn1_i O
netloc buzzer_btn1 1 4 1 1410 580n
load net buzzer_btn2 -pin buzzer_btn1_i I0 -pin buzzer_btn2_i O
netloc buzzer_btn2 1 3 1 1040 580n
load net clk -port clk -pin r_tick_reg C -pin u0_button_debounce i_clk -pin u1_button_debounce i_clk -pin u2_button_debounce i_clk -pin u3_button_debounce i_clk -pin u4_button_debounce i_clk -pin u_command_controller clk -pin u_data_sender clk -pin u_data_sender_dht clk -pin u_dc_motor clk -pin u_dht11_controller clk -pin u_fnd_controller clk -pin u_fnd_controller_hvac clk -pin u_hcsr04 clk -pin u_idle_fnd clk -pin u_latch clk -pin u_minsec_stopwatch clk -pin u_mw_controller clk -pin u_temp_manual_ctrl clk -pin u_tick_generator clk -pin u_uart_rx clk -pin u_uart_tx_dht clk -pin u_uart_tx_ultra clk -pin u_ultra_buzzer clk
netloc clk 1 0 11 20 1240 260 1160 600 1100 1020 1160 1410 950 1980 1040 2460 1210 2940 910 3360 720 3850 720 4300
load net dht11_data -port dht11_data -pin u_dht11_controller data_io
netloc dht11_data 1 2 10 540J 1520 NJ 1520 NJ 1520 NJ 1520 NJ 1520 NJ 1520 NJ 1520 3750J 1430 4440J 1290 NJ
load net display_value0_i_n_0 -attr @rip O[13] -pin display_value0_i O[13] -pin display_value_i I1[13]
load net display_value0_i_n_1 -attr @rip O[12] -pin display_value0_i O[12] -pin display_value_i I1[12]
load net display_value0_i_n_10 -attr @rip O[3] -pin display_value0_i O[3] -pin display_value_i I1[3]
load net display_value0_i_n_11 -attr @rip O[2] -pin display_value0_i O[2] -pin display_value_i I1[2]
load net display_value0_i_n_12 -attr @rip O[1] -pin display_value0_i O[1] -pin display_value_i I1[1]
load net display_value0_i_n_13 -attr @rip O[0] -pin display_value0_i O[0] -pin display_value_i I1[0]
load net display_value0_i_n_2 -attr @rip O[11] -pin display_value0_i O[11] -pin display_value_i I1[11]
load net display_value0_i_n_3 -attr @rip O[10] -pin display_value0_i O[10] -pin display_value_i I1[10]
load net display_value0_i_n_4 -attr @rip O[9] -pin display_value0_i O[9] -pin display_value_i I1[9]
load net display_value0_i_n_5 -attr @rip O[8] -pin display_value0_i O[8] -pin display_value_i I1[8]
load net display_value0_i_n_6 -attr @rip O[7] -pin display_value0_i O[7] -pin display_value_i I1[7]
load net display_value0_i_n_7 -attr @rip O[6] -pin display_value0_i O[6] -pin display_value_i I1[6]
load net display_value0_i_n_8 -attr @rip O[5] -pin display_value0_i O[5] -pin display_value_i I1[5]
load net display_value0_i_n_9 -attr @rip O[4] -pin display_value0_i O[4] -pin display_value_i I1[4]
load net display_value1 -pin display_value1_i O -pin display_value_i S
netloc display_value1 1 6 1 2380 1450n
load net display_value2 -pin display_value1_i I1 -pin display_value2_i__0 O
netloc display_value2 1 5 1 NJ 1460
load net display_value2_i_n_0 -pin display_value0_i S -pin display_value2_i O
netloc display_value2_i_n_0 1 5 1 N 1390
load net display_value[0] -attr @rip O[0] -pin display_value_i O[0] -pin u_fnd_controller_hvac input_data[0]
load net display_value[10] -attr @rip O[10] -pin display_value_i O[10] -pin u_fnd_controller_hvac input_data[10]
load net display_value[11] -attr @rip O[11] -pin display_value_i O[11] -pin u_fnd_controller_hvac input_data[11]
load net display_value[12] -attr @rip O[12] -pin display_value_i O[12] -pin u_fnd_controller_hvac input_data[12]
load net display_value[13] -attr @rip O[13] -pin display_value_i O[13] -pin u_fnd_controller_hvac input_data[13]
load net display_value[1] -attr @rip O[1] -pin display_value_i O[1] -pin u_fnd_controller_hvac input_data[1]
load net display_value[2] -attr @rip O[2] -pin display_value_i O[2] -pin u_fnd_controller_hvac input_data[2]
load net display_value[3] -attr @rip O[3] -pin display_value_i O[3] -pin u_fnd_controller_hvac input_data[3]
load net display_value[4] -attr @rip O[4] -pin display_value_i O[4] -pin u_fnd_controller_hvac input_data[4]
load net display_value[5] -attr @rip O[5] -pin display_value_i O[5] -pin u_fnd_controller_hvac input_data[5]
load net display_value[6] -attr @rip O[6] -pin display_value_i O[6] -pin u_fnd_controller_hvac input_data[6]
load net display_value[7] -attr @rip O[7] -pin display_value_i O[7] -pin u_fnd_controller_hvac input_data[7]
load net display_value[8] -attr @rip O[8] -pin display_value_i O[8] -pin u_fnd_controller_hvac input_data[8]
load net display_value[9] -attr @rip O[9] -pin display_value_i O[9] -pin u_fnd_controller_hvac input_data[9]
load net echo -port echo -pin u_hcsr04 echo
netloc echo 1 0 3 NJ 1220 NJ 1220 660J
load net enable0 -pin enable0_i O -pin u_dc_motor enable
netloc enable0 1 10 1 4440 430n
load net in1_in2[0] -attr @rip in1_in2[0] -port in1_in2[0] -pin u_mw_controller in1_in2[0]
load net in1_in2[1] -attr @rip in1_in2[1] -port in1_in2[1] -pin u_mw_controller in1_in2[1]
load net in1_in2_HVAC[0] -attr @rip in1_in2[0] -port in1_in2_HVAC[0] -pin u_dc_motor in1_in2[0]
load net in1_in2_HVAC[1] -attr @rip in1_in2[1] -port in1_in2_HVAC[1] -pin u_dc_motor in1_in2[1]
load net led[0] -attr @rip mode_enable[0] -pin an3_i S -pin buzzer3_i S -port led[0] -pin seg3_i S -pin u_command_controller mode_enable[0] -pin u_idle_fnd idle_enable -pin w_seg_data_i S0
load net led[1] -attr @rip mode_enable[1] -pin an2_i S -pin buzzer2_i__0 S -port led[1] -pin seg2_i S -pin start_trigger2_i I0 -pin u_command_controller mode_enable[1] -pin w_seg_data_dht11_i S -pin w_seg_data_i S1
load net led[2] -attr @rip mode_enable[2] -pin an1_i S -pin buzzer1_i S -pin display_value1_i I0 -pin display_value2_i I0 -port led[2] -pin seg1_i S -pin start_trigger2_i I1 -pin u_command_controller mode_enable[2] -pin u_dc_motor manual_mode -pin u_temp_manual_ctrl man_enable -pin w_seg_data_i S2
load net led[3] -attr @rip mode_enable[3] -pin an0_i S -pin buzzer0_i S -port led[3] -pin seg0_i S -pin u_command_controller mode_enable[3] -pin u_mw_controller mw_enable -pin w_seg_data_i S3
load net led[4] -attr @rip mode_enable[4] -pin an_i S -pin buzzer_i S -port led[4] -pin seg_i S -pin u_command_controller mode_enable[4] -pin u_minsec_stopwatch sw_enable -pin w_seg_data_i S4
load net motor_enable -pin enable0_i I0 -pin motor_enable_i O
netloc motor_enable 1 9 1 3890J 350n
load net motor_enable1 -pin motor_enable1_i O -pin motor_enable_i S
netloc motor_enable1 1 8 1 3400J 290n
load net p_0_in -pin enable0_i I1 -pin start_trigger1_i I0 -pin start_trigger1_i__0 I0 -pin start_trigger2_i O -pin u_ultra_buzzer hvac_enable
netloc p_0_in 1 5 5 1920 640 2480 440 NJ 440 NJ 440 NJ
load net r_tick -pin r_tick0_i I0 -pin r_tick_reg Q -pin w_seg_data_tick_i S
netloc r_tick 1 0 3 40 1260 NJ 1260 580
load net r_tick0 -pin r_tick0_i O -pin r_tick_reg D
netloc r_tick0 1 1 1 280J 1110n
load net reset -port reset -pin u0_button_debounce i_reset -pin u1_button_debounce i_reset -pin u2_button_debounce i_reset -pin u3_button_debounce i_reset -pin u4_button_debounce i_reset -pin u_command_controller reset -pin u_data_sender reset -pin u_data_sender_dht reset -pin u_dht11_controller reset -pin u_fnd_controller reset -pin u_fnd_controller_hvac reset -pin u_hcsr04 reset -pin u_idle_fnd reset -pin u_latch reset -pin u_minsec_stopwatch reset -pin u_mw_controller reset -pin u_temp_manual_ctrl reset -pin u_tick_generator reset -pin u_uart_rx reset -pin u_uart_tx_dht reset -pin u_uart_tx_ultra reset -pin u_ultra_buzzer reset
netloc reset 1 0 11 40 970 240 1180 640 1260 1060 1180 1450 1070 1960 1060 2440 1230 2900 460 3420 230 3870 970 4340J
load net seg0_i_n_0 -attr @rip O[7] -pin seg0_i O[7] -pin seg_i I1[7]
load net seg0_i_n_1 -attr @rip O[6] -pin seg0_i O[6] -pin seg_i I1[6]
load net seg0_i_n_2 -attr @rip O[5] -pin seg0_i O[5] -pin seg_i I1[5]
load net seg0_i_n_3 -attr @rip O[4] -pin seg0_i O[4] -pin seg_i I1[4]
load net seg0_i_n_4 -attr @rip O[3] -pin seg0_i O[3] -pin seg_i I1[3]
load net seg0_i_n_5 -attr @rip O[2] -pin seg0_i O[2] -pin seg_i I1[2]
load net seg0_i_n_6 -attr @rip O[1] -pin seg0_i O[1] -pin seg_i I1[1]
load net seg0_i_n_7 -attr @rip O[0] -pin seg0_i O[0] -pin seg_i I1[0]
load net seg1_i_n_0 -attr @rip O[7] -pin seg0_i I1[7] -pin seg1_i O[7]
load net seg1_i_n_1 -attr @rip O[6] -pin seg0_i I1[6] -pin seg1_i O[6]
load net seg1_i_n_2 -attr @rip O[5] -pin seg0_i I1[5] -pin seg1_i O[5]
load net seg1_i_n_3 -attr @rip O[4] -pin seg0_i I1[4] -pin seg1_i O[4]
load net seg1_i_n_4 -attr @rip O[3] -pin seg0_i I1[3] -pin seg1_i O[3]
load net seg1_i_n_5 -attr @rip O[2] -pin seg0_i I1[2] -pin seg1_i O[2]
load net seg1_i_n_6 -attr @rip O[1] -pin seg0_i I1[1] -pin seg1_i O[1]
load net seg1_i_n_7 -attr @rip O[0] -pin seg0_i I1[0] -pin seg1_i O[0]
load net seg2_i_n_0 -attr @rip O[7] -pin seg1_i I1[7] -pin seg2_i O[7]
load net seg2_i_n_1 -attr @rip O[6] -pin seg1_i I1[6] -pin seg2_i O[6]
load net seg2_i_n_2 -attr @rip O[5] -pin seg1_i I1[5] -pin seg2_i O[5]
load net seg2_i_n_3 -attr @rip O[4] -pin seg1_i I1[4] -pin seg2_i O[4]
load net seg2_i_n_4 -attr @rip O[3] -pin seg1_i I1[3] -pin seg2_i O[3]
load net seg2_i_n_5 -attr @rip O[2] -pin seg1_i I1[2] -pin seg2_i O[2]
load net seg2_i_n_6 -attr @rip O[1] -pin seg1_i I1[1] -pin seg2_i O[1]
load net seg2_i_n_7 -attr @rip O[0] -pin seg1_i I1[0] -pin seg2_i O[0]
load net seg3_i_n_0 -attr @rip O[7] -pin seg2_i I1[7] -pin seg3_i O[7]
load net seg3_i_n_1 -attr @rip O[6] -pin seg2_i I1[6] -pin seg3_i O[6]
load net seg3_i_n_2 -attr @rip O[5] -pin seg2_i I1[5] -pin seg3_i O[5]
load net seg3_i_n_3 -attr @rip O[4] -pin seg2_i I1[4] -pin seg3_i O[4]
load net seg3_i_n_4 -attr @rip O[3] -pin seg2_i I1[3] -pin seg3_i O[3]
load net seg3_i_n_5 -attr @rip O[2] -pin seg2_i I1[2] -pin seg3_i O[2]
load net seg3_i_n_6 -attr @rip O[1] -pin seg2_i I1[1] -pin seg3_i O[1]
load net seg3_i_n_7 -attr @rip O[0] -pin seg2_i I1[0] -pin seg3_i O[0]
load net seg[0] -attr @rip O[0] -port seg[0] -pin seg_i O[0]
load net seg[1] -attr @rip O[1] -port seg[1] -pin seg_i O[1]
load net seg[2] -attr @rip O[2] -port seg[2] -pin seg_i O[2]
load net seg[3] -attr @rip O[3] -port seg[3] -pin seg_i O[3]
load net seg[4] -attr @rip O[4] -port seg[4] -pin seg_i O[4]
load net seg[5] -attr @rip O[5] -port seg[5] -pin seg_i O[5]
load net seg[6] -attr @rip O[6] -port seg[6] -pin seg_i O[6]
load net seg[7] -attr @rip O[7] -port seg[7] -pin seg_i O[7]
load net start_trigger0 -pin start_trigger0_i O -pin u_data_sender start_trigger
netloc start_trigger0 1 8 1 3380 150n
load net start_trigger0_i__0_n_0 -pin start_trigger0_i__0 O -pin u_data_sender_dht start_trigger
netloc start_trigger0_i__0_n_0 1 8 1 3340 510n
load net start_trigger1 -pin start_trigger0_i I0 -pin start_trigger1_i O
netloc start_trigger1 1 7 1 N 380
load net start_trigger1_i__0_n_0 -pin start_trigger0_i__0 I0 -pin start_trigger1_i__0 O
netloc start_trigger1_i__0_n_0 1 7 1 2880 490n
load net start_trigger2 -pin start_trigger1_i__0 I1 -pin start_trigger2_i__0 O
netloc start_trigger2 1 6 1 NJ 500
load net sw[0] -attr @rip sw[0] -port sw[0] -pin u_mw_controller digit_sel -pin w_seg_data0_i S
load net sw[14] -attr @rip sw[14] -pin RsTx_i S -pin start_trigger1_i I1 -pin start_trigger2_i__0 I0 -port sw[14]
load net sw[1] -attr @rip sw[1] -pin display_value2_i I1 -pin display_value2_i__0 I0 -port sw[1]
load net trig -port trig -pin u_hcsr04 trig
netloc trig 1 3 9 1000J 1540 NJ 1540 NJ 1540 NJ 1540 NJ 1540 NJ 1540 3790J 1450 NJ 1450 NJ
load net tx_busy_dht -pin u_data_sender_dht tx_busy -pin u_uart_tx_dht tx_busy
netloc tx_busy_dht 1 8 3 3440 660 3770J 540 4380
load net tx_busy_ultra -pin u_data_sender tx_busy -pin u_uart_tx_ultra tx_busy
netloc tx_busy_ultra 1 8 3 3460 30 NJ 30 4300
load net tx_data_dht[0] -attr @rip tx_data[0] -pin u_data_sender_dht tx_data[0] -pin u_uart_tx_dht tx_data[0]
load net tx_data_dht[1] -attr @rip tx_data[1] -pin u_data_sender_dht tx_data[1] -pin u_uart_tx_dht tx_data[1]
load net tx_data_dht[2] -attr @rip tx_data[2] -pin u_data_sender_dht tx_data[2] -pin u_uart_tx_dht tx_data[2]
load net tx_data_dht[3] -attr @rip tx_data[3] -pin u_data_sender_dht tx_data[3] -pin u_uart_tx_dht tx_data[3]
load net tx_data_dht[4] -attr @rip tx_data[4] -pin u_data_sender_dht tx_data[4] -pin u_uart_tx_dht tx_data[4]
load net tx_data_dht[5] -attr @rip tx_data[5] -pin u_data_sender_dht tx_data[5] -pin u_uart_tx_dht tx_data[5]
load net tx_data_dht[6] -attr @rip tx_data[6] -pin u_data_sender_dht tx_data[6] -pin u_uart_tx_dht tx_data[6]
load net tx_data_dht[7] -attr @rip tx_data[7] -pin u_data_sender_dht tx_data[7] -pin u_uart_tx_dht tx_data[7]
load net tx_data_ultra[0] -attr @rip tx_data[0] -pin u_data_sender tx_data[0] -pin u_uart_tx_ultra tx_data[0]
load net tx_data_ultra[1] -attr @rip tx_data[1] -pin u_data_sender tx_data[1] -pin u_uart_tx_ultra tx_data[1]
load net tx_data_ultra[2] -attr @rip tx_data[2] -pin u_data_sender tx_data[2] -pin u_uart_tx_ultra tx_data[2]
load net tx_data_ultra[3] -attr @rip tx_data[3] -pin u_data_sender tx_data[3] -pin u_uart_tx_ultra tx_data[3]
load net tx_data_ultra[4] -attr @rip tx_data[4] -pin u_data_sender tx_data[4] -pin u_uart_tx_ultra tx_data[4]
load net tx_data_ultra[5] -attr @rip tx_data[5] -pin u_data_sender tx_data[5] -pin u_uart_tx_ultra tx_data[5]
load net tx_data_ultra[6] -attr @rip tx_data[6] -pin u_data_sender tx_data[6] -pin u_uart_tx_ultra tx_data[6]
load net tx_data_ultra[7] -attr @rip tx_data[7] -pin u_data_sender tx_data[7] -pin u_uart_tx_ultra tx_data[7]
load net tx_done_dht -pin u_data_sender_dht tx_done -pin u_uart_tx_dht tx_done
netloc tx_done_dht 1 8 3 3460 700 3810J 560 4300
load net tx_done_ultra -pin u_data_sender tx_done -pin u_uart_tx_ultra tx_done
netloc tx_done_ultra 1 8 3 3460 250 NJ 250 4300
load net tx_start_dht -pin u_data_sender_dht tx_start -pin u_uart_tx_dht tx_start
netloc tx_start_dht 1 9 1 3790 560n
load net tx_start_ultra -pin u_data_sender tx_start -pin u_uart_tx_ultra tx_start
netloc tx_start_ultra 1 9 1 3750 150n
load net w_an_auto[0] -attr @rip an[0] -pin an2_i I0[0] -pin u_fnd_controller an[0]
load net w_an_auto[1] -attr @rip an[1] -pin an2_i I0[1] -pin u_fnd_controller an[1]
load net w_an_auto[2] -attr @rip an[2] -pin an2_i I0[2] -pin u_fnd_controller an[2]
load net w_an_auto[3] -attr @rip an[3] -pin an2_i I0[3] -pin u_fnd_controller an[3]
load net w_an_idle[0] -attr @rip an[0] -pin an3_i I0[0] -pin u_idle_fnd an[0]
load net w_an_idle[1] -attr @rip an[1] -pin an3_i I0[1] -pin u_idle_fnd an[1]
load net w_an_idle[2] -attr @rip an[2] -pin an3_i I0[2] -pin u_idle_fnd an[2]
load net w_an_idle[3] -attr @rip an[3] -pin an3_i I0[3] -pin u_idle_fnd an[3]
load net w_an_manual[0] -attr @rip an[0] -pin an1_i I0[0] -pin u_fnd_controller_hvac an[0]
load net w_an_manual[1] -attr @rip an[1] -pin an1_i I0[1] -pin u_fnd_controller_hvac an[1]
load net w_an_manual[2] -attr @rip an[2] -pin an1_i I0[2] -pin u_fnd_controller_hvac an[2]
load net w_an_manual[3] -attr @rip an[3] -pin an1_i I0[3] -pin u_fnd_controller_hvac an[3]
load net w_an_mw[0] -attr @rip an[0] -pin an0_i I0[0] -pin u_mw_controller an[0]
load net w_an_mw[1] -attr @rip an[1] -pin an0_i I0[1] -pin u_mw_controller an[1]
load net w_an_mw[2] -attr @rip an[2] -pin an0_i I0[2] -pin u_mw_controller an[2]
load net w_an_mw[3] -attr @rip an[3] -pin an0_i I0[3] -pin u_mw_controller an[3]
load net w_an_sw[0] -attr @rip an[0] -pin an_i I0[0] -pin u_minsec_stopwatch an[0]
load net w_an_sw[1] -attr @rip an[1] -pin an_i I0[1] -pin u_minsec_stopwatch an[1]
load net w_an_sw[2] -attr @rip an[2] -pin an_i I0[2] -pin u_minsec_stopwatch an[2]
load net w_an_sw[3] -attr @rip an[3] -pin an_i I0[3] -pin u_minsec_stopwatch an[3]
load net w_btn_debounce_0 -attr @rip 0 -pin buzzer_btn2_i I0 -pin u0_button_debounce o_btn_clean -pin u_command_controller btnL -pin u_mw_controller btn[0]
netloc w_btn_debounce_0 1 2 9 620 10 NJ 10 NJ 10 NJ 10 NJ 10 NJ 10 NJ 10 3830 990 4320J
load net w_btn_debounce_1 -attr @rip 1 -pin buzzer_btn2_i I1 -pin u1_button_debounce o_btn_clean -pin u_minsec_stopwatch btn[1] -pin u_mw_controller btn[1]
load net w_btn_debounce_2 -pin buzzer_btn1_i I1 -pin u2_button_debounce o_btn_clean -pin u_minsec_stopwatch btn[0] -pin u_mw_controller btn[2]
load net w_btn_debounce_3 -pin buzzer_btn0_i I1 -pin u3_button_debounce o_btn_clean -pin u_minsec_stopwatch btn[2] -pin u_mw_controller btn[3] -pin u_temp_manual_ctrl btn_inc
load net w_btn_debounce_4 -pin buzzer_btn_i I1 -pin u4_button_debounce o_btn_clean -pin u_minsec_stopwatch btn[3] -pin u_mw_controller btn[4] -pin u_temp_manual_ctrl btn_dec
load net w_buzzer_mw -pin buzzer0_i I0 -pin u_mw_controller buzzer
netloc w_buzzer_mw 1 9 3 3910 1010 NJ 1010 4790
load net w_buzzer_sw -pin buzzer_i I0 -pin u_minsec_stopwatch buzzer_sw
netloc w_buzzer_sw 1 10 1 4240 1080n
load net w_buzzer_ultra -pin buzzer2_i I0 -pin u_ultra_buzzer buzzer_out
netloc w_buzzer_ultra 1 6 1 2460 760n
load net w_dht11_humid[0] -attr @rip humidity[0] -pin u_data_sender_dht humidity[0] -pin u_dht11_controller humidity[0] -pin w_seg_data_tick_i I0[0]
load net w_dht11_humid[10] -attr @rip humidity[10] -pin u_data_sender_dht humidity[10] -pin u_dht11_controller humidity[10] -pin w_seg_data_tick_i I0[10]
load net w_dht11_humid[11] -attr @rip humidity[11] -pin u_data_sender_dht humidity[11] -pin u_dht11_controller humidity[11] -pin w_seg_data_tick_i I0[11]
load net w_dht11_humid[12] -attr @rip humidity[12] -pin u_data_sender_dht humidity[12] -pin u_dht11_controller humidity[12] -pin w_seg_data_tick_i I0[12]
load net w_dht11_humid[13] -attr @rip humidity[13] -pin u_data_sender_dht humidity[13] -pin u_dht11_controller humidity[13] -pin w_seg_data_tick_i I0[13]
load net w_dht11_humid[1] -attr @rip humidity[1] -pin u_data_sender_dht humidity[1] -pin u_dht11_controller humidity[1] -pin w_seg_data_tick_i I0[1]
load net w_dht11_humid[2] -attr @rip humidity[2] -pin u_data_sender_dht humidity[2] -pin u_dht11_controller humidity[2] -pin w_seg_data_tick_i I0[2]
load net w_dht11_humid[3] -attr @rip humidity[3] -pin u_data_sender_dht humidity[3] -pin u_dht11_controller humidity[3] -pin w_seg_data_tick_i I0[3]
load net w_dht11_humid[4] -attr @rip humidity[4] -pin u_data_sender_dht humidity[4] -pin u_dht11_controller humidity[4] -pin w_seg_data_tick_i I0[4]
load net w_dht11_humid[5] -attr @rip humidity[5] -pin u_data_sender_dht humidity[5] -pin u_dht11_controller humidity[5] -pin w_seg_data_tick_i I0[5]
load net w_dht11_humid[6] -attr @rip humidity[6] -pin u_data_sender_dht humidity[6] -pin u_dht11_controller humidity[6] -pin w_seg_data_tick_i I0[6]
load net w_dht11_humid[7] -attr @rip humidity[7] -pin u_data_sender_dht humidity[7] -pin u_dht11_controller humidity[7] -pin w_seg_data_tick_i I0[7]
load net w_dht11_humid[8] -attr @rip humidity[8] -pin u_data_sender_dht humidity[8] -pin u_dht11_controller humidity[8] -pin w_seg_data_tick_i I0[8]
load net w_dht11_humid[9] -attr @rip humidity[9] -pin u_data_sender_dht humidity[9] -pin u_dht11_controller humidity[9] -pin w_seg_data_tick_i I0[9]
load net w_dht11_temp[0] -attr @rip temperature[0] -pin display_value_i I0[0] -pin u_data_sender_dht temperature[0] -pin u_dc_motor measured_temp[0] -pin u_dht11_controller temperature[0] -pin w_seg_data_tick_i I1[0]
load net w_dht11_temp[10] -attr @rip temperature[10] -pin display_value_i I0[10] -pin u_data_sender_dht temperature[10] -pin u_dc_motor measured_temp[10] -pin u_dht11_controller temperature[10] -pin w_seg_data_tick_i I1[10]
load net w_dht11_temp[11] -attr @rip temperature[11] -pin display_value_i I0[11] -pin u_data_sender_dht temperature[11] -pin u_dc_motor measured_temp[11] -pin u_dht11_controller temperature[11] -pin w_seg_data_tick_i I1[11]
load net w_dht11_temp[12] -attr @rip temperature[12] -pin display_value_i I0[12] -pin u_data_sender_dht temperature[12] -pin u_dc_motor measured_temp[12] -pin u_dht11_controller temperature[12] -pin w_seg_data_tick_i I1[12]
load net w_dht11_temp[13] -attr @rip temperature[13] -pin display_value_i I0[13] -pin u_data_sender_dht temperature[13] -pin u_dc_motor measured_temp[13] -pin u_dht11_controller temperature[13] -pin w_seg_data_tick_i I1[13]
load net w_dht11_temp[1] -attr @rip temperature[1] -pin display_value_i I0[1] -pin u_data_sender_dht temperature[1] -pin u_dc_motor measured_temp[1] -pin u_dht11_controller temperature[1] -pin w_seg_data_tick_i I1[1]
load net w_dht11_temp[2] -attr @rip temperature[2] -pin display_value_i I0[2] -pin u_data_sender_dht temperature[2] -pin u_dc_motor measured_temp[2] -pin u_dht11_controller temperature[2] -pin w_seg_data_tick_i I1[2]
load net w_dht11_temp[3] -attr @rip temperature[3] -pin display_value_i I0[3] -pin u_data_sender_dht temperature[3] -pin u_dc_motor measured_temp[3] -pin u_dht11_controller temperature[3] -pin w_seg_data_tick_i I1[3]
load net w_dht11_temp[4] -attr @rip temperature[4] -pin display_value_i I0[4] -pin u_data_sender_dht temperature[4] -pin u_dc_motor measured_temp[4] -pin u_dht11_controller temperature[4] -pin w_seg_data_tick_i I1[4]
load net w_dht11_temp[5] -attr @rip temperature[5] -pin display_value_i I0[5] -pin u_data_sender_dht temperature[5] -pin u_dc_motor measured_temp[5] -pin u_dht11_controller temperature[5] -pin w_seg_data_tick_i I1[5]
load net w_dht11_temp[6] -attr @rip temperature[6] -pin display_value_i I0[6] -pin u_data_sender_dht temperature[6] -pin u_dc_motor measured_temp[6] -pin u_dht11_controller temperature[6] -pin w_seg_data_tick_i I1[6]
load net w_dht11_temp[7] -attr @rip temperature[7] -pin display_value_i I0[7] -pin u_data_sender_dht temperature[7] -pin u_dc_motor measured_temp[7] -pin u_dht11_controller temperature[7] -pin w_seg_data_tick_i I1[7]
load net w_dht11_temp[8] -attr @rip temperature[8] -pin display_value_i I0[8] -pin u_data_sender_dht temperature[8] -pin u_dc_motor measured_temp[8] -pin u_dht11_controller temperature[8] -pin w_seg_data_tick_i I1[8]
load net w_dht11_temp[9] -attr @rip temperature[9] -pin display_value_i I0[9] -pin u_data_sender_dht temperature[9] -pin u_dc_motor measured_temp[9] -pin u_dht11_controller temperature[9] -pin w_seg_data_tick_i I1[9]
load net w_distance_cm[0] -attr @rip distance_cm[0] -pin u_hcsr04 distance_cm[0] -pin u_latch distance_cm[0]
load net w_distance_cm[10] -attr @rip distance_cm[10] -pin u_hcsr04 distance_cm[10] -pin u_latch distance_cm[10]
load net w_distance_cm[11] -attr @rip distance_cm[11] -pin u_hcsr04 distance_cm[11] -pin u_latch distance_cm[11]
load net w_distance_cm[12] -attr @rip distance_cm[12] -pin u_hcsr04 distance_cm[12] -pin u_latch distance_cm[12]
load net w_distance_cm[13] -attr @rip distance_cm[13] -pin u_hcsr04 distance_cm[13] -pin u_latch distance_cm[13]
load net w_distance_cm[1] -attr @rip distance_cm[1] -pin u_hcsr04 distance_cm[1] -pin u_latch distance_cm[1]
load net w_distance_cm[2] -attr @rip distance_cm[2] -pin u_hcsr04 distance_cm[2] -pin u_latch distance_cm[2]
load net w_distance_cm[3] -attr @rip distance_cm[3] -pin u_hcsr04 distance_cm[3] -pin u_latch distance_cm[3]
load net w_distance_cm[4] -attr @rip distance_cm[4] -pin u_hcsr04 distance_cm[4] -pin u_latch distance_cm[4]
load net w_distance_cm[5] -attr @rip distance_cm[5] -pin u_hcsr04 distance_cm[5] -pin u_latch distance_cm[5]
load net w_distance_cm[6] -attr @rip distance_cm[6] -pin u_hcsr04 distance_cm[6] -pin u_latch distance_cm[6]
load net w_distance_cm[7] -attr @rip distance_cm[7] -pin u_hcsr04 distance_cm[7] -pin u_latch distance_cm[7]
load net w_distance_cm[8] -attr @rip distance_cm[8] -pin u_hcsr04 distance_cm[8] -pin u_latch distance_cm[8]
load net w_distance_cm[9] -attr @rip distance_cm[9] -pin u_hcsr04 distance_cm[9] -pin u_latch distance_cm[9]
load net w_latched_distance[0] -attr @rip latched_distance[0] -pin motor_enable1_i I0[0] -pin u_data_sender send_data[0] -pin u_latch latched_distance[0] -pin u_ultra_buzzer distance[0] -pin w_seg_data0_i I0[0]
load net w_latched_distance[10] -attr @rip latched_distance[10] -pin motor_enable1_i I0[10] -pin u_data_sender send_data[10] -pin u_latch latched_distance[10] -pin u_ultra_buzzer distance[10] -pin w_seg_data0_i I0[10]
load net w_latched_distance[11] -attr @rip latched_distance[11] -pin motor_enable1_i I0[11] -pin u_data_sender send_data[11] -pin u_latch latched_distance[11] -pin u_ultra_buzzer distance[11] -pin w_seg_data0_i I0[11]
load net w_latched_distance[12] -attr @rip latched_distance[12] -pin motor_enable1_i I0[12] -pin u_data_sender send_data[12] -pin u_latch latched_distance[12] -pin u_ultra_buzzer distance[12] -pin w_seg_data0_i I0[12]
load net w_latched_distance[13] -attr @rip latched_distance[13] -pin motor_enable1_i I0[13] -pin u_data_sender send_data[13] -pin u_latch latched_distance[13] -pin u_ultra_buzzer distance[13] -pin w_seg_data0_i I0[13]
load net w_latched_distance[1] -attr @rip latched_distance[1] -pin motor_enable1_i I0[1] -pin u_data_sender send_data[1] -pin u_latch latched_distance[1] -pin u_ultra_buzzer distance[1] -pin w_seg_data0_i I0[1]
load net w_latched_distance[2] -attr @rip latched_distance[2] -pin motor_enable1_i I0[2] -pin u_data_sender send_data[2] -pin u_latch latched_distance[2] -pin u_ultra_buzzer distance[2] -pin w_seg_data0_i I0[2]
load net w_latched_distance[3] -attr @rip latched_distance[3] -pin motor_enable1_i I0[3] -pin u_data_sender send_data[3] -pin u_latch latched_distance[3] -pin u_ultra_buzzer distance[3] -pin w_seg_data0_i I0[3]
load net w_latched_distance[4] -attr @rip latched_distance[4] -pin motor_enable1_i I0[4] -pin u_data_sender send_data[4] -pin u_latch latched_distance[4] -pin u_ultra_buzzer distance[4] -pin w_seg_data0_i I0[4]
load net w_latched_distance[5] -attr @rip latched_distance[5] -pin motor_enable1_i I0[5] -pin u_data_sender send_data[5] -pin u_latch latched_distance[5] -pin u_ultra_buzzer distance[5] -pin w_seg_data0_i I0[5]
load net w_latched_distance[6] -attr @rip latched_distance[6] -pin motor_enable1_i I0[6] -pin u_data_sender send_data[6] -pin u_latch latched_distance[6] -pin u_ultra_buzzer distance[6] -pin w_seg_data0_i I0[6]
load net w_latched_distance[7] -attr @rip latched_distance[7] -pin motor_enable1_i I0[7] -pin u_data_sender send_data[7] -pin u_latch latched_distance[7] -pin u_ultra_buzzer distance[7] -pin w_seg_data0_i I0[7]
load net w_latched_distance[8] -attr @rip latched_distance[8] -pin motor_enable1_i I0[8] -pin u_data_sender send_data[8] -pin u_latch latched_distance[8] -pin u_ultra_buzzer distance[8] -pin w_seg_data0_i I0[8]
load net w_latched_distance[9] -attr @rip latched_distance[9] -pin motor_enable1_i I0[9] -pin u_data_sender send_data[9] -pin u_latch latched_distance[9] -pin u_ultra_buzzer distance[9] -pin w_seg_data0_i I0[9]
load net w_rx_data[0] -attr @rip data_out[0] -pin u_command_controller rx_data[0] -pin u_temp_manual_ctrl rx_data[0] -pin u_uart_rx data_out[0]
load net w_rx_data[1] -attr @rip data_out[1] -pin u_command_controller rx_data[1] -pin u_temp_manual_ctrl rx_data[1] -pin u_uart_rx data_out[1]
load net w_rx_data[2] -attr @rip data_out[2] -pin u_command_controller rx_data[2] -pin u_temp_manual_ctrl rx_data[2] -pin u_uart_rx data_out[2]
load net w_rx_data[3] -attr @rip data_out[3] -pin u_command_controller rx_data[3] -pin u_temp_manual_ctrl rx_data[3] -pin u_uart_rx data_out[3]
load net w_rx_data[4] -attr @rip data_out[4] -pin u_command_controller rx_data[4] -pin u_temp_manual_ctrl rx_data[4] -pin u_uart_rx data_out[4]
load net w_rx_data[5] -attr @rip data_out[5] -pin u_command_controller rx_data[5] -pin u_temp_manual_ctrl rx_data[5] -pin u_uart_rx data_out[5]
load net w_rx_data[6] -attr @rip data_out[6] -pin u_command_controller rx_data[6] -pin u_temp_manual_ctrl rx_data[6] -pin u_uart_rx data_out[6]
load net w_rx_data[7] -attr @rip data_out[7] -pin u_command_controller rx_data[7] -pin u_temp_manual_ctrl rx_data[7] -pin u_uart_rx data_out[7]
load net w_rx_done -pin u_command_controller rx_done -pin u_temp_manual_ctrl rx_done -pin u_uart_rx rx_done
netloc w_rx_done 1 4 6 1510 1590 NJ 1590 NJ 1590 NJ 1590 NJ 1590 NJ
load net w_seg_data0_i_n_0 -attr @rip O[13] -pin w_seg_data0_i O[13] -pin w_seg_data_i I1[13]
load net w_seg_data0_i_n_1 -attr @rip O[12] -pin w_seg_data0_i O[12] -pin w_seg_data_i I1[12]
load net w_seg_data0_i_n_10 -attr @rip O[3] -pin w_seg_data0_i O[3] -pin w_seg_data_i I1[3]
load net w_seg_data0_i_n_11 -attr @rip O[2] -pin w_seg_data0_i O[2] -pin w_seg_data_i I1[2]
load net w_seg_data0_i_n_12 -attr @rip O[1] -pin w_seg_data0_i O[1] -pin w_seg_data_i I1[1]
load net w_seg_data0_i_n_13 -attr @rip O[0] -pin w_seg_data0_i O[0] -pin w_seg_data_i I1[0]
load net w_seg_data0_i_n_2 -attr @rip O[11] -pin w_seg_data0_i O[11] -pin w_seg_data_i I1[11]
load net w_seg_data0_i_n_3 -attr @rip O[10] -pin w_seg_data0_i O[10] -pin w_seg_data_i I1[10]
load net w_seg_data0_i_n_4 -attr @rip O[9] -pin w_seg_data0_i O[9] -pin w_seg_data_i I1[9]
load net w_seg_data0_i_n_5 -attr @rip O[8] -pin w_seg_data0_i O[8] -pin w_seg_data_i I1[8]
load net w_seg_data0_i_n_6 -attr @rip O[7] -pin w_seg_data0_i O[7] -pin w_seg_data_i I1[7]
load net w_seg_data0_i_n_7 -attr @rip O[6] -pin w_seg_data0_i O[6] -pin w_seg_data_i I1[6]
load net w_seg_data0_i_n_8 -attr @rip O[5] -pin w_seg_data0_i O[5] -pin w_seg_data_i I1[5]
load net w_seg_data0_i_n_9 -attr @rip O[4] -pin w_seg_data0_i O[4] -pin w_seg_data_i I1[4]
load net w_seg_data[0] -attr @rip O[0] -pin u_fnd_controller input_data[0] -pin w_seg_data_i O[0]
load net w_seg_data[10] -attr @rip O[10] -pin u_fnd_controller input_data[10] -pin w_seg_data_i O[10]
load net w_seg_data[11] -attr @rip O[11] -pin u_fnd_controller input_data[11] -pin w_seg_data_i O[11]
load net w_seg_data[12] -attr @rip O[12] -pin u_fnd_controller input_data[12] -pin w_seg_data_i O[12]
load net w_seg_data[13] -attr @rip O[13] -pin u_fnd_controller input_data[13] -pin w_seg_data_i O[13]
load net w_seg_data[1] -attr @rip O[1] -pin u_fnd_controller input_data[1] -pin w_seg_data_i O[1]
load net w_seg_data[2] -attr @rip O[2] -pin u_fnd_controller input_data[2] -pin w_seg_data_i O[2]
load net w_seg_data[3] -attr @rip O[3] -pin u_fnd_controller input_data[3] -pin w_seg_data_i O[3]
load net w_seg_data[4] -attr @rip O[4] -pin u_fnd_controller input_data[4] -pin w_seg_data_i O[4]
load net w_seg_data[5] -attr @rip O[5] -pin u_fnd_controller input_data[5] -pin w_seg_data_i O[5]
load net w_seg_data[6] -attr @rip O[6] -pin u_fnd_controller input_data[6] -pin w_seg_data_i O[6]
load net w_seg_data[7] -attr @rip O[7] -pin u_fnd_controller input_data[7] -pin w_seg_data_i O[7]
load net w_seg_data[8] -attr @rip O[8] -pin u_fnd_controller input_data[8] -pin w_seg_data_i O[8]
load net w_seg_data[9] -attr @rip O[9] -pin u_fnd_controller input_data[9] -pin w_seg_data_i O[9]
load net w_seg_data_auto[0] -attr @rip seg_data[0] -pin seg2_i I0[0] -pin u_fnd_controller seg_data[0]
load net w_seg_data_auto[1] -attr @rip seg_data[1] -pin seg2_i I0[1] -pin u_fnd_controller seg_data[1]
load net w_seg_data_auto[2] -attr @rip seg_data[2] -pin seg2_i I0[2] -pin u_fnd_controller seg_data[2]
load net w_seg_data_auto[3] -attr @rip seg_data[3] -pin seg2_i I0[3] -pin u_fnd_controller seg_data[3]
load net w_seg_data_auto[4] -attr @rip seg_data[4] -pin seg2_i I0[4] -pin u_fnd_controller seg_data[4]
load net w_seg_data_auto[5] -attr @rip seg_data[5] -pin seg2_i I0[5] -pin u_fnd_controller seg_data[5]
load net w_seg_data_auto[6] -attr @rip seg_data[6] -pin seg2_i I0[6] -pin u_fnd_controller seg_data[6]
load net w_seg_data_auto[7] -attr @rip seg_data[7] -pin seg2_i I0[7] -pin u_fnd_controller seg_data[7]
load net w_seg_data_dht11[0] -attr @rip O[0] -pin w_seg_data0_i I1[0] -pin w_seg_data_dht11_i O[0]
load net w_seg_data_dht11[10] -attr @rip O[10] -pin w_seg_data0_i I1[10] -pin w_seg_data_dht11_i O[10]
load net w_seg_data_dht11[11] -attr @rip O[11] -pin w_seg_data0_i I1[11] -pin w_seg_data_dht11_i O[11]
load net w_seg_data_dht11[12] -attr @rip O[12] -pin w_seg_data0_i I1[12] -pin w_seg_data_dht11_i O[12]
load net w_seg_data_dht11[13] -attr @rip O[13] -pin w_seg_data0_i I1[13] -pin w_seg_data_dht11_i O[13]
load net w_seg_data_dht11[1] -attr @rip O[1] -pin w_seg_data0_i I1[1] -pin w_seg_data_dht11_i O[1]
load net w_seg_data_dht11[2] -attr @rip O[2] -pin w_seg_data0_i I1[2] -pin w_seg_data_dht11_i O[2]
load net w_seg_data_dht11[3] -attr @rip O[3] -pin w_seg_data0_i I1[3] -pin w_seg_data_dht11_i O[3]
load net w_seg_data_dht11[4] -attr @rip O[4] -pin w_seg_data0_i I1[4] -pin w_seg_data_dht11_i O[4]
load net w_seg_data_dht11[5] -attr @rip O[5] -pin w_seg_data0_i I1[5] -pin w_seg_data_dht11_i O[5]
load net w_seg_data_dht11[6] -attr @rip O[6] -pin w_seg_data0_i I1[6] -pin w_seg_data_dht11_i O[6]
load net w_seg_data_dht11[7] -attr @rip O[7] -pin w_seg_data0_i I1[7] -pin w_seg_data_dht11_i O[7]
load net w_seg_data_dht11[8] -attr @rip O[8] -pin w_seg_data0_i I1[8] -pin w_seg_data_dht11_i O[8]
load net w_seg_data_dht11[9] -attr @rip O[9] -pin w_seg_data0_i I1[9] -pin w_seg_data_dht11_i O[9]
load net w_seg_data_idle[0] -attr @rip seg[0] -pin seg3_i I0[0] -pin u_idle_fnd seg[0]
load net w_seg_data_idle[1] -attr @rip seg[1] -pin seg3_i I0[1] -pin u_idle_fnd seg[1]
load net w_seg_data_idle[2] -attr @rip seg[2] -pin seg3_i I0[2] -pin u_idle_fnd seg[2]
load net w_seg_data_idle[3] -attr @rip seg[3] -pin seg3_i I0[3] -pin u_idle_fnd seg[3]
load net w_seg_data_idle[4] -attr @rip seg[4] -pin seg3_i I0[4] -pin u_idle_fnd seg[4]
load net w_seg_data_idle[5] -attr @rip seg[5] -pin seg3_i I0[5] -pin u_idle_fnd seg[5]
load net w_seg_data_idle[6] -attr @rip seg[6] -pin seg3_i I0[6] -pin u_idle_fnd seg[6]
load net w_seg_data_idle[7] -attr @rip seg[7] -pin seg3_i I0[7] -pin u_idle_fnd seg[7]
load net w_seg_data_manual[0] -attr @rip seg_data[0] -pin seg1_i I0[0] -pin u_fnd_controller_hvac seg_data[0]
load net w_seg_data_manual[1] -attr @rip seg_data[1] -pin seg1_i I0[1] -pin u_fnd_controller_hvac seg_data[1]
load net w_seg_data_manual[2] -attr @rip seg_data[2] -pin seg1_i I0[2] -pin u_fnd_controller_hvac seg_data[2]
load net w_seg_data_manual[3] -attr @rip seg_data[3] -pin seg1_i I0[3] -pin u_fnd_controller_hvac seg_data[3]
load net w_seg_data_manual[4] -attr @rip seg_data[4] -pin seg1_i I0[4] -pin u_fnd_controller_hvac seg_data[4]
load net w_seg_data_manual[5] -attr @rip seg_data[5] -pin seg1_i I0[5] -pin u_fnd_controller_hvac seg_data[5]
load net w_seg_data_manual[6] -attr @rip seg_data[6] -pin seg1_i I0[6] -pin u_fnd_controller_hvac seg_data[6]
load net w_seg_data_manual[7] -attr @rip seg_data[7] -pin seg1_i I0[7] -pin u_fnd_controller_hvac seg_data[7]
load net w_seg_data_mw[0] -attr @rip seg[0] -pin seg0_i I0[0] -pin u_mw_controller seg[0]
load net w_seg_data_mw[1] -attr @rip seg[1] -pin seg0_i I0[1] -pin u_mw_controller seg[1]
load net w_seg_data_mw[2] -attr @rip seg[2] -pin seg0_i I0[2] -pin u_mw_controller seg[2]
load net w_seg_data_mw[3] -attr @rip seg[3] -pin seg0_i I0[3] -pin u_mw_controller seg[3]
load net w_seg_data_mw[4] -attr @rip seg[4] -pin seg0_i I0[4] -pin u_mw_controller seg[4]
load net w_seg_data_mw[5] -attr @rip seg[5] -pin seg0_i I0[5] -pin u_mw_controller seg[5]
load net w_seg_data_mw[6] -attr @rip seg[6] -pin seg0_i I0[6] -pin u_mw_controller seg[6]
load net w_seg_data_mw[7] -attr @rip seg[7] -pin seg0_i I0[7] -pin u_mw_controller seg[7]
load net w_seg_data_sw[0] -attr @rip seg[0] -pin seg_i I0[0] -pin u_minsec_stopwatch seg[0]
load net w_seg_data_sw[1] -attr @rip seg[1] -pin seg_i I0[1] -pin u_minsec_stopwatch seg[1]
load net w_seg_data_sw[2] -attr @rip seg[2] -pin seg_i I0[2] -pin u_minsec_stopwatch seg[2]
load net w_seg_data_sw[3] -attr @rip seg[3] -pin seg_i I0[3] -pin u_minsec_stopwatch seg[3]
load net w_seg_data_sw[4] -attr @rip seg[4] -pin seg_i I0[4] -pin u_minsec_stopwatch seg[4]
load net w_seg_data_sw[5] -attr @rip seg[5] -pin seg_i I0[5] -pin u_minsec_stopwatch seg[5]
load net w_seg_data_sw[6] -attr @rip seg[6] -pin seg_i I0[6] -pin u_minsec_stopwatch seg[6]
load net w_seg_data_sw[7] -attr @rip seg[7] -pin seg_i I0[7] -pin u_minsec_stopwatch seg[7]
load net w_seg_data_tick[0] -attr @rip O[0] -pin w_seg_data_dht11_i I0[0] -pin w_seg_data_tick_i O[0]
load net w_seg_data_tick[10] -attr @rip O[10] -pin w_seg_data_dht11_i I0[10] -pin w_seg_data_tick_i O[10]
load net w_seg_data_tick[11] -attr @rip O[11] -pin w_seg_data_dht11_i I0[11] -pin w_seg_data_tick_i O[11]
load net w_seg_data_tick[12] -attr @rip O[12] -pin w_seg_data_dht11_i I0[12] -pin w_seg_data_tick_i O[12]
load net w_seg_data_tick[13] -attr @rip O[13] -pin w_seg_data_dht11_i I0[13] -pin w_seg_data_tick_i O[13]
load net w_seg_data_tick[1] -attr @rip O[1] -pin w_seg_data_dht11_i I0[1] -pin w_seg_data_tick_i O[1]
load net w_seg_data_tick[2] -attr @rip O[2] -pin w_seg_data_dht11_i I0[2] -pin w_seg_data_tick_i O[2]
load net w_seg_data_tick[3] -attr @rip O[3] -pin w_seg_data_dht11_i I0[3] -pin w_seg_data_tick_i O[3]
load net w_seg_data_tick[4] -attr @rip O[4] -pin w_seg_data_dht11_i I0[4] -pin w_seg_data_tick_i O[4]
load net w_seg_data_tick[5] -attr @rip O[5] -pin w_seg_data_dht11_i I0[5] -pin w_seg_data_tick_i O[5]
load net w_seg_data_tick[6] -attr @rip O[6] -pin w_seg_data_dht11_i I0[6] -pin w_seg_data_tick_i O[6]
load net w_seg_data_tick[7] -attr @rip O[7] -pin w_seg_data_dht11_i I0[7] -pin w_seg_data_tick_i O[7]
load net w_seg_data_tick[8] -attr @rip O[8] -pin w_seg_data_dht11_i I0[8] -pin w_seg_data_tick_i O[8]
load net w_seg_data_tick[9] -attr @rip O[9] -pin w_seg_data_dht11_i I0[9] -pin w_seg_data_tick_i O[9]
load net w_temp_applied[0] -attr @rip temp_applied[0] -pin u_dc_motor target_temp[0] -pin u_temp_manual_ctrl temp_applied[0]
load net w_temp_applied[10] -attr @rip temp_applied[10] -pin u_dc_motor target_temp[10] -pin u_temp_manual_ctrl temp_applied[10]
load net w_temp_applied[11] -attr @rip temp_applied[11] -pin u_dc_motor target_temp[11] -pin u_temp_manual_ctrl temp_applied[11]
load net w_temp_applied[12] -attr @rip temp_applied[12] -pin u_dc_motor target_temp[12] -pin u_temp_manual_ctrl temp_applied[12]
load net w_temp_applied[13] -attr @rip temp_applied[13] -pin u_dc_motor target_temp[13] -pin u_temp_manual_ctrl temp_applied[13]
load net w_temp_applied[1] -attr @rip temp_applied[1] -pin u_dc_motor target_temp[1] -pin u_temp_manual_ctrl temp_applied[1]
load net w_temp_applied[2] -attr @rip temp_applied[2] -pin u_dc_motor target_temp[2] -pin u_temp_manual_ctrl temp_applied[2]
load net w_temp_applied[3] -attr @rip temp_applied[3] -pin u_dc_motor target_temp[3] -pin u_temp_manual_ctrl temp_applied[3]
load net w_temp_applied[4] -attr @rip temp_applied[4] -pin u_dc_motor target_temp[4] -pin u_temp_manual_ctrl temp_applied[4]
load net w_temp_applied[5] -attr @rip temp_applied[5] -pin u_dc_motor target_temp[5] -pin u_temp_manual_ctrl temp_applied[5]
load net w_temp_applied[6] -attr @rip temp_applied[6] -pin u_dc_motor target_temp[6] -pin u_temp_manual_ctrl temp_applied[6]
load net w_temp_applied[7] -attr @rip temp_applied[7] -pin u_dc_motor target_temp[7] -pin u_temp_manual_ctrl temp_applied[7]
load net w_temp_applied[8] -attr @rip temp_applied[8] -pin u_dc_motor target_temp[8] -pin u_temp_manual_ctrl temp_applied[8]
load net w_temp_applied[9] -attr @rip temp_applied[9] -pin u_dc_motor target_temp[9] -pin u_temp_manual_ctrl temp_applied[9]
load net w_temp_manual[0] -attr @rip temp_manual[0] -pin display_value0_i I0[0] -pin u_temp_manual_ctrl temp_manual[0]
load net w_temp_manual[10] -attr @rip temp_manual[10] -pin display_value0_i I0[10] -pin u_temp_manual_ctrl temp_manual[10]
load net w_temp_manual[11] -attr @rip temp_manual[11] -pin display_value0_i I0[11] -pin u_temp_manual_ctrl temp_manual[11]
load net w_temp_manual[12] -attr @rip temp_manual[12] -pin display_value0_i I0[12] -pin u_temp_manual_ctrl temp_manual[12]
load net w_temp_manual[13] -attr @rip temp_manual[13] -pin display_value0_i I0[13] -pin u_temp_manual_ctrl temp_manual[13]
load net w_temp_manual[1] -attr @rip temp_manual[1] -pin display_value0_i I0[1] -pin u_temp_manual_ctrl temp_manual[1]
load net w_temp_manual[2] -attr @rip temp_manual[2] -pin display_value0_i I0[2] -pin u_temp_manual_ctrl temp_manual[2]
load net w_temp_manual[3] -attr @rip temp_manual[3] -pin display_value0_i I0[3] -pin u_temp_manual_ctrl temp_manual[3]
load net w_temp_manual[4] -attr @rip temp_manual[4] -pin display_value0_i I0[4] -pin u_temp_manual_ctrl temp_manual[4]
load net w_temp_manual[5] -attr @rip temp_manual[5] -pin display_value0_i I0[5] -pin u_temp_manual_ctrl temp_manual[5]
load net w_temp_manual[6] -attr @rip temp_manual[6] -pin display_value0_i I0[6] -pin u_temp_manual_ctrl temp_manual[6]
load net w_temp_manual[7] -attr @rip temp_manual[7] -pin display_value0_i I0[7] -pin u_temp_manual_ctrl temp_manual[7]
load net w_temp_manual[8] -attr @rip temp_manual[8] -pin display_value0_i I0[8] -pin u_temp_manual_ctrl temp_manual[8]
load net w_temp_manual[9] -attr @rip temp_manual[9] -pin display_value0_i I0[9] -pin u_temp_manual_ctrl temp_manual[9]
load net w_tick -pin r_tick_reg CE -pin start_trigger0_i I1 -pin start_trigger0_i__0 I1 -pin u_hcsr04 start -pin u_tick_generator tick
netloc w_tick 1 1 7 220 1200 620 660 NJ 660 NJ 660 NJ 660 NJ 660 2860
load net w_ultra_done -pin u_hcsr04 done -pin u_latch done
netloc w_ultra_done 1 3 1 1040 1100n
load netBundle @btn 5 btn[4] btn[3] btn[2] btn[1] btn[0] -autobundled
netbloc @btn 1 0 2 NJ 430 280
load netBundle @sw 3 sw[14] sw[1] sw[0] -autobundled
netbloc @sw 1 0 11 NJ 1460 NJ 1460 NJ 1460 NJ 1460 1530 1190N 1880 460 2460 220 NJ 220 3400J 270 NJ 270 4420
load netBundle @an 4 an[3] an[2] an[1] an[0] -autobundled
netbloc @an 1 11 1 NJ 1350
load netBundle @in1_in2 2 in1_in2[1] in1_in2[0] -autobundled
netbloc @in1_in2 1 11 1 NJ 930
load netBundle @in1_in2_HVAC 2 in1_in2_HVAC[1] in1_in2_HVAC[0] -autobundled
netbloc @in1_in2_HVAC 1 11 1 NJ 720
load netBundle @led 5 led[4] led[3] led[2] led[1] led[0] -autobundled
netbloc @led 1 4 8 1470 1210 2000 1270N 2480 1040N 2980 1030N 3440 1020N 3890 950N 4380 1410N 4770J
load netBundle @seg 8 seg[7] seg[6] seg[5] seg[4] seg[3] seg[2] seg[1] seg[0] -autobundled
netbloc @seg 1 11 1 NJ 1210
load netBundle @an0_i_n_ 4 an0_i_n_0 an0_i_n_1 an0_i_n_2 an0_i_n_3 -autobundled
netbloc @an0_i_n_ 1 10 1 4300 890n
load netBundle @an1_i_n_ 4 an1_i_n_0 an1_i_n_1 an1_i_n_2 an1_i_n_3 -autobundled
netbloc @an1_i_n_ 1 9 1 3810 900n
load netBundle @an2_i_n_ 4 an2_i_n_0 an2_i_n_1 an2_i_n_2 an2_i_n_3 -autobundled
netbloc @an2_i_n_ 1 8 1 N 970
load netBundle @an3_i_n_ 4 an3_i_n_0 an3_i_n_1 an3_i_n_2 an3_i_n_3 -autobundled
netbloc @an3_i_n_ 1 7 1 N 980
load netBundle @display_value0_i_n_ 14 display_value0_i_n_0 display_value0_i_n_1 display_value0_i_n_2 display_value0_i_n_3 display_value0_i_n_4 display_value0_i_n_5 display_value0_i_n_6 display_value0_i_n_7 display_value0_i_n_8 display_value0_i_n_9 display_value0_i_n_10 display_value0_i_n_11 display_value0_i_n_12 display_value0_i_n_13 -autobundled
netbloc @display_value0_i_n_ 1 6 1 2400 1330n
load netBundle @display_value 14 display_value[13] display_value[12] display_value[11] display_value[10] display_value[9] display_value[8] display_value[7] display_value[6] display_value[5] display_value[4] display_value[3] display_value[2] display_value[1] display_value[0] -autobundled
netbloc @display_value 1 7 1 2980 1230n
load netBundle @seg0_i_n_ 8 seg0_i_n_0 seg0_i_n_1 seg0_i_n_2 seg0_i_n_3 seg0_i_n_4 seg0_i_n_5 seg0_i_n_6 seg0_i_n_7 -autobundled
netbloc @seg0_i_n_ 1 10 1 4220 1190n
load netBundle @seg1_i_n_ 8 seg1_i_n_0 seg1_i_n_1 seg1_i_n_2 seg1_i_n_3 seg1_i_n_4 seg1_i_n_5 seg1_i_n_6 seg1_i_n_7 -autobundled
netbloc @seg1_i_n_ 1 9 1 N 1200
load netBundle @seg2_i_n_ 8 seg2_i_n_0 seg2_i_n_1 seg2_i_n_2 seg2_i_n_3 seg2_i_n_4 seg2_i_n_5 seg2_i_n_6 seg2_i_n_7 -autobundled
netbloc @seg2_i_n_ 1 8 1 3380 1090n
load netBundle @seg3_i_n_ 8 seg3_i_n_0 seg3_i_n_1 seg3_i_n_2 seg3_i_n_3 seg3_i_n_4 seg3_i_n_5 seg3_i_n_6 seg3_i_n_7 -autobundled
netbloc @seg3_i_n_ 1 7 1 2920 1100n
load netBundle @tx_data_ultra 8 tx_data_ultra[7] tx_data_ultra[6] tx_data_ultra[5] tx_data_ultra[4] tx_data_ultra[3] tx_data_ultra[2] tx_data_ultra[1] tx_data_ultra[0] -autobundled
netbloc @tx_data_ultra 1 9 1 3890 130n
load netBundle @tx_data_dht 8 tx_data_dht[7] tx_data_dht[6] tx_data_dht[5] tx_data_dht[4] tx_data_dht[3] tx_data_dht[2] tx_data_dht[1] tx_data_dht[0] -autobundled
netbloc @tx_data_dht 1 9 1 3750 540n
load netBundle @w_dht11_humid 14 w_dht11_humid[13] w_dht11_humid[12] w_dht11_humid[11] w_dht11_humid[10] w_dht11_humid[9] w_dht11_humid[8] w_dht11_humid[7] w_dht11_humid[6] w_dht11_humid[5] w_dht11_humid[4] w_dht11_humid[3] w_dht11_humid[2] w_dht11_humid[1] w_dht11_humid[0] -autobundled
netbloc @w_dht11_humid 1 2 7 560 540 NJ 540 NJ 540 NJ 540 NJ 540 2880J 560 3380J
load netBundle @w_dht11_temp 14 w_dht11_temp[13] w_dht11_temp[12] w_dht11_temp[11] w_dht11_temp[10] w_dht11_temp[9] w_dht11_temp[8] w_dht11_temp[7] w_dht11_temp[6] w_dht11_temp[5] w_dht11_temp[4] w_dht11_temp[3] w_dht11_temp[2] w_dht11_temp[1] w_dht11_temp[0] -autobundled
netbloc @w_dht11_temp 1 2 9 640 1500 NJ 1500 NJ 1500 NJ 1500 2360 1250 2840J 1290 3420 740 NJ 740 NJ
load netBundle @w_an_auto 4 w_an_auto[3] w_an_auto[2] w_an_auto[1] w_an_auto[0] -autobundled
netbloc @w_an_auto 1 7 1 2880 960n
load netBundle @w_seg_data_auto 8 w_seg_data_auto[7] w_seg_data_auto[6] w_seg_data_auto[5] w_seg_data_auto[4] w_seg_data_auto[3] w_seg_data_auto[2] w_seg_data_auto[1] w_seg_data_auto[0] -autobundled
netbloc @w_seg_data_auto 1 7 1 2960 1080n
load netBundle @w_an_manual 4 w_an_manual[3] w_an_manual[2] w_an_manual[1] w_an_manual[0] -autobundled
netbloc @w_an_manual 1 8 1 3340 950n
load netBundle @w_seg_data_manual 8 w_seg_data_manual[7] w_seg_data_manual[6] w_seg_data_manual[5] w_seg_data_manual[4] w_seg_data_manual[3] w_seg_data_manual[2] w_seg_data_manual[1] w_seg_data_manual[0] -autobundled
netbloc @w_seg_data_manual 1 8 1 3460 1190n
load netBundle @w_distance_cm 14 w_distance_cm[13] w_distance_cm[12] w_distance_cm[11] w_distance_cm[10] w_distance_cm[9] w_distance_cm[8] w_distance_cm[7] w_distance_cm[6] w_distance_cm[5] w_distance_cm[4] w_distance_cm[3] w_distance_cm[2] w_distance_cm[1] w_distance_cm[0] -autobundled
netbloc @w_distance_cm 1 3 1 1000 1080n
load netBundle @w_an_idle 4 w_an_idle[3] w_an_idle[2] w_an_idle[1] w_an_idle[0] -autobundled
netbloc @w_an_idle 1 6 1 2520 960n
load netBundle @w_seg_data_idle 8 w_seg_data_idle[7] w_seg_data_idle[6] w_seg_data_idle[5] w_seg_data_idle[4] w_seg_data_idle[3] w_seg_data_idle[2] w_seg_data_idle[1] w_seg_data_idle[0] -autobundled
netbloc @w_seg_data_idle 1 6 1 2500 980n
load netBundle @w_latched_distance 14 w_latched_distance[13] w_latched_distance[12] w_latched_distance[11] w_latched_distance[10] w_latched_distance[9] w_latched_distance[8] w_latched_distance[7] w_latched_distance[6] w_latched_distance[5] w_latched_distance[4] w_latched_distance[3] w_latched_distance[2] w_latched_distance[1] w_latched_distance[0] -autobundled
netbloc @w_latched_distance 1 4 5 1430 970 1940 720 NJ 720 2840 130 NJ
load netBundle @w_an_sw 4 w_an_sw[3] w_an_sw[2] w_an_sw[1] w_an_sw[0] -autobundled
netbloc @w_an_sw 1 10 1 4280 1330n
load netBundle @w_seg_data_sw 8 w_seg_data_sw[7] w_seg_data_sw[6] w_seg_data_sw[5] w_seg_data_sw[4] w_seg_data_sw[3] w_seg_data_sw[2] w_seg_data_sw[1] w_seg_data_sw[0] -autobundled
netbloc @w_seg_data_sw 1 10 1 4260 1200n
load netBundle @w_an_mw 4 w_an_mw[3] w_an_mw[2] w_an_mw[1] w_an_mw[0] -autobundled
netbloc @w_an_mw 1 9 3 3890 830 4360J 990 4810
load netBundle @w_seg_data_mw 8 w_seg_data_mw[7] w_seg_data_mw[6] w_seg_data_mw[5] w_seg_data_mw[4] w_seg_data_mw[3] w_seg_data_mw[2] w_seg_data_mw[1] w_seg_data_mw[0] -autobundled
netbloc @w_seg_data_mw 1 9 3 3910 1270 4320J 1030 4770
load netBundle @w_temp_applied 14 w_temp_applied[13] w_temp_applied[12] w_temp_applied[11] w_temp_applied[10] w_temp_applied[9] w_temp_applied[8] w_temp_applied[7] w_temp_applied[6] w_temp_applied[5] w_temp_applied[4] w_temp_applied[3] w_temp_applied[2] w_temp_applied[1] w_temp_applied[0] -autobundled
netbloc @w_temp_applied 1 5 6 1900J 700 NJ 700 NJ 700 3400J 760 NJ 760 N
load netBundle @w_temp_manual 14 w_temp_manual[13] w_temp_manual[12] w_temp_manual[11] w_temp_manual[10] w_temp_manual[9] w_temp_manual[8] w_temp_manual[7] w_temp_manual[6] w_temp_manual[5] w_temp_manual[4] w_temp_manual[3] w_temp_manual[2] w_temp_manual[1] w_temp_manual[0] -autobundled
netbloc @w_temp_manual 1 5 1 1900 850n
load netBundle @w_rx_data 8 w_rx_data[7] w_rx_data[6] w_rx_data[5] w_rx_data[4] w_rx_data[3] w_rx_data[2] w_rx_data[1] w_rx_data[0] -autobundled
netbloc @w_rx_data 1 4 6 1490 1570 NJ 1570 NJ 1570 NJ 1570 NJ 1570 NJ
load netBundle @w_seg_data0_i_n_ 14 w_seg_data0_i_n_0 w_seg_data0_i_n_1 w_seg_data0_i_n_2 w_seg_data0_i_n_3 w_seg_data0_i_n_4 w_seg_data0_i_n_5 w_seg_data0_i_n_6 w_seg_data0_i_n_7 w_seg_data0_i_n_8 w_seg_data0_i_n_9 w_seg_data0_i_n_10 w_seg_data0_i_n_11 w_seg_data0_i_n_12 w_seg_data0_i_n_13 -autobundled
netbloc @w_seg_data0_i_n_ 1 5 1 N 1130
load netBundle @w_seg_data_dht11 14 w_seg_data_dht11[13] w_seg_data_dht11[12] w_seg_data_dht11[11] w_seg_data_dht11[10] w_seg_data_dht11[9] w_seg_data_dht11[8] w_seg_data_dht11[7] w_seg_data_dht11[6] w_seg_data_dht11[5] w_seg_data_dht11[4] w_seg_data_dht11[3] w_seg_data_dht11[2] w_seg_data_dht11[1] w_seg_data_dht11[0] -autobundled
netbloc @w_seg_data_dht11 1 4 1 1430 1140n
load netBundle @w_seg_data 14 w_seg_data[13] w_seg_data[12] w_seg_data[11] w_seg_data[10] w_seg_data[9] w_seg_data[8] w_seg_data[7] w_seg_data[6] w_seg_data[5] w_seg_data[4] w_seg_data[3] w_seg_data[2] w_seg_data[1] w_seg_data[0] -autobundled
netbloc @w_seg_data 1 6 1 2420 1160n
load netBundle @w_seg_data_tick 14 w_seg_data_tick[13] w_seg_data_tick[12] w_seg_data_tick[11] w_seg_data_tick[10] w_seg_data_tick[9] w_seg_data_tick[8] w_seg_data_tick[7] w_seg_data_tick[6] w_seg_data_tick[5] w_seg_data_tick[4] w_seg_data_tick[3] w_seg_data_tick[2] w_seg_data_tick[1] w_seg_data_tick[0] -autobundled
netbloc @w_seg_data_tick 1 3 1 980 1320n
load netBundle @w_btn_debounce_ 4 w_btn_debounce_4 w_btn_debounce_3 w_btn_debounce_1 w_btn_debounce_2 -autobundled
netbloc @w_btn_debounce_ 1 2 9 540 640 1060 640 1430 640 1900 680 NJ 680 NJ 680 NJ 680 3770 810 4400J
levelinfo -pg 1 0 100 350 790 1190 1660 2150 2670 3170 3590 4030 4590 4840
pagesize -pg 1 -db -bbox -sgen -110 0 5020 1630
show
fullfit
#
# initialize ictrl to current module top work:top:NOFILE
ictrl init topinfo |
