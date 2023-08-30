#include "RBM.h"
#include "sigmoid_parameters.h"


void RBM(hls::stream<control_t> &stream_control_in,
		hls::stream<control_t> &stream_sigmoid_switch,
		hls::stream<rbm_size_t> &vector_in_len,
		hls::stream<rbm_size_t> &vector_out_len,
		hls::stream<stream_data_v_t> &stream_vector_in,
		hls::stream<data_w_t> &stream_weight_in,
		hls::stream<data_b_t> &stream_bias_in,
		hls::stream<stream_data_h_t> &stream_vector_out){
#pragma HLS INTERFACE mode=axis register_mode=both port=stream_control_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=stream_sigmoid_switch register
#pragma HLS INTERFACE mode=axis register_mode=both port=vector_in_len register
#pragma HLS INTERFACE mode=axis register_mode=both port=vector_out_len register
#pragma HLS INTERFACE mode=axis register_mode=both port=stream_vector_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=stream_weight_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=stream_bias_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=stream_vector_out register
#pragma HLS INTERFACE mode=ap_ctrl_none port=return
#pragma HLS DATAFLOW

	hls_thread_local hls::stream<control_t, 16>  control_ch1;
	hls_thread_local hls::stream<control_t, 16>  control_ch2;
	hls_thread_local hls::stream<control_t, 16>  control_ch3;
	hls_thread_local hls::stream<rbm_size_t, 16> vector_in_len_ch1;
	hls_thread_local hls::stream<rbm_size_t, 16> vector_in_len_ch2;
	hls_thread_local hls::stream<rbm_size_t, 16> vector_in_len_ch3;
	hls_thread_local hls::stream<rbm_size_t, 16> vector_out_len_ch1;
	hls_thread_local hls::stream<rbm_size_t, 16> vector_out_len_ch2;
	hls_thread_local hls::stream<rbm_size_t, 16> vector_out_len_ch3;
	hls_thread_local hls::stream<buffer_data_t, 1024>  buffer_out;
	hls_thread_local hls::stream<systolic_data_t, 16> systolic_input;
	hls_thread_local hls::stream<systolic_index_t, 16> stream_weight_row_index;
#pragma HLS BIND_STORAGE variable=stream_weight_row_index type=fifo impl=lutram
	hls_thread_local hls::stream<ap_uint10, 16> stream_bias_col_index;
	hls_thread_local hls::stream<pe_valid_t, 16> stream_pe_valid;
	hls_thread_local hls::stream<systolic_weight_t, 16> stream_weight_out;
#pragma HLS BIND_STORAGE variable=stream_weight_out type=fifo impl=lutram
	hls_thread_local hls::stream<data_b_t, 16> stream_bias_out;
	hls_thread_local hls::stream<stream_data_h_t, 16>  systolic_out;

	hls_thread_local hls::task control_task(control_split, stream_control_in, control_ch1, control_ch2, control_ch3);

	hls_thread_local hls::task size_task(rbm_size_split,
			vector_in_len, vector_out_len, vector_in_len_ch1, vector_in_len_ch2, vector_in_len_ch3, vector_out_len_ch1,
			vector_out_len_ch2, vector_out_len_ch3);

	hls_thread_local hls::task buffer_task(double_buffer, control_ch1, vector_in_len_ch1, stream_vector_in, buffer_out);

	hls_thread_local hls::task systolic_ctrl_task(data_flow_control,
			control_ch2, vector_in_len_ch2, vector_out_len_ch1, buffer_out, systolic_input,	stream_weight_row_index, stream_bias_col_index,	stream_pe_valid);

	hls_thread_local hls::task weight_bias_task(weight_bias_memory,
			control_ch3, vector_in_len_ch3, vector_out_len_ch2, stream_weight_in, stream_bias_in, stream_weight_row_index, stream_bias_col_index, stream_weight_out,
			stream_bias_out);

	hls_thread_local hls::task systolic_task(systolic_array, vector_out_len_ch3, systolic_input, stream_weight_out, stream_bias_out, stream_pe_valid, systolic_out);

	hls_thread_local hls::task sigmoid_task(sigmoid, stream_sigmoid_switch, systolic_out, stream_vector_out);
}


