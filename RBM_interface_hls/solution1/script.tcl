############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project RBM_interface_hls
set_top RBM_interface
add_files RBM_interface_hls/code/RBM_interface.h
add_files RBM_interface_hls/code/RBM_interface.cpp
add_files -tb RBM_interface_hls/code/RBM_interface_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 12.5 -name default
config_export -flow impl -format ip_catalog -rtl verilog -vivado_clock 12.5
source "./RBM_interface_hls/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
