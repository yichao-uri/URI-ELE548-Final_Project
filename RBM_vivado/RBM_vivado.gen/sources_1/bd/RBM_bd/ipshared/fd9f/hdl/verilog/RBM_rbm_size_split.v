// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module RBM_rbm_size_split (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        vector_in_len_TVALID,
        vector_out_len_TVALID,
        vector_in_len_ch176_din,
        vector_in_len_ch176_num_data_valid,
        vector_in_len_ch176_fifo_cap,
        vector_in_len_ch176_full_n,
        vector_in_len_ch176_write,
        vector_in_len_ch277_din,
        vector_in_len_ch277_num_data_valid,
        vector_in_len_ch277_fifo_cap,
        vector_in_len_ch277_full_n,
        vector_in_len_ch277_write,
        vector_in_len_ch378_din,
        vector_in_len_ch378_num_data_valid,
        vector_in_len_ch378_fifo_cap,
        vector_in_len_ch378_full_n,
        vector_in_len_ch378_write,
        vector_out_len_ch179_din,
        vector_out_len_ch179_num_data_valid,
        vector_out_len_ch179_fifo_cap,
        vector_out_len_ch179_full_n,
        vector_out_len_ch179_write,
        vector_out_len_ch280_din,
        vector_out_len_ch280_num_data_valid,
        vector_out_len_ch280_fifo_cap,
        vector_out_len_ch280_full_n,
        vector_out_len_ch280_write,
        vector_out_len_ch381_din,
        vector_out_len_ch381_num_data_valid,
        vector_out_len_ch381_fifo_cap,
        vector_out_len_ch381_full_n,
        vector_out_len_ch381_write,
        start_out,
        start_write,
        vector_in_len_TDATA,
        vector_in_len_TREADY,
        vector_out_len_TDATA,
        vector_out_len_TREADY
);

parameter    ap_ST_iter0_fsm_state1 = 1'd1;
parameter    ap_ST_iter1_fsm_state2 = 2'd2;
parameter    ap_ST_iter1_fsm_state0 = 2'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   vector_in_len_TVALID;
input   vector_out_len_TVALID;
output  [11:0] vector_in_len_ch176_din;
input  [7:0] vector_in_len_ch176_num_data_valid;
input  [7:0] vector_in_len_ch176_fifo_cap;
input   vector_in_len_ch176_full_n;
output   vector_in_len_ch176_write;
output  [11:0] vector_in_len_ch277_din;
input  [7:0] vector_in_len_ch277_num_data_valid;
input  [7:0] vector_in_len_ch277_fifo_cap;
input   vector_in_len_ch277_full_n;
output   vector_in_len_ch277_write;
output  [11:0] vector_in_len_ch378_din;
input  [7:0] vector_in_len_ch378_num_data_valid;
input  [7:0] vector_in_len_ch378_fifo_cap;
input   vector_in_len_ch378_full_n;
output   vector_in_len_ch378_write;
output  [11:0] vector_out_len_ch179_din;
input  [7:0] vector_out_len_ch179_num_data_valid;
input  [7:0] vector_out_len_ch179_fifo_cap;
input   vector_out_len_ch179_full_n;
output   vector_out_len_ch179_write;
output  [11:0] vector_out_len_ch280_din;
input  [7:0] vector_out_len_ch280_num_data_valid;
input  [7:0] vector_out_len_ch280_fifo_cap;
input   vector_out_len_ch280_full_n;
output   vector_out_len_ch280_write;
output  [11:0] vector_out_len_ch381_din;
input  [7:0] vector_out_len_ch381_num_data_valid;
input  [7:0] vector_out_len_ch381_fifo_cap;
input   vector_out_len_ch381_full_n;
output   vector_out_len_ch381_write;
output   start_out;
output   start_write;
input  [15:0] vector_in_len_TDATA;
output   vector_in_len_TREADY;
input  [15:0] vector_out_len_TDATA;
output   vector_out_len_TREADY;

