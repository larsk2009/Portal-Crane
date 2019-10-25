set_property SRC_FILE_INFO {cfile:D:/EAAES/Portal-Crane/Miniproject_motor_control.srcs/constrs_1/imports/Portal-Crane/Zybo-Z7-Master.xdc rfile:../../../Miniproject_motor_control.srcs/constrs_1/imports/Portal-Crane/Zybo-Z7-Master.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { clk_in1 }]; #IO_L12P_T1_MRCC_35 Sch=sysclk
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { clk_in1 }];
set_property src_info {type:XDC file:1 line:104 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { Vaux14_v_p }]; #A1_R_p
set_property src_info {type:XDC file:1 line:108 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { Vaux14_v_n }]; #IO_L21N_T3_DQS_AD14N_35 Sch=JA1_R_N
set_property src_info {type:XDC file:1 line:126 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33     } [get_ports { b }]; #IO_L10P_T1_34 Sch=jc_p[1]
set_property src_info {type:XDC file:1 line:127 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33     } [get_ports { pwm0 }]; #IO_L10N_T1_34 Sch=jc_n[1]
set_property src_info {type:XDC file:1 line:128 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33     } [get_ports { o_pwm }]; #IO_L1P_T0_34 Sch=jc_p[2]
set_property src_info {type:XDC file:1 line:130 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33     } [get_ports { A_In }]; #IO_L8P_T1_34 Sch=jc_p[3]
set_property src_info {type:XDC file:1 line:131 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33     } [get_ports { B_In }]; #IO_L8N_T1_34 Sch=jc_n[3]