void control_split(hls::stream<control_t> &control_in,
		hls::stream<control_t> &control_ch1,
		hls::stream<control_t> &control_ch2,
		hls::stream<control_t> &control_ch3){
#pragma HLS INLINE off
#pragma HLS PIPELINE II=1 style=frp
	static control_t control = CTRL_IDLE;

	if(control_in.empty() == bool(0)){
		control = control_in.read();
		control_ch1.write(control);
		control_ch2.write(control);
		control_ch3.write(control);
	}
}


void rbm_size_split(hls::stream<rbm_size_t> &vector_in_len,
		hls::stream<rbm_size_t> &vector_out_len,
		hls::stream<rbm_size_t> &vector_in_len_ch1,
		hls::stream<rbm_size_t> &vector_in_len_ch2,
		hls::stream<rbm_size_t> &vector_in_len_ch3,
		hls::stream<rbm_size_t> &vector_out_len_ch1,
		hls::stream<rbm_size_t> &vector_out_len_ch2,
		hls::stream<rbm_size_t> &vector_out_len_ch3){
#pragma HLS INLINE off
#pragma HLS PIPELINE II=1 style=flp
	if(vector_in_len.empty() == bool(0)){
		rbm_size_t vector_in_length;
		vector_in_length = vector_in_len.read();
		vector_in_len_ch1.write(vector_in_length);
		vector_in_len_ch2.write(vector_in_length);
		vector_in_len_ch3.write(vector_in_length);
	}
	if(vector_out_len.empty() == bool(0)){
		rbm_size_t vector_out_length;
		vector_out_length = vector_out_len.read();
		vector_out_len_ch1.write(vector_out_length);
		vector_out_len_ch2.write(vector_out_length);
		vector_out_len_ch3.write(vector_out_length);
	}
}

