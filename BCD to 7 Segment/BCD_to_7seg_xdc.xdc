# Clock signal
set_property -dict { PACKAGE_PIN H11    IOSTANDARD LVCMOS33 } [get_ports { clk }];

# Switches to control BCD output value
set_property -dict { PACKAGE_PIN K11    IOSTANDARD LVCMOS33 } [get_ports { BcdIn[0] }];#LSB
set_property -dict { PACKAGE_PIN M11    IOSTANDARD LVCMOS33 } [get_ports { BcdIn[1] }];
set_property -dict { PACKAGE_PIN N14    IOSTANDARD LVCMOS33 } [get_ports { BcdIn[2] }];
set_property -dict { PACKAGE_PIN P12    IOSTANDARD LVCMOS33 } [get_ports { BcdIn[3] }];
# Switches to control digit
set_property -dict { PACKAGE_PIN J1    IOSTANDARD LVCMOS33 } [get_ports { digit_sel[0] }];
set_property -dict { PACKAGE_PIN K3    IOSTANDARD LVCMOS33 } [get_ports { digit_sel[1] }];
set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { digit_sel[2] }];
set_property -dict { PACKAGE_PIN L1    IOSTANDARD LVCMOS33 } [get_ports { digit_sel[3] }];#MSB

#7 segment display
set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports {digit[0]}]; #LSB
set_property -dict { PACKAGE_PIN H3    IOSTANDARD LVCMOS33 } [get_ports {digit[1]}];
set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports {digit[2]}];
set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports {digit[3]}]; #MSB
 
set_property -dict { PACKAGE_PIN L3    IOSTANDARD LVCMOS33 } [get_ports {Seven_Segment[7]}];#A
set_property -dict { PACKAGE_PIN P4    IOSTANDARD LVCMOS33 } [get_ports {Seven_Segment[6]}];#B
set_property -dict { PACKAGE_PIN P2    IOSTANDARD LVCMOS33 } [get_ports {Seven_Segment[5]}];#C
set_property -dict { PACKAGE_PIN M3    IOSTANDARD LVCMOS33 } [get_ports {Seven_Segment[4]}];#D
set_property -dict { PACKAGE_PIN M1    IOSTANDARD LVCMOS33 } [get_ports {Seven_Segment[3]}];#E
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports {Seven_Segment[2]}];#F
set_property -dict { PACKAGE_PIN K4    IOSTANDARD LVCMOS33 } [get_ports {Seven_Segment[1]}];#G
set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports {Seven_Segment[0]}];#DP