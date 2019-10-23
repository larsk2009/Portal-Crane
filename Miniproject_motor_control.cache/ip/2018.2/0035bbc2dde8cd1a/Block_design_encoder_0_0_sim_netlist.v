// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Oct  4 14:19:42 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_design_encoder_0_0_sim_netlist.v
// Design      : Block_design_encoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_design_encoder_0_0,encoder_v2_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "encoder_v2_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rotary_a,
    rotary_b,
    rotary_i,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input rotary_a;
  input rotary_b;
  input rotary_i;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire rotary_a;
  wire rotary_b;
  wire rotary_i;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encoder_v2_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .rotary_a(rotary_a),
        .rotary_b(rotary_b),
        .rotary_i(rotary_i),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encoder_v2_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    rotary_i,
    s00_axi_aclk,
    rotary_b,
    rotary_a,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input rotary_i;
  input s00_axi_aclk;
  input rotary_b;
  input rotary_a;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire rotary_a;
  wire rotary_b;
  wire rotary_i;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encoder_v2_0_S00_AXI encoder_v2_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .rotary_a(rotary_a),
        .rotary_b(rotary_b),
        .rotary_i(rotary_i),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encoder_v2_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    rotary_i,
    s00_axi_aclk,
    rotary_b,
    rotary_a,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input rotary_i;
  input s00_axi_aclk;
  input rotary_b;
  input rotary_a;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire dut_n_0;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire rotary_a;
  wire rotary_b;
  wire rotary_i;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden;
  wire slv_reg_wren__0;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(dut_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(dut_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(dut_n_0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(dut_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(dut_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(dut_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(dut_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(dut_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(dut_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(dut_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(dut_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_rotary dut
       (.D(reg_data_out),
        .Q(slv_reg2),
        .SR(dut_n_0),
        .axi_araddr(axi_araddr),
        .rotary_a(rotary_a),
        .rotary_b(rotary_b),
        .rotary_i(rotary_i),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\slv_reg1_reg[31] (slv_reg1),
        .\slv_reg3_reg[31] (slv_reg3));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(dut_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(dut_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(dut_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(dut_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WREADY),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(dut_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(dut_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_rotary
   (SR,
    D,
    rotary_i,
    s00_axi_aclk,
    rotary_b,
    rotary_a,
    s00_axi_aresetn,
    Q,
    \slv_reg3_reg[31] ,
    axi_araddr,
    \slv_reg1_reg[31] );
  output [0:0]SR;
  output [31:0]D;
  input rotary_i;
  input s00_axi_aclk;
  input rotary_b;
  input rotary_a;
  input s00_axi_aresetn;
  input [31:0]Q;
  input [31:0]\slv_reg3_reg[31] ;
  input [1:0]axi_araddr;
  input [31:0]\slv_reg1_reg[31] ;

  wire [31:0]D;
  wire [2:0]L;
  wire [31:0]Q;
  wire [0:0]SR;
  wire [1:0]axi_araddr;
  wire [30:0]counter_r;
  wire \counter_r[30]_i_3_n_0 ;
  wire \counter_r[30]_i_4_n_0 ;
  wire \counter_r_reg[12]_i_2_n_0 ;
  wire \counter_r_reg[12]_i_2_n_1 ;
  wire \counter_r_reg[12]_i_2_n_2 ;
  wire \counter_r_reg[12]_i_2_n_3 ;
  wire \counter_r_reg[16]_i_2_n_0 ;
  wire \counter_r_reg[16]_i_2_n_1 ;
  wire \counter_r_reg[16]_i_2_n_2 ;
  wire \counter_r_reg[16]_i_2_n_3 ;
  wire \counter_r_reg[20]_i_2_n_0 ;
  wire \counter_r_reg[20]_i_2_n_1 ;
  wire \counter_r_reg[20]_i_2_n_2 ;
  wire \counter_r_reg[20]_i_2_n_3 ;
  wire \counter_r_reg[24]_i_2_n_0 ;
  wire \counter_r_reg[24]_i_2_n_1 ;
  wire \counter_r_reg[24]_i_2_n_2 ;
  wire \counter_r_reg[24]_i_2_n_3 ;
  wire \counter_r_reg[28]_i_2_n_0 ;
  wire \counter_r_reg[28]_i_2_n_1 ;
  wire \counter_r_reg[28]_i_2_n_2 ;
  wire \counter_r_reg[28]_i_2_n_3 ;
  wire \counter_r_reg[30]_i_2_n_3 ;
  wire \counter_r_reg[4]_i_2_n_0 ;
  wire \counter_r_reg[4]_i_2_n_1 ;
  wire \counter_r_reg[4]_i_2_n_2 ;
  wire \counter_r_reg[4]_i_2_n_3 ;
  wire \counter_r_reg[8]_i_2_n_0 ;
  wire \counter_r_reg[8]_i_2_n_1 ;
  wire \counter_r_reg[8]_i_2_n_2 ;
  wire \counter_r_reg[8]_i_2_n_3 ;
  wire [30:0]counter_v;
  wire \debounce_count_r[8]_i_1_n_0 ;
  wire \debounce_count_r[8]_i_3_n_0 ;
  wire \debounce_count_r[8]_i_4_n_0 ;
  wire [8:0]debounce_count_r_reg__0;
  wire direction_r;
  wire direction_r_i_1_n_0;
  wire direction_r_i_3_n_0;
  wire direction_v;
  wire eqOp__5;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [8:0]minusOp;
  wire [30:1]minusOp__0;
  wire \minusOp_inferred__0/i__carry__0_n_0 ;
  wire \minusOp_inferred__0/i__carry__0_n_1 ;
  wire \minusOp_inferred__0/i__carry__0_n_2 ;
  wire \minusOp_inferred__0/i__carry__0_n_3 ;
  wire \minusOp_inferred__0/i__carry__1_n_0 ;
  wire \minusOp_inferred__0/i__carry__1_n_1 ;
  wire \minusOp_inferred__0/i__carry__1_n_2 ;
  wire \minusOp_inferred__0/i__carry__1_n_3 ;
  wire \minusOp_inferred__0/i__carry__2_n_0 ;
  wire \minusOp_inferred__0/i__carry__2_n_1 ;
  wire \minusOp_inferred__0/i__carry__2_n_2 ;
  wire \minusOp_inferred__0/i__carry__2_n_3 ;
  wire \minusOp_inferred__0/i__carry__3_n_0 ;
  wire \minusOp_inferred__0/i__carry__3_n_1 ;
  wire \minusOp_inferred__0/i__carry__3_n_2 ;
  wire \minusOp_inferred__0/i__carry__3_n_3 ;
  wire \minusOp_inferred__0/i__carry__4_n_0 ;
  wire \minusOp_inferred__0/i__carry__4_n_1 ;
  wire \minusOp_inferred__0/i__carry__4_n_2 ;
  wire \minusOp_inferred__0/i__carry__4_n_3 ;
  wire \minusOp_inferred__0/i__carry__5_n_0 ;
  wire \minusOp_inferred__0/i__carry__5_n_1 ;
  wire \minusOp_inferred__0/i__carry__5_n_2 ;
  wire \minusOp_inferred__0/i__carry__5_n_3 ;
  wire \minusOp_inferred__0/i__carry__6_n_3 ;
  wire \minusOp_inferred__0/i__carry_n_0 ;
  wire \minusOp_inferred__0/i__carry_n_1 ;
  wire \minusOp_inferred__0/i__carry_n_2 ;
  wire \minusOp_inferred__0/i__carry_n_3 ;
  wire [30:1]plusOp;
  wire rotary_a;
  wire rotary_b;
  wire rotary_i;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [31:0]\slv_reg1_reg[31] ;
  wire [31:0]\slv_reg3_reg[31] ;
  wire [2:0]state_pot_r;
  wire [2:0]state_r;
  wire \state_r[2]_i_1_n_0 ;
  wire \state_r[2]_i_2_n_0 ;
  wire \state_r[2]_i_3_n_0 ;
  wire [3:1]\NLW_counter_r_reg[30]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_r_reg[30]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:2]\NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg3_reg[31] [0]),
        .I2(counter_r[0]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[10]_i_1 
       (.I0(Q[10]),
        .I1(\slv_reg3_reg[31] [10]),
        .I2(counter_r[10]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[11]_i_1 
       (.I0(Q[11]),
        .I1(\slv_reg3_reg[31] [11]),
        .I2(counter_r[11]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[12]_i_1 
       (.I0(Q[12]),
        .I1(\slv_reg3_reg[31] [12]),
        .I2(counter_r[12]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[13]_i_1 
       (.I0(Q[13]),
        .I1(\slv_reg3_reg[31] [13]),
        .I2(counter_r[13]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[14]_i_1 
       (.I0(Q[14]),
        .I1(\slv_reg3_reg[31] [14]),
        .I2(counter_r[14]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[15]_i_1 
       (.I0(Q[15]),
        .I1(\slv_reg3_reg[31] [15]),
        .I2(counter_r[15]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[16]_i_1 
       (.I0(Q[16]),
        .I1(\slv_reg3_reg[31] [16]),
        .I2(counter_r[16]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[17]_i_1 
       (.I0(Q[17]),
        .I1(\slv_reg3_reg[31] [17]),
        .I2(counter_r[17]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [17]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[18]_i_1 
       (.I0(Q[18]),
        .I1(\slv_reg3_reg[31] [18]),
        .I2(counter_r[18]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [18]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[19]_i_1 
       (.I0(Q[19]),
        .I1(\slv_reg3_reg[31] [19]),
        .I2(counter_r[19]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [19]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[1]_i_1 
       (.I0(Q[1]),
        .I1(\slv_reg3_reg[31] [1]),
        .I2(counter_r[1]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[20]_i_1 
       (.I0(Q[20]),
        .I1(\slv_reg3_reg[31] [20]),
        .I2(counter_r[20]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [20]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[21]_i_1 
       (.I0(Q[21]),
        .I1(\slv_reg3_reg[31] [21]),
        .I2(counter_r[21]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [21]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[22]_i_1 
       (.I0(Q[22]),
        .I1(\slv_reg3_reg[31] [22]),
        .I2(counter_r[22]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [22]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[23]_i_1 
       (.I0(Q[23]),
        .I1(\slv_reg3_reg[31] [23]),
        .I2(counter_r[23]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [23]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[24]_i_1 
       (.I0(Q[24]),
        .I1(\slv_reg3_reg[31] [24]),
        .I2(counter_r[24]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [24]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[25]_i_1 
       (.I0(Q[25]),
        .I1(\slv_reg3_reg[31] [25]),
        .I2(counter_r[25]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [25]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[26]_i_1 
       (.I0(Q[26]),
        .I1(\slv_reg3_reg[31] [26]),
        .I2(counter_r[26]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [26]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[27]_i_1 
       (.I0(Q[27]),
        .I1(\slv_reg3_reg[31] [27]),
        .I2(counter_r[27]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [27]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[28]_i_1 
       (.I0(Q[28]),
        .I1(\slv_reg3_reg[31] [28]),
        .I2(counter_r[28]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [28]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[29]_i_1 
       (.I0(Q[29]),
        .I1(\slv_reg3_reg[31] [29]),
        .I2(counter_r[29]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [29]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[2]_i_1 
       (.I0(Q[2]),
        .I1(\slv_reg3_reg[31] [2]),
        .I2(counter_r[2]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[30]_i_1 
       (.I0(Q[30]),
        .I1(\slv_reg3_reg[31] [30]),
        .I2(counter_r[30]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [30]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[31]_i_2 
       (.I0(Q[31]),
        .I1(\slv_reg3_reg[31] [31]),
        .I2(direction_r),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [31]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[3]_i_1 
       (.I0(Q[3]),
        .I1(\slv_reg3_reg[31] [3]),
        .I2(counter_r[3]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[4]_i_1 
       (.I0(Q[4]),
        .I1(\slv_reg3_reg[31] [4]),
        .I2(counter_r[4]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[5]_i_1 
       (.I0(Q[5]),
        .I1(\slv_reg3_reg[31] [5]),
        .I2(counter_r[5]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[6]_i_1 
       (.I0(Q[6]),
        .I1(\slv_reg3_reg[31] [6]),
        .I2(counter_r[6]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[7]_i_1 
       (.I0(Q[7]),
        .I1(\slv_reg3_reg[31] [7]),
        .I2(counter_r[7]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[8]_i_1 
       (.I0(Q[8]),
        .I1(\slv_reg3_reg[31] [8]),
        .I2(counter_r[8]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[9]_i_1 
       (.I0(Q[9]),
        .I1(\slv_reg3_reg[31] [9]),
        .I2(counter_r[9]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .I5(\slv_reg1_reg[31] [9]),
        .O(D[9]));
  LUT3 #(
    .INIT(8'h07)) 
    \counter_r[0]_i_1 
       (.I0(state_r[2]),
        .I1(state_r[0]),
        .I2(counter_r[0]),
        .O(counter_v[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[10]_i_1 
       (.I0(plusOp[10]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[10]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[11]_i_1 
       (.I0(plusOp[11]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[11]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[12]_i_1 
       (.I0(plusOp[12]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[12]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[13]_i_1 
       (.I0(plusOp[13]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[13]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[14]_i_1 
       (.I0(plusOp[14]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[14]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[15]_i_1 
       (.I0(plusOp[15]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[15]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[16]_i_1 
       (.I0(plusOp[16]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[16]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[17]_i_1 
       (.I0(plusOp[17]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[17]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[18]_i_1 
       (.I0(plusOp[18]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[18]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[19]_i_1 
       (.I0(plusOp[19]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[19]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[19]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[1]_i_1 
       (.I0(plusOp[1]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[1]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[20]_i_1 
       (.I0(plusOp[20]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[20]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[21]_i_1 
       (.I0(plusOp[21]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[21]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[22]_i_1 
       (.I0(plusOp[22]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[22]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[22]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[23]_i_1 
       (.I0(plusOp[23]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[23]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[23]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[24]_i_1 
       (.I0(plusOp[24]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[24]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[24]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[25]_i_1 
       (.I0(plusOp[25]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[25]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[25]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[26]_i_1 
       (.I0(plusOp[26]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[26]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[26]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[27]_i_1 
       (.I0(plusOp[27]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[27]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[27]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[28]_i_1 
       (.I0(plusOp[28]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[28]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[28]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[29]_i_1 
       (.I0(plusOp[29]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[29]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[29]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[2]_i_1 
       (.I0(plusOp[2]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[2]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[30]_i_1 
       (.I0(plusOp[30]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[30]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[30]));
  LUT6 #(
    .INIT(64'h0000000C00600206)) 
    \counter_r[30]_i_3 
       (.I0(state_r[1]),
        .I1(state_pot_r[2]),
        .I2(state_pot_r[1]),
        .I3(state_pot_r[0]),
        .I4(state_r[2]),
        .I5(state_r[0]),
        .O(\counter_r[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFF3FF9FFDF9)) 
    \counter_r[30]_i_4 
       (.I0(state_r[1]),
        .I1(state_pot_r[2]),
        .I2(state_pot_r[1]),
        .I3(state_pot_r[0]),
        .I4(state_r[2]),
        .I5(state_r[0]),
        .O(\counter_r[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[3]_i_1 
       (.I0(plusOp[3]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[3]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[4]_i_1 
       (.I0(plusOp[4]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[4]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[5]_i_1 
       (.I0(plusOp[5]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[5]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[6]_i_1 
       (.I0(plusOp[6]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[6]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[7]_i_1 
       (.I0(plusOp[7]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[7]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[8]_i_1 
       (.I0(plusOp[8]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[8]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter_r[9]_i_1 
       (.I0(plusOp[9]),
        .I1(\counter_r[30]_i_3_n_0 ),
        .I2(minusOp__0[9]),
        .I3(\counter_r[30]_i_4_n_0 ),
        .O(counter_v[9]));
  FDRE \counter_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[0]),
        .Q(counter_r[0]),
        .R(SR));
  FDRE \counter_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[10]),
        .Q(counter_r[10]),
        .R(SR));
  FDRE \counter_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[11]),
        .Q(counter_r[11]),
        .R(SR));
  FDRE \counter_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[12]),
        .Q(counter_r[12]),
        .R(SR));
  CARRY4 \counter_r_reg[12]_i_2 
       (.CI(\counter_r_reg[8]_i_2_n_0 ),
        .CO({\counter_r_reg[12]_i_2_n_0 ,\counter_r_reg[12]_i_2_n_1 ,\counter_r_reg[12]_i_2_n_2 ,\counter_r_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(counter_r[12:9]));
  FDRE \counter_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[13]),
        .Q(counter_r[13]),
        .R(SR));
  FDRE \counter_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[14]),
        .Q(counter_r[14]),
        .R(SR));
  FDRE \counter_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[15]),
        .Q(counter_r[15]),
        .R(SR));
  FDRE \counter_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[16]),
        .Q(counter_r[16]),
        .R(SR));
  CARRY4 \counter_r_reg[16]_i_2 
       (.CI(\counter_r_reg[12]_i_2_n_0 ),
        .CO({\counter_r_reg[16]_i_2_n_0 ,\counter_r_reg[16]_i_2_n_1 ,\counter_r_reg[16]_i_2_n_2 ,\counter_r_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S(counter_r[16:13]));
  FDRE \counter_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[17]),
        .Q(counter_r[17]),
        .R(SR));
  FDRE \counter_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[18]),
        .Q(counter_r[18]),
        .R(SR));
  FDRE \counter_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[19]),
        .Q(counter_r[19]),
        .R(SR));
  FDRE \counter_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[1]),
        .Q(counter_r[1]),
        .R(SR));
  FDRE \counter_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[20]),
        .Q(counter_r[20]),
        .R(SR));
  CARRY4 \counter_r_reg[20]_i_2 
       (.CI(\counter_r_reg[16]_i_2_n_0 ),
        .CO({\counter_r_reg[20]_i_2_n_0 ,\counter_r_reg[20]_i_2_n_1 ,\counter_r_reg[20]_i_2_n_2 ,\counter_r_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[20:17]),
        .S(counter_r[20:17]));
  FDRE \counter_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[21]),
        .Q(counter_r[21]),
        .R(SR));
  FDRE \counter_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[22]),
        .Q(counter_r[22]),
        .R(SR));
  FDRE \counter_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[23]),
        .Q(counter_r[23]),
        .R(SR));
  FDRE \counter_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[24]),
        .Q(counter_r[24]),
        .R(SR));
  CARRY4 \counter_r_reg[24]_i_2 
       (.CI(\counter_r_reg[20]_i_2_n_0 ),
        .CO({\counter_r_reg[24]_i_2_n_0 ,\counter_r_reg[24]_i_2_n_1 ,\counter_r_reg[24]_i_2_n_2 ,\counter_r_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[24:21]),
        .S(counter_r[24:21]));
  FDRE \counter_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[25]),
        .Q(counter_r[25]),
        .R(SR));
  FDRE \counter_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[26]),
        .Q(counter_r[26]),
        .R(SR));
  FDRE \counter_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[27]),
        .Q(counter_r[27]),
        .R(SR));
  FDRE \counter_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[28]),
        .Q(counter_r[28]),
        .R(SR));
  CARRY4 \counter_r_reg[28]_i_2 
       (.CI(\counter_r_reg[24]_i_2_n_0 ),
        .CO({\counter_r_reg[28]_i_2_n_0 ,\counter_r_reg[28]_i_2_n_1 ,\counter_r_reg[28]_i_2_n_2 ,\counter_r_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[28:25]),
        .S(counter_r[28:25]));
  FDRE \counter_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[29]),
        .Q(counter_r[29]),
        .R(SR));
  FDRE \counter_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[2]),
        .Q(counter_r[2]),
        .R(SR));
  FDRE \counter_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[30]),
        .Q(counter_r[30]),
        .R(SR));
  CARRY4 \counter_r_reg[30]_i_2 
       (.CI(\counter_r_reg[28]_i_2_n_0 ),
        .CO({\NLW_counter_r_reg[30]_i_2_CO_UNCONNECTED [3:1],\counter_r_reg[30]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_r_reg[30]_i_2_O_UNCONNECTED [3:2],plusOp[30:29]}),
        .S({1'b0,1'b0,counter_r[30:29]}));
  FDRE \counter_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[3]),
        .Q(counter_r[3]),
        .R(SR));
  FDRE \counter_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[4]),
        .Q(counter_r[4]),
        .R(SR));
  CARRY4 \counter_r_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_r_reg[4]_i_2_n_0 ,\counter_r_reg[4]_i_2_n_1 ,\counter_r_reg[4]_i_2_n_2 ,\counter_r_reg[4]_i_2_n_3 }),
        .CYINIT(counter_r[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(counter_r[4:1]));
  FDRE \counter_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[5]),
        .Q(counter_r[5]),
        .R(SR));
  FDRE \counter_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[6]),
        .Q(counter_r[6]),
        .R(SR));
  FDRE \counter_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[7]),
        .Q(counter_r[7]),
        .R(SR));
  FDRE \counter_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[8]),
        .Q(counter_r[8]),
        .R(SR));
  CARRY4 \counter_r_reg[8]_i_2 
       (.CI(\counter_r_reg[4]_i_2_n_0 ),
        .CO({\counter_r_reg[8]_i_2_n_0 ,\counter_r_reg[8]_i_2_n_1 ,\counter_r_reg[8]_i_2_n_2 ,\counter_r_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(counter_r[8:5]));
  FDRE \counter_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(counter_v[9]),
        .Q(counter_r[9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \debounce_count_r[0]_i_1 
       (.I0(debounce_count_r_reg__0[0]),
        .O(minusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \debounce_count_r[1]_i_1 
       (.I0(debounce_count_r_reg__0[1]),
        .I1(debounce_count_r_reg__0[0]),
        .O(minusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \debounce_count_r[2]_i_1 
       (.I0(debounce_count_r_reg__0[2]),
        .I1(debounce_count_r_reg__0[0]),
        .I2(debounce_count_r_reg__0[1]),
        .O(minusOp[2]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \debounce_count_r[3]_i_1 
       (.I0(debounce_count_r_reg__0[3]),
        .I1(debounce_count_r_reg__0[1]),
        .I2(debounce_count_r_reg__0[0]),
        .I3(debounce_count_r_reg__0[2]),
        .O(minusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \debounce_count_r[4]_i_1 
       (.I0(debounce_count_r_reg__0[4]),
        .I1(debounce_count_r_reg__0[2]),
        .I2(debounce_count_r_reg__0[0]),
        .I3(debounce_count_r_reg__0[1]),
        .I4(debounce_count_r_reg__0[3]),
        .O(minusOp[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \debounce_count_r[5]_i_1 
       (.I0(debounce_count_r_reg__0[5]),
        .I1(debounce_count_r_reg__0[3]),
        .I2(debounce_count_r_reg__0[1]),
        .I3(debounce_count_r_reg__0[0]),
        .I4(debounce_count_r_reg__0[2]),
        .I5(debounce_count_r_reg__0[4]),
        .O(minusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \debounce_count_r[6]_i_1 
       (.I0(debounce_count_r_reg__0[6]),
        .I1(\debounce_count_r[8]_i_4_n_0 ),
        .I2(debounce_count_r_reg__0[5]),
        .O(minusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \debounce_count_r[7]_i_1 
       (.I0(debounce_count_r_reg__0[7]),
        .I1(debounce_count_r_reg__0[5]),
        .I2(\debounce_count_r[8]_i_4_n_0 ),
        .I3(debounce_count_r_reg__0[6]),
        .O(minusOp[7]));
  LUT3 #(
    .INIT(8'hFB)) 
    \debounce_count_r[8]_i_1 
       (.I0(\debounce_count_r[8]_i_3_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(eqOp__5),
        .O(\debounce_count_r[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \debounce_count_r[8]_i_2 
       (.I0(debounce_count_r_reg__0[7]),
        .I1(debounce_count_r_reg__0[5]),
        .I2(\debounce_count_r[8]_i_4_n_0 ),
        .I3(debounce_count_r_reg__0[6]),
        .I4(debounce_count_r_reg__0[8]),
        .O(minusOp[8]));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \debounce_count_r[8]_i_3 
       (.I0(state_pot_r[0]),
        .I1(L[0]),
        .I2(state_pot_r[1]),
        .I3(L[1]),
        .I4(L[2]),
        .I5(state_pot_r[2]),
        .O(\debounce_count_r[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \debounce_count_r[8]_i_4 
       (.I0(debounce_count_r_reg__0[3]),
        .I1(debounce_count_r_reg__0[1]),
        .I2(debounce_count_r_reg__0[0]),
        .I3(debounce_count_r_reg__0[2]),
        .I4(debounce_count_r_reg__0[4]),
        .O(\debounce_count_r[8]_i_4_n_0 ));
  FDRE \debounce_count_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(minusOp[0]),
        .Q(debounce_count_r_reg__0[0]),
        .R(\debounce_count_r[8]_i_1_n_0 ));
  FDRE \debounce_count_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(minusOp[1]),
        .Q(debounce_count_r_reg__0[1]),
        .R(\debounce_count_r[8]_i_1_n_0 ));
  FDRE \debounce_count_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(minusOp[2]),
        .Q(debounce_count_r_reg__0[2]),
        .R(\debounce_count_r[8]_i_1_n_0 ));
  FDSE \debounce_count_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(minusOp[3]),
        .Q(debounce_count_r_reg__0[3]),
        .S(\debounce_count_r[8]_i_1_n_0 ));
  FDRE \debounce_count_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(minusOp[4]),
        .Q(debounce_count_r_reg__0[4]),
        .R(\debounce_count_r[8]_i_1_n_0 ));
  FDRE \debounce_count_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(minusOp[5]),
        .Q(debounce_count_r_reg__0[5]),
        .R(\debounce_count_r[8]_i_1_n_0 ));
  FDSE \debounce_count_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(minusOp[6]),
        .Q(debounce_count_r_reg__0[6]),
        .S(\debounce_count_r[8]_i_1_n_0 ));
  FDSE \debounce_count_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(minusOp[7]),
        .Q(debounce_count_r_reg__0[7]),
        .S(\debounce_count_r[8]_i_1_n_0 ));
  FDRE \debounce_count_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(minusOp[8]),
        .Q(debounce_count_r_reg__0[8]),
        .R(\debounce_count_r[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFEFFFCC004000)) 
    direction_r_i_1
       (.I0(state_r[0]),
        .I1(direction_v),
        .I2(\state_r[2]_i_2_n_0 ),
        .I3(eqOp__5),
        .I4(direction_r_i_3_n_0),
        .I5(direction_r),
        .O(direction_r_i_1_n_0));
  LUT6 #(
    .INIT(64'h000A0411040B0000)) 
    direction_r_i_2
       (.I0(state_r[0]),
        .I1(state_r[2]),
        .I2(state_pot_r[0]),
        .I3(state_pot_r[1]),
        .I4(state_pot_r[2]),
        .I5(state_r[1]),
        .O(direction_v));
  LUT6 #(
    .INIT(64'h0000000000001400)) 
    direction_r_i_3
       (.I0(state_pot_r[0]),
        .I1(state_pot_r[1]),
        .I2(state_pot_r[2]),
        .I3(state_r[0]),
        .I4(state_r[1]),
        .I5(state_r[2]),
        .O(direction_r_i_3_n_0));
  FDRE direction_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(direction_r_i_1_n_0),
        .Q(direction_r),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(counter_r[8]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(counter_r[7]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(counter_r[6]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(counter_r[5]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(counter_r[12]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(counter_r[11]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(counter_r[10]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(counter_r[9]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(counter_r[16]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(counter_r[15]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(counter_r[14]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(counter_r[13]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(counter_r[20]),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2
       (.I0(counter_r[19]),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3
       (.I0(counter_r[18]),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4
       (.I0(counter_r[17]),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1
       (.I0(counter_r[24]),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2
       (.I0(counter_r[23]),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3
       (.I0(counter_r[22]),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_4
       (.I0(counter_r[21]),
        .O(i__carry__4_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_1
       (.I0(counter_r[28]),
        .O(i__carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_2
       (.I0(counter_r[27]),
        .O(i__carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_3
       (.I0(counter_r[26]),
        .O(i__carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_4
       (.I0(counter_r[25]),
        .O(i__carry__5_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_1
       (.I0(counter_r[30]),
        .O(i__carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_2
       (.I0(counter_r[29]),
        .O(i__carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(counter_r[4]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(counter_r[3]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(counter_r[2]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(counter_r[1]),
        .O(i__carry_i_4_n_0));
  CARRY4 \minusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__0/i__carry_n_0 ,\minusOp_inferred__0/i__carry_n_1 ,\minusOp_inferred__0/i__carry_n_2 ,\minusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(counter_r[0]),
        .DI(counter_r[4:1]),
        .O(minusOp__0[4:1]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__0 
       (.CI(\minusOp_inferred__0/i__carry_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__0_n_0 ,\minusOp_inferred__0/i__carry__0_n_1 ,\minusOp_inferred__0/i__carry__0_n_2 ,\minusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_r[8:5]),
        .O(minusOp__0[8:5]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__1 
       (.CI(\minusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__1_n_0 ,\minusOp_inferred__0/i__carry__1_n_1 ,\minusOp_inferred__0/i__carry__1_n_2 ,\minusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_r[12:9]),
        .O(minusOp__0[12:9]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__2 
       (.CI(\minusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__2_n_0 ,\minusOp_inferred__0/i__carry__2_n_1 ,\minusOp_inferred__0/i__carry__2_n_2 ,\minusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_r[16:13]),
        .O(minusOp__0[16:13]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__3 
       (.CI(\minusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__3_n_0 ,\minusOp_inferred__0/i__carry__3_n_1 ,\minusOp_inferred__0/i__carry__3_n_2 ,\minusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_r[20:17]),
        .O(minusOp__0[20:17]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__4 
       (.CI(\minusOp_inferred__0/i__carry__3_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__4_n_0 ,\minusOp_inferred__0/i__carry__4_n_1 ,\minusOp_inferred__0/i__carry__4_n_2 ,\minusOp_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_r[24:21]),
        .O(minusOp__0[24:21]),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__5 
       (.CI(\minusOp_inferred__0/i__carry__4_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__5_n_0 ,\minusOp_inferred__0/i__carry__5_n_1 ,\minusOp_inferred__0/i__carry__5_n_2 ,\minusOp_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_r[28:25]),
        .O(minusOp__0[28:25]),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__6 
       (.CI(\minusOp_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED [3:1],\minusOp_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,counter_r[29]}),
        .O({\NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED [3:2],minusOp__0[30:29]}),
        .S({1'b0,1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0}));
  FDRE rotary_a_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rotary_a),
        .Q(L[2]),
        .R(SR));
  FDRE rotary_b_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rotary_b),
        .Q(L[1]),
        .R(SR));
  FDRE rotary_i_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rotary_i),
        .Q(L[0]),
        .R(SR));
  FDSE \state_pot_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(L[0]),
        .Q(state_pot_r[0]),
        .S(SR));
  FDSE \state_pot_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(L[1]),
        .Q(state_pot_r[1]),
        .S(SR));
  FDSE \state_pot_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(L[2]),
        .Q(state_pot_r[2]),
        .S(SR));
  LUT6 #(
    .INIT(64'hF00000C0A0A0A0A0)) 
    \state_r[2]_i_1 
       (.I0(\state_r[2]_i_2_n_0 ),
        .I1(\state_r[2]_i_3_n_0 ),
        .I2(eqOp__5),
        .I3(state_r[1]),
        .I4(state_r[2]),
        .I5(state_r[0]),
        .O(\state_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h14434314)) 
    \state_r[2]_i_2 
       (.I0(state_pot_r[0]),
        .I1(state_pot_r[1]),
        .I2(state_pot_r[2]),
        .I3(state_r[1]),
        .I4(state_r[2]),
        .O(\state_r[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \state_r[2]_i_3 
       (.I0(state_pot_r[0]),
        .I1(state_pot_r[1]),
        .I2(state_pot_r[2]),
        .O(\state_r[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \state_r[2]_i_4 
       (.I0(debounce_count_r_reg__0[7]),
        .I1(debounce_count_r_reg__0[8]),
        .I2(debounce_count_r_reg__0[5]),
        .I3(debounce_count_r_reg__0[6]),
        .I4(\debounce_count_r[8]_i_4_n_0 ),
        .O(eqOp__5));
  FDSE \state_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(state_pot_r[0]),
        .Q(state_r[0]),
        .S(SR));
  FDSE \state_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(state_pot_r[1]),
        .Q(state_r[1]),
        .S(SR));
  FDSE \state_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\state_r[2]_i_1_n_0 ),
        .D(state_pot_r[2]),
        .Q(state_r[2]),
        .S(SR));
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