reg ap_done;
reg ap_idle;
reg vector_in_len_ch176_write;
reg vector_in_len_ch277_write;
reg vector_in_len_ch378_write;
reg vector_out_len_ch179_write;
reg vector_out_len_ch280_write;
reg vector_out_len_ch381_write;
reg start_write;

reg    real_start;
reg    start_once_reg;
reg   [0:0] ap_CS_iter0_fsm;
wire    ap_CS_iter0_fsm_state1;
reg   [1:0] ap_CS_iter1_fsm;
wire    ap_CS_iter1_fsm_state0;
reg    internal_ap_ready;
wire   [0:0] tmp_nbreadreq_fu_42_p3;
wire   [0:0] tmp_s_nbreadreq_fu_56_p3;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_reg_120;
reg   [0:0] tmp_s_reg_131;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_CS_iter1_fsm_state2;
reg    vector_in_len_TDATA_blk_n;
reg    vector_out_len_TDATA_blk_n;
reg    vector_in_len_ch176_blk_n;
reg    vector_in_len_ch277_blk_n;
reg    vector_in_len_ch378_blk_n;
reg    vector_out_len_ch179_blk_n;
reg    vector_out_len_ch280_blk_n;
reg    vector_out_len_ch381_blk_n;
wire   [11:0] vector_in_length_fu_112_p1;
reg   [11:0] vector_in_length_reg_124;
wire   [11:0] vector_out_length_fu_116_p1;
reg   [11:0] vector_out_length_reg_135;
reg   [0:0] ap_NS_iter0_fsm;
reg   [1:0] ap_NS_iter1_fsm;
reg    ap_ST_iter0_fsm_state1_blk;
reg    ap_ST_iter1_fsm_state2_blk;
wire    regslice_both_vector_in_len_U_apdone_blk;
wire   [15:0] vector_in_len_TDATA_int_regslice;
wire    vector_in_len_TVALID_int_regslice;
reg    vector_in_len_TREADY_int_regslice;
wire    regslice_both_vector_in_len_U_ack_in;
wire    regslice_both_vector_out_len_U_apdone_blk;
wire   [15:0] vector_out_len_TDATA_int_regslice;
wire    vector_out_len_TVALID_int_regslice;
reg    vector_out_len_TREADY_int_regslice;
wire    regslice_both_vector_out_len_U_ack_in;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_CS_iter0_fsm = 1'd1;
#0 ap_CS_iter1_fsm = 2'd1;
#0 ap_done_reg = 1'b0;
end

RBM_regslice_both #(
    .DataWidth( 16 ))
regslice_both_vector_in_len_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(vector_in_len_TDATA),
    .vld_in(vector_in_len_TVALID),
    .ack_in(regslice_both_vector_in_len_U_ack_in),
    .data_out(vector_in_len_TDATA_int_regslice),
    .vld_out(vector_in_len_TVALID_int_regslice),
    .ack_out(vector_in_len_TREADY_int_regslice),
    .apdone_blk(regslice_both_vector_in_len_U_apdone_blk)
);

RBM_regslice_both #(
    .DataWidth( 16 ))
