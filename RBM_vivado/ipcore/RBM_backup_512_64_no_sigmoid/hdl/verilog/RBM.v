// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="RBM_RBM,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=12.500000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.999700,HLS_SYN_LAT=42,HLS_SYN_TPT=1,HLS_SYN_MEM=103,HLS_SYN_DSP=0,HLS_SYN_FF=35675,HLS_SYN_LUT=28265,HLS_VERSION=2022_2}" *)

module RBM (
        stream_control_in_TDATA,
        stream_sigmoid_switch_TDATA,
        vector_in_len_TDATA,
        vector_out_len_TDATA,
        stream_vector_in_TDATA,
        stream_weight_in_TDATA,
        stream_bias_in_TDATA,
        stream_vector_out_TDATA,
        ap_clk,
        ap_rst_n,
        stream_control_in_TVALID,
        stream_control_in_TREADY,
        vector_in_len_TVALID,
        vector_in_len_TREADY,
        vector_out_len_TVALID,
        vector_out_len_TREADY,
        stream_vector_in_TVALID,
        stream_vector_in_TREADY,
        stream_weight_in_TVALID,
        stream_weight_in_TREADY,
        stream_bias_in_TVALID,
        stream_bias_in_TREADY,
        stream_sigmoid_switch_TVALID,
        stream_sigmoid_switch_TREADY,
        stream_vector_out_TVALID,
        stream_vector_out_TREADY
);


input  [7:0] stream_control_in_TDATA;
input  [7:0] stream_sigmoid_switch_TDATA;
input  [15:0] vector_in_len_TDATA;
input  [15:0] vector_out_len_TDATA;
input  [31:0] stream_vector_in_TDATA;
input  [31:0] stream_weight_in_TDATA;
input  [47:0] stream_bias_in_TDATA;
output  [127:0] stream_vector_out_TDATA;
input   ap_clk;
input   ap_rst_n;
input   stream_control_in_TVALID;
output   stream_control_in_TREADY;
input   vector_in_len_TVALID;
output   vector_in_len_TREADY;
input   vector_out_len_TVALID;
output   vector_out_len_TREADY;
input   stream_vector_in_TVALID;
output   stream_vector_in_TREADY;
input   stream_weight_in_TVALID;
output   stream_weight_in_TREADY;
input   stream_bias_in_TVALID;
output   stream_bias_in_TREADY;
input   stream_sigmoid_switch_TVALID;
output   stream_sigmoid_switch_TREADY;
output   stream_vector_out_TVALID;
input   stream_vector_out_TREADY;

 reg    ap_rst_n_inv;
