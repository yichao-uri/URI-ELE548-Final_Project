create_clock -name ap_clk -period 12.500 -waveform {0.000 6.250} [get_ports ap_clk]

#set_input_delay 0 -clock CLK  [all_inputs]
#set_output_delay 0 -clock CLK [all_outputs]

