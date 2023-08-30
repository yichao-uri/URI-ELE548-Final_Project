#ifndef _RBM_INTERFACE_H_
#define _RBM_INTERFACE_H_

#include "ap_int.h"
#include "ap_axi_sdata.h"
#include "hls_task.h"
#include "hls_stream.h"
#include "cmath"

#define	VECTOR_IN_LEN		512
#define	VECTOR_OUT_LEN		256
#define	SYSTOLIC_PE_NUM			128
#define	SYSTOLIC_PE_NUM_LOG2	7

#define CTRL_IDLE		0
#define CTRL_SIZE_IN	1
#define CTRL_WEIGHT_IN	2
#define CTRL_BIAS_IN	3
#define	CTRL_START		4


typedef ap_uint<16> ap_uint16;
typedef ap_uint<10> ap_uint10;
typedef ap_uint<8> ap_uint8;
typedef ap_uint<5> ap_uint5;
typedef ap_uint<4> ap_uint4;
typedef ap_uint<3> ap_uint3;
typedef ap_uint<2> ap_uint2;

typedef ap_int<16> ap_int16;
typedef ap_int<11> ap_int11;
typedef ap_int<10> ap_int10;
typedef ap_int<3> ap_int3;

typedef ap_int<32> ap_int32;
typedef ap_uint<8> control_t;
typedef ap_int<16> data_v_t;
typedef ap_fixed<48, 28> data_h_t;
typedef ap_fixed<25, 3> data_w_t;
typedef ap_fixed<48, 22> data_b_t;
typedef ap_uint<12> rbm_size_t;
typedef float data_f_t;

typedef hls::axis<ap_int32, 0, 0, 0> ap_int32_pck_t;
typedef hls::axis<data_v_t, 0, 0, 0> data_v_pck_t;
typedef hls::axis<data_h_t, 0, 0, 0> data_h_pck_t;
typedef hls::axis<data_w_t, 0, 0, 0> data_w_pck_t;
typedef hls::axis<data_b_t, 0, 0, 0> data_b_pck_t;
typedef hls::axis<control_t, 0, 0, 0> control_pck_t;
typedef hls::axis<data_f_t, 0, 0, 0> data_f_pck_t;
typedef hls::axis<ap_uint16, 0, 0, 0> rbm_size_pck_t;

typedef hls::stream<ap_int32_pck_t> axis_ap_uint32_t;
typedef hls::stream<data_v_pck_t> axis_data_v_t;
typedef hls::stream<data_h_pck_t> axis_data_h_t;
typedef hls::stream<data_w_pck_t> axis_data_w_t;
typedef hls::stream<data_b_pck_t> axis_data_b_t;
typedef hls::stream<control_pck_t> axis_control_t;
typedef hls::stream<data_f_pck_t> axis_data_f_t;
typedef hls::stream<rbm_size_pck_t> axis_rbm_size_t;


struct stream_data_v_t{
	data_v_t data;
	bool axis_last;
};

struct stream_data_w_t{
	data_w_t data;
	bool axis_last;
};

struct stream_data_b_t{
	data_b_t data;
	bool axis_last;
};


struct stream_data_h_t{
	data_h_t data;
	bool axis_last;
};

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
		hls::stream<stream_data_h_t> &stream_vector_out);


#endif
