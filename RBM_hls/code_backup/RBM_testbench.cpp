#include "RBM.h"

int main(void){
	hls::stream<stream_data_v_t> stream_vector_in;
	hls::stream<control_t> stream_sigmoid_switch;
	hls::stream<data_w_t> stream_weight_in;
	hls::stream<data_b_t> stream_bias_in;
	hls::stream<control_t> stream_control_in;
	hls::stream<rbm_size_t> vector_in_len;
	hls::stream<rbm_size_t> vector_out_len;
	hls::stream<rbm_size_t> channel_num;
	hls::stream<stream_data_h_t> stream_vector_out;
	control_t control;
	rbm_size_t vector_in_length;
	rbm_size_t vector_out_length;
	stream_data_v_t stream_data_v;
	stream_data_h_t stream_data_h;
	int i1, i2, i3;

	control = CTRL_SIZE_IN;
	stream_control_in.write(control);
	vector_in_length = 512;
//	vector_in_length = 128;
	vector_in_len.write(vector_in_length);
	vector_out_length = 128;
//	vector_out_length = 16;

	vector_out_len.write(vector_out_length);
	stream_sigmoid_switch.write(0);
	for(i1 = 0; i1 < 100000000; i1++){
		RBM(stream_control_in, stream_sigmoid_switch, vector_in_len, vector_out_len, stream_vector_in, stream_weight_in, stream_bias_in, stream_vector_out);
	}


	control = CTRL_WEIGHT_IN;
	stream_control_in.write(control);
	for(i1 = 0; i1 < vector_in_length; i1++){
		for(i2 = 0; i2 < vector_out_length; i2++){
//			stream_weight_in.write(data_w_t(1.0/vector_in_length));
			stream_weight_in.write(data_w_t(i1*0.001));
		}
	}
	for(i1 = 0; i1 < 100000000; i1++){
		RBM(stream_control_in, stream_sigmoid_switch, vector_in_len, vector_out_len, stream_vector_in, stream_weight_in, stream_bias_in, stream_vector_out);
	}

	control = CTRL_BIAS_IN;
	stream_control_in.write(control);
	for(i1 = 0; i1 < VECTOR_OUT_LEN; i1++){
//		stream_bias_in.write(data_b_t(i1*0.01));
		stream_bias_in.write(data_b_t(0));
	}
	for(i1 = 0; i1 < 100000000; i1++){
		RBM(stream_control_in, stream_sigmoid_switch, vector_in_len, vector_out_len, stream_vector_in, stream_weight_in, stream_bias_in, stream_vector_out);
	}

	control = CTRL_START;
	stream_control_in.write(control);
	int N = vector_in_length*4;

	for(i1 = 0; i1 < (N); i1++){
		stream_data_v.data = 1;
		stream_data_v.axis_last = bool(i1 == (N-1));
		stream_vector_in.write(stream_data_v);
	}
	stream_sigmoid_switch.write(0);
	for(i1 = 0; i1 < 1000000000; i1++){
		RBM(stream_control_in, stream_sigmoid_switch, vector_in_len, vector_out_len, stream_vector_in, stream_weight_in, stream_bias_in, stream_vector_out);
	}

	//////////////
	for(i1 = (N); i1 < (N+N+0); i1++){
		stream_data_v.data = 1;
		stream_data_v.axis_last = bool(i1 == (N+N-1+0));
		stream_vector_in.write(stream_data_v);
	}
	for(i1 = 0; i1 < 1000000000; i1++){
		RBM(stream_control_in, stream_sigmoid_switch, vector_in_len, vector_out_len, stream_vector_in, stream_weight_in, stream_bias_in, stream_vector_out);
	}
	////////////////
	for(i1 = (N+N); i1 < (N+N+N+0); i1++){
		stream_data_v.data = 1;
		stream_data_v.axis_last = bool(i1 == (N+N+N-1+0));
		stream_vector_in.write(stream_data_v);
	}
	stream_sigmoid_switch.write(0);
	for(i1 = 0; i1 < 1000000000; i1++){
		RBM(stream_control_in, stream_sigmoid_switch, vector_in_len, vector_out_len, stream_vector_in, stream_weight_in, stream_bias_in, stream_vector_out);
	}
	////////////////

	printf("vector_out = \r\n");
	i1 = 0;
	int index = 0;
	while(stream_vector_out.empty() == bool(0)){
		stream_data_h = stream_vector_out.read();
		printf("num = %d, data[%d] = %.7f, axis_last = %d\r\n, ", i1, index, float(stream_data_h.data),
				int(stream_data_h.axis_last));
		i1++;
		if(index == (vector_out_length - 1)){
			index = 0;
		}else{
			index++;
		}
	}
	printf("\r\n=========================================================================\r\n");

	return 0;
}
