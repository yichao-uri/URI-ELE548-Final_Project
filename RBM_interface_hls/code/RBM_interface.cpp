#include "RBM_interface.h"

void RBM_interface(
		hls::stream<control_pck_t> &axis_control_in,
		hls::stream<control_pck_t> &axis_sigmoid_switch_in,
		hls::stream<rbm_size_pck_t> &axis_vector_in_len_in,
		hls::stream<rbm_size_pck_t> &axis_vector_out_len_in,
		hls::stream<data_v_pck_t> &axis_vector_in,
		hls::stream<data_f_pck_t> &axis_weight_in,
		hls::stream<data_f_pck_t> &axis_bias_in,
		hls::stream<data_f_pck_t> &axis_vector_out,

		hls::stream<control_t> &stream_control_in,
		hls::stream<control_t> &stream_sigmoid_switch_in,
		hls::stream<rbm_size_t> &stream_vector_in_len_in,
		hls::stream<rbm_size_t> &stream_vector_out_len_in,
		hls::stream<stream_data_v_t> &stream_vector_in,
		hls::stream<data_w_t> &stream_weight_in,
		hls::stream<data_b_t> &stream_bias_in,
		hls::stream<stream_data_h_t> &stream_vector_out){
#pragma HLS INTERFACE mode=ap_ctrl_none port=return

#pragma HLS INTERFACE mode=axis register_mode=both port=axis_control_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=axis_sigmoid_switch_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=axis_vector_in_len_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=axis_vector_out_len_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=axis_vector_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=axis_weight_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=axis_bias_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=axis_vector_out register

#pragma HLS INTERFACE mode=axis register_mode=both port=stream_control_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=stream_sigmoid_switch_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=stream_vector_in_len_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=stream_vector_out_len_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=stream_vector_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=stream_weight_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=stream_bias_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=stream_vector_out register
#pragma HLS PIPELINE II=1 style=frp

	if(axis_control_in.empty() == bool(0)){
		control_pck_t control_pck;
		control_pck = axis_control_in.read();
		stream_control_in.write(control_pck.data);
	}

	if(axis_sigmoid_switch_in.empty() == bool(0)){
		control_pck_t switch_pck;
		switch_pck = axis_sigmoid_switch_in.read();
		stream_sigmoid_switch_in.write(switch_pck.data);
	}

	if(axis_vector_in_len_in.empty() == bool(0)){
		rbm_size_pck_t rbm_size_pck;
		rbm_size_pck = axis_vector_in_len_in.read();
		stream_vector_in_len_in.write(rbm_size_pck.data);
	}

	if(axis_vector_out_len_in.empty() == bool(0)){
		rbm_size_pck_t rbm_size_pck;
		rbm_size_pck = axis_vector_out_len_in.read();
		stream_vector_out_len_in.write(rbm_size_pck.data);
	}

	if(axis_vector_in.empty() == bool(0)){
		data_v_pck_t data_v_pck;
		data_v_pck = axis_vector_in.read();
		stream_data_v_t stream_data_v;
		stream_data_v.data = data_v_pck.data;
		stream_data_v.axis_last = data_v_pck.last;
		stream_vector_in.write(stream_data_v);
	}
	if(axis_weight_in.empty() == bool(0)){
		data_f_pck_t data_f_pck;
		data_f_pck = axis_weight_in.read();
		data_w_t data_w;
		data_w = data_w_t(data_f_pck.data);
		stream_weight_in.write(data_w);
	}
	if(axis_bias_in.empty() == bool(0)){
		data_f_pck_t data_f_pck;
		data_f_pck = axis_bias_in.read();
		data_b_t data_b;
		data_b = data_b_t(data_f_pck.data);
		stream_bias_in.write(data_b);
	}
	if(stream_vector_out.empty() == bool(0)){
		stream_data_h_t stream_data_h;
		stream_data_h = stream_vector_out.read();
		data_f_pck_t data_f_pck;
		data_f_pck.strb = -1;
		data_f_pck.keep = -1;
		data_f_pck.data = data_f_t(stream_data_h.data);
		data_f_pck.last = stream_data_h.axis_last;
		axis_vector_out.write(data_f_pck);
	}
}
