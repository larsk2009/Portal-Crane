// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Oct 25 14:19:55 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_design_de_lastig_ip_0_1_sim_netlist.v
// Design      : Block_design_de_lastig_ip_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_design_de_lastig_ip_0_1,de_lastig_ip,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "de_lastig_ip,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (IPCORE_CLK,
    IPCORE_RESETN,
    in1,
    in2,
    in3,
    in4,
    AXI4_Lite_ACLK,
    AXI4_Lite_ARESETN,
    AXI4_Lite_AWADDR,
    AXI4_Lite_AWVALID,
    AXI4_Lite_WDATA,
    AXI4_Lite_WSTRB,
    AXI4_Lite_WVALID,
    AXI4_Lite_BREADY,
    AXI4_Lite_ARADDR,
    AXI4_Lite_ARVALID,
    AXI4_Lite_RREADY,
    out1,
    AXI4_Lite_AWREADY,
    AXI4_Lite_WREADY,
    AXI4_Lite_BRESP,
    AXI4_Lite_BVALID,
    AXI4_Lite_ARREADY,
    AXI4_Lite_RDATA,
    AXI4_Lite_RRESP,
    AXI4_Lite_RVALID);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 IPCORE_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME IPCORE_CLK, ASSOCIATED_RESET IPCORE_RESETN, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_1_FCLK_CLK0" *) input IPCORE_CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 IPCORE_RESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME IPCORE_RESETN, POLARITY ACTIVE_LOW" *) input IPCORE_RESETN;
  input [15:0]in1;
  input [15:0]in2;
  input [15:0]in3;
  input [15:0]in4;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 AXI4_Lite_signal_clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI4_Lite_signal_clock, ASSOCIATED_BUSIF AXI4_Lite, ASSOCIATED_RESET AXI4_Lite_ARESETN, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_1_FCLK_CLK0" *) input AXI4_Lite_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AXI4_Lite_signal_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI4_Lite_signal_reset, POLARITY ACTIVE_LOW" *) input AXI4_Lite_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI4_Lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [15:0]AXI4_Lite_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite AWVALID" *) input AXI4_Lite_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite WDATA" *) input [31:0]AXI4_Lite_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite WSTRB" *) input [3:0]AXI4_Lite_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite WVALID" *) input AXI4_Lite_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite BREADY" *) input AXI4_Lite_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite ARADDR" *) input [15:0]AXI4_Lite_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite ARVALID" *) input AXI4_Lite_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite RREADY" *) input AXI4_Lite_RREADY;
  output [15:0]out1;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite AWREADY" *) output AXI4_Lite_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite WREADY" *) output AXI4_Lite_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite BRESP" *) output [1:0]AXI4_Lite_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite BVALID" *) output AXI4_Lite_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite ARREADY" *) output AXI4_Lite_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite RDATA" *) output [31:0]AXI4_Lite_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite RRESP" *) output [1:0]AXI4_Lite_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI4_Lite RVALID" *) output AXI4_Lite_RVALID;

  wire \<const0> ;
  wire AXI4_Lite_ACLK;
  wire [15:0]AXI4_Lite_ARADDR;
  wire AXI4_Lite_ARESETN;
  wire AXI4_Lite_ARREADY;
  wire AXI4_Lite_ARVALID;
  wire [15:0]AXI4_Lite_AWADDR;
  wire AXI4_Lite_AWREADY;
  wire AXI4_Lite_AWVALID;
  wire AXI4_Lite_BREADY;
  wire AXI4_Lite_BVALID;
  wire [29:29]\^AXI4_Lite_RDATA ;
  wire AXI4_Lite_RREADY;
  wire AXI4_Lite_RVALID;
  wire [31:0]AXI4_Lite_WDATA;
  wire AXI4_Lite_WREADY;
  wire [3:0]AXI4_Lite_WSTRB;
  wire AXI4_Lite_WVALID;
  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire [15:0]in1;
  wire [15:0]in2;
  wire [15:0]in3;
  wire [15:0]in4;
  wire [15:0]out1;

  assign AXI4_Lite_BRESP[1] = \<const0> ;
  assign AXI4_Lite_BRESP[0] = \<const0> ;
  assign AXI4_Lite_RDATA[31] = \<const0> ;
  assign AXI4_Lite_RDATA[30] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[29] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[28] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[27] = \<const0> ;
  assign AXI4_Lite_RDATA[26] = \<const0> ;
  assign AXI4_Lite_RDATA[25] = \<const0> ;
  assign AXI4_Lite_RDATA[24] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[23] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[22] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[21] = \<const0> ;
  assign AXI4_Lite_RDATA[20] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[19] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[18] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[17] = \<const0> ;
  assign AXI4_Lite_RDATA[16] = \<const0> ;
  assign AXI4_Lite_RDATA[15] = \<const0> ;
  assign AXI4_Lite_RDATA[14] = \<const0> ;
  assign AXI4_Lite_RDATA[13] = \<const0> ;
  assign AXI4_Lite_RDATA[12] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[11] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[10] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[9] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[8] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[7] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[6] = \<const0> ;
  assign AXI4_Lite_RDATA[5] = \<const0> ;
  assign AXI4_Lite_RDATA[4] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[3] = \<const0> ;
  assign AXI4_Lite_RDATA[2] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[1] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RDATA[0] = \^AXI4_Lite_RDATA [29];
  assign AXI4_Lite_RRESP[1] = \<const0> ;
  assign AXI4_Lite_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip U0
       (.AXI4_Lite_ACLK(AXI4_Lite_ACLK),
        .AXI4_Lite_ARADDR(AXI4_Lite_ARADDR[15:2]),
        .AXI4_Lite_ARESETN(AXI4_Lite_ARESETN),
        .AXI4_Lite_ARREADY(AXI4_Lite_ARREADY),
        .AXI4_Lite_ARVALID(AXI4_Lite_ARVALID),
        .AXI4_Lite_AWADDR(AXI4_Lite_AWADDR[15:2]),
        .AXI4_Lite_AWREADY(AXI4_Lite_AWREADY),
        .AXI4_Lite_AWVALID(AXI4_Lite_AWVALID),
        .AXI4_Lite_BREADY(AXI4_Lite_BREADY),
        .AXI4_Lite_RDATA(\^AXI4_Lite_RDATA ),
        .AXI4_Lite_RREADY(AXI4_Lite_RREADY),
        .AXI4_Lite_RVALID(AXI4_Lite_RVALID),
        .AXI4_Lite_WDATA(AXI4_Lite_WDATA[0]),
        .AXI4_Lite_WSTRB(AXI4_Lite_WSTRB),
        .AXI4_Lite_WVALID(AXI4_Lite_WVALID),
        .IPCORE_CLK(IPCORE_CLK),
        .IPCORE_RESETN(IPCORE_RESETN),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .out({AXI4_Lite_BVALID,AXI4_Lite_WREADY}),
        .out1(out1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip
   (AXI4_Lite_RVALID,
    out,
    AXI4_Lite_ARREADY,
    AXI4_Lite_AWREADY,
    out1,
    AXI4_Lite_RDATA,
    AXI4_Lite_ACLK,
    AXI4_Lite_AWADDR,
    IPCORE_CLK,
    in4,
    in2,
    in3,
    in1,
    AXI4_Lite_ARVALID,
    AXI4_Lite_ARADDR,
    AXI4_Lite_RREADY,
    AXI4_Lite_AWVALID,
    AXI4_Lite_WVALID,
    AXI4_Lite_BREADY,
    AXI4_Lite_WSTRB,
    AXI4_Lite_ARESETN,
    IPCORE_RESETN,
    AXI4_Lite_WDATA);
  output AXI4_Lite_RVALID;
  output [1:0]out;
  output AXI4_Lite_ARREADY;
  output AXI4_Lite_AWREADY;
  output [15:0]out1;
  output [0:0]AXI4_Lite_RDATA;
  input AXI4_Lite_ACLK;
  input [13:0]AXI4_Lite_AWADDR;
  input IPCORE_CLK;
  input [15:0]in4;
  input [15:0]in2;
  input [15:0]in3;
  input [15:0]in1;
  input AXI4_Lite_ARVALID;
  input [13:0]AXI4_Lite_ARADDR;
  input AXI4_Lite_RREADY;
  input AXI4_Lite_AWVALID;
  input AXI4_Lite_WVALID;
  input AXI4_Lite_BREADY;
  input [3:0]AXI4_Lite_WSTRB;
  input AXI4_Lite_ARESETN;
  input IPCORE_RESETN;
  input [0:0]AXI4_Lite_WDATA;

  wire AXI4_Lite_ACLK;
  wire [13:0]AXI4_Lite_ARADDR;
  wire AXI4_Lite_ARESETN;
  wire AXI4_Lite_ARREADY;
  wire AXI4_Lite_ARVALID;
  wire [13:0]AXI4_Lite_AWADDR;
  wire AXI4_Lite_AWREADY;
  wire AXI4_Lite_AWVALID;
  wire AXI4_Lite_BREADY;
  wire [0:0]AXI4_Lite_RDATA;
  wire AXI4_Lite_RREADY;
  wire AXI4_Lite_RVALID;
  wire [0:0]AXI4_Lite_WDATA;
  wire [3:0]AXI4_Lite_WSTRB;
  wire AXI4_Lite_WVALID;
  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire [15:0]in1;
  wire [15:0]in2;
  wire [15:0]in3;
  wire [15:0]in4;
  wire [1:0]out;
  wire [15:0]out1;
  wire reset;
  wire reset_in;
  wire write_reg_axi_enable;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_axi_lite u_de_lastig_ip_axi_lite_inst
       (.AR(reset),
        .AXI4_Lite_ACLK(AXI4_Lite_ACLK),
        .AXI4_Lite_ARADDR(AXI4_Lite_ARADDR),
        .AXI4_Lite_ARESETN(AXI4_Lite_ARESETN),
        .AXI4_Lite_ARREADY(AXI4_Lite_ARREADY),
        .AXI4_Lite_ARVALID(AXI4_Lite_ARVALID),
        .AXI4_Lite_AWADDR(AXI4_Lite_AWADDR),
        .AXI4_Lite_AWREADY(AXI4_Lite_AWREADY),
        .AXI4_Lite_AWVALID(AXI4_Lite_AWVALID),
        .AXI4_Lite_BREADY(AXI4_Lite_BREADY),
        .AXI4_Lite_RDATA(AXI4_Lite_RDATA),
        .AXI4_Lite_RREADY(AXI4_Lite_RREADY),
        .AXI4_Lite_RVALID(AXI4_Lite_RVALID),
        .AXI4_Lite_WDATA(AXI4_Lite_WDATA),
        .AXI4_Lite_WSTRB(AXI4_Lite_WSTRB),
        .AXI4_Lite_WVALID(AXI4_Lite_WVALID),
        .E(write_reg_axi_enable),
        .IPCORE_RESETN(IPCORE_RESETN),
        .out(out),
        .reset_in(reset_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_dut u_de_lastig_ip_dut_inst
       (.AR(reset),
        .E(write_reg_axi_enable),
        .IPCORE_CLK(IPCORE_CLK),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .out1(out1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_reset_sync u_de_lastig_ip_reset_sync_inst
       (.AR(reset),
        .IPCORE_CLK(IPCORE_CLK),
        .reset_in(reset_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_addr_decoder
   (read_reg_ip_timestamp,
    E,
    \AXI4_Lite_RDATA_tmp_reg[30] ,
    AXI4_Lite_ACLK,
    AR,
    \wdata_reg[0] ,
    \AXI4_Lite_ARADDR[14] ,
    AXI4_Lite_ARADDR,
    AXI4_Lite_ARVALID,
    \AXI4_Lite_ARADDR[8] );
  output [0:0]read_reg_ip_timestamp;
  output [0:0]E;
  output \AXI4_Lite_RDATA_tmp_reg[30] ;
  input AXI4_Lite_ACLK;
  input [0:0]AR;
  input \wdata_reg[0] ;
  input \AXI4_Lite_ARADDR[14] ;
  input [1:0]AXI4_Lite_ARADDR;
  input AXI4_Lite_ARVALID;
  input \AXI4_Lite_ARADDR[8] ;

  wire [0:0]AR;
  wire AXI4_Lite_ACLK;
  wire [1:0]AXI4_Lite_ARADDR;
  wire \AXI4_Lite_ARADDR[14] ;
  wire \AXI4_Lite_ARADDR[8] ;
  wire AXI4_Lite_ARVALID;
  wire \AXI4_Lite_RDATA_tmp_reg[30] ;
  wire [0:0]E;
  wire [0:0]read_reg_ip_timestamp;
  wire \wdata_reg[0] ;

  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \AXI4_Lite_RDATA_tmp[30]_i_3 
       (.I0(\AXI4_Lite_ARADDR[14] ),
        .I1(AXI4_Lite_ARADDR[0]),
        .I2(read_reg_ip_timestamp),
        .I3(AXI4_Lite_ARVALID),
        .I4(AXI4_Lite_ARADDR[1]),
        .I5(\AXI4_Lite_ARADDR[8] ),
        .O(\AXI4_Lite_RDATA_tmp_reg[30] ));
  FDCE \read_reg_ip_timestamp_reg[30] 
       (.C(AXI4_Lite_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(1'b1),
        .Q(read_reg_ip_timestamp));
  FDPE write_reg_axi_enable_reg
       (.C(AXI4_Lite_ACLK),
        .CE(1'b1),
        .D(\wdata_reg[0] ),
        .PRE(AR),
        .Q(E));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_axi_lite
   (AXI4_Lite_RVALID,
    out,
    AXI4_Lite_RDATA,
    E,
    AXI4_Lite_AWREADY,
    AXI4_Lite_ARREADY,
    reset_in,
    AXI4_Lite_ACLK,
    AR,
    AXI4_Lite_WDATA,
    AXI4_Lite_WVALID,
    AXI4_Lite_AWVALID,
    AXI4_Lite_ARVALID,
    AXI4_Lite_AWADDR,
    AXI4_Lite_ARADDR,
    AXI4_Lite_RREADY,
    AXI4_Lite_BREADY,
    AXI4_Lite_WSTRB,
    AXI4_Lite_ARESETN,
    IPCORE_RESETN);
  output AXI4_Lite_RVALID;
  output [1:0]out;
  output [0:0]AXI4_Lite_RDATA;
  output [0:0]E;
  output AXI4_Lite_AWREADY;
  output AXI4_Lite_ARREADY;
  output reset_in;
  input AXI4_Lite_ACLK;
  input [0:0]AR;
  input [0:0]AXI4_Lite_WDATA;
  input AXI4_Lite_WVALID;
  input AXI4_Lite_AWVALID;
  input AXI4_Lite_ARVALID;
  input [13:0]AXI4_Lite_AWADDR;
  input [13:0]AXI4_Lite_ARADDR;
  input AXI4_Lite_RREADY;
  input AXI4_Lite_BREADY;
  input [3:0]AXI4_Lite_WSTRB;
  input AXI4_Lite_ARESETN;
  input IPCORE_RESETN;

  wire [0:0]AR;
  wire AXI4_Lite_ACLK;
  wire [13:0]AXI4_Lite_ARADDR;
  wire AXI4_Lite_ARESETN;
  wire AXI4_Lite_ARREADY;
  wire AXI4_Lite_ARVALID;
  wire [13:0]AXI4_Lite_AWADDR;
  wire AXI4_Lite_AWREADY;
  wire AXI4_Lite_AWVALID;
  wire AXI4_Lite_BREADY;
  wire [0:0]AXI4_Lite_RDATA;
  wire AXI4_Lite_RREADY;
  wire AXI4_Lite_RVALID;
  wire [0:0]AXI4_Lite_WDATA;
  wire [3:0]AXI4_Lite_WSTRB;
  wire AXI4_Lite_WVALID;
  wire [0:0]E;
  wire IPCORE_RESETN;
  wire [1:0]out;
  wire [30:30]read_reg_ip_timestamp;
  wire reset_in;
  wire u_de_lastig_ip_addr_decoder_inst_n_2;
  wire u_de_lastig_ip_axi_lite_module_inst_n_5;
  wire u_de_lastig_ip_axi_lite_module_inst_n_6;
  wire u_de_lastig_ip_axi_lite_module_inst_n_7;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_addr_decoder u_de_lastig_ip_addr_decoder_inst
       (.AR(AR),
        .AXI4_Lite_ACLK(AXI4_Lite_ACLK),
        .AXI4_Lite_ARADDR(AXI4_Lite_ARADDR[1:0]),
        .\AXI4_Lite_ARADDR[14] (u_de_lastig_ip_axi_lite_module_inst_n_6),
        .\AXI4_Lite_ARADDR[8] (u_de_lastig_ip_axi_lite_module_inst_n_7),
        .AXI4_Lite_ARVALID(AXI4_Lite_ARVALID),
        .\AXI4_Lite_RDATA_tmp_reg[30] (u_de_lastig_ip_addr_decoder_inst_n_2),
        .E(E),
        .read_reg_ip_timestamp(read_reg_ip_timestamp),
        .\wdata_reg[0] (u_de_lastig_ip_axi_lite_module_inst_n_5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_axi_lite_module u_de_lastig_ip_axi_lite_module_inst
       (.AXI4_Lite_ACLK(AXI4_Lite_ACLK),
        .AXI4_Lite_ARADDR(AXI4_Lite_ARADDR),
        .AXI4_Lite_ARESETN(AXI4_Lite_ARESETN),
        .AXI4_Lite_ARREADY(AXI4_Lite_ARREADY),
        .AXI4_Lite_ARVALID(AXI4_Lite_ARVALID),
        .AXI4_Lite_AWADDR(AXI4_Lite_AWADDR),
        .AXI4_Lite_AWREADY(AXI4_Lite_AWREADY),
        .AXI4_Lite_AWVALID(AXI4_Lite_AWVALID),
        .AXI4_Lite_BREADY(AXI4_Lite_BREADY),
        .AXI4_Lite_BVALID(out),
        .AXI4_Lite_RDATA(AXI4_Lite_RDATA),
        .AXI4_Lite_RREADY(AXI4_Lite_RREADY),
        .AXI4_Lite_WDATA(AXI4_Lite_WDATA),
        .AXI4_Lite_WSTRB(AXI4_Lite_WSTRB),
        .AXI4_Lite_WVALID(AXI4_Lite_WVALID),
        .E(E),
        .IPCORE_RESETN(IPCORE_RESETN),
        .out(AXI4_Lite_RVALID),
        .read_reg_ip_timestamp(read_reg_ip_timestamp),
        .\read_reg_ip_timestamp_reg[30] (u_de_lastig_ip_addr_decoder_inst_n_2),
        .reset_in(reset_in),
        .write_reg_axi_enable_reg(u_de_lastig_ip_axi_lite_module_inst_n_5),
        .write_reg_axi_enable_reg_0(u_de_lastig_ip_axi_lite_module_inst_n_6),
        .write_reg_axi_enable_reg_1(u_de_lastig_ip_axi_lite_module_inst_n_7));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_axi_lite_module
   (out,
    AXI4_Lite_BVALID,
    AXI4_Lite_RDATA,
    AXI4_Lite_AWREADY,
    write_reg_axi_enable_reg,
    write_reg_axi_enable_reg_0,
    write_reg_axi_enable_reg_1,
    AXI4_Lite_ARREADY,
    reset_in,
    AXI4_Lite_ACLK,
    AXI4_Lite_WDATA,
    AXI4_Lite_WVALID,
    \read_reg_ip_timestamp_reg[30] ,
    AXI4_Lite_AWVALID,
    AXI4_Lite_ARVALID,
    E,
    AXI4_Lite_ARADDR,
    AXI4_Lite_RREADY,
    AXI4_Lite_BREADY,
    AXI4_Lite_WSTRB,
    read_reg_ip_timestamp,
    AXI4_Lite_AWADDR,
    AXI4_Lite_ARESETN,
    IPCORE_RESETN);
  output out;
  output [1:0]AXI4_Lite_BVALID;
  output [0:0]AXI4_Lite_RDATA;
  output AXI4_Lite_AWREADY;
  output write_reg_axi_enable_reg;
  output write_reg_axi_enable_reg_0;
  output write_reg_axi_enable_reg_1;
  output AXI4_Lite_ARREADY;
  output reset_in;
  input AXI4_Lite_ACLK;
  input [0:0]AXI4_Lite_WDATA;
  input AXI4_Lite_WVALID;
  input \read_reg_ip_timestamp_reg[30] ;
  input AXI4_Lite_AWVALID;
  input AXI4_Lite_ARVALID;
  input [0:0]E;
  input [13:0]AXI4_Lite_ARADDR;
  input AXI4_Lite_RREADY;
  input AXI4_Lite_BREADY;
  input [3:0]AXI4_Lite_WSTRB;
  input [0:0]read_reg_ip_timestamp;
  input [13:0]AXI4_Lite_AWADDR;
  input AXI4_Lite_ARESETN;
  input IPCORE_RESETN;

  wire AXI4_Lite_ACLK;
  wire [13:0]AXI4_Lite_ARADDR;
  wire AXI4_Lite_ARESETN;
  wire AXI4_Lite_ARREADY;
  wire AXI4_Lite_ARVALID;
  wire [13:0]AXI4_Lite_AWADDR;
  wire AXI4_Lite_AWREADY;
  wire AXI4_Lite_AWVALID;
  wire AXI4_Lite_BREADY;
  (* RTL_KEEP = "yes" *) wire [1:0]AXI4_Lite_BVALID;
  wire [0:0]AXI4_Lite_RDATA;
  wire \AXI4_Lite_RDATA_tmp[30]_i_1_n_0 ;
  wire \AXI4_Lite_RDATA_tmp[30]_i_4_n_0 ;
  wire \AXI4_Lite_RDATA_tmp[30]_i_7_n_0 ;
  wire \AXI4_Lite_RDATA_tmp[30]_i_8_n_0 ;
  wire AXI4_Lite_RREADY;
  wire [0:0]AXI4_Lite_WDATA;
  wire [3:0]AXI4_Lite_WSTRB;
  wire AXI4_Lite_WVALID;
  wire [0:0]E;
  (* RTL_KEEP = "yes" *) wire FSM_sequential_axi_lite_rstate_reg__0;
  wire IPCORE_RESETN;
  wire aw_transfer;
  wire axi_lite_rstate_next;
  (* RTL_KEEP = "yes" *) wire [0:0]axi_lite_wstate;
  wire [2:0]axi_lite_wstate_next;
  wire [0:0]read_reg_ip_timestamp;
  wire \read_reg_ip_timestamp_reg[30] ;
  wire reset;
  wire reset_in;
  wire [13:0]sel0;
  wire soft_reset;
  wire soft_reset_i_2_n_0;
  wire soft_reset_i_3_n_0;
  wire strobe_sw;
  wire [0:0]top_data_write;
  wire top_wr_enb;
  wire w_transfer_and_wstrb;
  wire \wdata[0]_i_1_n_0 ;
  wire write_reg_axi_enable_i_2_n_0;
  wire write_reg_axi_enable_i_3_n_0;
  wire write_reg_axi_enable_reg;
  wire write_reg_axi_enable_reg_0;
  wire write_reg_axi_enable_reg_1;

  assign out = FSM_sequential_axi_lite_rstate_reg__0;
  LUT3 #(
    .INIT(8'h04)) 
    AXI4_Lite_ARREADY_INST_0
       (.I0(FSM_sequential_axi_lite_rstate_reg__0),
        .I1(axi_lite_wstate),
        .I2(AXI4_Lite_AWVALID),
        .O(AXI4_Lite_ARREADY));
  LUT2 #(
    .INIT(4'h2)) 
    AXI4_Lite_AWREADY_INST_0
       (.I0(axi_lite_wstate),
        .I1(FSM_sequential_axi_lite_rstate_reg__0),
        .O(AXI4_Lite_AWREADY));
  LUT6 #(
    .INIT(64'hFEFFFFFF0E000000)) 
    \AXI4_Lite_RDATA_tmp[30]_i_1 
       (.I0(\read_reg_ip_timestamp_reg[30] ),
        .I1(\AXI4_Lite_RDATA_tmp[30]_i_4_n_0 ),
        .I2(AXI4_Lite_AWVALID),
        .I3(AXI4_Lite_ARVALID),
        .I4(AXI4_Lite_AWREADY),
        .I5(AXI4_Lite_RDATA),
        .O(\AXI4_Lite_RDATA_tmp[30]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \AXI4_Lite_RDATA_tmp[30]_i_2 
       (.I0(AXI4_Lite_ARESETN),
        .O(reset));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \AXI4_Lite_RDATA_tmp[30]_i_4 
       (.I0(\AXI4_Lite_RDATA_tmp[30]_i_7_n_0 ),
        .I1(sel0[0]),
        .I2(read_reg_ip_timestamp),
        .I3(AXI4_Lite_ARVALID),
        .I4(sel0[1]),
        .I5(\AXI4_Lite_RDATA_tmp[30]_i_8_n_0 ),
        .O(\AXI4_Lite_RDATA_tmp[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \AXI4_Lite_RDATA_tmp[30]_i_5 
       (.I0(AXI4_Lite_ARADDR[10]),
        .I1(AXI4_Lite_ARADDR[11]),
        .I2(AXI4_Lite_ARADDR[8]),
        .I3(AXI4_Lite_ARADDR[9]),
        .I4(AXI4_Lite_ARADDR[13]),
        .I5(AXI4_Lite_ARADDR[12]),
        .O(write_reg_axi_enable_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \AXI4_Lite_RDATA_tmp[30]_i_6 
       (.I0(AXI4_Lite_ARADDR[4]),
        .I1(AXI4_Lite_ARADDR[5]),
        .I2(AXI4_Lite_ARADDR[2]),
        .I3(AXI4_Lite_ARADDR[3]),
        .I4(AXI4_Lite_ARADDR[7]),
        .I5(AXI4_Lite_ARADDR[6]),
        .O(write_reg_axi_enable_reg_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \AXI4_Lite_RDATA_tmp[30]_i_7 
       (.I0(sel0[10]),
        .I1(sel0[11]),
        .I2(sel0[8]),
        .I3(sel0[9]),
        .I4(sel0[13]),
        .I5(sel0[12]),
        .O(\AXI4_Lite_RDATA_tmp[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \AXI4_Lite_RDATA_tmp[30]_i_8 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[7]),
        .I5(sel0[6]),
        .O(\AXI4_Lite_RDATA_tmp[30]_i_8_n_0 ));
  FDCE \AXI4_Lite_RDATA_tmp_reg[30] 
       (.C(AXI4_Lite_ACLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\AXI4_Lite_RDATA_tmp[30]_i_1_n_0 ),
        .Q(AXI4_Lite_RDATA));
  LUT5 #(
    .INIT(32'hFFC0D5C0)) 
    \FSM_onehot_axi_lite_wstate[0]_i_1 
       (.I0(AXI4_Lite_AWVALID),
        .I1(AXI4_Lite_BREADY),
        .I2(AXI4_Lite_BVALID[1]),
        .I3(axi_lite_wstate),
        .I4(FSM_sequential_axi_lite_rstate_reg__0),
        .O(axi_lite_wstate_next[0]));
  LUT5 #(
    .INIT(32'h4444F444)) 
    \FSM_onehot_axi_lite_wstate[1]_i_1 
       (.I0(AXI4_Lite_WVALID),
        .I1(AXI4_Lite_BVALID[0]),
        .I2(AXI4_Lite_AWVALID),
        .I3(axi_lite_wstate),
        .I4(FSM_sequential_axi_lite_rstate_reg__0),
        .O(axi_lite_wstate_next[1]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_axi_lite_wstate[2]_i_1 
       (.I0(AXI4_Lite_BVALID[0]),
        .I1(AXI4_Lite_WVALID),
        .I2(AXI4_Lite_BREADY),
        .I3(AXI4_Lite_BVALID[1]),
        .O(axi_lite_wstate_next[2]));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:100,iSTATE1:001" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_axi_lite_wstate_reg[0] 
       (.C(AXI4_Lite_ACLK),
        .CE(1'b1),
        .D(axi_lite_wstate_next[0]),
        .PRE(reset),
        .Q(axi_lite_wstate));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:100,iSTATE1:001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_lite_wstate_reg[1] 
       (.C(AXI4_Lite_ACLK),
        .CE(1'b1),
        .CLR(reset),
        .D(axi_lite_wstate_next[1]),
        .Q(AXI4_Lite_BVALID[0]));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:100,iSTATE1:001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_lite_wstate_reg[2] 
       (.C(AXI4_Lite_ACLK),
        .CE(1'b1),
        .CLR(reset),
        .D(axi_lite_wstate_next[2]),
        .Q(AXI4_Lite_BVALID[1]));
  LUT5 #(
    .INIT(32'h50505C50)) 
    FSM_sequential_axi_lite_rstate_i_1
       (.I0(AXI4_Lite_RREADY),
        .I1(axi_lite_wstate),
        .I2(FSM_sequential_axi_lite_rstate_reg__0),
        .I3(AXI4_Lite_ARVALID),
        .I4(AXI4_Lite_AWVALID),
        .O(axi_lite_rstate_next));
  (* FSM_ENCODED_STATES = "iSTATE:0,iSTATE0:1" *) 
  (* KEEP = "yes" *) 
  FDCE FSM_sequential_axi_lite_rstate_reg
       (.C(AXI4_Lite_ACLK),
        .CE(1'b1),
        .CLR(reset),
        .D(axi_lite_rstate_next),
        .Q(FSM_sequential_axi_lite_rstate_reg__0));
  LUT3 #(
    .INIT(8'hDF)) 
    reset_pipe_i_1
       (.I0(AXI4_Lite_ARESETN),
        .I1(soft_reset),
        .I2(IPCORE_RESETN),
        .O(reset_in));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    soft_reset_i_1
       (.I0(soft_reset_i_2_n_0),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(soft_reset_i_3_n_0),
        .O(strobe_sw));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    soft_reset_i_2
       (.I0(sel0[12]),
        .I1(sel0[13]),
        .I2(sel0[10]),
        .I3(sel0[11]),
        .I4(top_wr_enb),
        .I5(top_data_write),
        .O(soft_reset_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    soft_reset_i_3
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .I4(sel0[9]),
        .I5(sel0[8]),
        .O(soft_reset_i_3_n_0));
  FDCE soft_reset_reg
       (.C(AXI4_Lite_ACLK),
        .CE(1'b1),
        .CLR(reset),
        .D(strobe_sw),
        .Q(soft_reset));
  LUT3 #(
    .INIT(8'h40)) 
    \waddr[15]_i_1 
       (.I0(FSM_sequential_axi_lite_rstate_reg__0),
        .I1(axi_lite_wstate),
        .I2(AXI4_Lite_AWVALID),
        .O(aw_transfer));
  FDCE \waddr_reg[10] 
       (.C(AXI4_Lite_ACLK),
        .CE(aw_transfer),
        .CLR(reset),
        .D(AXI4_Lite_AWADDR[8]),
        .Q(sel0[8]));
  FDCE \waddr_reg[11] 
       (.C(AXI4_Lite_ACLK),
        .CE(aw_transfer),
        .CLR(reset),
        .D(AXI4_Lite_AWADDR[9]),
        .Q(sel0[9]));
  FDCE \waddr_reg[12] 
       (.C(AXI4_Lite_ACLK),
        .CE(aw_transfer),
        .CLR(reset),
        .D(AXI4_Lite_AWADDR[10]),
        .Q(sel0[10]));
  FDCE \waddr_reg[13] 
       (.C(AXI4_Lite_ACLK),
        .CE(aw_transfer),
        .CLR(reset),
        .D(AXI4_Lite_AWADDR[11]),
        .Q(sel0[11]));
  FDCE \waddr_reg[14] 
       (.C(AXI4_Lite_ACLK),
        .CE(aw_transfer),
        .CLR(reset),
        .D(AXI4_Lite_AWADDR[12]),
        .Q(sel0[12]));
  FDCE \waddr_reg[15] 
       (.C(AXI4_Lite_ACLK),
        .CE(aw_transfer),
        .CLR(reset),
        .D(AXI4_Lite_AWADDR[13]),
        .Q(sel0[13]));
  FDCE \waddr_reg[2] 
       (.C(AXI4_Lite_ACLK),
        .CE(aw_transfer),
        .CLR(reset),
        .D(AXI4_Lite_AWADDR[0]),
        .Q(sel0[0]));
  FDCE \waddr_reg[3] 
       (.C(AXI4_Lite_ACLK),
        .CE(aw_transfer),
        .CLR(reset),
        .D(AXI4_Lite_AWADDR[1]),
        .Q(sel0[1]));
  FDCE \waddr_reg[4] 
       (.C(AXI4_Lite_ACLK),
        .CE(aw_transfer),
        .CLR(reset),
        .D(AXI4_Lite_AWADDR[2]),
        .Q(sel0[2]));
  FDCE \waddr_reg[5] 
       (.C(AXI4_Lite_ACLK),
        .CE(aw_transfer),
        .CLR(reset),
        .D(AXI4_Lite_AWADDR[3]),
        .Q(sel0[3]));
  FDCE \waddr_reg[6] 
       (.C(AXI4_Lite_ACLK),
        .CE(aw_transfer),
        .CLR(reset),
        .D(AXI4_Lite_AWADDR[4]),
        .Q(sel0[4]));
  FDCE \waddr_reg[7] 
       (.C(AXI4_Lite_ACLK),
        .CE(aw_transfer),
        .CLR(reset),
        .D(AXI4_Lite_AWADDR[5]),
        .Q(sel0[5]));
  FDCE \waddr_reg[8] 
       (.C(AXI4_Lite_ACLK),
        .CE(aw_transfer),
        .CLR(reset),
        .D(AXI4_Lite_AWADDR[6]),
        .Q(sel0[6]));
  FDCE \waddr_reg[9] 
       (.C(AXI4_Lite_ACLK),
        .CE(aw_transfer),
        .CLR(reset),
        .D(AXI4_Lite_AWADDR[7]),
        .Q(sel0[7]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \wdata[0]_i_1 
       (.I0(AXI4_Lite_WDATA),
        .I1(AXI4_Lite_WVALID),
        .I2(AXI4_Lite_BVALID[0]),
        .I3(top_data_write),
        .O(\wdata[0]_i_1_n_0 ));
  FDCE \wdata_reg[0] 
       (.C(AXI4_Lite_ACLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\wdata[0]_i_1_n_0 ),
        .Q(top_data_write));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    wr_enb_1_i_1
       (.I0(AXI4_Lite_WSTRB[2]),
        .I1(AXI4_Lite_WSTRB[3]),
        .I2(AXI4_Lite_WSTRB[0]),
        .I3(AXI4_Lite_WSTRB[1]),
        .I4(AXI4_Lite_BVALID[0]),
        .I5(AXI4_Lite_WVALID),
        .O(w_transfer_and_wstrb));
  FDCE wr_enb_1_reg
       (.C(AXI4_Lite_ACLK),
        .CE(1'b1),
        .CLR(reset),
        .D(w_transfer_and_wstrb),
        .Q(top_wr_enb));
  LUT4 #(
    .INIT(16'hABA8)) 
    write_reg_axi_enable_i_1
       (.I0(top_data_write),
        .I1(write_reg_axi_enable_i_2_n_0),
        .I2(write_reg_axi_enable_i_3_n_0),
        .I3(E),
        .O(write_reg_axi_enable_reg));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    write_reg_axi_enable_i_2
       (.I0(write_reg_axi_enable_reg_0),
        .I1(AXI4_Lite_ARADDR[1]),
        .I2(AXI4_Lite_ARADDR[0]),
        .I3(top_wr_enb),
        .I4(AXI4_Lite_ARVALID),
        .I5(write_reg_axi_enable_reg_1),
        .O(write_reg_axi_enable_i_2_n_0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    write_reg_axi_enable_i_3
       (.I0(\AXI4_Lite_RDATA_tmp[30]_i_7_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(AXI4_Lite_ARVALID),
        .I4(top_wr_enb),
        .I5(\AXI4_Lite_RDATA_tmp[30]_i_8_n_0 ),
        .O(write_reg_axi_enable_i_3_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_dut
   (out1,
    E,
    in4,
    IPCORE_CLK,
    AR,
    in2,
    in3,
    in1);
  output [15:0]out1;
  input [0:0]E;
  input [15:0]in4;
  input IPCORE_CLK;
  input [0:0]AR;
  input [15:0]in2;
  input [15:0]in3;
  input [15:0]in1;

  wire [0:0]AR;
  wire [0:0]E;
  wire IPCORE_CLK;
  wire [15:0]in1;
  wire [15:0]in2;
  wire [15:0]in3;
  wire [15:0]in4;
  wire [15:0]out1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_src_de_lastigste_calc_ooit u_de_lastig_ip_src_de_lastigste_calc_ooit
       (.AR(AR),
        .E(E),
        .IPCORE_CLK(IPCORE_CLK),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .out1(out1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_reset_sync
   (AR,
    IPCORE_CLK,
    reset_in);
  output [0:0]AR;
  input IPCORE_CLK;
  input reset_in;

  wire [0:0]AR;
  wire IPCORE_CLK;
  wire reset_in;
  wire reset_pipe;

  FDPE reset_out_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(reset_pipe),
        .PRE(reset_in),
        .Q(AR));
  FDPE reset_pipe_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_in),
        .Q(reset_pipe));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_src_de_lastigste_calc_ooit
   (out1,
    E,
    in4,
    IPCORE_CLK,
    AR,
    in2,
    in3,
    in1);
  output [15:0]out1;
  input [0:0]E;
  input [15:0]in4;
  input IPCORE_CLK;
  input [0:0]AR;
  input [15:0]in2;
  input [15:0]in3;
  input [15:0]in1;

  wire [0:0]AR;
  wire [15:0]Delay1_out1;
  wire [15:0]Delay2_out1;
  wire [15:0]Delay3_out1;
  wire [15:0]Delay_out1;
  wire [0:0]E;
  wire IPCORE_CLK;
  wire Sum_out1__1_carry__0_i_10_n_0;
  wire Sum_out1__1_carry__0_i_11_n_0;
  wire Sum_out1__1_carry__0_i_12_n_0;
  wire Sum_out1__1_carry__0_i_1_n_0;
  wire Sum_out1__1_carry__0_i_2_n_0;
  wire Sum_out1__1_carry__0_i_3_n_0;
  wire Sum_out1__1_carry__0_i_4_n_0;
  wire Sum_out1__1_carry__0_i_5_n_0;
  wire Sum_out1__1_carry__0_i_6_n_0;
  wire Sum_out1__1_carry__0_i_7_n_0;
  wire Sum_out1__1_carry__0_i_8_n_0;
  wire Sum_out1__1_carry__0_i_9_n_0;
  wire Sum_out1__1_carry__0_n_0;
  wire Sum_out1__1_carry__0_n_1;
  wire Sum_out1__1_carry__0_n_2;
  wire Sum_out1__1_carry__0_n_3;
  wire Sum_out1__1_carry__1_i_10_n_0;
  wire Sum_out1__1_carry__1_i_11_n_0;
  wire Sum_out1__1_carry__1_i_12_n_0;
  wire Sum_out1__1_carry__1_i_1_n_0;
  wire Sum_out1__1_carry__1_i_2_n_0;
  wire Sum_out1__1_carry__1_i_3_n_0;
  wire Sum_out1__1_carry__1_i_4_n_0;
  wire Sum_out1__1_carry__1_i_5_n_0;
  wire Sum_out1__1_carry__1_i_6_n_0;
  wire Sum_out1__1_carry__1_i_7_n_0;
  wire Sum_out1__1_carry__1_i_8_n_0;
  wire Sum_out1__1_carry__1_i_9_n_0;
  wire Sum_out1__1_carry__1_n_0;
  wire Sum_out1__1_carry__1_n_1;
  wire Sum_out1__1_carry__1_n_2;
  wire Sum_out1__1_carry__1_n_3;
  wire Sum_out1__1_carry__2_i_10_n_0;
  wire Sum_out1__1_carry__2_i_11_n_0;
  wire Sum_out1__1_carry__2_i_12_n_0;
  wire Sum_out1__1_carry__2_i_1_n_0;
  wire Sum_out1__1_carry__2_i_2_n_0;
  wire Sum_out1__1_carry__2_i_3_n_0;
  wire Sum_out1__1_carry__2_i_4_n_0;
  wire Sum_out1__1_carry__2_i_5_n_0;
  wire Sum_out1__1_carry__2_i_6_n_0;
  wire Sum_out1__1_carry__2_i_7_n_0;
  wire Sum_out1__1_carry__2_i_8_n_0;
  wire Sum_out1__1_carry__2_i_9_n_0;
  wire Sum_out1__1_carry__2_n_1;
  wire Sum_out1__1_carry__2_n_2;
  wire Sum_out1__1_carry__2_n_3;
  wire Sum_out1__1_carry_i_1_n_0;
  wire Sum_out1__1_carry_i_2_n_0;
  wire Sum_out1__1_carry_i_3_n_0;
  wire Sum_out1__1_carry_i_4_n_0;
  wire Sum_out1__1_carry_i_5_n_0;
  wire Sum_out1__1_carry_i_6_n_0;
  wire Sum_out1__1_carry_i_7_n_0;
  wire Sum_out1__1_carry_i_8_n_0;
  wire Sum_out1__1_carry_n_0;
  wire Sum_out1__1_carry_n_1;
  wire Sum_out1__1_carry_n_2;
  wire Sum_out1__1_carry_n_3;
  wire [15:0]in1;
  wire [15:0]in2;
  wire [15:0]in3;
  wire [15:0]in4;
  wire [15:0]out1;
  wire [3:3]NLW_Sum_out1__1_carry__2_CO_UNCONNECTED;

  FDCE \Delay1_out1_reg[0] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[0]),
        .Q(Delay1_out1[0]));
  FDCE \Delay1_out1_reg[10] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[10]),
        .Q(Delay1_out1[10]));
  FDCE \Delay1_out1_reg[11] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[11]),
        .Q(Delay1_out1[11]));
  FDCE \Delay1_out1_reg[12] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[12]),
        .Q(Delay1_out1[12]));
  FDCE \Delay1_out1_reg[13] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[13]),
        .Q(Delay1_out1[13]));
  FDCE \Delay1_out1_reg[14] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[14]),
        .Q(Delay1_out1[14]));
  FDCE \Delay1_out1_reg[15] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[15]),
        .Q(Delay1_out1[15]));
  FDCE \Delay1_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[1]),
        .Q(Delay1_out1[1]));
  FDCE \Delay1_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[2]),
        .Q(Delay1_out1[2]));
  FDCE \Delay1_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[3]),
        .Q(Delay1_out1[3]));
  FDCE \Delay1_out1_reg[4] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[4]),
        .Q(Delay1_out1[4]));
  FDCE \Delay1_out1_reg[5] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[5]),
        .Q(Delay1_out1[5]));
  FDCE \Delay1_out1_reg[6] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[6]),
        .Q(Delay1_out1[6]));
  FDCE \Delay1_out1_reg[7] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[7]),
        .Q(Delay1_out1[7]));
  FDCE \Delay1_out1_reg[8] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[8]),
        .Q(Delay1_out1[8]));
  FDCE \Delay1_out1_reg[9] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in2[9]),
        .Q(Delay1_out1[9]));
  FDCE \Delay2_out1_reg[0] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[0]),
        .Q(Delay2_out1[0]));
  FDCE \Delay2_out1_reg[10] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[10]),
        .Q(Delay2_out1[10]));
  FDCE \Delay2_out1_reg[11] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[11]),
        .Q(Delay2_out1[11]));
  FDCE \Delay2_out1_reg[12] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[12]),
        .Q(Delay2_out1[12]));
  FDCE \Delay2_out1_reg[13] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[13]),
        .Q(Delay2_out1[13]));
  FDCE \Delay2_out1_reg[14] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[14]),
        .Q(Delay2_out1[14]));
  FDCE \Delay2_out1_reg[15] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[15]),
        .Q(Delay2_out1[15]));
  FDCE \Delay2_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[1]),
        .Q(Delay2_out1[1]));
  FDCE \Delay2_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[2]),
        .Q(Delay2_out1[2]));
  FDCE \Delay2_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[3]),
        .Q(Delay2_out1[3]));
  FDCE \Delay2_out1_reg[4] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[4]),
        .Q(Delay2_out1[4]));
  FDCE \Delay2_out1_reg[5] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[5]),
        .Q(Delay2_out1[5]));
  FDCE \Delay2_out1_reg[6] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[6]),
        .Q(Delay2_out1[6]));
  FDCE \Delay2_out1_reg[7] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[7]),
        .Q(Delay2_out1[7]));
  FDCE \Delay2_out1_reg[8] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[8]),
        .Q(Delay2_out1[8]));
  FDCE \Delay2_out1_reg[9] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in3[9]),
        .Q(Delay2_out1[9]));
  FDCE \Delay3_out1_reg[0] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[0]),
        .Q(Delay3_out1[0]));
  FDCE \Delay3_out1_reg[10] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[10]),
        .Q(Delay3_out1[10]));
  FDCE \Delay3_out1_reg[11] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[11]),
        .Q(Delay3_out1[11]));
  FDCE \Delay3_out1_reg[12] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[12]),
        .Q(Delay3_out1[12]));
  FDCE \Delay3_out1_reg[13] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[13]),
        .Q(Delay3_out1[13]));
  FDCE \Delay3_out1_reg[14] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[14]),
        .Q(Delay3_out1[14]));
  FDCE \Delay3_out1_reg[15] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[15]),
        .Q(Delay3_out1[15]));
  FDCE \Delay3_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[1]),
        .Q(Delay3_out1[1]));
  FDCE \Delay3_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[2]),
        .Q(Delay3_out1[2]));
  FDCE \Delay3_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[3]),
        .Q(Delay3_out1[3]));
  FDCE \Delay3_out1_reg[4] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[4]),
        .Q(Delay3_out1[4]));
  FDCE \Delay3_out1_reg[5] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[5]),
        .Q(Delay3_out1[5]));
  FDCE \Delay3_out1_reg[6] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[6]),
        .Q(Delay3_out1[6]));
  FDCE \Delay3_out1_reg[7] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[7]),
        .Q(Delay3_out1[7]));
  FDCE \Delay3_out1_reg[8] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[8]),
        .Q(Delay3_out1[8]));
  FDCE \Delay3_out1_reg[9] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in4[9]),
        .Q(Delay3_out1[9]));
  FDCE \Delay_out1_reg[0] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[0]),
        .Q(Delay_out1[0]));
  FDCE \Delay_out1_reg[10] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[10]),
        .Q(Delay_out1[10]));
  FDCE \Delay_out1_reg[11] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[11]),
        .Q(Delay_out1[11]));
  FDCE \Delay_out1_reg[12] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[12]),
        .Q(Delay_out1[12]));
  FDCE \Delay_out1_reg[13] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[13]),
        .Q(Delay_out1[13]));
  FDCE \Delay_out1_reg[14] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[14]),
        .Q(Delay_out1[14]));
  FDCE \Delay_out1_reg[15] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[15]),
        .Q(Delay_out1[15]));
  FDCE \Delay_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[1]),
        .Q(Delay_out1[1]));
  FDCE \Delay_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[2]),
        .Q(Delay_out1[2]));
  FDCE \Delay_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[3]),
        .Q(Delay_out1[3]));
  FDCE \Delay_out1_reg[4] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[4]),
        .Q(Delay_out1[4]));
  FDCE \Delay_out1_reg[5] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[5]),
        .Q(Delay_out1[5]));
  FDCE \Delay_out1_reg[6] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[6]),
        .Q(Delay_out1[6]));
  FDCE \Delay_out1_reg[7] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[7]),
        .Q(Delay_out1[7]));
  FDCE \Delay_out1_reg[8] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[8]),
        .Q(Delay_out1[8]));
  FDCE \Delay_out1_reg[9] 
       (.C(IPCORE_CLK),
        .CE(E),
        .CLR(AR),
        .D(in1[9]),
        .Q(Delay_out1[9]));
  CARRY4 Sum_out1__1_carry
       (.CI(1'b0),
        .CO({Sum_out1__1_carry_n_0,Sum_out1__1_carry_n_1,Sum_out1__1_carry_n_2,Sum_out1__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Sum_out1__1_carry_i_1_n_0,Sum_out1__1_carry_i_2_n_0,Sum_out1__1_carry_i_3_n_0,Delay_out1[0]}),
        .O(out1[3:0]),
        .S({Sum_out1__1_carry_i_4_n_0,Sum_out1__1_carry_i_5_n_0,Sum_out1__1_carry_i_6_n_0,Sum_out1__1_carry_i_7_n_0}));
  CARRY4 Sum_out1__1_carry__0
       (.CI(Sum_out1__1_carry_n_0),
        .CO({Sum_out1__1_carry__0_n_0,Sum_out1__1_carry__0_n_1,Sum_out1__1_carry__0_n_2,Sum_out1__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Sum_out1__1_carry__0_i_1_n_0,Sum_out1__1_carry__0_i_2_n_0,Sum_out1__1_carry__0_i_3_n_0,Sum_out1__1_carry__0_i_4_n_0}),
        .O(out1[7:4]),
        .S({Sum_out1__1_carry__0_i_5_n_0,Sum_out1__1_carry__0_i_6_n_0,Sum_out1__1_carry__0_i_7_n_0,Sum_out1__1_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'hFF969600)) 
    Sum_out1__1_carry__0_i_1
       (.I0(Delay2_out1[6]),
        .I1(Delay3_out1[6]),
        .I2(Delay1_out1[6]),
        .I3(Sum_out1__1_carry__0_i_9_n_0),
        .I4(Delay_out1[6]),
        .O(Sum_out1__1_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum_out1__1_carry__0_i_10
       (.I0(Delay2_out1[5]),
        .I1(Delay3_out1[5]),
        .I2(Delay1_out1[5]),
        .O(Sum_out1__1_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    Sum_out1__1_carry__0_i_11
       (.I0(Delay1_out1[3]),
        .I1(Delay2_out1[3]),
        .I2(Delay3_out1[3]),
        .O(Sum_out1__1_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum_out1__1_carry__0_i_12
       (.I0(Delay2_out1[3]),
        .I1(Delay3_out1[3]),
        .I2(Delay1_out1[3]),
        .O(Sum_out1__1_carry__0_i_12_n_0));
  LUT5 #(
    .INIT(32'hBAFB20A2)) 
    Sum_out1__1_carry__0_i_2
       (.I0(Delay_out1[5]),
        .I1(Delay3_out1[4]),
        .I2(Delay2_out1[4]),
        .I3(Delay1_out1[4]),
        .I4(Sum_out1__1_carry__0_i_10_n_0),
        .O(Sum_out1__1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFF969600)) 
    Sum_out1__1_carry__0_i_3
       (.I0(Delay2_out1[4]),
        .I1(Delay3_out1[4]),
        .I2(Delay1_out1[4]),
        .I3(Sum_out1__1_carry__0_i_11_n_0),
        .I4(Delay_out1[4]),
        .O(Sum_out1__1_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hBAFB20A2)) 
    Sum_out1__1_carry__0_i_4
       (.I0(Delay_out1[3]),
        .I1(Delay3_out1[2]),
        .I2(Delay2_out1[2]),
        .I3(Delay1_out1[2]),
        .I4(Sum_out1__1_carry__0_i_12_n_0),
        .O(Sum_out1__1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    Sum_out1__1_carry__0_i_5
       (.I0(Sum_out1__1_carry__0_i_1_n_0),
        .I1(Sum_out1__1_carry__1_i_12_n_0),
        .I2(Delay_out1[7]),
        .I3(Delay1_out1[6]),
        .I4(Delay2_out1[6]),
        .I5(Delay3_out1[6]),
        .O(Sum_out1__1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    Sum_out1__1_carry__0_i_6
       (.I0(Sum_out1__1_carry__0_i_2_n_0),
        .I1(Delay1_out1[6]),
        .I2(Delay3_out1[6]),
        .I3(Delay2_out1[6]),
        .I4(Delay_out1[6]),
        .I5(Sum_out1__1_carry__0_i_9_n_0),
        .O(Sum_out1__1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    Sum_out1__1_carry__0_i_7
       (.I0(Sum_out1__1_carry__0_i_3_n_0),
        .I1(Sum_out1__1_carry__0_i_10_n_0),
        .I2(Delay_out1[5]),
        .I3(Delay1_out1[4]),
        .I4(Delay2_out1[4]),
        .I5(Delay3_out1[4]),
        .O(Sum_out1__1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    Sum_out1__1_carry__0_i_8
       (.I0(Sum_out1__1_carry__0_i_4_n_0),
        .I1(Delay1_out1[4]),
        .I2(Delay3_out1[4]),
        .I3(Delay2_out1[4]),
        .I4(Delay_out1[4]),
        .I5(Sum_out1__1_carry__0_i_11_n_0),
        .O(Sum_out1__1_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    Sum_out1__1_carry__0_i_9
       (.I0(Delay1_out1[5]),
        .I1(Delay2_out1[5]),
        .I2(Delay3_out1[5]),
        .O(Sum_out1__1_carry__0_i_9_n_0));
  CARRY4 Sum_out1__1_carry__1
       (.CI(Sum_out1__1_carry__0_n_0),
        .CO({Sum_out1__1_carry__1_n_0,Sum_out1__1_carry__1_n_1,Sum_out1__1_carry__1_n_2,Sum_out1__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Sum_out1__1_carry__1_i_1_n_0,Sum_out1__1_carry__1_i_2_n_0,Sum_out1__1_carry__1_i_3_n_0,Sum_out1__1_carry__1_i_4_n_0}),
        .O(out1[11:8]),
        .S({Sum_out1__1_carry__1_i_5_n_0,Sum_out1__1_carry__1_i_6_n_0,Sum_out1__1_carry__1_i_7_n_0,Sum_out1__1_carry__1_i_8_n_0}));
  LUT5 #(
    .INIT(32'hFF969600)) 
    Sum_out1__1_carry__1_i_1
       (.I0(Delay2_out1[10]),
        .I1(Delay3_out1[10]),
        .I2(Delay1_out1[10]),
        .I3(Sum_out1__1_carry__1_i_9_n_0),
        .I4(Delay_out1[10]),
        .O(Sum_out1__1_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum_out1__1_carry__1_i_10
       (.I0(Delay2_out1[9]),
        .I1(Delay3_out1[9]),
        .I2(Delay1_out1[9]),
        .O(Sum_out1__1_carry__1_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Sum_out1__1_carry__1_i_11
       (.I0(Delay2_out1[8]),
        .I1(Delay3_out1[8]),
        .I2(Delay1_out1[8]),
        .O(Sum_out1__1_carry__1_i_11_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Sum_out1__1_carry__1_i_12
       (.I0(Delay2_out1[7]),
        .I1(Delay3_out1[7]),
        .I2(Delay1_out1[7]),
        .O(Sum_out1__1_carry__1_i_12_n_0));
  LUT5 #(
    .INIT(32'hBAFB20A2)) 
    Sum_out1__1_carry__1_i_2
       (.I0(Delay_out1[9]),
        .I1(Delay3_out1[8]),
        .I2(Delay2_out1[8]),
        .I3(Delay1_out1[8]),
        .I4(Sum_out1__1_carry__1_i_10_n_0),
        .O(Sum_out1__1_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'hBAFB20A2)) 
    Sum_out1__1_carry__1_i_3
       (.I0(Delay_out1[8]),
        .I1(Delay3_out1[7]),
        .I2(Delay2_out1[7]),
        .I3(Delay1_out1[7]),
        .I4(Sum_out1__1_carry__1_i_11_n_0),
        .O(Sum_out1__1_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'hBAFB20A2)) 
    Sum_out1__1_carry__1_i_4
       (.I0(Delay_out1[7]),
        .I1(Delay3_out1[6]),
        .I2(Delay2_out1[6]),
        .I3(Delay1_out1[6]),
        .I4(Sum_out1__1_carry__1_i_12_n_0),
        .O(Sum_out1__1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    Sum_out1__1_carry__1_i_5
       (.I0(Sum_out1__1_carry__1_i_1_n_0),
        .I1(Delay1_out1[11]),
        .I2(Delay3_out1[11]),
        .I3(Delay2_out1[11]),
        .I4(Delay_out1[11]),
        .I5(Sum_out1__1_carry__2_i_10_n_0),
        .O(Sum_out1__1_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    Sum_out1__1_carry__1_i_6
       (.I0(Sum_out1__1_carry__1_i_2_n_0),
        .I1(Delay1_out1[10]),
        .I2(Delay3_out1[10]),
        .I3(Delay2_out1[10]),
        .I4(Delay_out1[10]),
        .I5(Sum_out1__1_carry__1_i_9_n_0),
        .O(Sum_out1__1_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    Sum_out1__1_carry__1_i_7
       (.I0(Sum_out1__1_carry__1_i_3_n_0),
        .I1(Sum_out1__1_carry__1_i_10_n_0),
        .I2(Delay_out1[9]),
        .I3(Delay1_out1[8]),
        .I4(Delay2_out1[8]),
        .I5(Delay3_out1[8]),
        .O(Sum_out1__1_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    Sum_out1__1_carry__1_i_8
       (.I0(Sum_out1__1_carry__1_i_4_n_0),
        .I1(Sum_out1__1_carry__1_i_11_n_0),
        .I2(Delay_out1[8]),
        .I3(Delay1_out1[7]),
        .I4(Delay2_out1[7]),
        .I5(Delay3_out1[7]),
        .O(Sum_out1__1_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    Sum_out1__1_carry__1_i_9
       (.I0(Delay1_out1[9]),
        .I1(Delay2_out1[9]),
        .I2(Delay3_out1[9]),
        .O(Sum_out1__1_carry__1_i_9_n_0));
  CARRY4 Sum_out1__1_carry__2
       (.CI(Sum_out1__1_carry__1_n_0),
        .CO({NLW_Sum_out1__1_carry__2_CO_UNCONNECTED[3],Sum_out1__1_carry__2_n_1,Sum_out1__1_carry__2_n_2,Sum_out1__1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Sum_out1__1_carry__2_i_1_n_0,Sum_out1__1_carry__2_i_2_n_0,Sum_out1__1_carry__2_i_3_n_0}),
        .O(out1[15:12]),
        .S({Sum_out1__1_carry__2_i_4_n_0,Sum_out1__1_carry__2_i_5_n_0,Sum_out1__1_carry__2_i_6_n_0,Sum_out1__1_carry__2_i_7_n_0}));
  LUT5 #(
    .INIT(32'hBAFB20A2)) 
    Sum_out1__1_carry__2_i_1
       (.I0(Delay_out1[13]),
        .I1(Delay1_out1[12]),
        .I2(Delay2_out1[12]),
        .I3(Delay3_out1[12]),
        .I4(Sum_out1__1_carry__2_i_8_n_0),
        .O(Sum_out1__1_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    Sum_out1__1_carry__2_i_10
       (.I0(Delay1_out1[10]),
        .I1(Delay2_out1[10]),
        .I2(Delay3_out1[10]),
        .O(Sum_out1__1_carry__2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    Sum_out1__1_carry__2_i_11
       (.I0(Delay2_out1[13]),
        .I1(Delay3_out1[13]),
        .I2(Delay1_out1[13]),
        .O(Sum_out1__1_carry__2_i_11_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Sum_out1__1_carry__2_i_12
       (.I0(Delay1_out1[15]),
        .I1(Delay3_out1[15]),
        .I2(Delay2_out1[15]),
        .I3(Delay_out1[15]),
        .O(Sum_out1__1_carry__2_i_12_n_0));
  LUT5 #(
    .INIT(32'hBAFB20A2)) 
    Sum_out1__1_carry__2_i_2
       (.I0(Delay_out1[12]),
        .I1(Delay3_out1[11]),
        .I2(Delay2_out1[11]),
        .I3(Delay1_out1[11]),
        .I4(Sum_out1__1_carry__2_i_9_n_0),
        .O(Sum_out1__1_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'hFF969600)) 
    Sum_out1__1_carry__2_i_3
       (.I0(Delay2_out1[11]),
        .I1(Delay3_out1[11]),
        .I2(Delay1_out1[11]),
        .I3(Sum_out1__1_carry__2_i_10_n_0),
        .I4(Delay_out1[11]),
        .O(Sum_out1__1_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h1E78871E871EE187)) 
    Sum_out1__1_carry__2_i_4
       (.I0(Delay_out1[14]),
        .I1(Sum_out1__1_carry__2_i_11_n_0),
        .I2(Sum_out1__1_carry__2_i_12_n_0),
        .I3(Delay2_out1[14]),
        .I4(Delay3_out1[14]),
        .I5(Delay1_out1[14]),
        .O(Sum_out1__1_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    Sum_out1__1_carry__2_i_5
       (.I0(Sum_out1__1_carry__2_i_1_n_0),
        .I1(Delay1_out1[14]),
        .I2(Delay3_out1[14]),
        .I3(Delay2_out1[14]),
        .I4(Delay_out1[14]),
        .I5(Sum_out1__1_carry__2_i_11_n_0),
        .O(Sum_out1__1_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    Sum_out1__1_carry__2_i_6
       (.I0(Sum_out1__1_carry__2_i_2_n_0),
        .I1(Sum_out1__1_carry__2_i_8_n_0),
        .I2(Delay_out1[13]),
        .I3(Delay3_out1[12]),
        .I4(Delay2_out1[12]),
        .I5(Delay1_out1[12]),
        .O(Sum_out1__1_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    Sum_out1__1_carry__2_i_7
       (.I0(Sum_out1__1_carry__2_i_3_n_0),
        .I1(Sum_out1__1_carry__2_i_9_n_0),
        .I2(Delay_out1[12]),
        .I3(Delay1_out1[11]),
        .I4(Delay2_out1[11]),
        .I5(Delay3_out1[11]),
        .O(Sum_out1__1_carry__2_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum_out1__1_carry__2_i_8
       (.I0(Delay2_out1[13]),
        .I1(Delay3_out1[13]),
        .I2(Delay1_out1[13]),
        .O(Sum_out1__1_carry__2_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Sum_out1__1_carry__2_i_9
       (.I0(Delay2_out1[12]),
        .I1(Delay3_out1[12]),
        .I2(Delay1_out1[12]),
        .O(Sum_out1__1_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h96FFFFFF00969696)) 
    Sum_out1__1_carry_i_1
       (.I0(Delay2_out1[2]),
        .I1(Delay3_out1[2]),
        .I2(Delay1_out1[2]),
        .I3(Delay1_out1[1]),
        .I4(Delay3_out1[1]),
        .I5(Delay_out1[2]),
        .O(Sum_out1__1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hF990)) 
    Sum_out1__1_carry_i_2
       (.I0(Delay1_out1[1]),
        .I1(Delay3_out1[1]),
        .I2(Delay2_out1[1]),
        .I3(Delay_out1[1]),
        .O(Sum_out1__1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    Sum_out1__1_carry_i_3
       (.I0(Delay3_out1[1]),
        .I1(Delay1_out1[1]),
        .I2(Delay2_out1[1]),
        .I3(Delay_out1[1]),
        .O(Sum_out1__1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    Sum_out1__1_carry_i_4
       (.I0(Sum_out1__1_carry_i_1_n_0),
        .I1(Sum_out1__1_carry__0_i_12_n_0),
        .I2(Delay_out1[3]),
        .I3(Delay1_out1[2]),
        .I4(Delay2_out1[2]),
        .I5(Delay3_out1[2]),
        .O(Sum_out1__1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    Sum_out1__1_carry_i_5
       (.I0(Sum_out1__1_carry_i_2_n_0),
        .I1(Delay1_out1[2]),
        .I2(Delay3_out1[2]),
        .I3(Delay2_out1[2]),
        .I4(Delay_out1[2]),
        .I5(Sum_out1__1_carry_i_8_n_0),
        .O(Sum_out1__1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9A59)) 
    Sum_out1__1_carry_i_6
       (.I0(Sum_out1__1_carry_i_3_n_0),
        .I1(Delay3_out1[0]),
        .I2(Delay2_out1[0]),
        .I3(Delay1_out1[0]),
        .O(Sum_out1__1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Sum_out1__1_carry_i_7
       (.I0(Delay1_out1[0]),
        .I1(Delay3_out1[0]),
        .I2(Delay2_out1[0]),
        .I3(Delay_out1[0]),
        .O(Sum_out1__1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    Sum_out1__1_carry_i_8
       (.I0(Delay3_out1[1]),
        .I1(Delay1_out1[1]),
        .O(Sum_out1__1_carry_i_8_n_0));
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