wire    control_split_U0_ap_start;
wire    control_split_U0_start_full_n;
wire    control_split_U0_ap_done;
wire    control_split_U0_ap_continue;
wire    control_split_U0_ap_idle;
wire    control_split_U0_ap_ready;
wire   [7:0] control_split_U0_control_ch173_din;
wire    control_split_U0_control_ch173_write;
wire   [7:0] control_split_U0_control_ch274_din;
wire    control_split_U0_control_ch274_write;
wire   [7:0] control_split_U0_control_ch375_din;
wire    control_split_U0_control_ch375_write;
wire    control_split_U0_start_out;
wire    control_split_U0_start_write;
wire    control_split_U0_stream_control_in_TREADY;
wire    rbm_size_split_U0_ap_start;
wire    rbm_size_split_U0_ap_done;
wire    rbm_size_split_U0_ap_continue;
wire    rbm_size_split_U0_ap_idle;
wire    rbm_size_split_U0_ap_ready;
wire   [11:0] rbm_size_split_U0_vector_in_len_ch176_din;
wire    rbm_size_split_U0_vector_in_len_ch176_write;
wire   [11:0] rbm_size_split_U0_vector_in_len_ch277_din;
wire    rbm_size_split_U0_vector_in_len_ch277_write;
wire   [11:0] rbm_size_split_U0_vector_in_len_ch378_din;
wire    rbm_size_split_U0_vector_in_len_ch378_write;
wire   [11:0] rbm_size_split_U0_vector_out_len_ch179_din;
wire    rbm_size_split_U0_vector_out_len_ch179_write;
wire   [11:0] rbm_size_split_U0_vector_out_len_ch280_din;
wire    rbm_size_split_U0_vector_out_len_ch280_write;
wire   [11:0] rbm_size_split_U0_vector_out_len_ch381_din;
wire    rbm_size_split_U0_vector_out_len_ch381_write;
wire    rbm_size_split_U0_start_out;
wire    rbm_size_split_U0_start_write;
wire    rbm_size_split_U0_vector_in_len_TREADY;
wire    rbm_size_split_U0_vector_out_len_TREADY;
wire    double_buffer_U0_ap_start;
wire    double_buffer_U0_ap_done;
wire    double_buffer_U0_ap_continue;
wire    double_buffer_U0_ap_idle;
wire    double_buffer_U0_ap_ready;
wire    double_buffer_U0_vector_in_len_ch176_read;
wire    double_buffer_U0_control_ch173_read;
wire   [20:0] double_buffer_U0_buffer_out_din;
wire    double_buffer_U0_buffer_out_write;
wire    double_buffer_U0_stream_vector_in_TREADY;
wire    data_flow_control_U0_ap_start;
wire    data_flow_control_U0_ap_done;
wire    data_flow_control_U0_ap_continue;
wire    data_flow_control_U0_ap_idle;
wire    data_flow_control_U0_ap_ready;
wire    data_flow_control_U0_control_ch274_read;
wire    data_flow_control_U0_buffer_out_read;
wire    data_flow_control_U0_vector_in_len_ch277_read;
wire    data_flow_control_U0_vector_out_len_ch179_read;
wire   [20:0] data_flow_control_U0_systolic_input_din;
wire    data_flow_control_U0_systolic_input_write;
wire   [639:0] data_flow_control_U0_stream_weight_row_index_din;
wire    data_flow_control_U0_stream_weight_row_index_write;
wire   [63:0] data_flow_control_U0_stream_pe_valid83_din;
wire    data_flow_control_U0_stream_pe_valid83_write;
wire   [9:0] data_flow_control_U0_stream_bias_col_index82_din;
wire    data_flow_control_U0_stream_bias_col_index82_write;
wire    weight_bias_memory_U0_ap_start;
wire    weight_bias_memory_U0_ap_done;
wire    weight_bias_memory_U0_ap_continue;
wire    weight_bias_memory_U0_ap_idle;
wire    weight_bias_memory_U0_ap_ready;
wire    weight_bias_memory_U0_stream_bias_col_index82_read;
wire    weight_bias_memory_U0_stream_weight_row_index_read;
wire    weight_bias_memory_U0_vector_in_len_ch378_read;
wire    weight_bias_memory_U0_vector_out_len_ch280_read;
wire    weight_bias_memory_U0_control_ch375_read;
wire   [47:0] weight_bias_memory_U0_stream_bias_out84_din;
wire    weight_bias_memory_U0_stream_bias_out84_write;
wire   [1599:0] weight_bias_memory_U0_stream_weight_out_din;
wire    weight_bias_memory_U0_stream_weight_out_write;
wire    weight_bias_memory_U0_stream_weight_in_TREADY;
wire    weight_bias_memory_U0_stream_bias_in_TREADY;
wire    systolic_array_U0_ap_start;
wire    systolic_array_U0_ap_done;
wire    systolic_array_U0_ap_continue;
wire    systolic_array_U0_ap_idle;
wire    systolic_array_U0_ap_ready;
wire    systolic_array_U0_systolic_input_read;
wire    systolic_array_U0_stream_bias_out84_read;
wire    systolic_array_U0_stream_pe_valid83_read;
wire    systolic_array_U0_stream_weight_out_read;
wire    systolic_array_U0_vector_out_len_ch381_read;
wire   [48:0] systolic_array_U0_systolic_out_din;
wire    systolic_array_U0_systolic_out_write;
wire    systolic_array_U0_start_out;
wire    systolic_array_U0_start_write;
wire    sigmoid_U0_ap_start;
wire    sigmoid_U0_ap_done;
wire    sigmoid_U0_ap_continue;
wire    sigmoid_U0_ap_idle;
wire    sigmoid_U0_ap_ready;
wire    sigmoid_U0_systolic_out_read;
wire    sigmoid_U0_stream_sigmoid_switch_TREADY;
wire   [127:0] sigmoid_U0_stream_vector_out_TDATA;
wire    sigmoid_U0_stream_vector_out_TVALID;
wire    control_ch1_full_n;
wire   [7:0] control_ch1_dout;
wire   [7:0] control_ch1_num_data_valid;
wire   [7:0] control_ch1_fifo_cap;
wire    control_ch1_empty_n;
wire    control_ch2_full_n;
wire   [7:0] control_ch2_dout;
wire   [7:0] control_ch2_num_data_valid;
wire   [7:0] control_ch2_fifo_cap;
wire    control_ch2_empty_n;
wire    control_ch3_full_n;
wire   [7:0] control_ch3_dout;
wire   [7:0] control_ch3_num_data_valid;
wire   [7:0] control_ch3_fifo_cap;
wire    control_ch3_empty_n;
wire    vector_in_len_ch1_full_n;
wire   [11:0] vector_in_len_ch1_dout;
wire   [7:0] vector_in_len_ch1_num_data_valid;
wire   [7:0] vector_in_len_ch1_fifo_cap;
wire    vector_in_len_ch1_empty_n;
wire    vector_in_len_ch2_full_n;
wire   [11:0] vector_in_len_ch2_dout;
wire   [7:0] vector_in_len_ch2_num_data_valid;
wire   [7:0] vector_in_len_ch2_fifo_cap;
wire    vector_in_len_ch2_empty_n;
wire    vector_in_len_ch3_full_n;
wire   [11:0] vector_in_len_ch3_dout;
wire   [7:0] vector_in_len_ch3_num_data_valid;
wire   [7:0] vector_in_len_ch3_fifo_cap;
wire    vector_in_len_ch3_empty_n;
wire    vector_out_len_ch1_full_n;
wire   [11:0] vector_out_len_ch1_dout;
wire   [7:0] vector_out_len_ch1_num_data_valid;
wire   [7:0] vector_out_len_ch1_fifo_cap;
wire    vector_out_len_ch1_empty_n;
wire    vector_out_len_ch2_full_n;
wire   [11:0] vector_out_len_ch2_dout;
wire   [7:0] vector_out_len_ch2_num_data_valid;
wire   [7:0] vector_out_len_ch2_fifo_cap;
wire    vector_out_len_ch2_empty_n;
wire    vector_out_len_ch3_full_n;
wire   [11:0] vector_out_len_ch3_dout;
wire   [7:0] vector_out_len_ch3_num_data_valid;
wire   [7:0] vector_out_len_ch3_fifo_cap;
wire    vector_out_len_ch3_empty_n;
wire    buffer_out_full_n;
wire   [20:0] buffer_out_dout;
wire   [10:0] buffer_out_num_data_valid;
wire   [10:0] buffer_out_fifo_cap;
wire    buffer_out_empty_n;
wire    systolic_input_full_n;
wire   [20:0] systolic_input_dout;
wire   [7:0] systolic_input_num_data_valid;
wire   [7:0] systolic_input_fifo_cap;
wire    systolic_input_empty_n;
wire    stream_weight_row_index_full_n;
wire   [639:0] stream_weight_row_index_dout;
wire   [7:0] stream_weight_row_index_num_data_valid;
wire   [7:0] stream_weight_row_index_fifo_cap;
wire    stream_weight_row_index_empty_n;
wire    stream_bias_col_index_full_n;
wire   [9:0] stream_bias_col_index_dout;
wire   [7:0] stream_bias_col_index_num_data_valid;
wire   [7:0] stream_bias_col_index_fifo_cap;
wire    stream_bias_col_index_empty_n;
wire    stream_pe_valid_full_n;
wire   [63:0] stream_pe_valid_dout;
wire   [7:0] stream_pe_valid_num_data_valid;
wire   [7:0] stream_pe_valid_fifo_cap;
wire    stream_pe_valid_empty_n;
wire    stream_weight_out_full_n;
wire   [1599:0] stream_weight_out_dout;
wire   [7:0] stream_weight_out_num_data_valid;
wire   [7:0] stream_weight_out_fifo_cap;
wire    stream_weight_out_empty_n;
wire    stream_bias_out_full_n;
wire   [47:0] stream_bias_out_dout;
wire   [7:0] stream_bias_out_num_data_valid;
wire   [7:0] stream_bias_out_fifo_cap;
wire    stream_bias_out_empty_n;
wire    systolic_out_full_n;
wire   [48:0] systolic_out_dout;
wire   [7:0] systolic_out_num_data_valid;
wire   [7:0] systolic_out_fifo_cap;
wire    systolic_out_empty_n;
wire   [0:0] start_for_double_buffer_U0_din;
wire    start_for_double_buffer_U0_full_n;
wire   [0:0] start_for_double_buffer_U0_dout;
wire    start_for_double_buffer_U0_empty_n;
wire   [0:0] start_for_data_flow_control_U0_din;
wire    start_for_data_flow_control_U0_full_n;
wire   [0:0] start_for_data_flow_control_U0_dout;
wire    start_for_data_flow_control_U0_empty_n;
wire   [0:0] start_for_weight_bias_memory_U0_din;
wire    start_for_weight_bias_memory_U0_full_n;
wire   [0:0] start_for_weight_bias_memory_U0_dout;
wire    start_for_weight_bias_memory_U0_empty_n;
wire   [0:0] start_for_systolic_array_U0_din;
wire    start_for_systolic_array_U0_full_n;
wire   [0:0] start_for_systolic_array_U0_dout;
wire    start_for_systolic_array_U0_empty_n;
wire   [0:0] start_for_sigmoid_U0_din;
wire    start_for_sigmoid_U0_full_n;
wire   [0:0] start_for_sigmoid_U0_dout;
wire    start_for_sigmoid_U0_empty_n;