void double_buffer(hls::stream<control_t> &control_in,
		hls::stream<rbm_size_t> &vector_in_len,
		hls::stream<stream_data_v_t> &buffer_in,
		hls::stream<buffer_data_t> &buffer_out){
#pragma HLS INTERFACE mode=ap_ctrl_none port=return
#pragma HLS PIPELINE II=1 style=flp

	static control_t control = CTRL_IDLE;
	static rbm_size_t vector_in_length;
	static rbm_size_t vector_in_length_minus_1;
	hls_thread_local hls::stream<buffer_data_t, 1024> buffer[2];
#pragma HLS ARRAY_PARTITION variable=buffer type=complete dim=0

	if(!control_in.empty()){
		control = control_in.read();
	}else if(control == CTRL_SIZE_IN){
		if(!vector_in_len.empty()){
			vector_in_length = vector_in_len.read();
			vector_in_length_minus_1 = vector_in_length - 1;
		}
	}else if(control == CTRL_START){
		static buffer_status_t buffer_status[2] = {0};
#pragma HLS ARRAY_PARTITION variable=buffer_status type=complete dim=0

		bool buffer_data_counter_increase[2] = {0};
#pragma HLS ARRAY_PARTITION variable=buffer_data_counter_increase type=complete dim=0
		bool buffer_data_counter_decrease[2] = {0};
#pragma HLS ARRAY_PARTITION variable=buffer_data_counter_decrease type=complete dim=0

		static bool buffer_write_select = 0;
		static bool buffer_write_en = 0;

		stream_data_v_t stream_data_v = {0};
		bool buffer_written[2] = {0};
		bool buffer_in_empty = buffer_in.empty();
		bool buffer_in_write_en = (buffer_write_en & (~buffer_in_empty));

		static buffer_data_t buffer_data_read = {0};
		if(buffer_data_read.valid){
			buffer_out.write(buffer_data_read);
		}

		if(buffer_in_write_en == bool(1)){
			stream_data_v = buffer_in.read();
			if(!buffer_write_select){
				buffer_data_t buffer_data_write = {0};
				buffer_data_write.data = stream_data_v.data;
				buffer_data_write.axis_last = stream_data_v.axis_last;
				buffer[0].write(buffer_data_write);
				buffer_data_counter_increase[0] = 1;
				buffer_data_counter_increase[1] = 0;
				buffer_written[0] = 1;
			}else{
				buffer_data_t buffer_data_write = {0};
				buffer_data_write.data = stream_data_v.data;
				buffer_data_write.axis_last = stream_data_v.axis_last;
				buffer[1].write(buffer_data_write);
				buffer_data_counter_increase[0] = 0;
				buffer_data_counter_increase[1] = 1;
				buffer_written[1] = 1;
			}
		}else{
			buffer_data_counter_increase[0] = 0;
			buffer_data_counter_increase[1] = 0;
		}

		static bool buffer_read_select = 0;
		static bool buffer0_no_read = 0;
		static bool buffer1_no_read = 0;
		static bool buffer0_read_en = 0;
		static bool buffer1_read_en = 0;


		if(buffer0_read_en){
			buffer_data_read = buffer[0].read();
			buffer_data_read.valid = bool(1);
			buffer_data_read.first_data = bool(buffer_status[0].data_counter == (vector_in_length));
			buffer_data_read.last_data = bool(buffer_status[0].data_counter == (1));
			buffer_data_counter_decrease[0] = 1;
			buffer_data_counter_decrease[1] = 0;
		}else if(buffer1_read_en){
			buffer_data_read = buffer[1].read();
			buffer_data_read.valid = bool(1);
			buffer_data_read.first_data = bool(buffer_status[1].data_counter == (vector_in_length));
			buffer_data_read.last_data = bool(buffer_status[1].data_counter == (1));
			buffer_data_counter_decrease[0] = 0;
			buffer_data_counter_decrease[1] = 1;
		}else{
			buffer_data_counter_decrease[0] = 0;
			buffer_data_counter_decrease[1] = 0;
			buffer_data_read.valid = bool(0);
		}

		for(ap_uint4 i1 = 0; i1 < 2; i1++){
			if(buffer_status[i1].data_counter >= vector_in_length_minus_1){
				buffer_status[i1].write_valid = bool(0);
				buffer_status[i1].read_valid = bool(1);
			}else if(buffer_status[i1].data_counter <= (1)){
				buffer_status[i1].write_valid = bool(1);
				buffer_status[i1].read_valid = bool(0);
			}else{
				buffer_status[i1].write_valid = buffer_status[i1].write_valid;
				buffer_status[i1].read_valid = buffer_status[i1].read_valid;
			}
		}

		buffer_write_en = (buffer_status[0].write_valid | buffer_status[1].write_valid);
		buffer_write_select = ((buffer_status[1].write_valid) & (~buffer_status[0].write_valid));


		buffer0_no_read = (~buffer_status[0].read_valid);
		buffer1_no_read = (~buffer_status[1].read_valid);
		buffer0_read_en = buffer_status[0].read_valid;
		buffer1_read_en = buffer_status[1].read_valid;

		buffer_status[0].data_counter = buffer_status[0].data_counter +
				buffer_data_counter_increase[0] - buffer_data_counter_decrease[0];
		buffer_status[1].data_counter = buffer_status[1].data_counter +
					buffer_data_counter_increase[1] - buffer_data_counter_decrease[1];
	}
}


