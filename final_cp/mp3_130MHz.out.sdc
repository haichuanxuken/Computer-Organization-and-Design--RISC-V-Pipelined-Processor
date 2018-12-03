## Generated SDC file "mp3_130MHz.out.sdc"

## Copyright (C) 1991-2014 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 13.1.4 Build 182 03/12/2014 SJ Full Version"

## DATE    "Mon Oct 29 17:44:28 2018"

##
## DEVICE  "EP3SE80F1152C2"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk} -period 7.692 -waveform { 0.000 3.846 } [get_ports {clk}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {clk}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[16]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[17]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[18]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[19]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[20]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[21]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[22]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[23]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[24]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[25]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[26]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[27]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[28]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[29]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[30]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_a[31]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[16]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[17]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[18]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[19]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[20]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[21]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[22]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[23]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[24]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[25]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[26]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[27]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[28]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[29]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[30]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rdata_b[31]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {resp_a}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {resp_b}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[16]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[17]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[18]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[19]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[20]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[21]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[22]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[23]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[24]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[25]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[26]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[27]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[28]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[29]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[30]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_a[31]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[16]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[17]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[18]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[19]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[20]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[21]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[22]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[23]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[24]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[25]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[26]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[27]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[28]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[29]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[30]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {address_b[31]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {read_a}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {read_b}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[16]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[17]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[18]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[19]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[20]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[21]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[22]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[23]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[24]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[25]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[26]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[27]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[28]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[29]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[30]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_a[31]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[16]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[17]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[18]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[19]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[20]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[21]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[22]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[23]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[24]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[25]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[26]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[27]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[28]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[29]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[30]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wdata_b[31]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wmask_a[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wmask_a[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wmask_a[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wmask_a[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wmask_b[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wmask_b[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wmask_b[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {wmask_b[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {write_a}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {write_b}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