RBM_control_split control_split_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(control_split_U0_ap_start),
    .start_full_n(control_split_U0_start_full_n),
    .ap_done(control_split_U0_ap_done),
    .ap_continue(control_split_U0_ap_continue),
    .ap_idle(control_split_U0_ap_idle),
    .ap_ready(control_split_U0_ap_ready),
    .stream_control_in_TVALID(stream_control_in_TVALID),
    .control_ch173_din(control_split_U0_control_ch173_din),
    .control_ch173_num_data_valid(control_ch1_num_data_valid),
    .control_ch173_fifo_cap(control_ch1_fifo_cap),
    .control_ch173_full_n(control_ch1_full_n),
    .control_ch173_write(control_split_U0_control_ch173_write),
    .control_ch274_din(control_split_U0_control_ch274_din),
    .control_ch274_num_data_valid(control_ch2_num_data_valid),
    .control_ch274_fifo_cap(control_ch2_fifo_cap),
    .control_ch274_full_n(control_ch2_full_n),
    .control_ch274_write(control_split_U0_control_ch274_write),
    .control_ch375_din(control_split_U0_control_ch375_din),
    .control_ch375_num_data_valid(control_ch3_num_data_valid),
    .control_ch375_fifo_cap(control_ch3_fifo_cap),
    .control_ch375_full_n(control_ch3_full_n),
    .control_ch375_write(control_split_U0_control_ch375_write),
    .start_out(control_split_U0_start_out),
    .start_write(control_split_U0_start_write),
    .stream_control_in_TDATA(stream_control_in_TDATA),
    .stream_control_in_TREADY(control_split_U0_stream_control_in_TREADY)
);

