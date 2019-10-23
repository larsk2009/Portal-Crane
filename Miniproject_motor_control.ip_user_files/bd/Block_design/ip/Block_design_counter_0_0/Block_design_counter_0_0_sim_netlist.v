// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Oct 22 14:53:57 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/EAAES/Portal-Crane/Miniproject_motor_control.srcs/sources_1/bd/Block_design/ip/Block_design_counter_0_0/Block_design_counter_0_0_sim_netlist.v
// Design      : Block_design_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_design_counter_0_0,counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "counter,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Block_design_counter_0_0
   (Clk,
    A_In,
    B_In,
    data_out,
    Reset);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0" *) input Clk;
  input A_In;
  input B_In;
  output [11:0]data_out;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW" *) input Reset;

  wire A_In;
  wire B_In;
  wire Clk;
  wire Reset;
  wire [11:0]data_out;

  Block_design_counter_0_0_counter U0
       (.A_In(A_In),
        .B_In(B_In),
        .Clk(Clk),
        .Reset(Reset),
        .data_out(data_out));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module Block_design_counter_0_0_counter
   (data_out,
    B_In,
    Clk,
    A_In,
    Reset);
  output [11:0]data_out;
  input B_In;
  input Clk;
  input A_In;
  input Reset;

  wire A_In;
  wire B_In;
  wire Clk;
  wire Current_A;
  wire Current_B;
  wire Last_A;
  wire Last_B;
  wire Reset;
  wire \count[11]_i_2_n_0 ;
  wire \count[11]_i_3_n_0 ;
  wire \count[11]_i_4_n_0 ;
  wire \count[11]_i_5_n_0 ;
  wire \count[11]_i_6_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count[3]_i_3_n_0 ;
  wire \count[3]_i_4_n_0 ;
  wire \count[3]_i_5_n_0 ;
  wire \count[3]_i_6_n_0 ;
  wire \count[7]_i_2_n_0 ;
  wire \count[7]_i_3_n_0 ;
  wire \count[7]_i_4_n_0 ;
  wire \count[7]_i_5_n_0 ;
  wire \count_reg[11]_i_1_n_1 ;
  wire \count_reg[11]_i_1_n_2 ;
  wire \count_reg[11]_i_1_n_3 ;
  wire \count_reg[11]_i_1_n_4 ;
  wire \count_reg[11]_i_1_n_5 ;
  wire \count_reg[11]_i_1_n_6 ;
  wire \count_reg[11]_i_1_n_7 ;
  wire \count_reg[3]_i_1_n_0 ;
  wire \count_reg[3]_i_1_n_1 ;
  wire \count_reg[3]_i_1_n_2 ;
  wire \count_reg[3]_i_1_n_3 ;
  wire \count_reg[3]_i_1_n_4 ;
  wire \count_reg[3]_i_1_n_5 ;
  wire \count_reg[3]_i_1_n_6 ;
  wire \count_reg[3]_i_1_n_7 ;
  wire \count_reg[7]_i_1_n_0 ;
  wire \count_reg[7]_i_1_n_1 ;
  wire \count_reg[7]_i_1_n_2 ;
  wire \count_reg[7]_i_1_n_3 ;
  wire \count_reg[7]_i_1_n_4 ;
  wire \count_reg[7]_i_1_n_5 ;
  wire \count_reg[7]_i_1_n_6 ;
  wire \count_reg[7]_i_1_n_7 ;
  wire [11:0]data_out;
  wire up_down__0;
  wire [3:3]\NLW_count_reg[11]_i_1_CO_UNCONNECTED ;

  FDCE Current_A_reg
       (.C(Clk),
        .CE(1'b1),
        .CLR(\count[11]_i_2_n_0 ),
        .D(A_In),
        .Q(Current_A));
  FDCE Current_B_reg
       (.C(Clk),
        .CE(1'b1),
        .CLR(\count[11]_i_2_n_0 ),
        .D(B_In),
        .Q(Current_B));
  FDCE Last_A_reg
       (.C(Clk),
        .CE(1'b1),
        .CLR(\count[11]_i_2_n_0 ),
        .D(Current_A),
        .Q(Last_A));
  FDCE Last_B_reg
       (.C(Clk),
        .CE(1'b1),
        .CLR(\count[11]_i_2_n_0 ),
        .D(Current_B),
        .Q(Last_B));
  LUT1 #(
    .INIT(2'h1)) 
    \count[11]_i_2 
       (.I0(Reset),
        .O(\count[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count[11]_i_3 
       (.I0(Last_B),
        .I1(Current_A),
        .I2(data_out[11]),
        .O(\count[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count[11]_i_4 
       (.I0(Last_B),
        .I1(Current_A),
        .I2(data_out[10]),
        .O(\count[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count[11]_i_5 
       (.I0(Last_B),
        .I1(Current_A),
        .I2(data_out[9]),
        .O(\count[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count[11]_i_6 
       (.I0(Last_B),
        .I1(Current_A),
        .I2(data_out[8]),
        .O(\count[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[3]_i_2 
       (.I0(Last_B),
        .I1(Current_A),
        .O(\count[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count[3]_i_3 
       (.I0(Last_B),
        .I1(Current_A),
        .I2(data_out[3]),
        .O(\count[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count[3]_i_4 
       (.I0(Last_B),
        .I1(Current_A),
        .I2(data_out[2]),
        .O(\count[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count[3]_i_5 
       (.I0(Last_B),
        .I1(Current_A),
        .I2(data_out[1]),
        .O(\count[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \count[3]_i_6 
       (.I0(Last_B),
        .I1(Current_A),
        .I2(data_out[0]),
        .O(\count[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count[7]_i_2 
       (.I0(Last_B),
        .I1(Current_A),
        .I2(data_out[7]),
        .O(\count[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count[7]_i_3 
       (.I0(Last_B),
        .I1(Current_A),
        .I2(data_out[6]),
        .O(\count[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count[7]_i_4 
       (.I0(Last_B),
        .I1(Current_A),
        .I2(data_out[5]),
        .O(\count[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count[7]_i_5 
       (.I0(Last_B),
        .I1(Current_A),
        .I2(data_out[4]),
        .O(\count[7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(Clk),
        .CE(up_down__0),
        .CLR(\count[11]_i_2_n_0 ),
        .D(\count_reg[3]_i_1_n_7 ),
        .Q(data_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(Clk),
        .CE(up_down__0),
        .CLR(\count[11]_i_2_n_0 ),
        .D(\count_reg[11]_i_1_n_5 ),
        .Q(data_out[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(Clk),
        .CE(up_down__0),
        .CLR(\count[11]_i_2_n_0 ),
        .D(\count_reg[11]_i_1_n_4 ),
        .Q(data_out[11]));
  CARRY4 \count_reg[11]_i_1 
       (.CI(\count_reg[7]_i_1_n_0 ),
        .CO({\NLW_count_reg[11]_i_1_CO_UNCONNECTED [3],\count_reg[11]_i_1_n_1 ,\count_reg[11]_i_1_n_2 ,\count_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,data_out[10:8]}),
        .O({\count_reg[11]_i_1_n_4 ,\count_reg[11]_i_1_n_5 ,\count_reg[11]_i_1_n_6 ,\count_reg[11]_i_1_n_7 }),
        .S({\count[11]_i_3_n_0 ,\count[11]_i_4_n_0 ,\count[11]_i_5_n_0 ,\count[11]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(Clk),
        .CE(up_down__0),
        .CLR(\count[11]_i_2_n_0 ),
        .D(\count_reg[3]_i_1_n_6 ),
        .Q(data_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(Clk),
        .CE(up_down__0),
        .CLR(\count[11]_i_2_n_0 ),
        .D(\count_reg[3]_i_1_n_5 ),
        .Q(data_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(Clk),
        .CE(up_down__0),
        .CLR(\count[11]_i_2_n_0 ),
        .D(\count_reg[3]_i_1_n_4 ),
        .Q(data_out[3]));
  CARRY4 \count_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[3]_i_1_n_0 ,\count_reg[3]_i_1_n_1 ,\count_reg[3]_i_1_n_2 ,\count_reg[3]_i_1_n_3 }),
        .CYINIT(\count[3]_i_2_n_0 ),
        .DI(data_out[3:0]),
        .O({\count_reg[3]_i_1_n_4 ,\count_reg[3]_i_1_n_5 ,\count_reg[3]_i_1_n_6 ,\count_reg[3]_i_1_n_7 }),
        .S({\count[3]_i_3_n_0 ,\count[3]_i_4_n_0 ,\count[3]_i_5_n_0 ,\count[3]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(Clk),
        .CE(up_down__0),
        .CLR(\count[11]_i_2_n_0 ),
        .D(\count_reg[7]_i_1_n_7 ),
        .Q(data_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(Clk),
        .CE(up_down__0),
        .CLR(\count[11]_i_2_n_0 ),
        .D(\count_reg[7]_i_1_n_6 ),
        .Q(data_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(Clk),
        .CE(up_down__0),
        .CLR(\count[11]_i_2_n_0 ),
        .D(\count_reg[7]_i_1_n_5 ),
        .Q(data_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(Clk),
        .CE(up_down__0),
        .CLR(\count[11]_i_2_n_0 ),
        .D(\count_reg[7]_i_1_n_4 ),
        .Q(data_out[7]));
  CARRY4 \count_reg[7]_i_1 
       (.CI(\count_reg[3]_i_1_n_0 ),
        .CO({\count_reg[7]_i_1_n_0 ,\count_reg[7]_i_1_n_1 ,\count_reg[7]_i_1_n_2 ,\count_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_out[7:4]),
        .O({\count_reg[7]_i_1_n_4 ,\count_reg[7]_i_1_n_5 ,\count_reg[7]_i_1_n_6 ,\count_reg[7]_i_1_n_7 }),
        .S({\count[7]_i_2_n_0 ,\count[7]_i_3_n_0 ,\count[7]_i_4_n_0 ,\count[7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(Clk),
        .CE(up_down__0),
        .CLR(\count[11]_i_2_n_0 ),
        .D(\count_reg[11]_i_1_n_7 ),
        .Q(data_out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(Clk),
        .CE(up_down__0),
        .CLR(\count[11]_i_2_n_0 ),
        .D(\count_reg[11]_i_1_n_6 ),
        .Q(data_out[9]));
  LUT4 #(
    .INIT(16'h6996)) 
    up_down
       (.I0(Current_B),
        .I1(Current_A),
        .I2(Last_B),
        .I3(Last_A),
        .O(up_down__0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif