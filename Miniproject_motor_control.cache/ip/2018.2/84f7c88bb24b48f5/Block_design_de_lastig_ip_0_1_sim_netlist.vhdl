-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Oct 25 14:19:55 2019
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_design_de_lastig_ip_0_1_sim_netlist.vhdl
-- Design      : Block_design_de_lastig_ip_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_addr_decoder is
  port (
    read_reg_ip_timestamp : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \AXI4_Lite_RDATA_tmp_reg[30]\ : out STD_LOGIC;
    AXI4_Lite_ACLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wdata_reg[0]\ : in STD_LOGIC;
    \AXI4_Lite_ARADDR[14]\ : in STD_LOGIC;
    AXI4_Lite_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI4_Lite_ARVALID : in STD_LOGIC;
    \AXI4_Lite_ARADDR[8]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_addr_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_addr_decoder is
  signal \^read_reg_ip_timestamp\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  read_reg_ip_timestamp(0) <= \^read_reg_ip_timestamp\(0);
\AXI4_Lite_RDATA_tmp[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \AXI4_Lite_ARADDR[14]\,
      I1 => AXI4_Lite_ARADDR(0),
      I2 => \^read_reg_ip_timestamp\(0),
      I3 => AXI4_Lite_ARVALID,
      I4 => AXI4_Lite_ARADDR(1),
      I5 => \AXI4_Lite_ARADDR[8]\,
      O => \AXI4_Lite_RDATA_tmp_reg[30]\
    );
\read_reg_ip_timestamp_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => '1',
      CLR => AR(0),
      D => '1',
      Q => \^read_reg_ip_timestamp\(0)
    );
write_reg_axi_enable_reg: unisim.vcomponents.FDPE
     port map (
      C => AXI4_Lite_ACLK,
      CE => '1',
      D => \wdata_reg[0]\,
      PRE => AR(0),
      Q => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_axi_lite_module is
  port (
    \out\ : out STD_LOGIC;
    AXI4_Lite_BVALID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI4_Lite_RDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI4_Lite_AWREADY : out STD_LOGIC;
    write_reg_axi_enable_reg : out STD_LOGIC;
    write_reg_axi_enable_reg_0 : out STD_LOGIC;
    write_reg_axi_enable_reg_1 : out STD_LOGIC;
    AXI4_Lite_ARREADY : out STD_LOGIC;
    reset_in : out STD_LOGIC;
    AXI4_Lite_ACLK : in STD_LOGIC;
    AXI4_Lite_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI4_Lite_WVALID : in STD_LOGIC;
    \read_reg_ip_timestamp_reg[30]\ : in STD_LOGIC;
    AXI4_Lite_AWVALID : in STD_LOGIC;
    AXI4_Lite_ARVALID : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI4_Lite_ARADDR : in STD_LOGIC_VECTOR ( 13 downto 0 );
    AXI4_Lite_RREADY : in STD_LOGIC;
    AXI4_Lite_BREADY : in STD_LOGIC;
    AXI4_Lite_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    read_reg_ip_timestamp : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI4_Lite_AWADDR : in STD_LOGIC_VECTOR ( 13 downto 0 );
    AXI4_Lite_ARESETN : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_axi_lite_module;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_axi_lite_module is
  signal \^axi4_lite_awready\ : STD_LOGIC;
  signal \^axi4_lite_bvalid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \^axi4_lite_bvalid\ : signal is "yes";
  signal \^axi4_lite_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \AXI4_Lite_RDATA_tmp[30]_i_1_n_0\ : STD_LOGIC;
  signal \AXI4_Lite_RDATA_tmp[30]_i_4_n_0\ : STD_LOGIC;
  signal \AXI4_Lite_RDATA_tmp[30]_i_7_n_0\ : STD_LOGIC;
  signal \AXI4_Lite_RDATA_tmp[30]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_lite_rstate_reg__0\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_sequential_axi_lite_rstate_reg__0\ : signal is "yes";
  signal aw_transfer : STD_LOGIC;
  signal axi_lite_rstate_next : STD_LOGIC;
  signal axi_lite_wstate : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute RTL_KEEP of axi_lite_wstate : signal is "yes";
  signal axi_lite_wstate_next : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal reset : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal soft_reset : STD_LOGIC;
  signal soft_reset_i_2_n_0 : STD_LOGIC;
  signal soft_reset_i_3_n_0 : STD_LOGIC;
  signal strobe_sw : STD_LOGIC;
  signal top_data_write : STD_LOGIC_VECTOR ( 0 to 0 );
  signal top_wr_enb : STD_LOGIC;
  signal w_transfer_and_wstrb : STD_LOGIC;
  signal \wdata[0]_i_1_n_0\ : STD_LOGIC;
  signal write_reg_axi_enable_i_2_n_0 : STD_LOGIC;
  signal write_reg_axi_enable_i_3_n_0 : STD_LOGIC;
  signal \^write_reg_axi_enable_reg_0\ : STD_LOGIC;
  signal \^write_reg_axi_enable_reg_1\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_lite_wstate_reg[0]\ : label is "iSTATE:010,iSTATE0:100,iSTATE1:001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_axi_lite_wstate_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_lite_wstate_reg[1]\ : label is "iSTATE:010,iSTATE0:100,iSTATE1:001";
  attribute KEEP of \FSM_onehot_axi_lite_wstate_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_lite_wstate_reg[2]\ : label is "iSTATE:010,iSTATE0:100,iSTATE1:001";
  attribute KEEP of \FSM_onehot_axi_lite_wstate_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of FSM_sequential_axi_lite_rstate_reg : label is "iSTATE:0,iSTATE0:1";
  attribute KEEP of FSM_sequential_axi_lite_rstate_reg : label is "yes";
begin
  AXI4_Lite_AWREADY <= \^axi4_lite_awready\;
  AXI4_Lite_BVALID(1 downto 0) <= \^axi4_lite_bvalid\(1 downto 0);
  AXI4_Lite_RDATA(0) <= \^axi4_lite_rdata\(0);
  \out\ <= \FSM_sequential_axi_lite_rstate_reg__0\;
  write_reg_axi_enable_reg_0 <= \^write_reg_axi_enable_reg_0\;
  write_reg_axi_enable_reg_1 <= \^write_reg_axi_enable_reg_1\;
AXI4_Lite_ARREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \FSM_sequential_axi_lite_rstate_reg__0\,
      I1 => axi_lite_wstate(0),
      I2 => AXI4_Lite_AWVALID,
      O => AXI4_Lite_ARREADY
    );
AXI4_Lite_AWREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_lite_wstate(0),
      I1 => \FSM_sequential_axi_lite_rstate_reg__0\,
      O => \^axi4_lite_awready\
    );
\AXI4_Lite_RDATA_tmp[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF0E000000"
    )
        port map (
      I0 => \read_reg_ip_timestamp_reg[30]\,
      I1 => \AXI4_Lite_RDATA_tmp[30]_i_4_n_0\,
      I2 => AXI4_Lite_AWVALID,
      I3 => AXI4_Lite_ARVALID,
      I4 => \^axi4_lite_awready\,
      I5 => \^axi4_lite_rdata\(0),
      O => \AXI4_Lite_RDATA_tmp[30]_i_1_n_0\
    );
\AXI4_Lite_RDATA_tmp[30]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => AXI4_Lite_ARESETN,
      O => reset
    );
\AXI4_Lite_RDATA_tmp[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \AXI4_Lite_RDATA_tmp[30]_i_7_n_0\,
      I1 => sel0(0),
      I2 => read_reg_ip_timestamp(0),
      I3 => AXI4_Lite_ARVALID,
      I4 => sel0(1),
      I5 => \AXI4_Lite_RDATA_tmp[30]_i_8_n_0\,
      O => \AXI4_Lite_RDATA_tmp[30]_i_4_n_0\
    );
\AXI4_Lite_RDATA_tmp[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => AXI4_Lite_ARADDR(10),
      I1 => AXI4_Lite_ARADDR(11),
      I2 => AXI4_Lite_ARADDR(8),
      I3 => AXI4_Lite_ARADDR(9),
      I4 => AXI4_Lite_ARADDR(13),
      I5 => AXI4_Lite_ARADDR(12),
      O => \^write_reg_axi_enable_reg_0\
    );
\AXI4_Lite_RDATA_tmp[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => AXI4_Lite_ARADDR(4),
      I1 => AXI4_Lite_ARADDR(5),
      I2 => AXI4_Lite_ARADDR(2),
      I3 => AXI4_Lite_ARADDR(3),
      I4 => AXI4_Lite_ARADDR(7),
      I5 => AXI4_Lite_ARADDR(6),
      O => \^write_reg_axi_enable_reg_1\
    );
\AXI4_Lite_RDATA_tmp[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sel0(10),
      I1 => sel0(11),
      I2 => sel0(8),
      I3 => sel0(9),
      I4 => sel0(13),
      I5 => sel0(12),
      O => \AXI4_Lite_RDATA_tmp[30]_i_7_n_0\
    );
\AXI4_Lite_RDATA_tmp[30]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(5),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => sel0(7),
      I5 => sel0(6),
      O => \AXI4_Lite_RDATA_tmp[30]_i_8_n_0\
    );
\AXI4_Lite_RDATA_tmp_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => '1',
      CLR => reset,
      D => \AXI4_Lite_RDATA_tmp[30]_i_1_n_0\,
      Q => \^axi4_lite_rdata\(0)
    );
\FSM_onehot_axi_lite_wstate[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC0D5C0"
    )
        port map (
      I0 => AXI4_Lite_AWVALID,
      I1 => AXI4_Lite_BREADY,
      I2 => \^axi4_lite_bvalid\(1),
      I3 => axi_lite_wstate(0),
      I4 => \FSM_sequential_axi_lite_rstate_reg__0\,
      O => axi_lite_wstate_next(0)
    );
\FSM_onehot_axi_lite_wstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444F444"
    )
        port map (
      I0 => AXI4_Lite_WVALID,
      I1 => \^axi4_lite_bvalid\(0),
      I2 => AXI4_Lite_AWVALID,
      I3 => axi_lite_wstate(0),
      I4 => \FSM_sequential_axi_lite_rstate_reg__0\,
      O => axi_lite_wstate_next(1)
    );
\FSM_onehot_axi_lite_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^axi4_lite_bvalid\(0),
      I1 => AXI4_Lite_WVALID,
      I2 => AXI4_Lite_BREADY,
      I3 => \^axi4_lite_bvalid\(1),
      O => axi_lite_wstate_next(2)
    );
\FSM_onehot_axi_lite_wstate_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => AXI4_Lite_ACLK,
      CE => '1',
      D => axi_lite_wstate_next(0),
      PRE => reset,
      Q => axi_lite_wstate(0)
    );
\FSM_onehot_axi_lite_wstate_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => AXI4_Lite_ACLK,
      CE => '1',
      CLR => reset,
      D => axi_lite_wstate_next(1),
      Q => \^axi4_lite_bvalid\(0)
    );
\FSM_onehot_axi_lite_wstate_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => AXI4_Lite_ACLK,
      CE => '1',
      CLR => reset,
      D => axi_lite_wstate_next(2),
      Q => \^axi4_lite_bvalid\(1)
    );
FSM_sequential_axi_lite_rstate_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50505C50"
    )
        port map (
      I0 => AXI4_Lite_RREADY,
      I1 => axi_lite_wstate(0),
      I2 => \FSM_sequential_axi_lite_rstate_reg__0\,
      I3 => AXI4_Lite_ARVALID,
      I4 => AXI4_Lite_AWVALID,
      O => axi_lite_rstate_next
    );
FSM_sequential_axi_lite_rstate_reg: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => '1',
      CLR => reset,
      D => axi_lite_rstate_next,
      Q => \FSM_sequential_axi_lite_rstate_reg__0\
    );
reset_pipe_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => AXI4_Lite_ARESETN,
      I1 => soft_reset,
      I2 => IPCORE_RESETN,
      O => reset_in
    );
soft_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => soft_reset_i_2_n_0,
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(3),
      I4 => sel0(2),
      I5 => soft_reset_i_3_n_0,
      O => strobe_sw
    );
soft_reset_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => sel0(12),
      I1 => sel0(13),
      I2 => sel0(10),
      I3 => sel0(11),
      I4 => top_wr_enb,
      I5 => top_data_write(0),
      O => soft_reset_i_2_n_0
    );
soft_reset_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(7),
      I2 => sel0(4),
      I3 => sel0(5),
      I4 => sel0(9),
      I5 => sel0(8),
      O => soft_reset_i_3_n_0
    );
soft_reset_reg: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => '1',
      CLR => reset,
      D => strobe_sw,
      Q => soft_reset
    );
\waddr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_sequential_axi_lite_rstate_reg__0\,
      I1 => axi_lite_wstate(0),
      I2 => AXI4_Lite_AWVALID,
      O => aw_transfer
    );
\waddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => aw_transfer,
      CLR => reset,
      D => AXI4_Lite_AWADDR(8),
      Q => sel0(8)
    );
\waddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => aw_transfer,
      CLR => reset,
      D => AXI4_Lite_AWADDR(9),
      Q => sel0(9)
    );
\waddr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => aw_transfer,
      CLR => reset,
      D => AXI4_Lite_AWADDR(10),
      Q => sel0(10)
    );
\waddr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => aw_transfer,
      CLR => reset,
      D => AXI4_Lite_AWADDR(11),
      Q => sel0(11)
    );
\waddr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => aw_transfer,
      CLR => reset,
      D => AXI4_Lite_AWADDR(12),
      Q => sel0(12)
    );
\waddr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => aw_transfer,
      CLR => reset,
      D => AXI4_Lite_AWADDR(13),
      Q => sel0(13)
    );
\waddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => aw_transfer,
      CLR => reset,
      D => AXI4_Lite_AWADDR(0),
      Q => sel0(0)
    );
\waddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => aw_transfer,
      CLR => reset,
      D => AXI4_Lite_AWADDR(1),
      Q => sel0(1)
    );
\waddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => aw_transfer,
      CLR => reset,
      D => AXI4_Lite_AWADDR(2),
      Q => sel0(2)
    );
\waddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => aw_transfer,
      CLR => reset,
      D => AXI4_Lite_AWADDR(3),
      Q => sel0(3)
    );
\waddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => aw_transfer,
      CLR => reset,
      D => AXI4_Lite_AWADDR(4),
      Q => sel0(4)
    );
\waddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => aw_transfer,
      CLR => reset,
      D => AXI4_Lite_AWADDR(5),
      Q => sel0(5)
    );
\waddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => aw_transfer,
      CLR => reset,
      D => AXI4_Lite_AWADDR(6),
      Q => sel0(6)
    );
\waddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => aw_transfer,
      CLR => reset,
      D => AXI4_Lite_AWADDR(7),
      Q => sel0(7)
    );
\wdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => AXI4_Lite_WDATA(0),
      I1 => AXI4_Lite_WVALID,
      I2 => \^axi4_lite_bvalid\(0),
      I3 => top_data_write(0),
      O => \wdata[0]_i_1_n_0\
    );
\wdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => '1',
      CLR => reset,
      D => \wdata[0]_i_1_n_0\,
      Q => top_data_write(0)
    );
wr_enb_1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => AXI4_Lite_WSTRB(2),
      I1 => AXI4_Lite_WSTRB(3),
      I2 => AXI4_Lite_WSTRB(0),
      I3 => AXI4_Lite_WSTRB(1),
      I4 => \^axi4_lite_bvalid\(0),
      I5 => AXI4_Lite_WVALID,
      O => w_transfer_and_wstrb
    );
wr_enb_1_reg: unisim.vcomponents.FDCE
     port map (
      C => AXI4_Lite_ACLK,
      CE => '1',
      CLR => reset,
      D => w_transfer_and_wstrb,
      Q => top_wr_enb
    );
write_reg_axi_enable_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => top_data_write(0),
      I1 => write_reg_axi_enable_i_2_n_0,
      I2 => write_reg_axi_enable_i_3_n_0,
      I3 => E(0),
      O => write_reg_axi_enable_reg
    );
write_reg_axi_enable_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \^write_reg_axi_enable_reg_0\,
      I1 => AXI4_Lite_ARADDR(1),
      I2 => AXI4_Lite_ARADDR(0),
      I3 => top_wr_enb,
      I4 => AXI4_Lite_ARVALID,
      I5 => \^write_reg_axi_enable_reg_1\,
      O => write_reg_axi_enable_i_2_n_0
    );
write_reg_axi_enable_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \AXI4_Lite_RDATA_tmp[30]_i_7_n_0\,
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => AXI4_Lite_ARVALID,
      I4 => top_wr_enb,
      I5 => \AXI4_Lite_RDATA_tmp[30]_i_8_n_0\,
      O => write_reg_axi_enable_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_reset_sync is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    IPCORE_CLK : in STD_LOGIC;
    reset_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_reset_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_reset_sync is
  signal reset_pipe : STD_LOGIC;
begin
reset_out_reg: unisim.vcomponents.FDPE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => reset_pipe,
      PRE => reset_in,
      Q => AR(0)
    );
reset_pipe_reg: unisim.vcomponents.FDPE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => '0',
      PRE => reset_in,
      Q => reset_pipe
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_src_de_lastigste_calc_ooit is
  port (
    out1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    in4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IPCORE_CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    in2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_src_de_lastigste_calc_ooit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_src_de_lastigste_calc_ooit is
  signal Delay1_out1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Delay2_out1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Delay3_out1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Delay_out1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Sum_out1__1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_n_1\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_n_2\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_n_3\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_n_1\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_n_2\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_n_3\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_n_1\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_n_2\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_n_3\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_5_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_6_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_7_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_8_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_n_1\ : STD_LOGIC;
  signal \Sum_out1__1_carry_n_2\ : STD_LOGIC;
  signal \Sum_out1__1_carry_n_3\ : STD_LOGIC;
  signal \NLW_Sum_out1__1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__0_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__0_i_11\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__0_i_12\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__0_i_9\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__1_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__1_i_9\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__2_i_11\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__2_i_8\ : label is "soft_lutpair3";
begin
\Delay1_out1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(0),
      Q => Delay1_out1(0)
    );
\Delay1_out1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(10),
      Q => Delay1_out1(10)
    );
\Delay1_out1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(11),
      Q => Delay1_out1(11)
    );
\Delay1_out1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(12),
      Q => Delay1_out1(12)
    );
\Delay1_out1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(13),
      Q => Delay1_out1(13)
    );
\Delay1_out1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(14),
      Q => Delay1_out1(14)
    );
\Delay1_out1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(15),
      Q => Delay1_out1(15)
    );
\Delay1_out1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(1),
      Q => Delay1_out1(1)
    );
\Delay1_out1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(2),
      Q => Delay1_out1(2)
    );
\Delay1_out1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(3),
      Q => Delay1_out1(3)
    );
\Delay1_out1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(4),
      Q => Delay1_out1(4)
    );
\Delay1_out1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(5),
      Q => Delay1_out1(5)
    );
\Delay1_out1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(6),
      Q => Delay1_out1(6)
    );
\Delay1_out1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(7),
      Q => Delay1_out1(7)
    );
\Delay1_out1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(8),
      Q => Delay1_out1(8)
    );
\Delay1_out1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in2(9),
      Q => Delay1_out1(9)
    );
\Delay2_out1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(0),
      Q => Delay2_out1(0)
    );
\Delay2_out1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(10),
      Q => Delay2_out1(10)
    );
\Delay2_out1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(11),
      Q => Delay2_out1(11)
    );
\Delay2_out1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(12),
      Q => Delay2_out1(12)
    );
\Delay2_out1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(13),
      Q => Delay2_out1(13)
    );
\Delay2_out1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(14),
      Q => Delay2_out1(14)
    );
\Delay2_out1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(15),
      Q => Delay2_out1(15)
    );
\Delay2_out1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(1),
      Q => Delay2_out1(1)
    );
\Delay2_out1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(2),
      Q => Delay2_out1(2)
    );
\Delay2_out1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(3),
      Q => Delay2_out1(3)
    );
\Delay2_out1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(4),
      Q => Delay2_out1(4)
    );
\Delay2_out1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(5),
      Q => Delay2_out1(5)
    );
\Delay2_out1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(6),
      Q => Delay2_out1(6)
    );
\Delay2_out1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(7),
      Q => Delay2_out1(7)
    );
\Delay2_out1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(8),
      Q => Delay2_out1(8)
    );
\Delay2_out1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in3(9),
      Q => Delay2_out1(9)
    );
\Delay3_out1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(0),
      Q => Delay3_out1(0)
    );
\Delay3_out1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(10),
      Q => Delay3_out1(10)
    );
\Delay3_out1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(11),
      Q => Delay3_out1(11)
    );
\Delay3_out1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(12),
      Q => Delay3_out1(12)
    );
\Delay3_out1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(13),
      Q => Delay3_out1(13)
    );
\Delay3_out1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(14),
      Q => Delay3_out1(14)
    );