RBM_rbm_size_split rbm_size_split_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(rbm_size_split_U0_ap_start),
    .start_full_n(start_for_systolic_array_U0_full_n),
    .ap_done(rbm_size_split_U0_ap_done),
    .ap_continue(rbm_size_split_U0_ap_continue),
    .ap_idle(rbm_size_split_U0_ap_idle),
    .ap_ready(rbm_size_split_U0_ap_ready),
    .vector_in_len_TVALID(vector_in_len_TVALID),
    .vector_out_len_TVALID(vector_out_len_TVALID),
    .vector_in_len_ch176_din(rbm_size_split_U0_vector_in_len_ch176_din),
    .vector_in_len_ch176_num_data_valid(vector_in_len_ch1_num_data_valid),
    .vector_in_len_ch176_fifo_cap(vector_in_len_ch1_fifo_cap),
    .vector_in_len_ch176_full_n(vector_in_len_ch1_full_n),
    .vector_in_len_ch176_write(rbm_size_split_U0_vector_in_len_ch176_write),
    .vector_in_len_ch277_din(rbm_size_split_U0_vector_in_len_ch277_din),
    .vector_in_len_ch277_num_data_valid(vector_in_len_ch2_num_data_valid),
    .vector_in_len_ch277_fifo_cap(vector_in_len_ch2_fifo_cap),
    .vector_in_len_ch277_full_n(vector_in_len_ch2_full_n),
    .vector_in_len_ch277_write(rbm_size_split_U0_vector_in_len_ch277_write),
    .vector_in_len_ch378_din(rbm_size_split_U0_vector_in_len_ch378_din),
    .vector_in_len_ch378_num_data_valid(vector_in_len_ch3_num_data_valid),
    .vector_in_len_ch378_fifo_cap(vector_in_len_ch3_fifo_cap),
    .vector_in_len_ch378_full_n(vector_in_len_ch3_full_n),
    .vector_in_len_ch378_write(rbm_size_split_U0_vector_in_len_ch378_write),
    .vector_out_len_ch179_din(rbm_size_split_U0_vector_out_len_ch179_din),
    .vector_out_len_ch179_num_data_valid(vector_out_len_ch1_num_data_valid),
    .vector_out_len_ch179_fifo_cap(vector_out_len_ch1_fifo_cap),
    .vector_out_len_ch179_full_n(vector_out_len_ch1_full_n),
    .vector_out_len_ch179_write(rbm_size_split_U0_vector_out_len_ch179_write),
    .vector_out_len_ch280_din(rbm_size_split_U0_vector_out_len_ch280_din),
    .vector_out_len_ch280_num_data_valid(vector_out_len_ch2_num_data_valid),
    .vector_out_len_ch280_fifo_cap(vector_out_len_ch2_fifo_cap),
    .vector_out_len_ch280_full_n(vector_out_len_ch2_full_n),
    .vector_out_len_ch280_write(rbm_size_split_U0_vector_out_len_ch280_write),
    .vector_out_len_ch381_din(rbm_size_split_U0_vector_out_len_ch381_din),
    .vector_out_len_ch381_num_data_valid(vector_out_len_ch3_num_data_valid),
    .vector_out_len_ch381_fifo_cap(vector_out_len_ch3_fifo_cap),
    .vector_out_len_ch381_full_n(vector_out_len_ch3_full_n),
    .vector_out_len_ch381_write(rbm_size_split_U0_vector_out_len_ch381_write),
    .start_out(rbm_size_split_U0_start_out),
    .start_write(rbm_size_split_U0_start_write),
    .vector_in_len_TDATA(vector_in_len_TDATA),
    .vector_in_len_TREADY(rbm_size_split_U0_vector_in_len_TREADY),
    .vector_out_len_TDATA(vector_out_len_TDATA),
    .vector_out_len_TREADY(rbm_size_split_U0_vector_out_len_TREADY)
);

RBM_double_buffer double_buffer_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(double_buffer_U0_ap_start),
    .ap_done(double_buffer_U0_ap_done),
    .ap_continue(double_buffer_U0_ap_continue),
    .ap_idle(double_buffer_U0_ap_idle),
    .ap_ready(double_buffer_U0_ap_ready),
    .stream_vector_in_TVALID(stream_vector_in_TVALID),
    .vector_in_len_ch176_dout(vector_in_len_ch1_dout),
    .vector_in_len_ch176_num_data_valid(vector_in_len_ch1_num_data_valid),
    .vector_in_len_ch176_fifo_cap(vector_in_len_ch1_fifo_cap),
    .vector_in_len_ch176_empty_n(vector_in_len_ch1_empty_n),
    .vector_in_len_ch176_read(double_buffer_U0_vector_in_len_ch176_read),
    .control_ch173_dout(control_ch1_dout),
    .control_ch173_num_data_valid(control_ch1_num_data_valid),
    .control_ch173_fifo_cap(control_ch1_fifo_cap),
    .control_ch173_empty_n(control_ch1_empty_n),
    .control_ch173_read(double_buffer_U0_control_ch173_read),
    .buffer_out_din(double_buffer_U0_buffer_out_din),
    .buffer_out_num_data_valid(buffer_out_num_data_valid),
    .buffer_out_fifo_cap(buffer_out_fifo_cap),
    .buffer_out_full_n(buffer_out_full_n),
    .buffer_out_write(double_buffer_U0_buffer_out_write),
    .stream_vector_in_TDATA(stream_vector_in_TDATA),
    .stream_vector_in_TREADY(double_buffer_U0_stream_vector_in_TREADY)
);

RBM_data_flow_control data_flow_control_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(data_flow_control_U0_ap_start),
    .ap_done(data_flow_control_U0_ap_done),
    .ap_continue(data_flow_control_U0_ap_continue),
    .ap_idle(data_flow_control_U0_ap_idle),
    .ap_ready(data_flow_control_U0_ap_ready),
    .control_ch274_dout(control_ch2_dout),
    .control_ch274_num_data_valid(control_ch2_num_data_valid),
    .control_ch274_fifo_cap(control_ch2_fifo_cap),
    .control_ch274_empty_n(control_ch2_empty_n),
    .control_ch274_read(data_flow_control_U0_control_ch274_read),
    .buffer_out_dout(buffer_out_dout),
    .buffer_out_num_data_valid(buffer_out_num_data_valid),
    .buffer_out_fifo_cap(buffer_out_fifo_cap),
    .buffer_out_empty_n(buffer_out_empty_n),
    .buffer_out_read(data_flow_control_U0_buffer_out_read),
    .vector_in_len_ch277_dout(vector_in_len_ch2_dout),
    .vector_in_len_ch277_num_data_valid(vector_in_len_ch2_num_data_valid),
    .vector_in_len_ch277_fifo_cap(vector_in_len_ch2_fifo_cap),
    .vector_in_len_ch277_empty_n(vector_in_len_ch2_empty_n),
    .vector_in_len_ch277_read(data_flow_control_U0_vector_in_len_ch277_read),
    .vector_out_len_ch179_dout(vector_out_len_ch1_dout),
    .vector_out_len_ch179_num_data_valid(vector_out_len_ch1_num_data_valid),
    .vector_out_len_ch179_fifo_cap(vector_out_len_ch1_fifo_cap),
    .vector_out_len_ch179_empty_n(vector_out_len_ch1_empty_n),
    .vector_out_len_ch179_read(data_flow_control_U0_vector_out_len_ch179_read),
    .systolic_input_din(data_flow_control_U0_systolic_input_din),
    .systolic_input_num_data_valid(systolic_input_num_data_valid),
    .systolic_input_fifo_cap(systolic_input_fifo_cap),
    .systolic_input_full_n(systolic_input_full_n),
    .systolic_input_write(data_flow_control_U0_systolic_input_write),
    .stream_weight_row_index_din(data_flow_control_U0_stream_weight_row_index_din),
    .stream_weight_row_index_num_data_valid(stream_weight_row_index_num_data_valid),
    .stream_weight_row_index_fifo_cap(stream_weight_row_index_fifo_cap),
    .stream_weight_row_index_full_n(stream_weight_row_index_full_n),
    .stream_weight_row_index_write(data_flow_control_U0_stream_weight_row_index_write),
    .stream_pe_valid83_din(data_flow_control_U0_stream_pe_valid83_din),
    .stream_pe_valid83_num_data_valid(stream_pe_valid_num_data_valid),
    .stream_pe_valid83_fifo_cap(stream_pe_valid_fifo_cap),
    .stream_pe_valid83_full_n(stream_pe_valid_full_n),
    .stream_pe_valid83_write(data_flow_control_U0_stream_pe_valid83_write),
    .stream_bias_col_index82_din(data_flow_control_U0_stream_bias_col_index82_din),
    .stream_bias_col_index82_num_data_valid(stream_bias_col_index_num_data_valid),
    .stream_bias_col_index82_fifo_cap(stream_bias_col_index_fifo_cap),
    .stream_bias_col_index82_full_n(stream_bias_col_index_full_n),
    .stream_bias_col_index82_write(data_flow_control_U0_stream_bias_col_index82_write)
);

