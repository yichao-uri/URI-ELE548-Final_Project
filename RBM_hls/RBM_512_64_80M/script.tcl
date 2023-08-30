############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project RBM_hls
set_top RBM
add_files RBM_hls/code/sigmoid_parameters.h
add_files RBM_hls/code/RBM.h
add_files RBM_hls/code/RBM.cpp
add_files -tb RBM_hls/code/RBM_testbench.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "RBM_512_64_80M" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 12.5 -name default
config_export -flow impl -format ip_catalog -rtl verilog -vivado_clock 12.5
source "./RBM_hls/RBM_512_64_80M/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