void data_flow_control(
		hls::stream<control_t> &stream_control_in,
		hls::stream<rbm_size_t> &stream_vector_in_len,
		hls::stream<rbm_size_t> &stream_vector_out_len,
		hls::stream<buffer_data_t> &stream_buffer_in,
		hls::stream<systolic_data_t> &stream_systolic_in,
		hls::stream<systolic_index_t> &stream_weight_row_index,
		hls::stream<ap_uint10> &stream_bias_col_index,
		hls::stream<pe_valid_t> &stream_pe_valid){
#pragma HLS INLINE off
#pragma HLS PIPELINE II=1 style=flp

	static control_t control = 0;
	static rbm_size_t vector_in_length = 0;
	static rbm_size_t vector_out_length = 0;
	static rbm_size_t vector_in_length_minus_1 = 0;
	static rbm_size_t vector_out_length_minus_1 = 0;
	static buffer_data_tag_t data_tag_delay_line[SYSTOLIC_PE_NUM] = {0};
#pragma HLS ARRAY_PARTITION variable=data_tag_delay_line type=complete
	static buffer_data_tag_t data_tag_delay_line_input = {0};
	static buffer_data_t data_delay_line_input = {0};
	static buffer_status_t systolic_input = {0};
	static pe_valid_t pe_valid = 0;

	if(stream_control_in.empty() == bool(0)){
		control = stream_control_in.read();
	}else if(control == CTRL_SIZE_IN){
		if(stream_vector_in_len.empty() == bool(0)){
			vector_in_length = stream_vector_in_len.read();
			vector_in_length_minus_1 = vector_in_length - 1;
		}

		if(stream_vector_out_len.empty() == bool(0)){
			vector_out_length = stream_vector_out_len.read();
			vector_out_length_minus_1 = vector_out_length - 1;
		}
	}else if(control == CTRL_START){
		static bool pad_en = 0;
		static ap_uint10 pad_index = 0;

		// systolic_input_temp get
		static buffer_data_t systolic_input_temp = {0};
		static buffer_data_tag_t tag_delay_line[SYSTOLIC_PE_NUM];

		if(systolic_input_temp.valid){
			systolic_data_t systolic_input = {0};
			systolic_input.valid = (!systolic_input_temp.pad_zero);
			systolic_input.first = systolic_input_temp.first_data;
			systolic_input.last = systolic_input_temp.last_data;
			systolic_input.last_loop = bool(1);
			systolic_input.axis_last = systolic_input_temp.axis_last;
			systolic_input.data = systolic_input_temp.data;
			stream_systolic_in.write(systolic_input);

			ap_uint10 bias_col_index_out = 0;
			systolic_index_t weight_row_index_out = {0};
#pragma HLS ARRAY_PARTITION variable=weight_row_index_out type=complete

			bias_col_index_out = 0;
			for(ap_uint10 i1 = 0; i1 < SYSTOLIC_PE_NUM; i1++){
				pe_valid[i1] = bool(i1 < vector_out_length);
				if(pe_valid[i1]){
					if(tag_delay_line[i1].first_data){
						weight_row_index_out.index[i1] = 0;
					}else{
						weight_row_index_out.index[i1]++;
					}
					if((tag_delay_line[i1].last_data)){
						bias_col_index_out = i1;
					}
				}
			}
			stream_weight_row_index.write(weight_row_index_out);
			stream_pe_valid.write(pe_valid);
			stream_bias_col_index.write(bias_col_index_out);
		}

		static bool pad_axis_last = 0;
		static bool pad_to_pe_num = 0;
		buffer_data_t buffer_data_zero = {0};
		buffer_data_t stream_buffer_in_temp = {0};

		if(pad_to_pe_num){
			systolic_input_temp.valid = bool(1);
			systolic_input_temp.first_data = bool(pad_index == 0);
			systolic_input_temp.last_data = bool(pad_index == (SYSTOLIC_PE_NUM - 1));
			systolic_input_temp.pad_zero = bool(0);
			systolic_input_temp.data = 0;

			if(pad_index == (SYSTOLIC_PE_NUM - 1)){
				if(pad_axis_last){
					systolic_input_temp.axis_last = 1;
					pad_axis_last = 0;
				}else{
					systolic_input_temp.axis_last = 0;
					pad_axis_last = pad_axis_last;
				}
				pad_to_pe_num = 0;
			}else{
				systolic_input_temp.axis_last = 0;
				pad_axis_last = pad_axis_last;
				pad_to_pe_num = 1;
			}
		}else if(pad_en){
			static ap_uint10 last_pad_index = 0;
			systolic_input_temp.valid = bool(1);
			systolic_input_temp.first_data = bool(last_pad_index == 0);
			systolic_input_temp.last_data = bool(last_pad_index == (SYSTOLIC_PE_NUM - 1));
			systolic_input_temp.axis_last = 0;
			systolic_input_temp.pad_zero = bool(1);
			systolic_input_temp.data = 0;

			if((last_pad_index == (SYSTOLIC_PE_NUM - 1))){
				last_pad_index = 0;
				pad_en = 0;
			}else{
				last_pad_index++;
				pad_en = 1;
			}
		}else if(stream_buffer_in.empty() == 0){
			stream_buffer_in_temp = stream_buffer_in.read();
			systolic_input_temp = stream_buffer_in_temp;

			if(vector_in_length < SYSTOLIC_PE_NUM){
				if(systolic_input_temp.last_data){
					pad_to_pe_num = bool(1);
					systolic_input_temp.last_data = 0;
					if(systolic_input_temp.axis_last){
						systolic_input_temp.axis_last = 0;
						pad_axis_last = 1;
						pad_en = bool(1);
					}else{
						systolic_input_temp.axis_last = 0;
						pad_axis_last = 0;
					}
				}else{
					pad_to_pe_num = bool(0);
					pad_axis_last = 0;
					pad_en = bool(0);
				}
			}else{
				if(systolic_input_temp.axis_last){
					pad_en = bool(1);
				}else{
					pad_en = bool(0);
				}
			}
		}else{
			systolic_input_temp = buffer_data_zero;
		}
		if(systolic_input_temp.valid){
			if(systolic_input_temp.first_data){
				pad_index = 0;
			}else{
				pad_index++;
			}
		}

		if(systolic_input_temp.valid == bool(1)){
			for(ap_uint10 i1 = (SYSTOLIC_PE_NUM - 1); i1 > 0; i1--){
				tag_delay_line[i1] = tag_delay_line[i1-1];
			}
			tag_delay_line[0].valid = systolic_input_temp.valid;
			tag_delay_line[0].first_data = systolic_input_temp.first_data;
			tag_delay_line[0].last_data = systolic_input_temp.last_data;
			tag_delay_line[0].axis_last = systolic_input_temp.axis_last;
			tag_delay_line[0].pad_zero = systolic_input_temp.pad_zero;
		}
	}
}