RBM_weight_bias_memory weight_bias_memory_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(weight_bias_memory_U0_ap_start),
    .ap_done(weight_bias_memory_U0_ap_done),
    .ap_continue(weight_bias_memory_U0_ap_continue),
    .ap_idle(weight_bias_memory_U0_ap_idle),
    .ap_ready(weight_bias_memory_U0_ap_ready),
    .stream_bias_col_index82_dout(stream_bias_col_index_dout),
    .stream_bias_col_index82_num_data_valid(stream_bias_col_index_num_data_valid),
    .stream_bias_col_index82_fifo_cap(stream_bias_col_index_fifo_cap),
    .stream_bias_col_index82_empty_n(stream_bias_col_index_empty_n),
    .stream_bias_col_index82_read(weight_bias_memory_U0_stream_bias_col_index82_read),
    .stream_weight_row_index_dout(stream_weight_row_index_dout),
    .stream_weight_row_index_num_data_valid(stream_weight_row_index_num_data_valid),
    .stream_weight_row_index_fifo_cap(stream_weight_row_index_fifo_cap),
    .stream_weight_row_index_empty_n(stream_weight_row_index_empty_n),
    .stream_weight_row_index_read(weight_bias_memory_U0_stream_weight_row_index_read),
    .stream_bias_in_TVALID(stream_bias_in_TVALID),
    .stream_weight_in_TVALID(stream_weight_in_TVALID),
    .vector_in_len_ch378_dout(vector_in_len_ch3_dout),
    .vector_in_len_ch378_num_data_valid(vector_in_len_ch3_num_data_valid),
    .vector_in_len_ch378_fifo_cap(vector_in_len_ch3_fifo_cap),
    .vector_in_len_ch378_empty_n(vector_in_len_ch3_empty_n),
    .vector_in_len_ch378_read(weight_bias_memory_U0_vector_in_len_ch378_read),
    .vector_out_len_ch280_dout(vector_out_len_ch2_dout),
    .vector_out_len_ch280_num_data_valid(vector_out_len_ch2_num_data_valid),
    .vector_out_len_ch280_fifo_cap(vector_out_len_ch2_fifo_cap),
    .vector_out_len_ch280_empty_n(vector_out_len_ch2_empty_n),
    .vector_out_len_ch280_read(weight_bias_memory_U0_vector_out_len_ch280_read),
    .control_ch375_dout(control_ch3_dout),
    .control_ch375_num_data_valid(control_ch3_num_data_valid),
    .control_ch375_fifo_cap(control_ch3_fifo_cap),
    .control_ch375_empty_n(control_ch3_empty_n),
    .control_ch375_read(weight_bias_memory_U0_control_ch375_read),
    .stream_bias_out84_din(weight_bias_memory_U0_stream_bias_out84_din),
    .stream_bias_out84_num_data_valid(stream_bias_out_num_data_valid),
    .stream_bias_out84_fifo_cap(stream_bias_out_fifo_cap),
    .stream_bias_out84_full_n(stream_bias_out_full_n),
    .stream_bias_out84_write(weight_bias_memory_U0_stream_bias_out84_write),
    .stream_weight_out_din(weight_bias_memory_U0_stream_weight_out_din),
    .stream_weight_out_num_data_valid(stream_weight_out_num_data_valid),
    .stream_weight_out_fifo_cap(stream_weight_out_fifo_cap),
    .stream_weight_out_full_n(stream_weight_out_full_n),
    .stream_weight_out_write(weight_bias_memory_U0_stream_weight_out_write),
    .stream_weight_in_TDATA(stream_weight_in_TDATA),
    .stream_weight_in_TREADY(weight_bias_memory_U0_stream_weight_in_TREADY),
    .stream_bias_in_TDATA(stream_bias_in_TDATA),
    .stream_bias_in_TREADY(weight_bias_memory_U0_stream_bias_in_TREADY)
);

