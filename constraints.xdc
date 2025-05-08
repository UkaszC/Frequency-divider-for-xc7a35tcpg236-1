# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk_i]
	set_property IOSTANDARD LVCMOS33 [get_ports clk_i]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_i]
# Reset button
set_property PACKAGE_PIN T17 [get_ports rst_i]
	set_property IOSTANDARD LVCMOS33 [get_ports rst_i]
# LED
set_property PACKAGE_PIN U16 [get_ports led_o]
	set_property IOSTANDARD LVCMOS33 [get_ports led_o]
## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]