regslice_both_vector_out_len_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(vector_out_len_TDATA),
    .vld_in(vector_out_len_TVALID),
    .ack_in(regslice_both_vector_out_len_U_ack_in),
    .data_out(vector_out_len_TDATA_int_regslice),
    .vld_out(vector_out_len_TVALID_int_regslice),
    .ack_out(vector_out_len_TREADY_int_regslice),
    .apdone_blk(regslice_both_vector_out_len_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_iter0_fsm <= ap_ST_iter0_fsm_state1;
    end else begin
        ap_CS_iter0_fsm <= ap_NS_iter0_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_iter1_fsm <= ap_ST_iter1_fsm_state0;
    end else begin
        ap_CS_iter1_fsm <= ap_NS_iter1_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((ap_done_reg == 1'b1) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | ((tmp_s_nbreadreq_fu_56_p3 == 1'd1) & (vector_out_len_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (vector_in_len_TVALID_int_regslice == 1'b0)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        tmp_reg_120 <= tmp_nbreadreq_fu_42_p3;
        tmp_s_reg_131 <= tmp_s_nbreadreq_fu_56_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | ((tmp_s_nbreadreq_fu_56_p3 == 1'd1) & (vector_out_len_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (vector_in_len_TVALID_int_regslice == 1'b0)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))))) & (tmp_nbreadreq_fu_42_p3 == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        vector_in_length_reg_124 <= vector_in_length_fu_112_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | ((tmp_s_nbreadreq_fu_56_p3 == 1'd1) & (vector_out_len_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (vector_in_len_TVALID_int_regslice == 1'b0)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))))) & (tmp_s_nbreadreq_fu_56_p3 == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        vector_out_length_reg_135 <= vector_out_length_fu_116_p1;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (real_start == 1'b0) | ((tmp_s_nbreadreq_fu_56_p3 == 1'd1) & (vector_out_len_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (vector_in_len_TVALID_int_regslice == 1'b0)))) begin
        ap_ST_iter0_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_iter0_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0)))) begin
        ap_ST_iter1_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_iter1_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter1_fsm_state0) & (1'b1 == ap_CS_iter0_fsm_state1) & (real_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | ((tmp_s_nbreadreq_fu_56_p3 == 1'd1) & (vector_out_len_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (vector_in_len_TVALID_int_regslice == 1'b0)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (tmp_nbreadreq_fu_42_p3 == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1) & (real_start == 1'b1))) begin
        vector_in_len_TDATA_blk_n = vector_in_len_TVALID_int_regslice;
    end else begin
        vector_in_len_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | ((tmp_s_nbreadreq_fu_56_p3 == 1'd1) & (vector_out_len_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (vector_in_len_TVALID_int_regslice == 1'b0)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))))) & (tmp_nbreadreq_fu_42_p3 == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        vector_in_len_TREADY_int_regslice = 1'b1;
    end else begin
        vector_in_len_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_120 == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        vector_in_len_ch176_blk_n = vector_in_len_ch176_full_n;
    end else begin
        vector_in_len_ch176_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))) & (tmp_reg_120 == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        vector_in_len_ch176_write = 1'b1;
    end else begin
        vector_in_len_ch176_write = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_120 == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        vector_in_len_ch277_blk_n = vector_in_len_ch277_full_n;
    end else begin
        vector_in_len_ch277_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))) & (tmp_reg_120 == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        vector_in_len_ch277_write = 1'b1;
    end else begin
        vector_in_len_ch277_write = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_120 == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        vector_in_len_ch378_blk_n = vector_in_len_ch378_full_n;
    end else begin
        vector_in_len_ch378_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))) & (tmp_reg_120 == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        vector_in_len_ch378_write = 1'b1;
    end else begin
        vector_in_len_ch378_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (tmp_s_nbreadreq_fu_56_p3 == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1) & (real_start == 1'b1))) begin
        vector_out_len_TDATA_blk_n = vector_out_len_TVALID_int_regslice;
    end else begin
        vector_out_len_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | ((tmp_s_nbreadreq_fu_56_p3 == 1'd1) & (vector_out_len_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (vector_in_len_TVALID_int_regslice == 1'b0)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))))) & (tmp_s_nbreadreq_fu_56_p3 == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        vector_out_len_TREADY_int_regslice = 1'b1;
    end else begin
        vector_out_len_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_s_reg_131 == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        vector_out_len_ch179_blk_n = vector_out_len_ch179_full_n;
    end else begin
        vector_out_len_ch179_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))) & (tmp_s_reg_131 == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        vector_out_len_ch179_write = 1'b1;
    end else begin
        vector_out_len_ch179_write = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_s_reg_131 == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        vector_out_len_ch280_blk_n = vector_out_len_ch280_full_n;
    end else begin
        vector_out_len_ch280_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))) & (tmp_s_reg_131 == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        vector_out_len_ch280_write = 1'b1;
    end else begin
        vector_out_len_ch280_write = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_s_reg_131 == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        vector_out_len_ch381_blk_n = vector_out_len_ch381_full_n;
    end else begin
        vector_out_len_ch381_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))) & (tmp_s_reg_131 == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        vector_out_len_ch381_write = 1'b1;
    end else begin
        vector_out_len_ch381_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_iter0_fsm)
        ap_ST_iter0_fsm_state1 : begin
            ap_NS_iter0_fsm = ap_ST_iter0_fsm_state1;
        end
        default : begin
            ap_NS_iter0_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    case (ap_CS_iter1_fsm)
        ap_ST_iter1_fsm_state2 : begin
            if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | ((tmp_s_nbreadreq_fu_56_p3 == 1'd1) & (vector_out_len_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (vector_in_len_TVALID_int_regslice == 1'b0))) & ~((ap_done_reg == 1'b1) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end else if ((~((ap_done_reg == 1'b1) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))) & ((1'b0 == ap_CS_iter0_fsm_state1) | ((1'b1 == ap_CS_iter0_fsm_state1) & ((ap_done_reg == 1'b1) | (real_start == 1'b0) | ((tmp_s_nbreadreq_fu_56_p3 == 1'd1) & (vector_out_len_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (vector_in_len_TVALID_int_regslice == 1'b0))))))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            end else begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end
        end
        ap_ST_iter1_fsm_state0 : begin
            if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | ((tmp_s_nbreadreq_fu_56_p3 == 1'd1) & (vector_out_len_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (vector_in_len_TVALID_int_regslice == 1'b0)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0))))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end else begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            end
        end
        default : begin
            ap_NS_iter1_fsm = 'bx;
        end
    endcase