\Delay3_out1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(15),
      Q => Delay3_out1(15)
    );
\Delay3_out1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(1),
      Q => Delay3_out1(1)
    );
\Delay3_out1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(2),
      Q => Delay3_out1(2)
    );
\Delay3_out1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(3),
      Q => Delay3_out1(3)
    );
\Delay3_out1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(4),
      Q => Delay3_out1(4)
    );
\Delay3_out1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(5),
      Q => Delay3_out1(5)
    );
\Delay3_out1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(6),
      Q => Delay3_out1(6)
    );
\Delay3_out1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(7),
      Q => Delay3_out1(7)
    );
\Delay3_out1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(8),
      Q => Delay3_out1(8)
    );
\Delay3_out1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in4(9),
      Q => Delay3_out1(9)
    );
\Delay_out1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(0),
      Q => Delay_out1(0)
    );
\Delay_out1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(10),
      Q => Delay_out1(10)
    );
\Delay_out1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(11),
      Q => Delay_out1(11)
    );
\Delay_out1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(12),
      Q => Delay_out1(12)
    );
\Delay_out1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(13),
      Q => Delay_out1(13)
    );
\Delay_out1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(14),
      Q => Delay_out1(14)
    );
\Delay_out1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(15),
      Q => Delay_out1(15)
    );
\Delay_out1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(1),
      Q => Delay_out1(1)
    );
\Delay_out1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(2),
      Q => Delay_out1(2)
    );
\Delay_out1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(3),
      Q => Delay_out1(3)
    );
\Delay_out1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(4),
      Q => Delay_out1(4)
    );
\Delay_out1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(5),
      Q => Delay_out1(5)
    );
\Delay_out1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(6),
      Q => Delay_out1(6)
    );
\Delay_out1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(7),
      Q => Delay_out1(7)
    );
\Delay_out1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(8),
      Q => Delay_out1(8)
    );
\Delay_out1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => E(0),
      CLR => AR(0),
      D => in1(9),
      Q => Delay_out1(9)
    );
\Sum_out1__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Sum_out1__1_carry_n_0\,
      CO(2) => \Sum_out1__1_carry_n_1\,
      CO(1) => \Sum_out1__1_carry_n_2\,
      CO(0) => \Sum_out1__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \Sum_out1__1_carry_i_1_n_0\,
      DI(2) => \Sum_out1__1_carry_i_2_n_0\,
      DI(1) => \Sum_out1__1_carry_i_3_n_0\,
      DI(0) => Delay_out1(0),
      O(3 downto 0) => out1(3 downto 0),
      S(3) => \Sum_out1__1_carry_i_4_n_0\,
      S(2) => \Sum_out1__1_carry_i_5_n_0\,
      S(1) => \Sum_out1__1_carry_i_6_n_0\,
      S(0) => \Sum_out1__1_carry_i_7_n_0\
    );
\Sum_out1__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_out1__1_carry_n_0\,
      CO(3) => \Sum_out1__1_carry__0_n_0\,
      CO(2) => \Sum_out1__1_carry__0_n_1\,
      CO(1) => \Sum_out1__1_carry__0_n_2\,
      CO(0) => \Sum_out1__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \Sum_out1__1_carry__0_i_1_n_0\,
      DI(2) => \Sum_out1__1_carry__0_i_2_n_0\,
      DI(1) => \Sum_out1__1_carry__0_i_3_n_0\,
      DI(0) => \Sum_out1__1_carry__0_i_4_n_0\,
      O(3 downto 0) => out1(7 downto 4),
      S(3) => \Sum_out1__1_carry__0_i_5_n_0\,
      S(2) => \Sum_out1__1_carry__0_i_6_n_0\,
      S(1) => \Sum_out1__1_carry__0_i_7_n_0\,
      S(0) => \Sum_out1__1_carry__0_i_8_n_0\
    );
\Sum_out1__1_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => Delay2_out1(6),
      I1 => Delay3_out1(6),
      I2 => Delay1_out1(6),
      I3 => \Sum_out1__1_carry__0_i_9_n_0\,
      I4 => Delay_out1(6),
      O => \Sum_out1__1_carry__0_i_1_n_0\
    );
\Sum_out1__1_carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Delay2_out1(5),
      I1 => Delay3_out1(5),
      I2 => Delay1_out1(5),
      O => \Sum_out1__1_carry__0_i_10_n_0\
    );
\Sum_out1__1_carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Delay1_out1(3),
      I1 => Delay2_out1(3),
      I2 => Delay3_out1(3),
      O => \Sum_out1__1_carry__0_i_11_n_0\
    );
\Sum_out1__1_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Delay2_out1(3),
      I1 => Delay3_out1(3),
      I2 => Delay1_out1(3),
      O => \Sum_out1__1_carry__0_i_12_n_0\
    );
\Sum_out1__1_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFB20A2"
    )
        port map (
      I0 => Delay_out1(5),
      I1 => Delay3_out1(4),
      I2 => Delay2_out1(4),
      I3 => Delay1_out1(4),
      I4 => \Sum_out1__1_carry__0_i_10_n_0\,
      O => \Sum_out1__1_carry__0_i_2_n_0\
    );
\Sum_out1__1_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => Delay2_out1(4),
      I1 => Delay3_out1(4),
      I2 => Delay1_out1(4),
      I3 => \Sum_out1__1_carry__0_i_11_n_0\,
      I4 => Delay_out1(4),
      O => \Sum_out1__1_carry__0_i_3_n_0\
    );
\Sum_out1__1_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFB20A2"
    )
        port map (
      I0 => Delay_out1(3),
      I1 => Delay3_out1(2),
      I2 => Delay2_out1(2),
      I3 => Delay1_out1(2),
      I4 => \Sum_out1__1_carry__0_i_12_n_0\,
      O => \Sum_out1__1_carry__0_i_4_n_0\
    );
\Sum_out1__1_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => \Sum_out1__1_carry__0_i_1_n_0\,
      I1 => \Sum_out1__1_carry__1_i_12_n_0\,
      I2 => Delay_out1(7),
      I3 => Delay1_out1(6),
      I4 => Delay2_out1(6),
      I5 => Delay3_out1(6),
      O => \Sum_out1__1_carry__0_i_5_n_0\
    );
\Sum_out1__1_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \Sum_out1__1_carry__0_i_2_n_0\,
      I1 => Delay1_out1(6),
      I2 => Delay3_out1(6),
      I3 => Delay2_out1(6),
      I4 => Delay_out1(6),
      I5 => \Sum_out1__1_carry__0_i_9_n_0\,
      O => \Sum_out1__1_carry__0_i_6_n_0\
    );
\Sum_out1__1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => \Sum_out1__1_carry__0_i_3_n_0\,
      I1 => \Sum_out1__1_carry__0_i_10_n_0\,
      I2 => Delay_out1(5),
      I3 => Delay1_out1(4),
      I4 => Delay2_out1(4),
      I5 => Delay3_out1(4),
      O => \Sum_out1__1_carry__0_i_7_n_0\
    );
