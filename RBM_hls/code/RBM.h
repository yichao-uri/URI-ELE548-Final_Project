#ifndef _RBM_H_
#define _RBM_H_

#include "ap_int.h"
#include "ap_axi_sdata.h"
#include "hls_task.h"
#include "hls_stream.h"
#include "cmath"

#define	VECTOR_IN_LEN		512
#define	VECTOR_OUT_LEN		64
#define	SYSTOLIC_PE_NUM			64
#define	SYSTOLIC_PE_NUM_LOG2	6

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

typedef ap_uint<8> control_t;
typedef ap_uint<12> rbm_size_t;
typedef ap_int<16> data_v_t;
typedef ap_fixed<48, 28> data_h_t;
typedef ap_fixed<25, 3> data_w_t;
typedef ap_fixed<48, 22> data_b_t;
typedef float data_f_t;

typedef hls::axis<data_v_t, 0, 0, 0> data_v_pck_t;
typedef hls::axis<data_h_t, 0, 0, 0> data_h_pck_t;
typedef hls::axis<data_w_t, 0, 0, 0> data_w_pck_t;
typedef hls::axis<data_b_t, 0, 0, 0> data_b_pck_t;
typedef hls::axis<control_t, 0, 0, 0> control_pck_t;
typedef hls::axis<data_f_t, 0, 0, 0> data_f_pck_t;

typedef hls::stream<data_v_pck_t> axis_data_v_t;
typedef hls::stream<data_h_pck_t> axis_data_h_t;
typedef hls::stream<data_w_pck_t> axis_data_w_t;
typedef hls::stream<data_b_pck_t> axis_data_b_t;
typedef hls::stream<control_pck_t> axis_control_t;
typedef hls::stream<data_f_pck_t> axis_data_f_t;

struct stream_data_v_t{
	data_v_t data;
	bool axis_last;
};

struct stream_data_h_t{
	data_h_t data;
	bool axis_last;
};

struct buffer_data_t{
	bool valid;
	bool first_data;
	bool last_data;
	bool axis_last;
	bool pad_zero;
	data_v_t data;
};
struct buffer_data_tag_t{
	bool valid;
	bool first_data;
	bool last_data;
	bool axis_last;
	bool pad_zero;
};
struct buffer_status_t{
	bool read_valid;
	bool write_valid;
	ap_int16 data_counter;
};
struct systolic_data_t{
	bool valid;
	bool first;
	bool last;
	bool last_loop;
	bool axis_last;
	data_v_t data;
};

struct systolic_pe_valid_t{
	bool valid[SYSTOLIC_PE_NUM];
};
struct systolic_index_t{
	ap_uint10 index[SYSTOLIC_PE_NUM];
};
struct systolic_weight_t{
	data_w_t data[SYSTOLIC_PE_NUM];
};

typedef ap_uint<SYSTOLIC_PE_NUM> pe_valid_t;

void RBM(hls::stream<control_t> &stream_control_in,
		hls::stream<control_t> &stream_sigmoid_switch,
		hls::stream<rbm_size_t> &vector_in_len,
		hls::stream<rbm_size_t> &vector_out_len,
		hls::stream<stream_data_v_t> &stream_vector_in,
		hls::stream<data_w_t> &stream_weight_in,
		hls::stream<data_b_t> &stream_bias_in,
		hls::stream<stream_data_h_t> &stream_vector_out);

void control_split(hls::stream<control_t> &control_in,
		hls::stream<control_t> &control_ch1,
		hls::stream<control_t> &control_ch2,
		hls::stream<control_t> &control_ch3);

void rbm_size_split(hls::stream<rbm_size_t> &vector_in_len,
		hls::stream<rbm_size_t> &vector_out_len,
		hls::stream<rbm_size_t> &vector_in_len_ch1,
		hls::stream<rbm_size_t> &vector_in_len_ch2,
		hls::stream<rbm_size_t> &vector_in_len_ch3,
		hls::stream<rbm_size_t> &vector_out_len_ch1,
		hls::stream<rbm_size_t> &vector_out_len_ch2,
		hls::stream<rbm_size_t> &vector_out_len_ch3);

void double_buffer(hls::stream<control_t> &control_in,
		hls::stream<rbm_size_t> &vector_in_len,
		hls::stream<stream_data_v_t> &buffer_in,
		hls::stream<buffer_data_t> &buffer_out);

void data_flow_control(
		hls::stream<control_t> &stream_control_in,
		hls::stream<rbm_size_t> &stream_vector_in_len,
		hls::stream<rbm_size_t> &stream_vector_out_len,
		hls::stream<buffer_data_t> &stream_buffer_in,
		hls::stream<systolic_data_t> &stream_systolic_in,
		hls::stream<systolic_index_t> &stream_weight_row_index,
		hls::stream<ap_uint10> &stream_bias_col_index,
		hls::stream<pe_valid_t> &stream_pe_valid);

void weight_bias_memory(hls::stream<control_t> &stream_control_in,
		hls::stream<rbm_size_t> &stream_vector_in_len,
		hls::stream<rbm_size_t> &stream_vector_out_len,
		hls::stream<data_w_t> &stream_weight_in,
		hls::stream<data_b_t> &stream_bias_in,
		hls::stream<systolic_index_t> &stream_weight_row_index,
		hls::stream<ap_uint10> &stream_bias_col_index,
		hls::stream<systolic_weight_t> &stream_weight_out,
		hls::stream<data_b_t> &stream_bias_out);

void systolic_array(
		hls::stream<rbm_size_t> &stream_vector_out_len,
		hls::stream<systolic_data_t> &stream_systolic_in,
		hls::stream<systolic_weight_t> &stream_weight_out,
		hls::stream<data_b_t> &stream_bias_in,
		hls::stream<pe_valid_t> &stream_pe_valid,
		hls::stream<stream_data_h_t> &stream_vector_out);

void sigmoid(hls::stream<control_t> &stream_sigmoid_switch,
		hls::stream<stream_data_h_t> &stream_systolic_out,
		hls::stream<stream_data_h_t> &stream_sigmoid_out);


#endif
