set_property -dict { PACKAGE_PIN E3  IOSTANDARD LVCMOS33 } [get_ports { clk } ];  #IO_L12P_T1_MRCC_35 Sch=clk/100Mhz
set_property -dict { PACKAGE_PIN N17 IOSTANDARD LVCMOS33 } [get_ports { rst } ];  #IO_L9P_T0_DQS_14 Sch=rst

# input A
set_property -dict { PACKAGE_PIN R17 IOSTANDARD LVCMOS33 } [get_ports { A[0] } ];  #IO_L11N_T1U_DQS_14 Sch=sw[4]
set_property -dict { PACKAGE_PIN T18 IOSTANDARD LVCMOS33 } [get_ports { A[1] } ];  #IO_L11P_T1U_DQS_14 Sch=sw[5]
set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports { A[2] } ];  #IO_L17N_T2_A12_02 Sch=sw[6]
set_property -dict { PACKAGE_PIN R13 IOSTANDARD LVCMOS33 } [get_ports { A[3] } ];  #IO_L17P_T2_MRCC_14 Sch=sw[7]

# input B
set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { B[0] } ];  #IO_L24N_T3_A50_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports { B[1] } ];  #IO_L23N_T0_DQS_EMCCLK_14 Sch=sw[1]
set_property -dict { PACKAGE_PIN M13 IOSTANDARD LVCMOS33 } [get_ports { B[2] } ];  #IO_L23P_T0_D08_VREF_14 Sch=sw[2]
set_property -dict { PACKAGE_PIN R15 IOSTANDARD LVCMOS33 } [get_ports { B[3] } ];  #IO_L15N_T2_MRCC_14 Sch=sw[3]

# output A
set_property -dict { PACKAGE_PIN J17 IOSTANDARD LVCMOS33 } [get_ports { AN[0] } ];  #IO_L23P_T2_A03_14 Sch=an[0]
set_property -dict { PACKAGE_PIN J18 IOSTANDARD LVCMOS33 } [get_ports { AN[1] } ];  #IO_L23N_T2_A03_14 Sch=an[1]
set_property -dict { PACKAGE_PIN T9  IOSTANDARD LVCMOS33 } [get_ports { AN[2] } ];  #IO_L26P_T3_A01_017_14 Sch=an[2]
set_property -dict { PACKAGE_PIN J14 IOSTANDARD LVCMOS33 } [get_ports { AN[3] } ];  #IO_L19P_T3_A22_15 Sch=an[3]
set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33 } [get_ports { AN[4] } ];  #IO_L14N_T2_A01_012_14 Sch=an[4]
set_property -dict { PACKAGE_PIN T14 IOSTANDARD LVCMOS33 } [get_ports { AN[5] } ];  #IO_L14P_T2_A01_012_14 Sch=an[5]
set_property -dict { PACKAGE_PIN K2  IOSTANDARD LVCMOS33 } [get_ports { AN[6] } ];  #IO_L23P_T3_A02_012_14 Sch=an[6]
set_property -dict { PACKAGE_PIN U13 IOSTANDARD LVCMOS33 } [get_ports { AN[7] } ];  #IO_L23N_T3_A02_012_14 Sch=an[7]

# output Seg
set_property -dict { PACKAGE_PIN T10 IOSTANDARD LVCMOS33 } [get_ports { Seg[6] } ];  #IO_L24N_T3_A00_D16_14 Sch=ca[6]
set_property -dict { PACKAGE_PIN R10 IOSTANDARD LVCMOS33 } [get_ports { Seg[5] } ];  #IO_L23P_T3_A00_D16_14 Sch=ca[5]
set_property -dict { PACKAGE_PIN K16 IOSTANDARD LVCMOS33 } [get_ports { Seg[4] } ];  #IO_L26N_T3_A01_012_14 Sch=ca[4]
set_property -dict { PACKAGE_PIN K13 IOSTANDARD LVCMOS33 } [get_ports { Seg[3] } ];  #IO_L17P_T2_A02_015_14 Sch=ca[3]
set_property -dict { PACKAGE_PIN P15 IOSTANDARD LVCMOS33 } [get_ports { Seg[2] } ];  #IO_L19P_T3_A22_15 Sch=ca[2]
set_property -dict { PACKAGE_PIN T11 IOSTANDARD LVCMOS33 } [get_ports { Seg[1] } ];  #IO_L14N_T2_A01_012_14 Sch=ca[1]
set_property -dict { PACKAGE_PIN L18 IOSTANDARD LVCMOS33 } [get_ports { Seg[0] } ];  #IO_L19P_T3_A22_15 Sch=ca[0]
set_property -dict { PACKAGE_PIN H15 IOSTANDARD LVCMOS33 } [get_ports { Seg[7] } ];  #IO_L15W_T3_A21_VREF_15 Sch=ca[7]