\Sum_out1__1_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \Sum_out1__1_carry__0_i_4_n_0\,
      I1 => Delay1_out1(4),
      I2 => Delay3_out1(4),
      I3 => Delay2_out1(4),
      I4 => Delay_out1(4),
      I5 => \Sum_out1__1_carry__0_i_11_n_0\,
      O => \Sum_out1__1_carry__0_i_8_n_0\
    );
\Sum_out1__1_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Delay1_out1(5),
      I1 => Delay2_out1(5),
      I2 => Delay3_out1(5),
      O => \Sum_out1__1_carry__0_i_9_n_0\
    );
\Sum_out1__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_out1__1_carry__0_n_0\,
      CO(3) => \Sum_out1__1_carry__1_n_0\,
      CO(2) => \Sum_out1__1_carry__1_n_1\,
      CO(1) => \Sum_out1__1_carry__1_n_2\,
      CO(0) => \Sum_out1__1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \Sum_out1__1_carry__1_i_1_n_0\,
      DI(2) => \Sum_out1__1_carry__1_i_2_n_0\,
      DI(1) => \Sum_out1__1_carry__1_i_3_n_0\,
      DI(0) => \Sum_out1__1_carry__1_i_4_n_0\,
      O(3 downto 0) => out1(11 downto 8),
      S(3) => \Sum_out1__1_carry__1_i_5_n_0\,
      S(2) => \Sum_out1__1_carry__1_i_6_n_0\,
      S(1) => \Sum_out1__1_carry__1_i_7_n_0\,
      S(0) => \Sum_out1__1_carry__1_i_8_n_0\
    );
\Sum_out1__1_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => Delay2_out1(10),
      I1 => Delay3_out1(10),
      I2 => Delay1_out1(10),
      I3 => \Sum_out1__1_carry__1_i_9_n_0\,
      I4 => Delay_out1(10),
      O => \Sum_out1__1_carry__1_i_1_n_0\
    );
\Sum_out1__1_carry__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Delay2_out1(9),
      I1 => Delay3_out1(9),
      I2 => Delay1_out1(9),
      O => \Sum_out1__1_carry__1_i_10_n_0\
    );
\Sum_out1__1_carry__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Delay2_out1(8),
      I1 => Delay3_out1(8),
      I2 => Delay1_out1(8),
      O => \Sum_out1__1_carry__1_i_11_n_0\
    );
\Sum_out1__1_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Delay2_out1(7),
      I1 => Delay3_out1(7),
      I2 => Delay1_out1(7),
      O => \Sum_out1__1_carry__1_i_12_n_0\
    );
\Sum_out1__1_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFB20A2"
    )
        port map (
      I0 => Delay_out1(9),
      I1 => Delay3_out1(8),
      I2 => Delay2_out1(8),
      I3 => Delay1_out1(8),
      I4 => \Sum_out1__1_carry__1_i_10_n_0\,
      O => \Sum_out1__1_carry__1_i_2_n_0\
    );
\Sum_out1__1_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFB20A2"
    )
        port map (
      I0 => Delay_out1(8),
      I1 => Delay3_out1(7),
      I2 => Delay2_out1(7),
      I3 => Delay1_out1(7),
      I4 => \Sum_out1__1_carry__1_i_11_n_0\,
      O => \Sum_out1__1_carry__1_i_3_n_0\
    );
\Sum_out1__1_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFB20A2"
    )
        port map (
      I0 => Delay_out1(7),
      I1 => Delay3_out1(6),
      I2 => Delay2_out1(6),
      I3 => Delay1_out1(6),
      I4 => \Sum_out1__1_carry__1_i_12_n_0\,
      O => \Sum_out1__1_carry__1_i_4_n_0\
    );
\Sum_out1__1_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \Sum_out1__1_carry__1_i_1_n_0\,
      I1 => Delay1_out1(11),
      I2 => Delay3_out1(11),
      I3 => Delay2_out1(11),
      I4 => Delay_out1(11),
      I5 => \Sum_out1__1_carry__2_i_10_n_0\,
      O => \Sum_out1__1_carry__1_i_5_n_0\
    );
\Sum_out1__1_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \Sum_out1__1_carry__1_i_2_n_0\,
      I1 => Delay1_out1(10),
      I2 => Delay3_out1(10),
      I3 => Delay2_out1(10),
      I4 => Delay_out1(10),
      I5 => \Sum_out1__1_carry__1_i_9_n_0\,
      O => \Sum_out1__1_carry__1_i_6_n_0\
    );
\Sum_out1__1_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => \Sum_out1__1_carry__1_i_3_n_0\,
      I1 => \Sum_out1__1_carry__1_i_10_n_0\,
      I2 => Delay_out1(9),
      I3 => Delay1_out1(8),
      I4 => Delay2_out1(8),
      I5 => Delay3_out1(8),
      O => \Sum_out1__1_carry__1_i_7_n_0\
    );
\Sum_out1__1_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => \Sum_out1__1_carry__1_i_4_n_0\,
      I1 => \Sum_out1__1_carry__1_i_11_n_0\,
      I2 => Delay_out1(8),
      I3 => Delay1_out1(7),
      I4 => Delay2_out1(7),
      I5 => Delay3_out1(7),
      O => \Sum_out1__1_carry__1_i_8_n_0\
    );
\Sum_out1__1_carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Delay1_out1(9),
      I1 => Delay2_out1(9),
      I2 => Delay3_out1(9),
      O => \Sum_out1__1_carry__1_i_9_n_0\
    );
\Sum_out1__1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_out1__1_carry__1_n_0\,
      CO(3) => \NLW_Sum_out1__1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \Sum_out1__1_carry__2_n_1\,
      CO(1) => \Sum_out1__1_carry__2_n_2\,
      CO(0) => \Sum_out1__1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Sum_out1__1_carry__2_i_1_n_0\,
      DI(1) => \Sum_out1__1_carry__2_i_2_n_0\,
      DI(0) => \Sum_out1__1_carry__2_i_3_n_0\,
      O(3 downto 0) => out1(15 downto 12),
      S(3) => \Sum_out1__1_carry__2_i_4_n_0\,
      S(2) => \Sum_out1__1_carry__2_i_5_n_0\,
      S(1) => \Sum_out1__1_carry__2_i_6_n_0\,
      S(0) => \Sum_out1__1_carry__2_i_7_n_0\
    );
\Sum_out1__1_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFB20A2"
    )
        port map (
      I0 => Delay_out1(13),
      I1 => Delay1_out1(12),
      I2 => Delay2_out1(12),
      I3 => Delay3_out1(12),
      I4 => \Sum_out1__1_carry__2_i_8_n_0\,
      O => \Sum_out1__1_carry__2_i_1_n_0\
    );
\Sum_out1__1_carry__2_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Delay1_out1(10),
      I1 => Delay2_out1(10),
      I2 => Delay3_out1(10),
      O => \Sum_out1__1_carry__2_i_10_n_0\
    );
\Sum_out1__1_carry__2_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => Delay2_out1(13),
      I1 => Delay3_out1(13),
      I2 => Delay1_out1(13),
      O => \Sum_out1__1_carry__2_i_11_n_0\
    );