end

assign ap_CS_iter0_fsm_state1 = ap_CS_iter0_fsm[32'd0];

assign ap_CS_iter1_fsm_state0 = ap_CS_iter1_fsm[32'd0];

assign ap_CS_iter1_fsm_state2 = ap_CS_iter1_fsm[32'd1];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | (real_start == 1'b0) | ((tmp_s_nbreadreq_fu_56_p3 == 1'd1) & (vector_out_len_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (vector_in_len_TVALID_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch179_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch381_full_n == 1'b0)) | ((tmp_s_reg_131 == 1'd1) & (vector_out_len_ch280_full_n == 1'b0)) | ((vector_in_len_ch378_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((vector_in_len_ch277_full_n == 1'b0) & (tmp_reg_120 == 1'd1)) | ((tmp_reg_120 == 1'd1) & (vector_in_len_ch176_full_n == 1'b0)));
end

assign ap_ready = internal_ap_ready;

assign start_out = real_start;

assign tmp_nbreadreq_fu_42_p3 = vector_in_len_TVALID_int_regslice;

assign tmp_s_nbreadreq_fu_56_p3 = vector_out_len_TVALID_int_regslice;

assign vector_in_len_TREADY = regslice_both_vector_in_len_U_ack_in;

assign vector_in_len_ch176_din = vector_in_length_reg_124;

assign vector_in_len_ch277_din = vector_in_length_reg_124;

assign vector_in_len_ch378_din = vector_in_length_reg_124;

assign vector_in_length_fu_112_p1 = vector_in_len_TDATA_int_regslice[11:0];

assign vector_out_len_TREADY = regslice_both_vector_out_len_U_ack_in;

assign vector_out_len_ch179_din = vector_out_length_reg_135;

assign vector_out_len_ch280_din = vector_out_length_reg_135;

assign vector_out_len_ch381_din = vector_out_length_reg_135;

assign vector_out_length_fu_116_p1 = vector_out_len_TDATA_int_regslice[11:0];

endmodule //RBM_rbm_size_split
