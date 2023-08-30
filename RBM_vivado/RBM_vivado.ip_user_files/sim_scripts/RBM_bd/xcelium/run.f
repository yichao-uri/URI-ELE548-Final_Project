-makelib xcelium_lib/xilinx_vip -sv \
  "/home/ubuntu20/Softwares/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/home/ubuntu20/Softwares/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/home/ubuntu20/Softwares/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/home/ubuntu20/Softwares/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/home/ubuntu20/Softwares/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/home/ubuntu20/Softwares/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/home/ubuntu20/Softwares/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/home/ubuntu20/Softwares/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/home/ubuntu20/Softwares/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "/home/ubuntu20/Softwares/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/home/ubuntu20/Softwares/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/home/ubuntu20/Softwares/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/home/ubuntu20/Softwares/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_control_split.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_data_flow_control.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_double_buffer.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_fifo_w8_d128_S.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_fifo_w10_d128_A.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_fifo_w12_d128_A.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_fifo_w21_d128_A.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_fifo_w21_d1024_A.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_fifo_w21_d1024_A_x.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_fifo_w48_d128_A.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_fifo_w49_d128_A.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_fifo_w64_d128_A.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_fifo_w640_d128_D.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_fifo_w1600_d128_D.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_hls_deadlock_detection_unit.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_mul_55s_24ns_79_2_1.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_mul_mul_25s_16s_41_4_1.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_mux_646_1_1_1.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_rbm_size_split.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_regslice_both.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_sigmoid.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_sigmoid_sigmoid_bias_V_ROM_AUTO_1R.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_sigmoid_sigmoid_slope_V_ROM_AUTO_1R.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_start_for_data_flow_control_U0.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_start_for_double_buffer_U0.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_start_for_sigmoid_U0.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_start_for_systolic_array_U0.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_start_for_weight_bias_memory_U0.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_systolic_array.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_weight_bias_memory.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_weight_bias_memory_bias_V_RAM_AUTO_1R1W.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM_weight_bias_memory_weight_bias_memory_stream_stream_stream_stream_stream_strebkb.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/fd9f/hdl/verilog/RBM.v" \
  "../../../bd/RBM_bd/ip/RBM_bd_RBM_0_0/sim/RBM_bd_RBM_0_0.v" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_18 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_15 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/22f8/hdl/floating_point_v7_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_15 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/22f8/hdl/floating_point_v7_1_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/b723/hdl/verilog/RBM_interface_fpext_32ns_64_2_no_dsp_1.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/b723/hdl/verilog/RBM_interface_hls_deadlock_idx0_monitor.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/b723/hdl/verilog/RBM_interface_regslice_both.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/b723/hdl/verilog/RBM_interface.v" \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/b723/hdl/ip/RBM_interface_fpext_32ns_64_2_no_dsp_1_ip.v" \
  "../../../bd/RBM_bd/ip/RBM_bd_RBM_interface_0_0/sim/RBM_bd_RBM_interface_0_0.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_15 -sv \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RBM_bd/ip/RBM_bd_processing_system7_0_0/sim/RBM_bd_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RBM_bd/ip/RBM_bd_rst_ps7_0_50M_0/sim/RBM_bd_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_16 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_29 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/2237/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_15 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_28 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/70c4/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RBM_bd/ip/RBM_bd_axi_dma_0/sim/RBM_bd_axi_dma_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_28 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RBM_bd/ip/RBM_bd_xbar_0/sim/RBM_bd_xbar_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RBM_bd/ip/RBM_bd_axi_dma_1_0/sim/RBM_bd_axi_dma_1_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RBM_bd/ip/RBM_bd_xbar_1/sim/RBM_bd_xbar_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RBM_bd/ip/RBM_bd_axi_dma_2_0/sim/RBM_bd_axi_dma_2_0.vhd" \
  "../../../bd/RBM_bd/ip/RBM_bd_axi_dma_3_0/sim/RBM_bd_axi_dma_3_0.vhd" \
  "../../../bd/RBM_bd/ip/RBM_bd_axi_dma_4_0/sim/RBM_bd_axi_dma_4_0.vhd" \
  "../../../bd/RBM_bd/ip/RBM_bd_axi_dma_5_0/sim/RBM_bd_axi_dma_5_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RBM_bd/ip/RBM_bd_xbar_2/sim/RBM_bd_xbar_2.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RBM_bd/ip/RBM_bd_axi_dma_6_0/sim/RBM_bd_axi_dma_6_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RBM_bd/ip/RBM_bd_xbar_3/sim/RBM_bd_xbar_3.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_27 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_26 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/axi_dwidth_converter_v2_1_27 \
  "../../../../RBM_vivado.gen/sources_1/bd/RBM_bd/ipshared/4675/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RBM_bd/ip/RBM_bd_auto_us_0/sim/RBM_bd_auto_us_0.v" \
  "../../../bd/RBM_bd/ip/RBM_bd_auto_pc_0/sim/RBM_bd_auto_pc_0.v" \
  "../../../bd/RBM_bd/ip/RBM_bd_auto_pc_1/sim/RBM_bd_auto_pc_1.v" \
  "../../../bd/RBM_bd/ip/RBM_bd_auto_pc_2/sim/RBM_bd_auto_pc_2.v" \
  "../../../bd/RBM_bd/ip/RBM_bd_auto_pc_3/sim/RBM_bd_auto_pc_3.v" \
  "../../../bd/RBM_bd/sim/RBM_bd.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