\Sum_out1__1_carry__2_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Delay1_out1(15),
      I1 => Delay3_out1(15),
      I2 => Delay2_out1(15),
      I3 => Delay_out1(15),
      O => \Sum_out1__1_carry__2_i_12_n_0\
    );
\Sum_out1__1_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFB20A2"
    )
        port map (
      I0 => Delay_out1(12),
      I1 => Delay3_out1(11),
      I2 => Delay2_out1(11),
      I3 => Delay1_out1(11),
      I4 => \Sum_out1__1_carry__2_i_9_n_0\,
      O => \Sum_out1__1_carry__2_i_2_n_0\
    );
\Sum_out1__1_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => Delay2_out1(11),
      I1 => Delay3_out1(11),
      I2 => Delay1_out1(11),
      I3 => \Sum_out1__1_carry__2_i_10_n_0\,
      I4 => Delay_out1(11),
      O => \Sum_out1__1_carry__2_i_3_n_0\
    );
\Sum_out1__1_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E78871E871EE187"
    )
        port map (
      I0 => Delay_out1(14),
      I1 => \Sum_out1__1_carry__2_i_11_n_0\,
      I2 => \Sum_out1__1_carry__2_i_12_n_0\,
      I3 => Delay2_out1(14),
      I4 => Delay3_out1(14),
      I5 => Delay1_out1(14),
      O => \Sum_out1__1_carry__2_i_4_n_0\
    );
\Sum_out1__1_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \Sum_out1__1_carry__2_i_1_n_0\,
      I1 => Delay1_out1(14),
      I2 => Delay3_out1(14),
      I3 => Delay2_out1(14),
      I4 => Delay_out1(14),
      I5 => \Sum_out1__1_carry__2_i_11_n_0\,
      O => \Sum_out1__1_carry__2_i_5_n_0\
    );
\Sum_out1__1_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => \Sum_out1__1_carry__2_i_2_n_0\,
      I1 => \Sum_out1__1_carry__2_i_8_n_0\,
      I2 => Delay_out1(13),
      I3 => Delay3_out1(12),
      I4 => Delay2_out1(12),
      I5 => Delay1_out1(12),
      O => \Sum_out1__1_carry__2_i_6_n_0\
    );
\Sum_out1__1_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => \Sum_out1__1_carry__2_i_3_n_0\,
      I1 => \Sum_out1__1_carry__2_i_9_n_0\,
      I2 => Delay_out1(12),
      I3 => Delay1_out1(11),
      I4 => Delay2_out1(11),
      I5 => Delay3_out1(11),
      O => \Sum_out1__1_carry__2_i_7_n_0\
    );
\Sum_out1__1_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Delay2_out1(13),
      I1 => Delay3_out1(13),
      I2 => Delay1_out1(13),
      O => \Sum_out1__1_carry__2_i_8_n_0\
    );
\Sum_out1__1_carry__2_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Delay2_out1(12),
      I1 => Delay3_out1(12),
      I2 => Delay1_out1(12),
      O => \Sum_out1__1_carry__2_i_9_n_0\
    );
\Sum_out1__1_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96FFFFFF00969696"
    )
        port map (
      I0 => Delay2_out1(2),
      I1 => Delay3_out1(2),
      I2 => Delay1_out1(2),
      I3 => Delay1_out1(1),
      I4 => Delay3_out1(1),
      I5 => Delay_out1(2),
      O => \Sum_out1__1_carry_i_1_n_0\
    );
\Sum_out1__1_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F990"
    )
        port map (
      I0 => Delay1_out1(1),
      I1 => Delay3_out1(1),
      I2 => Delay2_out1(1),
      I3 => Delay_out1(1),
      O => \Sum_out1__1_carry_i_2_n_0\
    );
\Sum_out1__1_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => Delay3_out1(1),
      I1 => Delay1_out1(1),
      I2 => Delay2_out1(1),
      I3 => Delay_out1(1),
      O => \Sum_out1__1_carry_i_3_n_0\
    );
\Sum_out1__1_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => \Sum_out1__1_carry_i_1_n_0\,
      I1 => \Sum_out1__1_carry__0_i_12_n_0\,
      I2 => Delay_out1(3),
      I3 => Delay1_out1(2),
      I4 => Delay2_out1(2),
      I5 => Delay3_out1(2),
      O => \Sum_out1__1_carry_i_4_n_0\
    );
\Sum_out1__1_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \Sum_out1__1_carry_i_2_n_0\,
      I1 => Delay1_out1(2),
      I2 => Delay3_out1(2),
      I3 => Delay2_out1(2),
      I4 => Delay_out1(2),
      I5 => \Sum_out1__1_carry_i_8_n_0\,
      O => \Sum_out1__1_carry_i_5_n_0\
    );
\Sum_out1__1_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A59"
    )
        port map (
      I0 => \Sum_out1__1_carry_i_3_n_0\,
      I1 => Delay3_out1(0),
      I2 => Delay2_out1(0),
      I3 => Delay1_out1(0),
      O => \Sum_out1__1_carry_i_6_n_0\
    );
\Sum_out1__1_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Delay1_out1(0),
      I1 => Delay3_out1(0),
      I2 => Delay2_out1(0),
      I3 => Delay_out1(0),
      O => \Sum_out1__1_carry_i_7_n_0\
    );
