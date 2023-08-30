set SynModuleInfo {
  {SRCNAME control_split MODELNAME control_split RTLNAME RBM_control_split
    SUBMODULES {
      {MODELNAME RBM_regslice_both RTLNAME RBM_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME RBM_regslice_both_U}
    }
  }
  {SRCNAME rbm_size_split MODELNAME rbm_size_split RTLNAME RBM_rbm_size_split}
  {SRCNAME double_buffer MODELNAME double_buffer RTLNAME RBM_double_buffer
    SUBMODULES {
      {MODELNAME RBM_fifo_w21_d1024_A RTLNAME RBM_fifo_w21_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME buffer_0_U}
      {MODELNAME RBM_fifo_w21_d1024_A RTLNAME RBM_fifo_w21_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME buffer_1_U}
    }
  }
  {SRCNAME data_flow_control MODELNAME data_flow_control RTLNAME RBM_data_flow_control}
  {SRCNAME weight_bias_memory MODELNAME weight_bias_memory RTLNAME RBM_weight_bias_memory
    SUBMODULES {
      {MODELNAME RBM_weight_bias_memory_weight_bias_memory_stream_stream_stream_stream_stream_strebkb RTLNAME RBM_weight_bias_memory_weight_bias_memory_stream_stream_stream_stream_stream_strebkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME RBM_weight_bias_memory_bias_V_RAM_AUTO_1R1W RTLNAME RBM_weight_bias_memory_bias_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME systolic_array MODELNAME systolic_array RTLNAME RBM_systolic_array
    SUBMODULES {
      {MODELNAME RBM_mux_646_1_1_1 RTLNAME RBM_mux_646_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME RBM_mul_mul_25s_16s_41_4_1 RTLNAME RBM_mul_mul_25s_16s_41_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sigmoid MODELNAME sigmoid RTLNAME RBM_sigmoid
    SUBMODULES {
      {MODELNAME RBM_mul_55s_24ns_79_2_1 RTLNAME RBM_mul_55s_24ns_79_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME RBM_sigmoid_sigmoid_slope_V_ROM_AUTO_1R RTLNAME RBM_sigmoid_sigmoid_slope_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME RBM_sigmoid_sigmoid_bias_V_ROM_AUTO_1R RTLNAME RBM_sigmoid_sigmoid_bias_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME RBM MODELNAME RBM RTLNAME RBM IS_TOP 1
    SUBMODULES {
      {MODELNAME RBM_fifo_w8_d128_S RTLNAME RBM_fifo_w8_d128_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME control_ch1_U}
      {MODELNAME RBM_fifo_w8_d128_S RTLNAME RBM_fifo_w8_d128_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME control_ch2_U}
      {MODELNAME RBM_fifo_w8_d128_S RTLNAME RBM_fifo_w8_d128_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME control_ch3_U}
      {MODELNAME RBM_fifo_w12_d128_A RTLNAME RBM_fifo_w12_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vector_in_len_ch1_U}
      {MODELNAME RBM_fifo_w12_d128_A RTLNAME RBM_fifo_w12_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vector_in_len_ch2_U}
      {MODELNAME RBM_fifo_w12_d128_A RTLNAME RBM_fifo_w12_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vector_in_len_ch3_U}
      {MODELNAME RBM_fifo_w12_d128_A RTLNAME RBM_fifo_w12_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vector_out_len_ch1_U}
      {MODELNAME RBM_fifo_w12_d128_A RTLNAME RBM_fifo_w12_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vector_out_len_ch2_U}
      {MODELNAME RBM_fifo_w12_d128_A RTLNAME RBM_fifo_w12_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vector_out_len_ch3_U}
      {MODELNAME RBM_fifo_w21_d1024_A_x RTLNAME RBM_fifo_w21_d1024_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME buffer_out_U}
      {MODELNAME RBM_fifo_w21_d128_A RTLNAME RBM_fifo_w21_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME systolic_input_U}
      {MODELNAME RBM_fifo_w640_d128_D RTLNAME RBM_fifo_w640_d128_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME stream_weight_row_index_U}
      {MODELNAME RBM_fifo_w10_d128_A RTLNAME RBM_fifo_w10_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME stream_bias_col_index_U}
      {MODELNAME RBM_fifo_w64_d128_A RTLNAME RBM_fifo_w64_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME stream_pe_valid_U}
      {MODELNAME RBM_fifo_w1600_d128_D RTLNAME RBM_fifo_w1600_d128_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME stream_weight_out_U}
      {MODELNAME RBM_fifo_w48_d128_A RTLNAME RBM_fifo_w48_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME stream_bias_out_U}
      {MODELNAME RBM_fifo_w49_d128_A RTLNAME RBM_fifo_w49_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME systolic_out_U}
      {MODELNAME RBM_start_for_double_buffer_U0 RTLNAME RBM_start_for_double_buffer_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_double_buffer_U0_U}
      {MODELNAME RBM_start_for_data_flow_control_U0 RTLNAME RBM_start_for_data_flow_control_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_data_flow_control_U0_U}
      {MODELNAME RBM_start_for_weight_bias_memory_U0 RTLNAME RBM_start_for_weight_bias_memory_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_weight_bias_memory_U0_U}
      {MODELNAME RBM_start_for_systolic_array_U0 RTLNAME RBM_start_for_systolic_array_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_systolic_array_U0_U}
      {MODELNAME RBM_start_for_sigmoid_U0 RTLNAME RBM_start_for_sigmoid_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_sigmoid_U0_U}
    }
  }
}