void weight_bias_memory(hls::stream<control_t> &stream_control_in,
		hls::stream<rbm_size_t> &stream_vector_in_len,
		hls::stream<rbm_size_t> &stream_vector_out_len,
		hls::stream<data_w_t> &stream_weight_in,
		hls::stream<data_b_t> &stream_bias_in,
		hls::stream<systolic_index_t> &stream_weight_row_index,
		hls::stream<ap_uint10> &stream_bias_col_index,
		hls::stream<systolic_weight_t> &stream_weight_out,
		hls::stream<data_b_t> &stream_bias_out){
#pragma HLS INLINE off
#pragma HLS PIPELINE II=1 style=flp
	static control_t control = 0;
	static rbm_size_t vector_in_length = 0;
	static rbm_size_t vector_out_length = 0;
	static data_w_t weight[VECTOR_IN_LEN][VECTOR_OUT_LEN] = {0};
#pragma HLS ARRAY_PARTITION variable=weight dim=2 type=complete
	static data_b_t bias[VECTOR_OUT_LEN] = {0};
	static ap_uint10 weight_in_row_index = 0;
	static ap_uint10 weight_in_col_index = 0;
	static ap_uint10 bias_in_col_index = 0;
	static systolic_index_t weight_row_index;
#pragma HLS ARRAY_PARTITION variable=weight_row_index type=complete
	static ap_uint10 bias_col_index = 0;
	systolic_weight_t weight_vector_temp;
#pragma HLS ARRAY_PARTITION variable=weight_vector_temp type=complete
	static bool stream_index_valid = 0;

	if(stream_control_in.empty() == bool(0)){
		control = stream_control_in.read();
		weight_in_row_index = 0;
		weight_in_col_index = 0;
		bias_in_col_index = 0;
	}else if(control == CTRL_SIZE_IN){
		if(stream_vector_in_len.empty() == bool(0)){
			vector_in_length = stream_vector_in_len.read();
		}
		if(stream_vector_out_len.empty() == bool(0)){
			vector_out_length = stream_vector_out_len.read();
		}
	}else if(control == CTRL_WEIGHT_IN){
		stream_index_valid = 0;
		bool weight_in_row_index_valid;
		weight_in_row_index_valid = ((weight_in_row_index - (vector_in_length)) != 0);
		bool weight_in_col_index_valid;
		weight_in_col_index_valid = ((weight_in_col_index - (vector_out_length - 1)) != 0);
		if(stream_weight_in.empty() == bool(0)){
			data_w_t weight_temp = stream_weight_in.read();
			if(weight_in_row_index_valid){
				weight[weight_in_row_index][weight_in_col_index] = weight_temp;
//				printf("weight[%d][%d] = %f\r\n",
//						int(weight_in_row_index), int(weight_in_col_index), float(weight_temp));
				if(weight_in_col_index_valid){
					weight_in_col_index++;
					weight_in_row_index = weight_in_row_index;
				}else{
					weight_in_col_index = 0;
					weight_in_row_index++;
				}
			}
		}
	}else if(control == CTRL_BIAS_IN){
		stream_index_valid = 0;
		bool bias_in_col_index_valid;
		bias_in_col_index_valid = ((vector_out_length - bias_in_col_index) != 0);
		if(stream_bias_in.empty() == bool(0)){
			data_b_t bias_temp = stream_bias_in.read();
			if(bias_in_col_index_valid){
				bias[bias_in_col_index] = bias_temp;
				bias_in_col_index++;
			}
		}
	}else if(control == CTRL_START){
		if(stream_index_valid){
			stream_bias_out.write(bias[bias_col_index]);
			for(ap_uint10 i1 = 0; i1 < SYSTOLIC_PE_NUM; i1++){
				weight_vector_temp.data[i1] = weight[weight_row_index.index[i1]][i1];
			}
			stream_weight_out.write(weight_vector_temp);
		}
		if(stream_bias_col_index.empty() == 0){
			stream_index_valid = 1;
			bias_col_index = stream_bias_col_index.read();
			weight_row_index = stream_weight_row_index.read();
		}else{
			stream_index_valid = 0;
		}
	}
}


