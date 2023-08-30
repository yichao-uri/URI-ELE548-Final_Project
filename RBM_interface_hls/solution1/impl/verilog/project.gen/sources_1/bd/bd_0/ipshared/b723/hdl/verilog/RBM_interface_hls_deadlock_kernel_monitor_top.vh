
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [15:0] axis_block_sigs;
wire [0:0] inst_idle_sigs;
wire [0:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~axis_control_in_TDATA_blk_n;
assign axis_block_sigs[1] = ~axis_sigmoid_switch_in_TDATA_blk_n;
assign axis_block_sigs[2] = ~axis_vector_in_len_in_TDATA_blk_n;
assign axis_block_sigs[3] = ~axis_vector_out_len_in_TDATA_blk_n;
assign axis_block_sigs[4] = ~axis_vector_in_TDATA_blk_n;
assign axis_block_sigs[5] = ~axis_weight_in_TDATA_blk_n;
assign axis_block_sigs[6] = ~axis_bias_in_TDATA_blk_n;
assign axis_block_sigs[7] = ~axis_vector_out_TDATA_blk_n;
assign axis_block_sigs[8] = ~stream_control_in_TDATA_blk_n;
assign axis_block_sigs[9] = ~stream_sigmoid_switch_in_TDATA_blk_n;
assign axis_block_sigs[10] = ~stream_vector_in_len_in_TDATA_blk_n;
assign axis_block_sigs[11] = ~stream_vector_out_len_in_TDATA_blk_n;
assign axis_block_sigs[12] = ~stream_vector_in_TDATA_blk_n;
assign axis_block_sigs[13] = ~stream_weight_in_TDATA_blk_n;
assign axis_block_sigs[14] = ~stream_bias_in_TDATA_blk_n;
assign axis_block_sigs[15] = ~stream_vector_out_TDATA_blk_n;

assign inst_block_sigs[0] = 1'b0;

assign inst_idle_sigs[0] = 1'b0;

RBM_interface_hls_deadlock_idx0_monitor RBM_interface_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
