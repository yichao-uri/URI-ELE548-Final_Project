//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Fri Aug 25 09:38:59 2023
//Host        : ubuntu running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
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
  input ap_clk;
  input ap_rst_n;
  input [31:0]axis_bias_in_tdata;
  input [3:0]axis_bias_in_tkeep;
  input [0:0]axis_bias_in_tlast;
  output axis_bias_in_tready;
  input [3:0]axis_bias_in_tstrb;
  input axis_bias_in_tvalid;
  input [7:0]axis_control_in_tdata;
  input [0:0]axis_control_in_tkeep;
  input [0:0]axis_control_in_tlast;
  output axis_control_in_tready;
  input [0:0]axis_control_in_tstrb;
  input axis_control_in_tvalid;
  input [7:0]axis_sigmoid_switch_in_tdata;
  input [0:0]axis_sigmoid_switch_in_tkeep;
  input [0:0]axis_sigmoid_switch_in_tlast;
  output axis_sigmoid_switch_in_tready;
  input [0:0]axis_sigmoid_switch_in_tstrb;
  input axis_sigmoid_switch_in_tvalid;
  input [15:0]axis_vector_in_len_in_tdata;
  input [1:0]axis_vector_in_len_in_tkeep;
  input [0:0]axis_vector_in_len_in_tlast;
  output axis_vector_in_len_in_tready;
  input [1:0]axis_vector_in_len_in_tstrb;
  input axis_vector_in_len_in_tvalid;
  input [15:0]axis_vector_in_tdata;
  input [1:0]axis_vector_in_tkeep;
  input [0:0]axis_vector_in_tlast;
  output axis_vector_in_tready;
  input [1:0]axis_vector_in_tstrb;
  input axis_vector_in_tvalid;
  input [15:0]axis_vector_out_len_in_tdata;
  input [1:0]axis_vector_out_len_in_tkeep;
  input [0:0]axis_vector_out_len_in_tlast;
  output axis_vector_out_len_in_tready;
  input [1:0]axis_vector_out_len_in_tstrb;
  input axis_vector_out_len_in_tvalid;
  output [31:0]axis_vector_out_tdata;
  output [3:0]axis_vector_out_tkeep;
  output [0:0]axis_vector_out_tlast;
  input axis_vector_out_tready;
  output [3:0]axis_vector_out_tstrb;
  output axis_vector_out_tvalid;
  input [31:0]axis_weight_in_tdata;
  input [3:0]axis_weight_in_tkeep;
  input [0:0]axis_weight_in_tlast;
  output axis_weight_in_tready;
  input [3:0]axis_weight_in_tstrb;
  input axis_weight_in_tvalid;
  output [47:0]stream_bias_in_tdata;
  input stream_bias_in_tready;
  output stream_bias_in_tvalid;
  output [7:0]stream_control_in_tdata;
  input stream_control_in_tready;
  output stream_control_in_tvalid;
  output [7:0]stream_sigmoid_switch_in_tdata;
  input stream_sigmoid_switch_in_tready;
  output stream_sigmoid_switch_in_tvalid;
  output [15:0]stream_vector_in_len_in_tdata;
  input stream_vector_in_len_in_tready;
  output stream_vector_in_len_in_tvalid;
  output [31:0]stream_vector_in_tdata;
  input stream_vector_in_tready;
  output stream_vector_in_tvalid;
  output [15:0]stream_vector_out_len_in_tdata;
  input stream_vector_out_len_in_tready;
  output stream_vector_out_len_in_tvalid;
  input [127:0]stream_vector_out_tdata;
  output stream_vector_out_tready;
  input stream_vector_out_tvalid;
  output [31:0]stream_weight_in_tdata;
  input stream_weight_in_tready;
  output stream_weight_in_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [31:0]axis_bias_in_tdata;
  wire [3:0]axis_bias_in_tkeep;
  wire [0:0]axis_bias_in_tlast;
  wire axis_bias_in_tready;
  wire [3:0]axis_bias_in_tstrb;
  wire axis_bias_in_tvalid;
  wire [7:0]axis_control_in_tdata;
  wire [0:0]axis_control_in_tkeep;
  wire [0:0]axis_control_in_tlast;
  wire axis_control_in_tready;
  wire [0:0]axis_control_in_tstrb;
  wire axis_control_in_tvalid;
  wire [7:0]axis_sigmoid_switch_in_tdata;
  wire [0:0]axis_sigmoid_switch_in_tkeep;
  wire [0:0]axis_sigmoid_switch_in_tlast;
  wire axis_sigmoid_switch_in_tready;
  wire [0:0]axis_sigmoid_switch_in_tstrb;
  wire axis_sigmoid_switch_in_tvalid;
  wire [15:0]axis_vector_in_len_in_tdata;
  wire [1:0]axis_vector_in_len_in_tkeep;
  wire [0:0]axis_vector_in_len_in_tlast;
  wire axis_vector_in_len_in_tready;
  wire [1:0]axis_vector_in_len_in_tstrb;
  wire axis_vector_in_len_in_tvalid;
  wire [15:0]axis_vector_in_tdata;
  wire [1:0]axis_vector_in_tkeep;
  wire [0:0]axis_vector_in_tlast;
  wire axis_vector_in_tready;
  wire [1:0]axis_vector_in_tstrb;
  wire axis_vector_in_tvalid;
  wire [15:0]axis_vector_out_len_in_tdata;
  wire [1:0]axis_vector_out_len_in_tkeep;
  wire [0:0]axis_vector_out_len_in_tlast;
  wire axis_vector_out_len_in_tready;
  wire [1:0]axis_vector_out_len_in_tstrb;
  wire axis_vector_out_len_in_tvalid;
  wire [31:0]axis_vector_out_tdata;
  wire [3:0]axis_vector_out_tkeep;
  wire [0:0]axis_vector_out_tlast;
  wire axis_vector_out_tready;
  wire [3:0]axis_vector_out_tstrb;
  wire axis_vector_out_tvalid;
  wire [31:0]axis_weight_in_tdata;
  wire [3:0]axis_weight_in_tkeep;
  wire [0:0]axis_weight_in_tlast;
  wire axis_weight_in_tready;
  wire [3:0]axis_weight_in_tstrb;
  wire axis_weight_in_tvalid;
  wire [47:0]stream_bias_in_tdata;
  wire stream_bias_in_tready;
  wire stream_bias_in_tvalid;
  wire [7:0]stream_control_in_tdata;
  wire stream_control_in_tready;
  wire stream_control_in_tvalid;
  wire [7:0]stream_sigmoid_switch_in_tdata;
  wire stream_sigmoid_switch_in_tready;
  wire stream_sigmoid_switch_in_tvalid;
  wire [15:0]stream_vector_in_len_in_tdata;
  wire stream_vector_in_len_in_tready;
  wire stream_vector_in_len_in_tvalid;
  wire [31:0]stream_vector_in_tdata;
  wire stream_vector_in_tready;
  wire stream_vector_in_tvalid;
  wire [15:0]stream_vector_out_len_in_tdata;
  wire stream_vector_out_len_in_tready;
  wire stream_vector_out_len_in_tvalid;
  wire [127:0]stream_vector_out_tdata;
  wire stream_vector_out_tready;
  wire stream_vector_out_tvalid;
  wire [31:0]stream_weight_in_tdata;
  wire stream_weight_in_tready;
  wire stream_weight_in_tvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .axis_bias_in_tdata(axis_bias_in_tdata),
        .axis_bias_in_tkeep(axis_bias_in_tkeep),
        .axis_bias_in_tlast(axis_bias_in_tlast),
        .axis_bias_in_tready(axis_bias_in_tready),
        .axis_bias_in_tstrb(axis_bias_in_tstrb),
        .axis_bias_in_tvalid(axis_bias_in_tvalid),
        .axis_control_in_tdata(axis_control_in_tdata),
        .axis_control_in_tkeep(axis_control_in_tkeep),
        .axis_control_in_tlast(axis_control_in_tlast),
        .axis_control_in_tready(axis_control_in_tready),
        .axis_control_in_tstrb(axis_control_in_tstrb),
        .axis_control_in_tvalid(axis_control_in_tvalid),
        .axis_sigmoid_switch_in_tdata(axis_sigmoid_switch_in_tdata),
        .axis_sigmoid_switch_in_tkeep(axis_sigmoid_switch_in_tkeep),
        .axis_sigmoid_switch_in_tlast(axis_sigmoid_switch_in_tlast),
        .axis_sigmoid_switch_in_tready(axis_sigmoid_switch_in_tready),
        .axis_sigmoid_switch_in_tstrb(axis_sigmoid_switch_in_tstrb),
        .axis_sigmoid_switch_in_tvalid(axis_sigmoid_switch_in_tvalid),
        .axis_vector_in_len_in_tdata(axis_vector_in_len_in_tdata),
        .axis_vector_in_len_in_tkeep(axis_vector_in_len_in_tkeep),
        .axis_vector_in_len_in_tlast(axis_vector_in_len_in_tlast),
        .axis_vector_in_len_in_tready(axis_vector_in_len_in_tready),
        .axis_vector_in_len_in_tstrb(axis_vector_in_len_in_tstrb),
        .axis_vector_in_len_in_tvalid(axis_vector_in_len_in_tvalid),
        .axis_vector_in_tdata(axis_vector_in_tdata),
        .axis_vector_in_tkeep(axis_vector_in_tkeep),
        .axis_vector_in_tlast(axis_vector_in_tlast),
        .axis_vector_in_tready(axis_vector_in_tready),
        .axis_vector_in_tstrb(axis_vector_in_tstrb),
        .axis_vector_in_tvalid(axis_vector_in_tvalid),
        .axis_vector_out_len_in_tdata(axis_vector_out_len_in_tdata),
        .axis_vector_out_len_in_tkeep(axis_vector_out_len_in_tkeep),
        .axis_vector_out_len_in_tlast(axis_vector_out_len_in_tlast),
        .axis_vector_out_len_in_tready(axis_vector_out_len_in_tready),
        .axis_vector_out_len_in_tstrb(axis_vector_out_len_in_tstrb),
        .axis_vector_out_len_in_tvalid(axis_vector_out_len_in_tvalid),
        .axis_vector_out_tdata(axis_vector_out_tdata),
        .axis_vector_out_tkeep(axis_vector_out_tkeep),
        .axis_vector_out_tlast(axis_vector_out_tlast),
        .axis_vector_out_tready(axis_vector_out_tready),
        .axis_vector_out_tstrb(axis_vector_out_tstrb),
        .axis_vector_out_tvalid(axis_vector_out_tvalid),
        .axis_weight_in_tdata(axis_weight_in_tdata),
        .axis_weight_in_tkeep(axis_weight_in_tkeep),
        .axis_weight_in_tlast(axis_weight_in_tlast),
        .axis_weight_in_tready(axis_weight_in_tready),
        .axis_weight_in_tstrb(axis_weight_in_tstrb),
        .axis_weight_in_tvalid(axis_weight_in_tvalid),
        .stream_bias_in_tdata(stream_bias_in_tdata),
        .stream_bias_in_tready(stream_bias_in_tready),
        .stream_bias_in_tvalid(stream_bias_in_tvalid),
        .stream_control_in_tdata(stream_control_in_tdata),
        .stream_control_in_tready(stream_control_in_tready),
        .stream_control_in_tvalid(stream_control_in_tvalid),
        .stream_sigmoid_switch_in_tdata(stream_sigmoid_switch_in_tdata),
        .stream_sigmoid_switch_in_tready(stream_sigmoid_switch_in_tready),
        .stream_sigmoid_switch_in_tvalid(stream_sigmoid_switch_in_tvalid),
        .stream_vector_in_len_in_tdata(stream_vector_in_len_in_tdata),
        .stream_vector_in_len_in_tready(stream_vector_in_len_in_tready),
        .stream_vector_in_len_in_tvalid(stream_vector_in_len_in_tvalid),
        .stream_vector_in_tdata(stream_vector_in_tdata),
        .stream_vector_in_tready(stream_vector_in_tready),
        .stream_vector_in_tvalid(stream_vector_in_tvalid),
        .stream_vector_out_len_in_tdata(stream_vector_out_len_in_tdata),
        .stream_vector_out_len_in_tready(stream_vector_out_len_in_tready),
        .stream_vector_out_len_in_tvalid(stream_vector_out_len_in_tvalid),
        .stream_vector_out_tdata(stream_vector_out_tdata),
        .stream_vector_out_tready(stream_vector_out_tready),
        .stream_vector_out_tvalid(stream_vector_out_tvalid),
        .stream_weight_in_tdata(stream_weight_in_tdata),
        .stream_weight_in_tready(stream_weight_in_tready),
        .stream_weight_in_tvalid(stream_weight_in_tvalid));
endmodule
