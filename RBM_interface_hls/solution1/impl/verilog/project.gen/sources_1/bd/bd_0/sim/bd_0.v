//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Fri Aug 25 09:38:59 2023
//Host        : ubuntu running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (ap_clk,
    ap_rst_n,
    axis_bias_in_tdata,
    axis_bias_in_tkeep,
    axis_bias_in_tlast,
    axis_bias_in_tready,
    axis_bias_in_tstrb,
    axis_bias_in_tvalid,
    axis_control_in_tdata,
    axis_control_in_tkeep,
    axis_control_in_tlast,
    axis_control_in_tready,
    axis_control_in_tstrb,
    axis_control_in_tvalid,
    axis_sigmoid_switch_in_tdata,
    axis_sigmoid_switch_in_tkeep,
    axis_sigmoid_switch_in_tlast,
    axis_sigmoid_switch_in_tready,
    axis_sigmoid_switch_in_tstrb,
    axis_sigmoid_switch_in_tvalid,
    axis_vector_in_len_in_tdata,
    axis_vector_in_len_in_tkeep,
    axis_vector_in_len_in_tlast,
    axis_vector_in_len_in_tready,
    axis_vector_in_len_in_tstrb,
    axis_vector_in_len_in_tvalid,
    axis_vector_in_tdata,
    axis_vector_in_tkeep,
    axis_vector_in_tlast,
    axis_vector_in_tready,
    axis_vector_in_tstrb,
    axis_vector_in_tvalid,
    axis_vector_out_len_in_tdata,
    axis_vector_out_len_in_tkeep,
    axis_vector_out_len_in_tlast,
    axis_vector_out_len_in_tready,
    axis_vector_out_len_in_tstrb,
    axis_vector_out_len_in_tvalid,
    axis_vector_out_tdata,
    axis_vector_out_tkeep,
    axis_vector_out_tlast,
    axis_vector_out_tready,
    axis_vector_out_tstrb,
    axis_vector_out_tvalid,
    axis_weight_in_tdata,
    axis_weight_in_tkeep,
    axis_weight_in_tlast,
    axis_weight_in_tready,
    axis_weight_in_tstrb,
    axis_weight_in_tvalid,
    stream_bias_in_tdata,
    stream_bias_in_tready,
    stream_bias_in_tvalid,
    stream_control_in_tdata,
    stream_control_in_tready,
    stream_control_in_tvalid,
    stream_sigmoid_switch_in_tdata,
    stream_sigmoid_switch_in_tready,
    stream_sigmoid_switch_in_tvalid,
    stream_vector_in_len_in_tdata,
    stream_vector_in_len_in_tready,
    stream_vector_in_len_in_tvalid,
    stream_vector_in_tdata,
    stream_vector_in_tready,
    stream_vector_in_tvalid,
    stream_vector_out_len_in_tdata,
    stream_vector_out_len_in_tready,
    stream_vector_out_len_in_tvalid,
    stream_vector_out_tdata,
    stream_vector_out_tready,
    stream_vector_out_tvalid,
    stream_weight_in_tdata,
    stream_weight_in_tready,
    stream_weight_in_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF axis_bias_in:axis_control_in:axis_sigmoid_switch_in:axis_vector_in:axis_vector_in_len_in:axis_vector_out:axis_vector_out_len_in:axis_weight_in:stream_bias_in:stream_control_in:stream_sigmoid_switch_in:stream_vector_in:stream_vector_in_len_in:stream_vector_out:stream_vector_out_len_in:stream_weight_in, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_bias_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_bias_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]axis_bias_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_bias_in " *) input [3:0]axis_bias_in_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_bias_in " *) input [0:0]axis_bias_in_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_bias_in " *) output axis_bias_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_bias_in " *) input [3:0]axis_bias_in_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_bias_in " *) input axis_bias_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_control_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_control_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]axis_control_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_control_in " *) input [0:0]axis_control_in_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_control_in " *) input [0:0]axis_control_in_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_control_in " *) output axis_control_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_control_in " *) input [0:0]axis_control_in_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_control_in " *) input axis_control_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_sigmoid_switch_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_sigmoid_switch_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]axis_sigmoid_switch_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_sigmoid_switch_in " *) input [0:0]axis_sigmoid_switch_in_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_sigmoid_switch_in " *) input [0:0]axis_sigmoid_switch_in_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_sigmoid_switch_in " *) output axis_sigmoid_switch_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_sigmoid_switch_in " *) input [0:0]axis_sigmoid_switch_in_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_sigmoid_switch_in " *) input axis_sigmoid_switch_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in_len_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_vector_in_len_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [15:0]axis_vector_in_len_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in_len_in " *) input [1:0]axis_vector_in_len_in_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in_len_in " *) input [0:0]axis_vector_in_len_in_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in_len_in " *) output axis_vector_in_len_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in_len_in " *) input [1:0]axis_vector_in_len_in_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in_len_in " *) input axis_vector_in_len_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_vector_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [15:0]axis_vector_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in " *) input [1:0]axis_vector_in_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in " *) input [0:0]axis_vector_in_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in " *) output axis_vector_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in " *) input [1:0]axis_vector_in_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in " *) input axis_vector_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out_len_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_vector_out_len_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [15:0]axis_vector_out_len_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out_len_in " *) input [1:0]axis_vector_out_len_in_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out_len_in " *) input [0:0]axis_vector_out_len_in_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out_len_in " *) output axis_vector_out_len_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out_len_in " *) input [1:0]axis_vector_out_len_in_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out_len_in " *) input axis_vector_out_len_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_vector_out, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]axis_vector_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out " *) output [3:0]axis_vector_out_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out " *) output [0:0]axis_vector_out_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out " *) input axis_vector_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out " *) output [3:0]axis_vector_out_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out " *) output axis_vector_out_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_weight_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_weight_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]axis_weight_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_weight_in " *) input [3:0]axis_weight_in_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_weight_in " *) input [0:0]axis_weight_in_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_weight_in " *) output axis_weight_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_weight_in " *) input [3:0]axis_weight_in_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_weight_in " *) input axis_weight_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_bias_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_bias_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [47:0]stream_bias_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_bias_in " *) input stream_bias_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_bias_in " *) output stream_bias_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_control_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_control_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [7:0]stream_control_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_control_in " *) input stream_control_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_control_in " *) output stream_control_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_sigmoid_switch_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_sigmoid_switch_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [7:0]stream_sigmoid_switch_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_sigmoid_switch_in " *) input stream_sigmoid_switch_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_sigmoid_switch_in " *) output stream_sigmoid_switch_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in_len_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_vector_in_len_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [15:0]stream_vector_in_len_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in_len_in " *) input stream_vector_in_len_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in_len_in " *) output stream_vector_in_len_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_vector_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]stream_vector_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in " *) input stream_vector_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in " *) output stream_vector_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out_len_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_vector_out_len_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [15:0]stream_vector_out_len_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out_len_in " *) input stream_vector_out_len_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out_len_in " *) output stream_vector_out_len_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_vector_out, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [127:0]stream_vector_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out " *) output stream_vector_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out " *) input stream_vector_out_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_weight_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_weight_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]stream_weight_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_weight_in " *) input stream_weight_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_weight_in " *) output stream_weight_in_tvalid;

  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [31:0]axis_bias_in_0_1_TDATA;
  wire [3:0]axis_bias_in_0_1_TKEEP;
  wire [0:0]axis_bias_in_0_1_TLAST;
  wire axis_bias_in_0_1_TREADY;
  wire [3:0]axis_bias_in_0_1_TSTRB;
  wire axis_bias_in_0_1_TVALID;
  wire [7:0]axis_control_in_0_1_TDATA;
  wire [0:0]axis_control_in_0_1_TKEEP;
  wire [0:0]axis_control_in_0_1_TLAST;
  wire axis_control_in_0_1_TREADY;
  wire [0:0]axis_control_in_0_1_TSTRB;
  wire axis_control_in_0_1_TVALID;
  wire [7:0]axis_sigmoid_switch_in_0_1_TDATA;
  wire [0:0]axis_sigmoid_switch_in_0_1_TKEEP;
  wire [0:0]axis_sigmoid_switch_in_0_1_TLAST;
  wire axis_sigmoid_switch_in_0_1_TREADY;
  wire [0:0]axis_sigmoid_switch_in_0_1_TSTRB;
  wire axis_sigmoid_switch_in_0_1_TVALID;
  wire [15:0]axis_vector_in_0_1_TDATA;
  wire [1:0]axis_vector_in_0_1_TKEEP;
  wire [0:0]axis_vector_in_0_1_TLAST;
  wire axis_vector_in_0_1_TREADY;
  wire [1:0]axis_vector_in_0_1_TSTRB;
  wire axis_vector_in_0_1_TVALID;
  wire [15:0]axis_vector_in_len_in_0_1_TDATA;
  wire [1:0]axis_vector_in_len_in_0_1_TKEEP;
  wire [0:0]axis_vector_in_len_in_0_1_TLAST;
  wire axis_vector_in_len_in_0_1_TREADY;
  wire [1:0]axis_vector_in_len_in_0_1_TSTRB;
  wire axis_vector_in_len_in_0_1_TVALID;
  wire [15:0]axis_vector_out_len_in_0_1_TDATA;
  wire [1:0]axis_vector_out_len_in_0_1_TKEEP;
  wire [0:0]axis_vector_out_len_in_0_1_TLAST;
  wire axis_vector_out_len_in_0_1_TREADY;
  wire [1:0]axis_vector_out_len_in_0_1_TSTRB;
  wire axis_vector_out_len_in_0_1_TVALID;
  wire [31:0]axis_weight_in_0_1_TDATA;
  wire [3:0]axis_weight_in_0_1_TKEEP;
  wire [0:0]axis_weight_in_0_1_TLAST;
  wire axis_weight_in_0_1_TREADY;
  wire [3:0]axis_weight_in_0_1_TSTRB;
  wire axis_weight_in_0_1_TVALID;
  wire [31:0]hls_inst_axis_vector_out_TDATA;
  wire [3:0]hls_inst_axis_vector_out_TKEEP;
  wire [0:0]hls_inst_axis_vector_out_TLAST;
  wire hls_inst_axis_vector_out_TREADY;
  wire [3:0]hls_inst_axis_vector_out_TSTRB;
  wire hls_inst_axis_vector_out_TVALID;
  wire [47:0]hls_inst_stream_bias_in_TDATA;
  wire hls_inst_stream_bias_in_TREADY;
  wire hls_inst_stream_bias_in_TVALID;
  wire [7:0]hls_inst_stream_control_in_TDATA;
  wire hls_inst_stream_control_in_TREADY;
  wire hls_inst_stream_control_in_TVALID;
  wire [7:0]hls_inst_stream_sigmoid_switch_in_TDATA;
  wire hls_inst_stream_sigmoid_switch_in_TREADY;
  wire hls_inst_stream_sigmoid_switch_in_TVALID;
  wire [31:0]hls_inst_stream_vector_in_TDATA;
  wire hls_inst_stream_vector_in_TREADY;
  wire hls_inst_stream_vector_in_TVALID;
  wire [15:0]hls_inst_stream_vector_in_len_in_TDATA;
  wire hls_inst_stream_vector_in_len_in_TREADY;
  wire hls_inst_stream_vector_in_len_in_TVALID;
  wire [15:0]hls_inst_stream_vector_out_len_in_TDATA;
  wire hls_inst_stream_vector_out_len_in_TREADY;
  wire hls_inst_stream_vector_out_len_in_TVALID;
  wire [31:0]hls_inst_stream_weight_in_TDATA;
  wire hls_inst_stream_weight_in_TREADY;
  wire hls_inst_stream_weight_in_TVALID;
  wire [127:0]stream_vector_out_0_1_TDATA;
  wire stream_vector_out_0_1_TREADY;
  wire stream_vector_out_0_1_TVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign axis_bias_in_0_1_TDATA = axis_bias_in_tdata[31:0];
  assign axis_bias_in_0_1_TKEEP = axis_bias_in_tkeep[3:0];
  assign axis_bias_in_0_1_TLAST = axis_bias_in_tlast[0];
  assign axis_bias_in_0_1_TSTRB = axis_bias_in_tstrb[3:0];
  assign axis_bias_in_0_1_TVALID = axis_bias_in_tvalid;
  assign axis_bias_in_tready = axis_bias_in_0_1_TREADY;
  assign axis_control_in_0_1_TDATA = axis_control_in_tdata[7:0];
  assign axis_control_in_0_1_TKEEP = axis_control_in_tkeep[0];
  assign axis_control_in_0_1_TLAST = axis_control_in_tlast[0];
  assign axis_control_in_0_1_TSTRB = axis_control_in_tstrb[0];
  assign axis_control_in_0_1_TVALID = axis_control_in_tvalid;
  assign axis_control_in_tready = axis_control_in_0_1_TREADY;
  assign axis_sigmoid_switch_in_0_1_TDATA = axis_sigmoid_switch_in_tdata[7:0];
  assign axis_sigmoid_switch_in_0_1_TKEEP = axis_sigmoid_switch_in_tkeep[0];
  assign axis_sigmoid_switch_in_0_1_TLAST = axis_sigmoid_switch_in_tlast[0];
  assign axis_sigmoid_switch_in_0_1_TSTRB = axis_sigmoid_switch_in_tstrb[0];
  assign axis_sigmoid_switch_in_0_1_TVALID = axis_sigmoid_switch_in_tvalid;
  assign axis_sigmoid_switch_in_tready = axis_sigmoid_switch_in_0_1_TREADY;
  assign axis_vector_in_0_1_TDATA = axis_vector_in_tdata[15:0];
  assign axis_vector_in_0_1_TKEEP = axis_vector_in_tkeep[1:0];
  assign axis_vector_in_0_1_TLAST = axis_vector_in_tlast[0];
  assign axis_vector_in_0_1_TSTRB = axis_vector_in_tstrb[1:0];
  assign axis_vector_in_0_1_TVALID = axis_vector_in_tvalid;
  assign axis_vector_in_len_in_0_1_TDATA = axis_vector_in_len_in_tdata[15:0];
  assign axis_vector_in_len_in_0_1_TKEEP = axis_vector_in_len_in_tkeep[1:0];
  assign axis_vector_in_len_in_0_1_TLAST = axis_vector_in_len_in_tlast[0];
  assign axis_vector_in_len_in_0_1_TSTRB = axis_vector_in_len_in_tstrb[1:0];
  assign axis_vector_in_len_in_0_1_TVALID = axis_vector_in_len_in_tvalid;
  assign axis_vector_in_len_in_tready = axis_vector_in_len_in_0_1_TREADY;
  assign axis_vector_in_tready = axis_vector_in_0_1_TREADY;
  assign axis_vector_out_len_in_0_1_TDATA = axis_vector_out_len_in_tdata[15:0];
  assign axis_vector_out_len_in_0_1_TKEEP = axis_vector_out_len_in_tkeep[1:0];
  assign axis_vector_out_len_in_0_1_TLAST = axis_vector_out_len_in_tlast[0];
  assign axis_vector_out_len_in_0_1_TSTRB = axis_vector_out_len_in_tstrb[1:0];
  assign axis_vector_out_len_in_0_1_TVALID = axis_vector_out_len_in_tvalid;
  assign axis_vector_out_len_in_tready = axis_vector_out_len_in_0_1_TREADY;
  assign axis_vector_out_tdata[31:0] = hls_inst_axis_vector_out_TDATA;
  assign axis_vector_out_tkeep[3:0] = hls_inst_axis_vector_out_TKEEP;
  assign axis_vector_out_tlast[0] = hls_inst_axis_vector_out_TLAST;
  assign axis_vector_out_tstrb[3:0] = hls_inst_axis_vector_out_TSTRB;
  assign axis_vector_out_tvalid = hls_inst_axis_vector_out_TVALID;
  assign axis_weight_in_0_1_TDATA = axis_weight_in_tdata[31:0];
  assign axis_weight_in_0_1_TKEEP = axis_weight_in_tkeep[3:0];
  assign axis_weight_in_0_1_TLAST = axis_weight_in_tlast[0];
  assign axis_weight_in_0_1_TSTRB = axis_weight_in_tstrb[3:0];
  assign axis_weight_in_0_1_TVALID = axis_weight_in_tvalid;
  assign axis_weight_in_tready = axis_weight_in_0_1_TREADY;
  assign hls_inst_axis_vector_out_TREADY = axis_vector_out_tready;
  assign hls_inst_stream_bias_in_TREADY = stream_bias_in_tready;
  assign hls_inst_stream_control_in_TREADY = stream_control_in_tready;
  assign hls_inst_stream_sigmoid_switch_in_TREADY = stream_sigmoid_switch_in_tready;
  assign hls_inst_stream_vector_in_TREADY = stream_vector_in_tready;
  assign hls_inst_stream_vector_in_len_in_TREADY = stream_vector_in_len_in_tready;
  assign hls_inst_stream_vector_out_len_in_TREADY = stream_vector_out_len_in_tready;
  assign hls_inst_stream_weight_in_TREADY = stream_weight_in_tready;
  assign stream_bias_in_tdata[47:0] = hls_inst_stream_bias_in_TDATA;
  assign stream_bias_in_tvalid = hls_inst_stream_bias_in_TVALID;
  assign stream_control_in_tdata[7:0] = hls_inst_stream_control_in_TDATA;
  assign stream_control_in_tvalid = hls_inst_stream_control_in_TVALID;
  assign stream_sigmoid_switch_in_tdata[7:0] = hls_inst_stream_sigmoid_switch_in_TDATA;
  assign stream_sigmoid_switch_in_tvalid = hls_inst_stream_sigmoid_switch_in_TVALID;
  assign stream_vector_in_len_in_tdata[15:0] = hls_inst_stream_vector_in_len_in_TDATA;
  assign stream_vector_in_len_in_tvalid = hls_inst_stream_vector_in_len_in_TVALID;
  assign stream_vector_in_tdata[31:0] = hls_inst_stream_vector_in_TDATA;
  assign stream_vector_in_tvalid = hls_inst_stream_vector_in_TVALID;
  assign stream_vector_out_0_1_TDATA = stream_vector_out_tdata[127:0];
  assign stream_vector_out_0_1_TVALID = stream_vector_out_tvalid;
  assign stream_vector_out_len_in_tdata[15:0] = hls_inst_stream_vector_out_len_in_TDATA;
  assign stream_vector_out_len_in_tvalid = hls_inst_stream_vector_out_len_in_TVALID;
  assign stream_vector_out_tready = stream_vector_out_0_1_TREADY;
  assign stream_weight_in_tdata[31:0] = hls_inst_stream_weight_in_TDATA;
  assign stream_weight_in_tvalid = hls_inst_stream_weight_in_TVALID;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .axis_bias_in_TDATA(axis_bias_in_0_1_TDATA),
        .axis_bias_in_TKEEP(axis_bias_in_0_1_TKEEP),
        .axis_bias_in_TLAST(axis_bias_in_0_1_TLAST),
        .axis_bias_in_TREADY(axis_bias_in_0_1_TREADY),
        .axis_bias_in_TSTRB(axis_bias_in_0_1_TSTRB),
        .axis_bias_in_TVALID(axis_bias_in_0_1_TVALID),
        .axis_control_in_TDATA(axis_control_in_0_1_TDATA),
        .axis_control_in_TKEEP(axis_control_in_0_1_TKEEP),
        .axis_control_in_TLAST(axis_control_in_0_1_TLAST),
        .axis_control_in_TREADY(axis_control_in_0_1_TREADY),
        .axis_control_in_TSTRB(axis_control_in_0_1_TSTRB),
        .axis_control_in_TVALID(axis_control_in_0_1_TVALID),
        .axis_sigmoid_switch_in_TDATA(axis_sigmoid_switch_in_0_1_TDATA),
        .axis_sigmoid_switch_in_TKEEP(axis_sigmoid_switch_in_0_1_TKEEP),
        .axis_sigmoid_switch_in_TLAST(axis_sigmoid_switch_in_0_1_TLAST),
        .axis_sigmoid_switch_in_TREADY(axis_sigmoid_switch_in_0_1_TREADY),
        .axis_sigmoid_switch_in_TSTRB(axis_sigmoid_switch_in_0_1_TSTRB),
        .axis_sigmoid_switch_in_TVALID(axis_sigmoid_switch_in_0_1_TVALID),
        .axis_vector_in_TDATA(axis_vector_in_0_1_TDATA),
        .axis_vector_in_TKEEP(axis_vector_in_0_1_TKEEP),
        .axis_vector_in_TLAST(axis_vector_in_0_1_TLAST),
        .axis_vector_in_TREADY(axis_vector_in_0_1_TREADY),
        .axis_vector_in_TSTRB(axis_vector_in_0_1_TSTRB),
        .axis_vector_in_TVALID(axis_vector_in_0_1_TVALID),
        .axis_vector_in_len_in_TDATA(axis_vector_in_len_in_0_1_TDATA),
        .axis_vector_in_len_in_TKEEP(axis_vector_in_len_in_0_1_TKEEP),
        .axis_vector_in_len_in_TLAST(axis_vector_in_len_in_0_1_TLAST),
        .axis_vector_in_len_in_TREADY(axis_vector_in_len_in_0_1_TREADY),
        .axis_vector_in_len_in_TSTRB(axis_vector_in_len_in_0_1_TSTRB),
        .axis_vector_in_len_in_TVALID(axis_vector_in_len_in_0_1_TVALID),
        .axis_vector_out_TDATA(hls_inst_axis_vector_out_TDATA),
        .axis_vector_out_TKEEP(hls_inst_axis_vector_out_TKEEP),
        .axis_vector_out_TLAST(hls_inst_axis_vector_out_TLAST),
        .axis_vector_out_TREADY(hls_inst_axis_vector_out_TREADY),
        .axis_vector_out_TSTRB(hls_inst_axis_vector_out_TSTRB),
        .axis_vector_out_TVALID(hls_inst_axis_vector_out_TVALID),
        .axis_vector_out_len_in_TDATA(axis_vector_out_len_in_0_1_TDATA),
        .axis_vector_out_len_in_TKEEP(axis_vector_out_len_in_0_1_TKEEP),
        .axis_vector_out_len_in_TLAST(axis_vector_out_len_in_0_1_TLAST),
        .axis_vector_out_len_in_TREADY(axis_vector_out_len_in_0_1_TREADY),
        .axis_vector_out_len_in_TSTRB(axis_vector_out_len_in_0_1_TSTRB),
        .axis_vector_out_len_in_TVALID(axis_vector_out_len_in_0_1_TVALID),
        .axis_weight_in_TDATA(axis_weight_in_0_1_TDATA),
        .axis_weight_in_TKEEP(axis_weight_in_0_1_TKEEP),
        .axis_weight_in_TLAST(axis_weight_in_0_1_TLAST),
        .axis_weight_in_TREADY(axis_weight_in_0_1_TREADY),
        .axis_weight_in_TSTRB(axis_weight_in_0_1_TSTRB),
        .axis_weight_in_TVALID(axis_weight_in_0_1_TVALID),
        .stream_bias_in_TDATA(hls_inst_stream_bias_in_TDATA),
        .stream_bias_in_TREADY(hls_inst_stream_bias_in_TREADY),
        .stream_bias_in_TVALID(hls_inst_stream_bias_in_TVALID),
        .stream_control_in_TDATA(hls_inst_stream_control_in_TDATA),
        .stream_control_in_TREADY(hls_inst_stream_control_in_TREADY),
        .stream_control_in_TVALID(hls_inst_stream_control_in_TVALID),
        .stream_sigmoid_switch_in_TDATA(hls_inst_stream_sigmoid_switch_in_TDATA),
        .stream_sigmoid_switch_in_TREADY(hls_inst_stream_sigmoid_switch_in_TREADY),
        .stream_sigmoid_switch_in_TVALID(hls_inst_stream_sigmoid_switch_in_TVALID),
        .stream_vector_in_TDATA(hls_inst_stream_vector_in_TDATA),
        .stream_vector_in_TREADY(hls_inst_stream_vector_in_TREADY),
        .stream_vector_in_TVALID(hls_inst_stream_vector_in_TVALID),
        .stream_vector_in_len_in_TDATA(hls_inst_stream_vector_in_len_in_TDATA),
        .stream_vector_in_len_in_TREADY(hls_inst_stream_vector_in_len_in_TREADY),
        .stream_vector_in_len_in_TVALID(hls_inst_stream_vector_in_len_in_TVALID),
        .stream_vector_out_TDATA(stream_vector_out_0_1_TDATA),
        .stream_vector_out_TREADY(stream_vector_out_0_1_TREADY),
        .stream_vector_out_TVALID(stream_vector_out_0_1_TVALID),
        .stream_vector_out_len_in_TDATA(hls_inst_stream_vector_out_len_in_TDATA),
        .stream_vector_out_len_in_TREADY(hls_inst_stream_vector_out_len_in_TREADY),
        .stream_vector_out_len_in_TVALID(hls_inst_stream_vector_out_len_in_TVALID),
        .stream_weight_in_TDATA(hls_inst_stream_weight_in_TDATA),
        .stream_weight_in_TREADY(hls_inst_stream_weight_in_TREADY),
        .stream_weight_in_TVALID(hls_inst_stream_weight_in_TVALID));
endmodule
