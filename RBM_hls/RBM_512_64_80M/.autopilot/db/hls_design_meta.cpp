#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("stream_control_in_TDATA", 8, hls_in, 0, "axis", "in_data", 1),
	Port_Property("stream_sigmoid_switch_TDATA", 8, hls_in, 1, "axis", "in_data", 1),
	Port_Property("vector_in_len_TDATA", 16, hls_in, 2, "axis", "in_data", 1),
	Port_Property("vector_out_len_TDATA", 16, hls_in, 3, "axis", "in_data", 1),
	Port_Property("stream_vector_in_TDATA", 32, hls_in, 4, "axis", "in_data", 1),
	Port_Property("stream_weight_in_TDATA", 32, hls_in, 5, "axis", "in_data", 1),
	Port_Property("stream_bias_in_TDATA", 48, hls_in, 6, "axis", "in_data", 1),
	Port_Property("stream_vector_out_TDATA", 128, hls_out, 7, "axis", "out_data", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("stream_control_in_TVALID", 1, hls_in, 0, "axis", "in_vld", 1),
	Port_Property("stream_control_in_TREADY", 1, hls_out, 0, "axis", "in_acc", 1),
	Port_Property("vector_in_len_TVALID", 1, hls_in, 2, "axis", "in_vld", 1),
	Port_Property("vector_in_len_TREADY", 1, hls_out, 2, "axis", "in_acc", 1),
	Port_Property("vector_out_len_TVALID", 1, hls_in, 3, "axis", "in_vld", 1),
	Port_Property("vector_out_len_TREADY", 1, hls_out, 3, "axis", "in_acc", 1),
	Port_Property("stream_vector_in_TVALID", 1, hls_in, 4, "axis", "in_vld", 1),
	Port_Property("stream_vector_in_TREADY", 1, hls_out, 4, "axis", "in_acc", 1),
	Port_Property("stream_weight_in_TVALID", 1, hls_in, 5, "axis", "in_vld", 1),
	Port_Property("stream_weight_in_TREADY", 1, hls_out, 5, "axis", "in_acc", 1),
	Port_Property("stream_bias_in_TVALID", 1, hls_in, 6, "axis", "in_vld", 1),
	Port_Property("stream_bias_in_TREADY", 1, hls_out, 6, "axis", "in_acc", 1),
	Port_Property("stream_sigmoid_switch_TVALID", 1, hls_in, 1, "axis", "in_vld", 1),
	Port_Property("stream_sigmoid_switch_TREADY", 1, hls_out, 1, "axis", "in_acc", 1),
	Port_Property("stream_vector_out_TVALID", 1, hls_out, 7, "axis", "out_vld", 1),
	Port_Property("stream_vector_out_TREADY", 1, hls_in, 7, "axis", "out_acc", 1),
};
const char* HLS_Design_Meta::dut_name = "RBM";