void systolic_array(
		hls::stream<rbm_size_t> &stream_vector_out_len,
		hls::stream<systolic_data_t> &stream_systolic_in,
		hls::stream<systolic_weight_t> &stream_weight_out,
		hls::stream<data_b_t> &stream_bias_in,
		hls::stream<pe_valid_t> &stream_pe_valid,
		hls::stream<stream_data_h_t> &stream_vector_out){
#pragma HLS INLINE off
#pragma HLS PIPELINE II=1 style=flp

	static rbm_size_t vector_out_len = 0;
	static systolic_data_t systolic_in_delay_line[SYSTOLIC_PE_NUM];
#pragma HLS ARRAY_PARTITION variable=systolic_in_delay_line type=complete
	static data_h_t process_element_reg[SYSTOLIC_PE_NUM] = {0};
#pragma HLS ARRAY_PARTITION variable=process_element_reg type=complete
	static data_h_t systolic_out_reg[SYSTOLIC_PE_NUM] = {0};
#pragma HLS ARRAY_PARTITION variable=systolic_out_reg type=complete
	static ap_uint<SYSTOLIC_PE_NUM> systolic_out_flag = 0;
	static systolic_weight_t weight;
#pragma HLS ARRAY_PARTITION variable=weight type=complete
	static data_b_t bias;
	static pe_valid_t pe_valid;
	static ap_uint10 pe_last_valid = 0;
	static bool axis_last;
	static stream_data_h_t systolic_out;

	if(systolic_out_flag != 0){
		stream_vector_out.write(systolic_out);
	}

	if(stream_vector_out_len.empty() == 0){
		systolic_out_flag = 0;
		vector_out_len = stream_vector_out_len.read();
		pe_last_valid = vector_out_len - 1;
	}else if(stream_systolic_in.empty() == 0){
		static systolic_data_t systolic_in;
		for(ap_uint10 i1 = 0; i1 < SYSTOLIC_PE_NUM; i1++){
			if((pe_valid[i1]) && (systolic_in_delay_line[i1].valid)){
				process_element_reg[i1] += weight.data[i1] * systolic_in_delay_line[i1].data;
				if(systolic_in_delay_line[i1].last){
					if(i1 == 0){
						printf("weight.data[0] = %f, process_element_reg[0] = %f\r\n",
								float(weight.data[0]), float(process_element_reg[0]));
					}
					systolic_out_reg[i1] = process_element_reg[i1] + bias;
					systolic_out_flag[i1] = bool(1);
					process_element_reg[i1] = 0;
				}else{
					systolic_out_flag[i1] = bool(0);
					systolic_out_reg[i1] = 0;
				}
			}else{
				systolic_out_flag[i1] = bool(0);
				systolic_out_reg[i1] = 0;
			}
		}

		if(pe_valid[pe_last_valid]){
			axis_last = bool((systolic_in_delay_line[pe_last_valid].axis_last));
		}else{
			axis_last = 0;
		}

		if(systolic_out_flag != 0){
			for(ap_uint10 i1 = 0; i1 < SYSTOLIC_PE_NUM; i1++){
				if(systolic_out_flag[i1]){
					systolic_out.data = systolic_out_reg[i1];
				}
			}
		}else{
			systolic_out.data = 0;
		}
		systolic_out.axis_last = axis_last;

		systolic_in = stream_systolic_in.read();
		for(ap_uint10 i1 = (SYSTOLIC_PE_NUM - 1); i1 > 0; i1--){
			systolic_in_delay_line[i1] = systolic_in_delay_line[i1-1];
		}
		systolic_in_delay_line[0] = systolic_in;
		bias = stream_bias_in.read();
		pe_valid = stream_pe_valid.read();
		weight = stream_weight_out.read();
	}else{
		systolic_out_flag = 0;
	}
}


