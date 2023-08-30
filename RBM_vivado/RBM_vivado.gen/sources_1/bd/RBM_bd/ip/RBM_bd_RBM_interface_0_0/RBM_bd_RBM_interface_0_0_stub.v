// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Aug 25 11:53:48 2023
// Host        : ubuntu running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ubuntu20/Xilinx/ELE548/Restricted_Boltzmann_Machine/RBM_vivado/RBM_vivado.gen/sources_1/bd/RBM_bd/ip/RBM_bd_RBM_interface_0_0/RBM_bd_RBM_interface_0_0_stub.v
// Design      : RBM_bd_RBM_interface_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "RBM_interface,Vivado 2022.2" *)
module RBM_bd_RBM_interface_0_0(ap_clk, ap_rst_n, axis_control_in_TVALID, 
  axis_control_in_TREADY, axis_control_in_TDATA, axis_control_in_TLAST, 
  axis_control_in_TKEEP, axis_control_in_TSTRB, axis_sigmoid_switch_in_TVALID, 
  axis_sigmoid_switch_in_TREADY, axis_sigmoid_switch_in_TDATA, 
  axis_sigmoid_switch_in_TLAST, axis_sigmoid_switch_in_TKEEP, 
  axis_sigmoid_switch_in_TSTRB, axis_vector_in_len_in_TVALID, 
  axis_vector_in_len_in_TREADY, axis_vector_in_len_in_TDATA, 
  axis_vector_in_len_in_TLAST, axis_vector_in_len_in_TKEEP, 
  axis_vector_in_len_in_TSTRB, axis_vector_out_len_in_TVALID, 
  axis_vector_out_len_in_TREADY, axis_vector_out_len_in_TDATA, 
  axis_vector_out_len_in_TLAST, axis_vector_out_len_in_TKEEP, 
  axis_vector_out_len_in_TSTRB, axis_vector_in_TVALID, axis_vector_in_TREADY, 
  axis_vector_in_TDATA, axis_vector_in_TLAST, axis_vector_in_TKEEP, axis_vector_in_TSTRB, 
  axis_weight_in_TVALID, axis_weight_in_TREADY, axis_weight_in_TDATA, 
  axis_weight_in_TLAST, axis_weight_in_TKEEP, axis_weight_in_TSTRB, axis_bias_in_TVALID, 
  axis_bias_in_TREADY, axis_bias_in_TDATA, axis_bias_in_TLAST, axis_bias_in_TKEEP, 
  axis_bias_in_TSTRB, axis_vector_out_TVALID, axis_vector_out_TREADY, 
  axis_vector_out_TDATA, axis_vector_out_TLAST, axis_vector_out_TKEEP, 
  axis_vector_out_TSTRB, stream_control_in_TVALID, stream_control_in_TREADY, 
  stream_control_in_TDATA, stream_sigmoid_switch_in_TVALID, 
  stream_sigmoid_switch_in_TREADY, stream_sigmoid_switch_in_TDATA, 
  stream_vector_in_len_in_TVALID, stream_vector_in_len_in_TREADY, 
  stream_vector_in_len_in_TDATA, stream_vector_out_len_in_TVALID, 
  stream_vector_out_len_in_TREADY, stream_vector_out_len_in_TDATA, 
  stream_vector_in_TVALID, stream_vector_in_TREADY, stream_vector_in_TDATA, 
  stream_weight_in_TVALID, stream_weight_in_TREADY, stream_weight_in_TDATA, 
  stream_bias_in_TVALID, stream_bias_in_TREADY, stream_bias_in_TDATA, 
  stream_vector_out_TVALID, stream_vector_out_TREADY, stream_vector_out_TDATA)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,axis_control_in_TVALID,axis_control_in_TREADY,axis_control_in_TDATA[7:0],axis_control_in_TLAST[0:0],axis_control_in_TKEEP[0:0],axis_control_in_TSTRB[0:0],axis_sigmoid_switch_in_TVALID,axis_sigmoid_switch_in_TREADY,axis_sigmoid_switch_in_TDATA[7:0],axis_sigmoid_switch_in_TLAST[0:0],axis_sigmoid_switch_in_TKEEP[0:0],axis_sigmoid_switch_in_TSTRB[0:0],axis_vector_in_len_in_TVALID,axis_vector_in_len_in_TREADY,axis_vector_in_len_in_TDATA[15:0],axis_vector_in_len_in_TLAST[0:0],axis_vector_in_len_in_TKEEP[1:0],axis_vector_in_len_in_TSTRB[1:0],axis_vector_out_len_in_TVALID,axis_vector_out_len_in_TREADY,axis_vector_out_len_in_TDATA[15:0],axis_vector_out_len_in_TLAST[0:0],axis_vector_out_len_in_TKEEP[1:0],axis_vector_out_len_in_TSTRB[1:0],axis_vector_in_TVALID,axis_vector_in_TREADY,axis_vector_in_TDATA[15:0],axis_vector_in_TLAST[0:0],axis_vector_in_TKEEP[1:0],axis_vector_in_TSTRB[1:0],axis_weight_in_TVALID,axis_weight_in_TREADY,axis_weight_in_TDATA[31:0],axis_weight_in_TLAST[0:0],axis_weight_in_TKEEP[3:0],axis_weight_in_TSTRB[3:0],axis_bias_in_TVALID,axis_bias_in_TREADY,axis_bias_in_TDATA[31:0],axis_bias_in_TLAST[0:0],axis_bias_in_TKEEP[3:0],axis_bias_in_TSTRB[3:0],axis_vector_out_TVALID,axis_vector_out_TREADY,axis_vector_out_TDATA[31:0],axis_vector_out_TLAST[0:0],axis_vector_out_TKEEP[3:0],axis_vector_out_TSTRB[3:0],stream_control_in_TVALID,stream_control_in_TREADY,stream_control_in_TDATA[7:0],stream_sigmoid_switch_in_TVALID,stream_sigmoid_switch_in_TREADY,stream_sigmoid_switch_in_TDATA[7:0],stream_vector_in_len_in_TVALID,stream_vector_in_len_in_TREADY,stream_vector_in_len_in_TDATA[15:0],stream_vector_out_len_in_TVALID,stream_vector_out_len_in_TREADY,stream_vector_out_len_in_TDATA[15:0],stream_vector_in_TVALID,stream_vector_in_TREADY,stream_vector_in_TDATA[31:0],stream_weight_in_TVALID,stream_weight_in_TREADY,stream_weight_in_TDATA[31:0],stream_bias_in_TVALID,stream_bias_in_TREADY,stream_bias_in_TDATA[47:0],stream_vector_out_TVALID,stream_vector_out_TREADY,stream_vector_out_TDATA[127:0]" */;
  input ap_clk;
  input ap_rst_n;
  input axis_control_in_TVALID;
  output axis_control_in_TREADY;
  input [7:0]axis_control_in_TDATA;
  input [0:0]axis_control_in_TLAST;
  input [0:0]axis_control_in_TKEEP;
  input [0:0]axis_control_in_TSTRB;
  input axis_sigmoid_switch_in_TVALID;
  output axis_sigmoid_switch_in_TREADY;
  input [7:0]axis_sigmoid_switch_in_TDATA;
  input [0:0]axis_sigmoid_switch_in_TLAST;
  input [0:0]axis_sigmoid_switch_in_TKEEP;
  input [0:0]axis_sigmoid_switch_in_TSTRB;
  input axis_vector_in_len_in_TVALID;
  output axis_vector_in_len_in_TREADY;
  input [15:0]axis_vector_in_len_in_TDATA;
  input [0:0]axis_vector_in_len_in_TLAST;
  input [1:0]axis_vector_in_len_in_TKEEP;
  input [1:0]axis_vector_in_len_in_TSTRB;
  input axis_vector_out_len_in_TVALID;
  output axis_vector_out_len_in_TREADY;
  input [15:0]axis_vector_out_len_in_TDATA;
  input [0:0]axis_vector_out_len_in_TLAST;
  input [1:0]axis_vector_out_len_in_TKEEP;
  input [1:0]axis_vector_out_len_in_TSTRB;
  input axis_vector_in_TVALID;
  output axis_vector_in_TREADY;
  input [15:0]axis_vector_in_TDATA;
  input [0:0]axis_vector_in_TLAST;
  input [1:0]axis_vector_in_TKEEP;
  input [1:0]axis_vector_in_TSTRB;
  input axis_weight_in_TVALID;
  output axis_weight_in_TREADY;
  input [31:0]axis_weight_in_TDATA;
  input [0:0]axis_weight_in_TLAST;
  input [3:0]axis_weight_in_TKEEP;
  input [3:0]axis_weight_in_TSTRB;
  input axis_bias_in_TVALID;
  output axis_bias_in_TREADY;
  input [31:0]axis_bias_in_TDATA;
  input [0:0]axis_bias_in_TLAST;
  input [3:0]axis_bias_in_TKEEP;
  input [3:0]axis_bias_in_TSTRB;
  output axis_vector_out_TVALID;
  input axis_vector_out_TREADY;
  output [31:0]axis_vector_out_TDATA;
  output [0:0]axis_vector_out_TLAST;
  output [3:0]axis_vector_out_TKEEP;
  output [3:0]axis_vector_out_TSTRB;
  output stream_control_in_TVALID;
  input stream_control_in_TREADY;
  output [7:0]stream_control_in_TDATA;
  output stream_sigmoid_switch_in_TVALID;
  input stream_sigmoid_switch_in_TREADY;
  output [7:0]stream_sigmoid_switch_in_TDATA;
  output stream_vector_in_len_in_TVALID;
  input stream_vector_in_len_in_TREADY;
  output [15:0]stream_vector_in_len_in_TDATA;
  output stream_vector_out_len_in_TVALID;
  input stream_vector_out_len_in_TREADY;
  output [15:0]stream_vector_out_len_in_TDATA;
  output stream_vector_in_TVALID;
  input stream_vector_in_TREADY;
  output [31:0]stream_vector_in_TDATA;
  output stream_weight_in_TVALID;
  input stream_weight_in_TREADY;
  output [31:0]stream_weight_in_TDATA;
  output stream_bias_in_TVALID;
  input stream_bias_in_TREADY;
  output [47:0]stream_bias_in_TDATA;
  input stream_vector_out_TVALID;
  output stream_vector_out_TREADY;
  input [127:0]stream_vector_out_TDATA;
endmodule
