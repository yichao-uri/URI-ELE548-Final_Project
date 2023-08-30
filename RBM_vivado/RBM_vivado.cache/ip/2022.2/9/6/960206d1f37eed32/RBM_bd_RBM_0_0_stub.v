// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sun Aug 27 19:08:50 2023
// Host        : ubuntu running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RBM_bd_RBM_0_0_stub.v
// Design      : RBM_bd_RBM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "RBM,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(stream_control_in_TVALID, 
  stream_control_in_TREADY, stream_control_in_TDATA, stream_sigmoid_switch_TVALID, 
  stream_sigmoid_switch_TREADY, stream_sigmoid_switch_TDATA, vector_in_len_TVALID, 
  vector_in_len_TREADY, vector_in_len_TDATA, vector_out_len_TVALID, 
  vector_out_len_TREADY, vector_out_len_TDATA, stream_vector_in_TVALID, 
  stream_vector_in_TREADY, stream_vector_in_TDATA, stream_weight_in_TVALID, 
  stream_weight_in_TREADY, stream_weight_in_TDATA, stream_bias_in_TVALID, 
  stream_bias_in_TREADY, stream_bias_in_TDATA, stream_vector_out_TVALID, 
  stream_vector_out_TREADY, stream_vector_out_TDATA, ap_clk, ap_rst_n)
/* synthesis syn_black_box black_box_pad_pin="stream_control_in_TVALID,stream_control_in_TREADY,stream_control_in_TDATA[7:0],stream_sigmoid_switch_TVALID,stream_sigmoid_switch_TREADY,stream_sigmoid_switch_TDATA[7:0],vector_in_len_TVALID,vector_in_len_TREADY,vector_in_len_TDATA[15:0],vector_out_len_TVALID,vector_out_len_TREADY,vector_out_len_TDATA[15:0],stream_vector_in_TVALID,stream_vector_in_TREADY,stream_vector_in_TDATA[31:0],stream_weight_in_TVALID,stream_weight_in_TREADY,stream_weight_in_TDATA[31:0],stream_bias_in_TVALID,stream_bias_in_TREADY,stream_bias_in_TDATA[47:0],stream_vector_out_TVALID,stream_vector_out_TREADY,stream_vector_out_TDATA[127:0],ap_clk,ap_rst_n" */;
  input stream_control_in_TVALID;
  output stream_control_in_TREADY;
  input [7:0]stream_control_in_TDATA;
  input stream_sigmoid_switch_TVALID;
  output stream_sigmoid_switch_TREADY;
  input [7:0]stream_sigmoid_switch_TDATA;
  input vector_in_len_TVALID;
  output vector_in_len_TREADY;
  input [15:0]vector_in_len_TDATA;
  input vector_out_len_TVALID;
  output vector_out_len_TREADY;
  input [15:0]vector_out_len_TDATA;
  input stream_vector_in_TVALID;
  output stream_vector_in_TREADY;
  input [31:0]stream_vector_in_TDATA;
  input stream_weight_in_TVALID;
  output stream_weight_in_TREADY;
  input [31:0]stream_weight_in_TDATA;
  input stream_bias_in_TVALID;
  output stream_bias_in_TREADY;
  input [47:0]stream_bias_in_TDATA;
  output stream_vector_out_TVALID;
  input stream_vector_out_TREADY;
  output [127:0]stream_vector_out_TDATA;
  input ap_clk;
  input ap_rst_n;
endmodule