void sigmoid(hls::stream<control_t> &stream_sigmoid_switch,
		hls::stream<stream_data_h_t> &stream_systolic_out,
		hls::stream<stream_data_h_t> &stream_sigmoid_out){
#pragma HLS INLINE off
#pragma HLS PIPELINE II=1 style=flp

	static control_t sigmoid_switch = 0; // 1:sigmoid, 0:no-sigmoid
	static stream_data_h_t rbm_out = {0};
	static bool systolic_out_flag = 0;


	if(systolic_out_flag){
		stream_sigmoid_out.write(rbm_out);
	}

	if(stream_sigmoid_switch.empty() == bool(0)){
		sigmoid_switch = stream_sigmoid_switch.read();
		systolic_out_flag = 0;
	}else if(stream_systolic_out.empty() == bool(0)){
		stream_data_h_t systolic_out = {0};
		ap_uint16 table_index = 0;
		stream_data_h_t sigmoid_out;
		data_h_t sigmoid_temp;
		bool negetive_flag = 0;
		systolic_out_flag = 1;
		systolic_out = stream_systolic_out.read();
		if(systolic_out.data >= 0){
			sigmoid_temp = systolic_out.data;
			negetive_flag = 0;
		}else{
			sigmoid_temp = -systolic_out.data;
			negetive_flag = 1;
		}

		table_index = int(sigmoid_temp/sigmoid_split_delta);

		if(table_index > 4095){
			sigmoid_out.data = 1;
		}else{
			sigmoid_out.data = (sigmoid_temp - sigmoid_split_delta*table_index) * sigmoid_slope[table_index] +
					sigmoid_bias[table_index];
		}

		if(negetive_flag == 0){
			sigmoid_out.data = sigmoid_out.data;
		}else{
			sigmoid_out.data = data_h_t(1) - sigmoid_out.data;
		}
		sigmoid_out.axis_last = systolic_out.axis_last;
		if(sigmoid_switch == 0){
			rbm_out = systolic_out;
		}else{
			rbm_out = sigmoid_out;
		}
	}else{
		systolic_out_flag = 0;
	}
}
