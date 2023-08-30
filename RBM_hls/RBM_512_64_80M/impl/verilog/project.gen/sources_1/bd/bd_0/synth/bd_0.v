//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Mon Aug 28 05:59:36 2023
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
    stream_bias_in_tdata,
    stream_bias_in_tready,
    stream_bias_in_tvalid,
    stream_control_in_tdata,
    stream_control_in_tready,
    stream_control_in_tvalid,
    stream_sigmoid_switch_tdata,
    stream_sigmoid_switch_tready,
    stream_sigmoid_switch_tvalid,
    stream_vector_in_tdata,
    stream_vector_in_tready,
    stream_vector_in_tvalid,
    stream_vector_out_tdata,
    stream_vector_out_tready,
    stream_vector_out_tvalid,
    stream_weight_in_tdata,
    stream_weight_in_tready,
    stream_weight_in_tvalid,
    vector_in_len_tdata,
    vector_in_len_tready,
    vector_in_len_tvalid,
    vector_out_len_tdata,
    vector_out_len_tready,
    vector_out_len_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF stream_bias_in:stream_control_in:stream_sigmoid_switch:stream_vector_in:stream_vector_out:stream_weight_in:vector_in_len:vector_out_len, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_bias_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_bias_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [47:0]stream_bias_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_bias_in " *) output stream_bias_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_bias_in " *) input stream_bias_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_control_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_control_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]stream_control_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_control_in " *) output stream_control_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_control_in " *) input stream_control_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_sigmoid_switch " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_sigmoid_switch, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]stream_sigmoid_switch_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_sigmoid_switch " *) output stream_sigmoid_switch_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_sigmoid_switch " *) input stream_sigmoid_switch_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_vector_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]stream_vector_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in " *) output stream_vector_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in " *) input stream_vector_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_vector_out, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [127:0]stream_vector_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out " *) input stream_vector_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out " *) output stream_vector_out_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_weight_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_weight_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]stream_weight_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_weight_in " *) output stream_weight_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_weight_in " *) input stream_weight_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vector_in_len " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vector_in_len, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [15:0]vector_in_len_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vector_in_len " *) output vector_in_len_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vector_in_len " *) input vector_in_len_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vector_out_len " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vector_out_len, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 80000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [15:0]vector_out_len_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vector_out_len " *) output vector_out_len_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vector_out_len " *) input vector_out_len_tvalid;

  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [127:0]hls_inst_stream_vector_out_TDATA;
  wire hls_inst_stream_vector_out_TREADY;
  wire hls_inst_stream_vector_out_TVALID;
  wire [47:0]stream_bias_in_0_1_TDATA;
  wire stream_bias_in_0_1_TREADY;
  wire stream_bias_in_0_1_TVALID;
  wire [7:0]stream_control_in_0_1_TDATA;
  wire stream_control_in_0_1_TREADY;
  wire stream_control_in_0_1_TVALID;
  wire [7:0]stream_sigmoid_switch_0_1_TDATA;
  wire stream_sigmoid_switch_0_1_TREADY;
  wire stream_sigmoid_switch_0_1_TVALID;
  wire [31:0]stream_vector_in_0_1_TDATA;
  wire stream_vector_in_0_1_TREADY;
  wire stream_vector_in_0_1_TVALID;
  wire [31:0]stream_weight_in_0_1_TDATA;
  wire stream_weight_in_0_1_TREADY;
  wire stream_weight_in_0_1_TVALID;
  wire [15:0]vector_in_len_0_1_TDATA;
  wire vector_in_len_0_1_TREADY;
  wire vector_in_len_0_1_TVALID;
  wire [15:0]vector_out_len_0_1_TDATA;
  wire vector_out_len_0_1_TREADY;
  wire vector_out_len_0_1_TVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign hls_inst_stream_vector_out_TREADY = stream_vector_out_tready;
  assign stream_bias_in_0_1_TDATA = stream_bias_in_tdata[47:0];
  assign stream_bias_in_0_1_TVALID = stream_bias_in_tvalid;
  assign stream_bias_in_tready = stream_bias_in_0_1_TREADY;
  assign stream_control_in_0_1_TDATA = stream_control_in_tdata[7:0];
  assign stream_control_in_0_1_TVALID = stream_control_in_tvalid;
  assign stream_control_in_tready = stream_control_in_0_1_TREADY;
  assign stream_sigmoid_switch_0_1_TDATA = stream_sigmoid_switch_tdata[7:0];
  assign stream_sigmoid_switch_0_1_TVALID = stream_sigmoid_switch_tvalid;
  assign stream_sigmoid_switch_tready = stream_sigmoid_switch_0_1_TREADY;
  assign stream_vector_in_0_1_TDATA = stream_vector_in_tdata[31:0];
  assign stream_vector_in_0_1_TVALID = stream_vector_in_tvalid;
  assign stream_vector_in_tready = stream_vector_in_0_1_TREADY;
  assign stream_vector_out_tdata[127:0] = hls_inst_stream_vector_out_TDATA;
  assign stream_vector_out_tvalid = hls_inst_stream_vector_out_TVALID;
  assign stream_weight_in_0_1_TDATA = stream_weight_in_tdata[31:0];
  assign stream_weight_in_0_1_TVALID = stream_weight_in_tvalid;
  assign stream_weight_in_tready = stream_weight_in_0_1_TREADY;
  assign vector_in_len_0_1_TDATA = vector_in_len_tdata[15:0];
  assign vector_in_len_0_1_TVALID = vector_in_len_tvalid;
  assign vector_in_len_tready = vector_in_len_0_1_TREADY;
  assign vector_out_len_0_1_TDATA = vector_out_len_tdata[15:0];
  assign vector_out_len_0_1_TVALID = vector_out_len_tvalid;
  assign vector_out_len_tready = vector_out_len_0_1_TREADY;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .stream_bias_in_TDATA(stream_bias_in_0_1_TDATA),
        .stream_bias_in_TREADY(stream_bias_in_0_1_TREADY),
        .stream_bias_in_TVALID(stream_bias_in_0_1_TVALID),
        .stream_control_in_TDATA(stream_control_in_0_1_TDATA),
        .stream_control_in_TREADY(stream_control_in_0_1_TREADY),
        .stream_control_in_TVALID(stream_control_in_0_1_TVALID),
        .stream_sigmoid_switch_TDATA(stream_sigmoid_switch_0_1_TDATA),
        .stream_sigmoid_switch_TREADY(stream_sigmoid_switch_0_1_TREADY),
        .stream_sigmoid_switch_TVALID(stream_sigmoid_switch_0_1_TVALID),
        .stream_vector_in_TDATA(stream_vector_in_0_1_TDATA),
        .stream_vector_in_TREADY(stream_vector_in_0_1_TREADY),
        .stream_vector_in_TVALID(stream_vector_in_0_1_TVALID),
        .stream_vector_out_TDATA(hls_inst_stream_vector_out_TDATA),
        .stream_vector_out_TREADY(hls_inst_stream_vector_out_TREADY),
        .stream_vector_out_TVALID(hls_inst_stream_vector_out_TVALID),
        .stream_weight_in_TDATA(stream_weight_in_0_1_TDATA),
        .stream_weight_in_TREADY(stream_weight_in_0_1_TREADY),
        .stream_weight_in_TVALID(stream_weight_in_0_1_TVALID),
        .vector_in_len_TDATA(vector_in_len_0_1_TDATA),
        .vector_in_len_TREADY(vector_in_len_0_1_TREADY),
        .vector_in_len_TVALID(vector_in_len_0_1_TVALID),
        .vector_out_len_TDATA(vector_out_len_0_1_TDATA),
        .vector_out_len_TREADY(vector_out_len_0_1_TREADY),
        .vector_out_len_TVALID(vector_out_len_0_1_TVALID));
endmodule
