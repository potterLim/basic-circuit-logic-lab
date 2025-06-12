set_property -dict { PACKAGE_PIN E3  IOSTANDARD LVCMOS33 } [get_ports { clk } ];  # Clock input (100MHz)
set_property -dict { PACKAGE_PIN N17 IOSTANDARD LVCMOS33 } [get_ports { rst } ];  # Reset input

# Input A (from SW[7:4])
set_property -dict { PACKAGE_PIN R17 IOSTANDARD LVCMOS33 } [get_ports { A[0] } ];  # SW[4]
set_property -dict { PACKAGE_PIN T18 IOSTANDARD LVCMOS33 } [get_ports { A[1] } ];  # SW[5]
set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports { A[2] } ];  # SW[6]
set_property -dict { PACKAGE_PIN R13 IOSTANDARD LVCMOS33 } [get_ports { A[3] } ];  # SW[7]

# Input B (from SW[3:0])
set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { B[0] } ];  # SW[0]
set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports { B[1] } ];  # SW[1]
set_property -dict { PACKAGE_PIN M13 IOSTANDARD LVCMOS33 } [get_ports { B[2] } ];  # SW[2]
set_property -dict { PACKAGE_PIN R15 IOSTANDARD LVCMOS33 } [get_ports { B[3] } ];  # SW[3]

# Output AN (7-segment display digit select, Active Low)
set_property -dict { PACKAGE_PIN J17 IOSTANDARD LVCMOS33 } [get_ports { AN[0] } ];  # AN[0]
set_property -dict { PACKAGE_PIN J18 IOSTANDARD LVCMOS33 } [get_ports { AN[1] } ];  # AN[1]
set_property -dict { PACKAGE_PIN T9  IOSTANDARD LVCMOS33 } [get_ports { AN[2] } ];  # AN[2]
set_property -dict { PACKAGE_PIN J14 IOSTANDARD LVCMOS33 } [get_ports { AN[3] } ];  # AN[3]
set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33 } [get_ports { AN[4] } ];  # AN[4]
set_property -dict { PACKAGE_PIN T14 IOSTANDARD LVCMOS33 } [get_ports { AN[5] } ];  # AN[5]
set_property -dict { PACKAGE_PIN K2  IOSTANDARD LVCMOS33 } [get_ports { AN[6] } ];  # AN[6]
set_property -dict { PACKAGE_PIN U13 IOSTANDARD LVCMOS33 } [get_ports { AN[7] } ];  # AN[7]

# Output Seg (7-segment display segment control)
# Seg[6:0] → segments a~g, Seg[7] → decimal point (DP)
set_property -dict { PACKAGE_PIN T10 IOSTANDARD LVCMOS33 } [get_ports { Seg[6] } ];  # Segment g
set_property -dict { PACKAGE_PIN R10 IOSTANDARD LVCMOS33 } [get_ports { Seg[5] } ];  # Segment f
set_property -dict { PACKAGE_PIN K16 IOSTANDARD LVCMOS33 } [get_ports { Seg[4] } ];  # Segment e
set_property -dict { PACKAGE_PIN K13 IOSTANDARD LVCMOS33 } [get_ports { Seg[3] } ];  # Segment d
set_property -dict { PACKAGE_PIN P15 IOSTANDARD LVCMOS33 } [get_ports { Seg[2] } ];  # Segment c
set_property -dict { PACKAGE_PIN T11 IOSTANDARD LVCMOS33 } [get_ports { Seg[1] } ];  # Segment b
set_property -dict { PACKAGE_PIN L18 IOSTANDARD LVCMOS33 } [get_ports { Seg[0] } ];  # Segment a
set_property -dict { PACKAGE_PIN H15 IOSTANDARD LVCMOS33 } [get_ports { Seg[7] } ];  # Segment DP (Decimal Point)
