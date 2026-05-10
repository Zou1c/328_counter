create_clock -period 20 [get_ports Clk] # 20ms circle
set_property PACKAGE_PIN Y14 [get_ports Clk]
set_property IOSTANDARD LVCMOS33 [get_ports Clk]


set_property IOSTANDARD LVCMOS33 [get_ports b1]
set_property IOSTANDARD LVCMOS33 [get_ports Led1]
set_property IOSTANDARD LVCMOS33 [get_ports Led2]
set_property IOSTANDARD LVCMOS33 [get_ports Led4]
set_property IOSTANDARD LVCMOS33 [get_ports Led3]
set_property PACKAGE_PIN AB12 [get_ports b1]
set_property PACKAGE_PIN A5 [get_ports Led1]
set_property PACKAGE_PIN A7 [get_ports Led2]
set_property PACKAGE_PIN A6 [get_ports Led3]
set_property PACKAGE_PIN B8 [get_ports Led4]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets b1_IBUF]