RBM_systolic_array systolic_array_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(systolic_array_U0_ap_start),
    .start_full_n(start_for_sigmoid_U0_full_n),
    .ap_done(systolic_array_U0_ap_done),
    .ap_continue(systolic_array_U0_ap_continue),
    .ap_idle(systolic_array_U0_ap_idle),
    .ap_ready(systolic_array_U0_ap_ready),
    .systolic_input_dout(systolic_input_dout),
    .systolic_input_num_data_valid(systolic_input_num_data_valid),
    .systolic_input_fifo_cap(systolic_input_fifo_cap),
    .systolic_input_empty_n(systolic_input_empty_n),
    .systolic_input_read(systolic_array_U0_systolic_input_read),
    .stream_bias_out84_dout(stream_bias_out_dout),
    .stream_bias_out84_num_data_valid(stream_bias_out_num_data_valid),
    .stream_bias_out84_fifo_cap(stream_bias_out_fifo_cap),
    .stream_bias_out84_empty_n(stream_bias_out_empty_n),
    .stream_bias_out84_read(systolic_array_U0_stream_bias_out84_read),
    .stream_pe_valid83_dout(stream_pe_valid_dout),
    .stream_pe_valid83_num_data_valid(stream_pe_valid_num_data_valid),
    .stream_pe_valid83_fifo_cap(stream_pe_valid_fifo_cap),
    .stream_pe_valid83_empty_n(stream_pe_valid_empty_n),
    .stream_pe_valid83_read(systolic_array_U0_stream_pe_valid83_read),
    .stream_weight_out_dout(stream_weight_out_dout),
    .stream_weight_out_num_data_valid(stream_weight_out_num_data_valid),
    .stream_weight_out_fifo_cap(stream_weight_out_fifo_cap),
    .stream_weight_out_empty_n(stream_weight_out_empty_n),
    .stream_weight_out_read(systolic_array_U0_stream_weight_out_read),
    .vector_out_len_ch381_dout(vector_out_len_ch3_dout),
    .vector_out_len_ch381_num_data_valid(vector_out_len_ch3_num_data_valid),
    .vector_out_len_ch381_fifo_cap(vector_out_len_ch3_fifo_cap),
    .vector_out_len_ch381_empty_n(vector_out_len_ch3_empty_n),
    .vector_out_len_ch381_read(systolic_array_U0_vector_out_len_ch381_read),
    .systolic_out_din(systolic_array_U0_systolic_out_din),
    .systolic_out_num_data_valid(systolic_out_num_data_valid),
    .systolic_out_fifo_cap(systolic_out_fifo_cap),
    .systolic_out_full_n(systolic_out_full_n),
    .systolic_out_write(systolic_array_U0_systolic_out_write),
    .start_out(systolic_array_U0_start_out),
    .start_write(systolic_array_U0_start_write)
);

RBM_sigmoid sigmoid_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(sigmoid_U0_ap_start),
    .ap_done(sigmoid_U0_ap_done),
    .ap_continue(sigmoid_U0_ap_continue),
    .ap_idle(sigmoid_U0_ap_idle),
    .ap_ready(sigmoid_U0_ap_ready),
    .systolic_out_dout(systolic_out_dout),
    .systolic_out_num_data_valid(systolic_out_num_data_valid),
    .systolic_out_fifo_cap(systolic_out_fifo_cap),
    .systolic_out_empty_n(systolic_out_empty_n),
    .systolic_out_read(sigmoid_U0_systolic_out_read),
    .stream_sigmoid_switch_TVALID(stream_sigmoid_switch_TVALID),
    .stream_vector_out_TREADY(stream_vector_out_TREADY),
    .stream_sigmoid_switch_TDATA(stream_sigmoid_switch_TDATA),
    .stream_sigmoid_switch_TREADY(sigmoid_U0_stream_sigmoid_switch_TREADY),
    .stream_vector_out_TDATA(sigmoid_U0_stream_vector_out_TDATA),
    .stream_vector_out_TVALID(sigmoid_U0_stream_vector_out_TVALID)
);

RBM_fifo_w8_d128_S control_ch1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(control_split_U0_control_ch173_din),
    .if_full_n(control_ch1_full_n),
    .if_write(control_split_U0_control_ch173_write),
    .if_dout(control_ch1_dout),
    .if_num_data_valid(control_ch1_num_data_valid),
    .if_fifo_cap(control_ch1_fifo_cap),
    .if_empty_n(control_ch1_empty_n),
    .if_read(double_buffer_U0_control_ch173_read)
);

RBM_fifo_w8_d128_S control_ch2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(control_split_U0_control_ch274_din),
    .if_full_n(control_ch2_full_n),
    .if_write(control_split_U0_control_ch274_write),
    .if_dout(control_ch2_dout),
    .if_num_data_valid(control_ch2_num_data_valid),
    .if_fifo_cap(control_ch2_fifo_cap),
    .if_empty_n(control_ch2_empty_n),
    .if_read(data_flow_control_U0_control_ch274_read)
);

RBM_fifo_w8_d128_S control_ch3_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(control_split_U0_control_ch375_din),
    .if_full_n(control_ch3_full_n),
    .if_write(control_split_U0_control_ch375_write),
    .if_dout(control_ch3_dout),
    .if_num_data_valid(control_ch3_num_data_valid),
    .if_fifo_cap(control_ch3_fifo_cap),
    .if_empty_n(control_ch3_empty_n),
    .if_read(weight_bias_memory_U0_control_ch375_read)
);

RBM_fifo_w12_d128_A vector_in_len_ch1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(rbm_size_split_U0_vector_in_len_ch176_din),
    .if_full_n(vector_in_len_ch1_full_n),
    .if_write(rbm_size_split_U0_vector_in_len_ch176_write),
    .if_dout(vector_in_len_ch1_dout),
    .if_num_data_valid(vector_in_len_ch1_num_data_valid),
    .if_fifo_cap(vector_in_len_ch1_fifo_cap),
    .if_empty_n(vector_in_len_ch1_empty_n),
    .if_read(double_buffer_U0_vector_in_len_ch176_read)
);

RBM_fifo_w12_d128_A vector_in_len_ch2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(rbm_size_split_U0_vector_in_len_ch277_din),
    .if_full_n(vector_in_len_ch2_full_n),
    .if_write(rbm_size_split_U0_vector_in_len_ch277_write),
    .if_dout(vector_in_len_ch2_dout),
    .if_num_data_valid(vector_in_len_ch2_num_data_valid),
    .if_fifo_cap(vector_in_len_ch2_fifo_cap),
    .if_empty_n(vector_in_len_ch2_empty_n),
    .if_read(data_flow_control_U0_vector_in_len_ch277_read)
);

