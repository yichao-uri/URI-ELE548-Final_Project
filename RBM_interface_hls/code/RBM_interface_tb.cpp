#include "RBM_interface.h"

int main(void){
	hls::stream<control_pck_t> axis_control_in;
	hls::stream<control_pck_t> axis_sigmoid_switch_in;
	hls::stream<rbm_size_pck_t> axis_vector_in_len_in;
	hls::stream<rbm_size_pck_t> axis_vector_out_len_in;
	hls::stream<data_v_pck_t> axis_vector_in;
	hls::stream<data_f_pck_t> axis_weight_in;
	hls::stream<data_f_pck_t> axis_bias_in;
	hls::stream<data_f_pck_t> axis_vector_out;

	hls::stream<control_t> stream_control_in;
	hls::stream<control_t> stream_sigmoid_switch_in;
	hls::stream<rbm_size_t> stream_vector_in_len_in;
	hls::stream<rbm_size_t> stream_vector_out_len_in;
	hls::stream<stream_data_v_t> stream_vector_in;
	hls::stream<data_w_t> stream_weight_in;
	hls::stream<data_b_t> stream_bias_in;
	hls::stream<stream_data_h_t> stream_vector_out;


	control_pck_t control_pck;
	control_pck_t sigmoid_switch_in_pck;
	rbm_size_pck_t vector_in_len_pck;
	rbm_size_pck_t vector_out_len_pck;
	data_v_pck_t vector_in_pck;
	data_f_pck_t weight_in_pck;
	data_f_pck_t bias_in_pck;
	data_f_pck_t vector_out_pck;

	stream_data_h_t stream_data_h;
	stream_data_v_t stream_data_v;

	int i1, i2, i3;

	control_pck.strb = -1;
	control_pck.keep = -1;
	control_pck.data = CTRL_START;
	control_pck.last = 1;
	for(i1 = 0; i1 <5; i1++){
		for(i2 = 0; i2 < 64; i2++){
			stream_data_h.data = i1 * 64 + i2;
			stream_data_h.axis_last = ((i1 == 4) && (i2 == 63));
			stream_vector_out.write(stream_data_h);

			stream_data_v.data = i1 * 64 + i2;
			stream_data_v.axis_last = ((i1 == 4) && (i2 == 63));
			stream_vector_in.write(stream_data_v);

		}
	}
	for(i1 = 0; i1 < 1000; i1++){
		for(i2 = 0; i2 < 64; i2++){
			RBM_interface(
				axis_control_in, axis_sigmoid_switch_in, axis_vector_in_len_in, axis_vector_out_len_in,	axis_vector_in,	axis_weight_in,	axis_bias_in, axis_vector_out,
				stream_control_in, stream_sigmoid_switch_in, stream_vector_in_len_in, stream_vector_out_len_in, stream_vector_in, stream_weight_in, stream_bias_in, stream_vector_out
				);
		}
	}

	printf("vector_out = \r\n");
	i1 = 0;
	while(axis_vector_out.empty() == bool(0)){
		vector_out_pck = axis_vector_out.read();
		printf("num = %d, data = %.3f, axis_last = %d\r\n, ", i1, float(vector_out_pck.data),
				int(vector_out_pck.last));
		i1++;
	}
	printf("\r\n=========================================================================\r\n");

	return 0;
}
