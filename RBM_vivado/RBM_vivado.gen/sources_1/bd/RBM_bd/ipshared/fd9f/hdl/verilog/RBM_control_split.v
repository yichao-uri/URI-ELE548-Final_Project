// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module RBM_control_split (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        stream_control_in_TVALID,
        control_ch173_din,
        control_ch173_num_data_valid,
        control_ch173_fifo_cap,
        control_ch173_full_n,
        control_ch173_write,
        control_ch274_din,
        control_ch274_num_data_valid,
        control_ch274_fifo_cap,
        control_ch274_full_n,
        control_ch274_write,
        control_ch375_din,
        control_ch375_num_data_valid,
        control_ch375_fifo_cap,
        control_ch375_full_n,
        control_ch375_write,
        start_out,
        start_write,
        stream_control_in_TDATA,
        stream_control_in_TREADY
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   stream_control_in_TVALID;
output  [7:0] control_ch173_din;
input  [7:0] control_ch173_num_data_valid;
input  [7:0] control_ch173_fifo_cap;
input   control_ch173_full_n;
output   control_ch173_write;
output  [7:0] control_ch274_din;
input  [7:0] control_ch274_num_data_valid;
input  [7:0] control_ch274_fifo_cap;
input   control_ch274_full_n;
output   control_ch274_write;
output  [7:0] control_ch375_din;
input  [7:0] control_ch375_num_data_valid;
input  [7:0] control_ch375_fifo_cap;
input   control_ch375_full_n;
output   control_ch375_write;
output   start_out;
output   start_write;
input  [7:0] stream_control_in_TDATA;
output   stream_control_in_TREADY;

reg ap_done;
reg ap_idle;
reg control_ch173_write;
reg control_ch274_write;
reg control_ch375_write;
reg start_write;

reg    real_start;
reg    start_once_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    internal_ap_ready;
wire   [0:0] tmp_nbreadreq_fu_34_p3;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_reg_69;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    stream_control_in_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    control_ch173_blk_n;
reg    control_ch274_blk_n;
reg    control_ch375_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [7:0] stream_control_in_read_reg_73;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_stream_control_in_U_apdone_blk;
wire   [7:0] stream_control_in_TDATA_int_regslice;
wire    stream_control_in_TVALID_int_regslice;
reg    stream_control_in_TREADY_int_regslice;
wire    regslice_both_stream_control_in_U_ack_in;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

RBM_regslice_both #(
    .DataWidth( 8 ))
regslice_both_stream_control_in_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(stream_control_in_TDATA),
    .vld_in(stream_control_in_TVALID),
    .ack_in(regslice_both_stream_control_in_U_ack_in),
    .data_out(stream_control_in_TDATA_int_regslice),
    .vld_out(stream_control_in_TVALID_int_regslice),
    .ack_out(stream_control_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_stream_control_in_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= real_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_34_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stream_control_in_read_reg_73 <= stream_control_in_TDATA_int_regslice;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_69 <= tmp_nbreadreq_fu_34_p3;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_69 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        control_ch173_blk_n = control_ch173_full_n;
    end else begin
        control_ch173_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_69 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        control_ch173_write = 1'b1;
    end else begin
        control_ch173_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_69 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        control_ch274_blk_n = control_ch274_full_n;
    end else begin
        control_ch274_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_69 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        control_ch274_write = 1'b1;
    end else begin
        control_ch274_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_69 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        control_ch375_blk_n = control_ch375_full_n;
    end else begin
        control_ch375_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_69 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        control_ch375_write = 1'b1;
    end else begin
        control_ch375_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((real_start == 1'b1) & (start_once_reg == 1'b0))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (tmp_nbreadreq_fu_34_p3 == 1'd1) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stream_control_in_TDATA_blk_n = stream_control_in_TVALID_int_regslice;
    end else begin
        stream_control_in_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_34_p3 == 1'd1) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stream_control_in_TREADY_int_regslice = 1'b1;
    end else begin
        stream_control_in_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((control_ch375_full_n == 1'b0) & (tmp_reg_69 == 1'd1)) | ((control_ch274_full_n == 1'b0) & (tmp_reg_69 == 1'd1)) | ((tmp_reg_69 == 1'd1) & (control_ch173_full_n == 1'b0)))) | ((real_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_34_p3 == 1'd1) & (stream_control_in_TVALID_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((control_ch375_full_n == 1'b0) & (tmp_reg_69 == 1'd1)) | ((control_ch274_full_n == 1'b0) & (tmp_reg_69 == 1'd1)) | ((tmp_reg_69 == 1'd1) & (control_ch173_full_n == 1'b0)))) | ((real_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_34_p3 == 1'd1) & (stream_control_in_TVALID_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((control_ch375_full_n == 1'b0) & (tmp_reg_69 == 1'd1)) | ((control_ch274_full_n == 1'b0) & (tmp_reg_69 == 1'd1)) | ((tmp_reg_69 == 1'd1) & (control_ch173_full_n == 1'b0)))) | ((real_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_34_p3 == 1'd1) & (stream_control_in_TVALID_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_34_p3 == 1'd1) & (stream_control_in_TVALID_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((control_ch375_full_n == 1'b0) & (tmp_reg_69 == 1'd1)) | ((control_ch274_full_n == 1'b0) & (tmp_reg_69 == 1'd1)) | ((tmp_reg_69 == 1'd1) & (control_ch173_full_n == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = real_start;

assign ap_ready = internal_ap_ready;

assign control_ch173_din = stream_control_in_read_reg_73;

assign control_ch274_din = stream_control_in_read_reg_73;

assign control_ch375_din = stream_control_in_read_reg_73;

assign start_out = real_start;

assign stream_control_in_TREADY = regslice_both_stream_control_in_U_ack_in;

assign tmp_nbreadreq_fu_34_p3 = stream_control_in_TVALID_int_regslice;

endmodule //RBM_control_split