RBM_fifo_w12_d128_A vector_in_len_ch3_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(rbm_size_split_U0_vector_in_len_ch378_din),
    .if_full_n(vector_in_len_ch3_full_n),
    .if_write(rbm_size_split_U0_vector_in_len_ch378_write),
    .if_dout(vector_in_len_ch3_dout),
    .if_num_data_valid(vector_in_len_ch3_num_data_valid),
    .if_fifo_cap(vector_in_len_ch3_fifo_cap),
    .if_empty_n(vector_in_len_ch3_empty_n),
    .if_read(weight_bias_memory_U0_vector_in_len_ch378_read)
);

RBM_fifo_w12_d128_A vector_out_len_ch1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(rbm_size_split_U0_vector_out_len_ch179_din),
    .if_full_n(vector_out_len_ch1_full_n),
    .if_write(rbm_size_split_U0_vector_out_len_ch179_write),
    .if_dout(vector_out_len_ch1_dout),
    .if_num_data_valid(vector_out_len_ch1_num_data_valid),
    .if_fifo_cap(vector_out_len_ch1_fifo_cap),
    .if_empty_n(vector_out_len_ch1_empty_n),
    .if_read(data_flow_control_U0_vector_out_len_ch179_read)
);

RBM_fifo_w12_d128_A vector_out_len_ch2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(rbm_size_split_U0_vector_out_len_ch280_din),
    .if_full_n(vector_out_len_ch2_full_n),
    .if_write(rbm_size_split_U0_vector_out_len_ch280_write),
    .if_dout(vector_out_len_ch2_dout),
    .if_num_data_valid(vector_out_len_ch2_num_data_valid),
    .if_fifo_cap(vector_out_len_ch2_fifo_cap),
    .if_empty_n(vector_out_len_ch2_empty_n),
    .if_read(weight_bias_memory_U0_vector_out_len_ch280_read)
);

RBM_fifo_w12_d128_A vector_out_len_ch3_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(rbm_size_split_U0_vector_out_len_ch381_din),
    .if_full_n(vector_out_len_ch3_full_n),
    .if_write(rbm_size_split_U0_vector_out_len_ch381_write),
    .if_dout(vector_out_len_ch3_dout),
    .if_num_data_valid(vector_out_len_ch3_num_data_valid),
    .if_fifo_cap(vector_out_len_ch3_fifo_cap),
    .if_empty_n(vector_out_len_ch3_empty_n),
    .if_read(systolic_array_U0_vector_out_len_ch381_read)
);

RBM_fifo_w21_d1024_A_x buffer_out_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(double_buffer_U0_buffer_out_din),
    .if_full_n(buffer_out_full_n),
    .if_write(double_buffer_U0_buffer_out_write),
    .if_dout(buffer_out_dout),
    .if_num_data_valid(buffer_out_num_data_valid),
    .if_fifo_cap(buffer_out_fifo_cap),
    .if_empty_n(buffer_out_empty_n),
    .if_read(data_flow_control_U0_buffer_out_read)
);

RBM_fifo_w21_d128_A systolic_input_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(data_flow_control_U0_systolic_input_din),
    .if_full_n(systolic_input_full_n),
    .if_write(data_flow_control_U0_systolic_input_write),
    .if_dout(systolic_input_dout),
    .if_num_data_valid(systolic_input_num_data_valid),
    .if_fifo_cap(systolic_input_fifo_cap),
    .if_empty_n(systolic_input_empty_n),
    .if_read(systolic_array_U0_systolic_input_read)
);

RBM_fifo_w640_d128_D stream_weight_row_index_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(data_flow_control_U0_stream_weight_row_index_din),
    .if_full_n(stream_weight_row_index_full_n),
    .if_write(data_flow_control_U0_stream_weight_row_index_write),
    .if_dout(stream_weight_row_index_dout),
    .if_num_data_valid(stream_weight_row_index_num_data_valid),
    .if_fifo_cap(stream_weight_row_index_fifo_cap),
    .if_empty_n(stream_weight_row_index_empty_n),
    .if_read(weight_bias_memory_U0_stream_weight_row_index_read)
);

RBM_fifo_w10_d128_A stream_bias_col_index_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(data_flow_control_U0_stream_bias_col_index82_din),
    .if_full_n(stream_bias_col_index_full_n),
    .if_write(data_flow_control_U0_stream_bias_col_index82_write),
    .if_dout(stream_bias_col_index_dout),
    .if_num_data_valid(stream_bias_col_index_num_data_valid),
    .if_fifo_cap(stream_bias_col_index_fifo_cap),
    .if_empty_n(stream_bias_col_index_empty_n),
    .if_read(weight_bias_memory_U0_stream_bias_col_index82_read)
);

RBM_fifo_w64_d128_A stream_pe_valid_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(data_flow_control_U0_stream_pe_valid83_din),
    .if_full_n(stream_pe_valid_full_n),
    .if_write(data_flow_control_U0_stream_pe_valid83_write),
    .if_dout(stream_pe_valid_dout),
    .if_num_data_valid(stream_pe_valid_num_data_valid),
    .if_fifo_cap(stream_pe_valid_fifo_cap),
    .if_empty_n(stream_pe_valid_empty_n),
    .if_read(systolic_array_U0_stream_pe_valid83_read)
);

RBM_fifo_w1600_d128_D stream_weight_out_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(weight_bias_memory_U0_stream_weight_out_din),
    .if_full_n(stream_weight_out_full_n),
    .if_write(weight_bias_memory_U0_stream_weight_out_write),
    .if_dout(stream_weight_out_dout),
    .if_num_data_valid(stream_weight_out_num_data_valid),
    .if_fifo_cap(stream_weight_out_fifo_cap),
    .if_empty_n(stream_weight_out_empty_n),
    .if_read(systolic_array_U0_stream_weight_out_read)
);