\Sum_out1__1_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Delay3_out1(1),
      I1 => Delay1_out1(1),
      O => \Sum_out1__1_carry_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_axi_lite is
  port (
    AXI4_Lite_RVALID : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI4_Lite_RDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI4_Lite_AWREADY : out STD_LOGIC;
    AXI4_Lite_ARREADY : out STD_LOGIC;
    reset_in : out STD_LOGIC;
    AXI4_Lite_ACLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI4_Lite_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI4_Lite_WVALID : in STD_LOGIC;
    AXI4_Lite_AWVALID : in STD_LOGIC;
    AXI4_Lite_ARVALID : in STD_LOGIC;
    AXI4_Lite_AWADDR : in STD_LOGIC_VECTOR ( 13 downto 0 );
    AXI4_Lite_ARADDR : in STD_LOGIC_VECTOR ( 13 downto 0 );
    AXI4_Lite_RREADY : in STD_LOGIC;
    AXI4_Lite_BREADY : in STD_LOGIC;
    AXI4_Lite_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI4_Lite_ARESETN : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_axi_lite;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_axi_lite is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal read_reg_ip_timestamp : STD_LOGIC_VECTOR ( 30 to 30 );
  signal u_de_lastig_ip_addr_decoder_inst_n_2 : STD_LOGIC;
  signal u_de_lastig_ip_axi_lite_module_inst_n_5 : STD_LOGIC;
  signal u_de_lastig_ip_axi_lite_module_inst_n_6 : STD_LOGIC;
  signal u_de_lastig_ip_axi_lite_module_inst_n_7 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
u_de_lastig_ip_addr_decoder_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_addr_decoder
     port map (
      AR(0) => AR(0),
      AXI4_Lite_ACLK => AXI4_Lite_ACLK,
      AXI4_Lite_ARADDR(1 downto 0) => AXI4_Lite_ARADDR(1 downto 0),
      \AXI4_Lite_ARADDR[14]\ => u_de_lastig_ip_axi_lite_module_inst_n_6,
      \AXI4_Lite_ARADDR[8]\ => u_de_lastig_ip_axi_lite_module_inst_n_7,
      AXI4_Lite_ARVALID => AXI4_Lite_ARVALID,
      \AXI4_Lite_RDATA_tmp_reg[30]\ => u_de_lastig_ip_addr_decoder_inst_n_2,
      E(0) => \^e\(0),
      read_reg_ip_timestamp(0) => read_reg_ip_timestamp(30),
      \wdata_reg[0]\ => u_de_lastig_ip_axi_lite_module_inst_n_5
    );
u_de_lastig_ip_axi_lite_module_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_axi_lite_module
     port map (
      AXI4_Lite_ACLK => AXI4_Lite_ACLK,
      AXI4_Lite_ARADDR(13 downto 0) => AXI4_Lite_ARADDR(13 downto 0),
      AXI4_Lite_ARESETN => AXI4_Lite_ARESETN,
      AXI4_Lite_ARREADY => AXI4_Lite_ARREADY,
      AXI4_Lite_ARVALID => AXI4_Lite_ARVALID,
      AXI4_Lite_AWADDR(13 downto 0) => AXI4_Lite_AWADDR(13 downto 0),
      AXI4_Lite_AWREADY => AXI4_Lite_AWREADY,
      AXI4_Lite_AWVALID => AXI4_Lite_AWVALID,
      AXI4_Lite_BREADY => AXI4_Lite_BREADY,
      AXI4_Lite_BVALID(1 downto 0) => \out\(1 downto 0),
      AXI4_Lite_RDATA(0) => AXI4_Lite_RDATA(0),
      AXI4_Lite_RREADY => AXI4_Lite_RREADY,
      AXI4_Lite_WDATA(0) => AXI4_Lite_WDATA(0),
      AXI4_Lite_WSTRB(3 downto 0) => AXI4_Lite_WSTRB(3 downto 0),
      AXI4_Lite_WVALID => AXI4_Lite_WVALID,
      E(0) => \^e\(0),
      IPCORE_RESETN => IPCORE_RESETN,
      \out\ => AXI4_Lite_RVALID,
      read_reg_ip_timestamp(0) => read_reg_ip_timestamp(30),
      \read_reg_ip_timestamp_reg[30]\ => u_de_lastig_ip_addr_decoder_inst_n_2,
      reset_in => reset_in,
      write_reg_axi_enable_reg => u_de_lastig_ip_axi_lite_module_inst_n_5,
      write_reg_axi_enable_reg_0 => u_de_lastig_ip_axi_lite_module_inst_n_6,
      write_reg_axi_enable_reg_1 => u_de_lastig_ip_axi_lite_module_inst_n_7
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_dut is
  port (
    out1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    in4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IPCORE_CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    in2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_dut;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_dut is
begin
u_de_lastig_ip_src_de_lastigste_calc_ooit: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_src_de_lastigste_calc_ooit
     port map (
      AR(0) => AR(0),
      E(0) => E(0),
      IPCORE_CLK => IPCORE_CLK,
      in1(15 downto 0) => in1(15 downto 0),
      in2(15 downto 0) => in2(15 downto 0),
      in3(15 downto 0) => in3(15 downto 0),
      in4(15 downto 0) => in4(15 downto 0),
      out1(15 downto 0) => out1(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip is
  port (
    AXI4_Lite_RVALID : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI4_Lite_ARREADY : out STD_LOGIC;
    AXI4_Lite_AWREADY : out STD_LOGIC;
    out1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    AXI4_Lite_RDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI4_Lite_ACLK : in STD_LOGIC;
    AXI4_Lite_AWADDR : in STD_LOGIC_VECTOR ( 13 downto 0 );
    IPCORE_CLK : in STD_LOGIC;
    in4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    AXI4_Lite_ARVALID : in STD_LOGIC;
    AXI4_Lite_ARADDR : in STD_LOGIC_VECTOR ( 13 downto 0 );
    AXI4_Lite_RREADY : in STD_LOGIC;
    AXI4_Lite_AWVALID : in STD_LOGIC;
    AXI4_Lite_WVALID : in STD_LOGIC;
    AXI4_Lite_BREADY : in STD_LOGIC;
    AXI4_Lite_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI4_Lite_ARESETN : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC;
    AXI4_Lite_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip is
  signal reset : STD_LOGIC;
  signal reset_in : STD_LOGIC;
  signal write_reg_axi_enable : STD_LOGIC;
begin
u_de_lastig_ip_axi_lite_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_axi_lite
     port map (
      AR(0) => reset,
      AXI4_Lite_ACLK => AXI4_Lite_ACLK,
      AXI4_Lite_ARADDR(13 downto 0) => AXI4_Lite_ARADDR(13 downto 0),
      AXI4_Lite_ARESETN => AXI4_Lite_ARESETN,
      AXI4_Lite_ARREADY => AXI4_Lite_ARREADY,
      AXI4_Lite_ARVALID => AXI4_Lite_ARVALID,
      AXI4_Lite_AWADDR(13 downto 0) => AXI4_Lite_AWADDR(13 downto 0),
      AXI4_Lite_AWREADY => AXI4_Lite_AWREADY,
      AXI4_Lite_AWVALID => AXI4_Lite_AWVALID,
      AXI4_Lite_BREADY => AXI4_Lite_BREADY,
      AXI4_Lite_RDATA(0) => AXI4_Lite_RDATA(0),
      AXI4_Lite_RREADY => AXI4_Lite_RREADY,
      AXI4_Lite_RVALID => AXI4_Lite_RVALID,
      AXI4_Lite_WDATA(0) => AXI4_Lite_WDATA(0),
      AXI4_Lite_WSTRB(3 downto 0) => AXI4_Lite_WSTRB(3 downto 0),
      AXI4_Lite_WVALID => AXI4_Lite_WVALID,
      E(0) => write_reg_axi_enable,
      IPCORE_RESETN => IPCORE_RESETN,
      \out\(1 downto 0) => \out\(1 downto 0),
      reset_in => reset_in
    );
u_de_lastig_ip_dut_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_dut
     port map (
      AR(0) => reset,
      E(0) => write_reg_axi_enable,
      IPCORE_CLK => IPCORE_CLK,
      in1(15 downto 0) => in1(15 downto 0),
      in2(15 downto 0) => in2(15 downto 0),
      in3(15 downto 0) => in3(15 downto 0),
      in4(15 downto 0) => in4(15 downto 0),
      out1(15 downto 0) => out1(15 downto 0)
    );
u_de_lastig_ip_reset_sync_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_reset_sync
     port map (
      AR(0) => reset,
      IPCORE_CLK => IPCORE_CLK,
      reset_in => reset_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    IPCORE_CLK : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC;
    in1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    AXI4_Lite_ACLK : in STD_LOGIC;
    AXI4_Lite_ARESETN : in STD_LOGIC;
    AXI4_Lite_AWADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    AXI4_Lite_AWVALID : in STD_LOGIC;
    AXI4_Lite_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI4_Lite_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI4_Lite_WVALID : in STD_LOGIC;
    AXI4_Lite_BREADY : in STD_LOGIC;
    AXI4_Lite_ARADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    AXI4_Lite_ARVALID : in STD_LOGIC;
    AXI4_Lite_RREADY : in STD_LOGIC;
    out1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    AXI4_Lite_AWREADY : out STD_LOGIC;
    AXI4_Lite_WREADY : out STD_LOGIC;
    AXI4_Lite_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI4_Lite_BVALID : out STD_LOGIC;
    AXI4_Lite_ARREADY : out STD_LOGIC;
    AXI4_Lite_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI4_Lite_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI4_Lite_RVALID : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Block_design_de_lastig_ip_0_1,de_lastig_ip,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "de_lastig_ip,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^axi4_lite_rdata\ : STD_LOGIC_VECTOR ( 29 to 29 );
  attribute x_interface_info : string;
  attribute x_interface_info of AXI4_Lite_ACLK : signal is "xilinx.com:signal:clock:1.0 AXI4_Lite_signal_clock CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of AXI4_Lite_ACLK : signal is "XIL_INTERFACENAME AXI4_Lite_signal_clock, ASSOCIATED_BUSIF AXI4_Lite, ASSOCIATED_RESET AXI4_Lite_ARESETN, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_1_FCLK_CLK0";
  attribute x_interface_info of AXI4_Lite_ARESETN : signal is "xilinx.com:signal:reset:1.0 AXI4_Lite_signal_reset RST";
  attribute x_interface_parameter of AXI4_Lite_ARESETN : signal is "XIL_INTERFACENAME AXI4_Lite_signal_reset, POLARITY ACTIVE_LOW";
  attribute x_interface_info of AXI4_Lite_ARREADY : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite ARREADY";
  attribute x_interface_info of AXI4_Lite_ARVALID : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite ARVALID";
  attribute x_interface_info of AXI4_Lite_AWREADY : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite AWREADY";
  attribute x_interface_info of AXI4_Lite_AWVALID : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite AWVALID";
  attribute x_interface_info of AXI4_Lite_BREADY : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite BREADY";
  attribute x_interface_info of AXI4_Lite_BVALID : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite BVALID";
  attribute x_interface_info of AXI4_Lite_RREADY : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite RREADY";
  attribute x_interface_info of AXI4_Lite_RVALID : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite RVALID";
  attribute x_interface_info of AXI4_Lite_WREADY : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite WREADY";
  attribute x_interface_info of AXI4_Lite_WVALID : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite WVALID";
  attribute x_interface_info of IPCORE_CLK : signal is "xilinx.com:signal:clock:1.0 IPCORE_CLK CLK";
  attribute x_interface_parameter of IPCORE_CLK : signal is "XIL_INTERFACENAME IPCORE_CLK, ASSOCIATED_RESET IPCORE_RESETN, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_1_FCLK_CLK0";
  attribute x_interface_info of IPCORE_RESETN : signal is "xilinx.com:signal:reset:1.0 IPCORE_RESETN RST";
  attribute x_interface_parameter of IPCORE_RESETN : signal is "XIL_INTERFACENAME IPCORE_RESETN, POLARITY ACTIVE_LOW";
  attribute x_interface_info of AXI4_Lite_ARADDR : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite ARADDR";
  attribute x_interface_info of AXI4_Lite_AWADDR : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite AWADDR";
  attribute x_interface_parameter of AXI4_Lite_AWADDR : signal is "XIL_INTERFACENAME AXI4_Lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of AXI4_Lite_BRESP : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite BRESP";
  attribute x_interface_info of AXI4_Lite_RDATA : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite RDATA";
  attribute x_interface_info of AXI4_Lite_RRESP : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite RRESP";
  attribute x_interface_info of AXI4_Lite_WDATA : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite WDATA";
  attribute x_interface_info of AXI4_Lite_WSTRB : signal is "xilinx.com:interface:aximm:1.0 AXI4_Lite WSTRB";
begin
  AXI4_Lite_BRESP(1) <= \<const0>\;
  AXI4_Lite_BRESP(0) <= \<const0>\;
  AXI4_Lite_RDATA(31) <= \<const0>\;
  AXI4_Lite_RDATA(30) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(29) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(28) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(27) <= \<const0>\;
  AXI4_Lite_RDATA(26) <= \<const0>\;
  AXI4_Lite_RDATA(25) <= \<const0>\;
  AXI4_Lite_RDATA(24) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(23) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(22) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(21) <= \<const0>\;
  AXI4_Lite_RDATA(20) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(19) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(18) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(17) <= \<const0>\;
  AXI4_Lite_RDATA(16) <= \<const0>\;
  AXI4_Lite_RDATA(15) <= \<const0>\;
  AXI4_Lite_RDATA(14) <= \<const0>\;
  AXI4_Lite_RDATA(13) <= \<const0>\;
  AXI4_Lite_RDATA(12) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(11) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(10) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(9) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(8) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(7) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(6) <= \<const0>\;
  AXI4_Lite_RDATA(5) <= \<const0>\;
  AXI4_Lite_RDATA(4) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(3) <= \<const0>\;
  AXI4_Lite_RDATA(2) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(1) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RDATA(0) <= \^axi4_lite_rdata\(29);
  AXI4_Lite_RRESP(1) <= \<const0>\;
  AXI4_Lite_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip
     port map (
      AXI4_Lite_ACLK => AXI4_Lite_ACLK,
      AXI4_Lite_ARADDR(13 downto 0) => AXI4_Lite_ARADDR(15 downto 2),
      AXI4_Lite_ARESETN => AXI4_Lite_ARESETN,
      AXI4_Lite_ARREADY => AXI4_Lite_ARREADY,
      AXI4_Lite_ARVALID => AXI4_Lite_ARVALID,
      AXI4_Lite_AWADDR(13 downto 0) => AXI4_Lite_AWADDR(15 downto 2),
      AXI4_Lite_AWREADY => AXI4_Lite_AWREADY,
      AXI4_Lite_AWVALID => AXI4_Lite_AWVALID,
      AXI4_Lite_BREADY => AXI4_Lite_BREADY,
      AXI4_Lite_RDATA(0) => \^axi4_lite_rdata\(29),
      AXI4_Lite_RREADY => AXI4_Lite_RREADY,
      AXI4_Lite_RVALID => AXI4_Lite_RVALID,
      AXI4_Lite_WDATA(0) => AXI4_Lite_WDATA(0),
      AXI4_Lite_WSTRB(3 downto 0) => AXI4_Lite_WSTRB(3 downto 0),
      AXI4_Lite_WVALID => AXI4_Lite_WVALID,
      IPCORE_CLK => IPCORE_CLK,
      IPCORE_RESETN => IPCORE_RESETN,
      in1(15 downto 0) => in1(15 downto 0),
      in2(15 downto 0) => in2(15 downto 0),
      in3(15 downto 0) => in3(15 downto 0),
      in4(15 downto 0) => in4(15 downto 0),
      \out\(1) => AXI4_Lite_BVALID,
      \out\(0) => AXI4_Lite_WREADY,
      out1(15 downto 0) => out1(15 downto 0)
    );
end STRUCTURE;
