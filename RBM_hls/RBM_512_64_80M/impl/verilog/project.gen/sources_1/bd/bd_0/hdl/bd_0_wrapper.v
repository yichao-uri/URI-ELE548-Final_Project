//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Mon Aug 28 05:59:36 2023
//Host        : ubuntu running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
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
  input ap_clk;
  input ap_rst_n;
  input [47:0]stream_bias_in_tdata;
  output stream_bias_in_tready;
  input stream_bias_in_tvalid;
  input [7:0]stream_control_in_tdata;
  output stream_control_in_tready;
  input stream_control_in_tvalid;
  input [7:0]stream_sigmoid_switch_tdata;
  output stream_sigmoid_switch_tready;
  input stream_sigmoid_switch_tvalid;
  input [31:0]stream_vector_in_tdata;
  output stream_vector_in_tready;
  input stream_vector_in_tvalid;
  output [127:0]stream_vector_out_tdata;
  input stream_vector_out_tready;
  output stream_vector_out_tvalid;
  input [31:0]stream_weight_in_tdata;
  output stream_weight_in_tready;
  input stream_weight_in_tvalid;
  input [15:0]vector_in_len_tdata;
  output vector_in_len_tready;
  input vector_in_len_tvalid;
  input [15:0]vector_out_len_tdata;
  output vector_out_len_tready;
  input vector_out_len_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [47:0]stream_bias_in_tdata;
  wire stream_bias_in_tready;
  wire stream_bias_in_tvalid;
  wire [7:0]stream_control_in_tdata;
  wire stream_control_in_tready;
  wire stream_control_in_tvalid;
  wire [7:0]stream_sigmoid_switch_tdata;
  wire stream_sigmoid_switch_tready;
  wire stream_sigmoid_switch_tvalid;
  wire [31:0]stream_vector_in_tdata;
  wire stream_vector_in_tready;
  wire stream_vector_in_tvalid;
  wire [127:0]stream_vector_out_tdata;
  wire stream_vector_out_tready;
  wire stream_vector_out_tvalid;
  wire [31:0]stream_weight_in_tdata;
  wire stream_weight_in_tready;
  wire stream_weight_in_tvalid;
  wire [15:0]vector_in_len_tdata;
  wire vector_in_len_tready;
  wire vector_in_len_tvalid;
  wire [15:0]vector_out_len_tdata;
  wire vector_out_len_tready;
  wire vector_out_len_tvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .stream_bias_in_tdata(stream_bias_in_tdata),
        .stream_bias_in_tready(stream_bias_in_tready),
        .stream_bias_in_tvalid(stream_bias_in_tvalid),
        .stream_control_in_tdata(stream_control_in_tdata),
        .stream_control_in_tready(stream_control_in_tready),
        .stream_control_in_tvalid(stream_control_in_tvalid),
        .stream_sigmoid_switch_tdata(stream_sigmoid_switch_tdata),
        .stream_sigmoid_switch_tready(stream_sigmoid_switch_tready),
        .stream_sigmoid_switch_tvalid(stream_sigmoid_switch_tvalid),
        .stream_vector_in_tdata(stream_vector_in_tdata),
        .stream_vector_in_tready(stream_vector_in_tready),
        .stream_vector_in_tvalid(stream_vector_in_tvalid),
        .stream_vector_out_tdata(stream_vector_out_tdata),
        .stream_vector_out_tready(stream_vector_out_tready),
        .stream_vector_out_tvalid(stream_vector_out_tvalid),
        .stream_weight_in_tdata(stream_weight_in_tdata),
        .stream_weight_in_tready(stream_weight_in_tready),
        .stream_weight_in_tvalid(stream_weight_in_tvalid),
        .vector_in_len_tdata(vector_in_len_tdata),
        .vector_in_len_tready(vector_in_len_tready),
        .vector_in_len_tvalid(vector_in_len_tvalid),
        .vector_out_len_tdata(vector_out_len_tdata),
        .vector_out_len_tready(vector_out_len_tready),
        .vector_out_len_tvalid(vector_out_len_tvalid));
endmodule