RBM_fifo_w48_d128_A stream_bias_out_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(weight_bias_memory_U0_stream_bias_out84_din),
    .if_full_n(stream_bias_out_full_n),
    .if_write(weight_bias_memory_U0_stream_bias_out84_write),
    .if_dout(stream_bias_out_dout),
    .if_num_data_valid(stream_bias_out_num_data_valid),
    .if_fifo_cap(stream_bias_out_fifo_cap),
    .if_empty_n(stream_bias_out_empty_n),
    .if_read(systolic_array_U0_stream_bias_out84_read)
);

RBM_fifo_w49_d128_A systolic_out_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(systolic_array_U0_systolic_out_din),
    .if_full_n(systolic_out_full_n),
    .if_write(systolic_array_U0_systolic_out_write),
    .if_dout(systolic_out_dout),
    .if_num_data_valid(systolic_out_num_data_valid),
    .if_fifo_cap(systolic_out_fifo_cap),
    .if_empty_n(systolic_out_empty_n),
    .if_read(sigmoid_U0_systolic_out_read)
);

RBM_start_for_double_buffer_U0 start_for_double_buffer_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_double_buffer_U0_din),
    .if_full_n(start_for_double_buffer_U0_full_n),
    .if_write(control_split_U0_start_write),
    .if_dout(start_for_double_buffer_U0_dout),
    .if_empty_n(start_for_double_buffer_U0_empty_n),
    .if_read(double_buffer_U0_ap_ready)
);

RBM_start_for_data_flow_control_U0 start_for_data_flow_control_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_data_flow_control_U0_din),
    .if_full_n(start_for_data_flow_control_U0_full_n),
    .if_write(control_split_U0_start_write),
    .if_dout(start_for_data_flow_control_U0_dout),
    .if_empty_n(start_for_data_flow_control_U0_empty_n),
    .if_read(data_flow_control_U0_ap_ready)
);

RBM_start_for_weight_bias_memory_U0 start_for_weight_bias_memory_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_weight_bias_memory_U0_din),
    .if_full_n(start_for_weight_bias_memory_U0_full_n),
    .if_write(control_split_U0_start_write),
    .if_dout(start_for_weight_bias_memory_U0_dout),
    .if_empty_n(start_for_weight_bias_memory_U0_empty_n),
    .if_read(weight_bias_memory_U0_ap_ready)
);

RBM_start_for_systolic_array_U0 start_for_systolic_array_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_systolic_array_U0_din),
    .if_full_n(start_for_systolic_array_U0_full_n),
    .if_write(rbm_size_split_U0_start_write),
    .if_dout(start_for_systolic_array_U0_dout),
    .if_empty_n(start_for_systolic_array_U0_empty_n),
    .if_read(systolic_array_U0_ap_ready)
);

RBM_start_for_sigmoid_U0 start_for_sigmoid_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_sigmoid_U0_din),
    .if_full_n(start_for_sigmoid_U0_full_n),
    .if_write(systolic_array_U0_start_write),
    .if_dout(start_for_sigmoid_U0_dout),
    .if_empty_n(start_for_sigmoid_U0_empty_n),
    .if_read(sigmoid_U0_ap_ready)
);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign control_split_U0_ap_continue = 1'b1;

assign control_split_U0_ap_start = 1'b1;

assign control_split_U0_start_full_n = (start_for_weight_bias_memory_U0_full_n & start_for_double_buffer_U0_full_n & start_for_data_flow_control_U0_full_n);

assign data_flow_control_U0_ap_continue = 1'b1;

assign data_flow_control_U0_ap_start = start_for_data_flow_control_U0_empty_n;

assign double_buffer_U0_ap_continue = 1'b1;

assign double_buffer_U0_ap_start = start_for_double_buffer_U0_empty_n;

assign rbm_size_split_U0_ap_continue = 1'b1;

assign rbm_size_split_U0_ap_start = 1'b1;

assign sigmoid_U0_ap_continue = 1'b1;

assign sigmoid_U0_ap_start = start_for_sigmoid_U0_empty_n;

assign start_for_data_flow_control_U0_din = 1'b1;

assign start_for_double_buffer_U0_din = 1'b1;

assign start_for_sigmoid_U0_din = 1'b1;

assign start_for_systolic_array_U0_din = 1'b1;

assign start_for_weight_bias_memory_U0_din = 1'b1;

assign stream_bias_in_TREADY = weight_bias_memory_U0_stream_bias_in_TREADY;

assign stream_control_in_TREADY = control_split_U0_stream_control_in_TREADY;

assign stream_sigmoid_switch_TREADY = sigmoid_U0_stream_sigmoid_switch_TREADY;

assign stream_vector_in_TREADY = double_buffer_U0_stream_vector_in_TREADY;

assign stream_vector_out_TDATA = sigmoid_U0_stream_vector_out_TDATA;

assign stream_vector_out_TVALID = sigmoid_U0_stream_vector_out_TVALID;

assign stream_weight_in_TREADY = weight_bias_memory_U0_stream_weight_in_TREADY;

assign systolic_array_U0_ap_continue = 1'b1;

assign systolic_array_U0_ap_start = start_for_systolic_array_U0_empty_n;

assign vector_in_len_TREADY = rbm_size_split_U0_vector_in_len_TREADY;

assign vector_out_len_TREADY = rbm_size_split_U0_vector_out_len_TREADY;

assign weight_bias_memory_U0_ap_continue = 1'b1;

assign weight_bias_memory_U0_ap_start = start_for_weight_bias_memory_U0_empty_n;


reg find_df_deadlock = 0;
// synthesis translate_off
`include "RBM_hls_deadlock_detector.vh"
// synthesis translate_on

endmodule //RBM

