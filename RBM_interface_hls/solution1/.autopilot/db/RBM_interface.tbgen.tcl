set moduleName RBM_interface
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {RBM_interface}
set C_modelType { void 0 }
set C_modelArgList {
	{ axis_control_in_V_data_V int 8 regular {axi_s 0 volatile  { axis_control_in Data } }  }
	{ axis_control_in_V_keep_V int 1 regular {axi_s 0 volatile  { axis_control_in Keep } }  }
	{ axis_control_in_V_strb_V int 1 regular {axi_s 0 volatile  { axis_control_in Strb } }  }
	{ axis_control_in_V_last_V int 1 regular {axi_s 0 volatile  { axis_control_in Last } }  }
	{ axis_sigmoid_switch_in_V_data_V int 8 regular {axi_s 0 volatile  { axis_sigmoid_switch_in Data } }  }
	{ axis_sigmoid_switch_in_V_keep_V int 1 regular {axi_s 0 volatile  { axis_sigmoid_switch_in Keep } }  }
	{ axis_sigmoid_switch_in_V_strb_V int 1 regular {axi_s 0 volatile  { axis_sigmoid_switch_in Strb } }  }
	{ axis_sigmoid_switch_in_V_last_V int 1 regular {axi_s 0 volatile  { axis_sigmoid_switch_in Last } }  }
	{ axis_vector_in_len_in_V_data_V int 16 regular {axi_s 0 volatile  { axis_vector_in_len_in Data } }  }
	{ axis_vector_in_len_in_V_keep_V int 2 regular {axi_s 0 volatile  { axis_vector_in_len_in Keep } }  }
	{ axis_vector_in_len_in_V_strb_V int 2 regular {axi_s 0 volatile  { axis_vector_in_len_in Strb } }  }
	{ axis_vector_in_len_in_V_last_V int 1 regular {axi_s 0 volatile  { axis_vector_in_len_in Last } }  }
	{ axis_vector_out_len_in_V_data_V int 16 regular {axi_s 0 volatile  { axis_vector_out_len_in Data } }  }
	{ axis_vector_out_len_in_V_keep_V int 2 regular {axi_s 0 volatile  { axis_vector_out_len_in Keep } }  }
	{ axis_vector_out_len_in_V_strb_V int 2 regular {axi_s 0 volatile  { axis_vector_out_len_in Strb } }  }
	{ axis_vector_out_len_in_V_last_V int 1 regular {axi_s 0 volatile  { axis_vector_out_len_in Last } }  }
	{ axis_vector_in_V_data_V int 16 regular {axi_s 0 volatile  { axis_vector_in Data } }  }
	{ axis_vector_in_V_keep_V int 2 regular {axi_s 0 volatile  { axis_vector_in Keep } }  }
	{ axis_vector_in_V_strb_V int 2 regular {axi_s 0 volatile  { axis_vector_in Strb } }  }
	{ axis_vector_in_V_last_V int 1 regular {axi_s 0 volatile  { axis_vector_in Last } }  }
	{ axis_weight_in_V_data_V int 32 regular {axi_s 0 volatile  { axis_weight_in Data } }  }
	{ axis_weight_in_V_keep_V int 4 regular {axi_s 0 volatile  { axis_weight_in Keep } }  }
	{ axis_weight_in_V_strb_V int 4 regular {axi_s 0 volatile  { axis_weight_in Strb } }  }
	{ axis_weight_in_V_last_V int 1 regular {axi_s 0 volatile  { axis_weight_in Last } }  }
	{ axis_bias_in_V_data_V int 32 regular {axi_s 0 volatile  { axis_bias_in Data } }  }
	{ axis_bias_in_V_keep_V int 4 regular {axi_s 0 volatile  { axis_bias_in Keep } }  }
	{ axis_bias_in_V_strb_V int 4 regular {axi_s 0 volatile  { axis_bias_in Strb } }  }
	{ axis_bias_in_V_last_V int 1 regular {axi_s 0 volatile  { axis_bias_in Last } }  }
	{ axis_vector_out_V_data_V int 32 regular {axi_s 1 volatile  { axis_vector_out Data } }  }
	{ axis_vector_out_V_keep_V int 4 regular {axi_s 1 volatile  { axis_vector_out Keep } }  }
	{ axis_vector_out_V_strb_V int 4 regular {axi_s 1 volatile  { axis_vector_out Strb } }  }
	{ axis_vector_out_V_last_V int 1 regular {axi_s 1 volatile  { axis_vector_out Last } }  }
	{ stream_control_in int 8 regular {axi_s 1 volatile  { stream_control_in Data } }  }
	{ stream_sigmoid_switch_in int 8 regular {axi_s 1 volatile  { stream_sigmoid_switch_in Data } }  }
	{ stream_vector_in_len_in int 16 regular {axi_s 1 volatile  { stream_vector_in_len_in Data } }  }
	{ stream_vector_out_len_in int 16 regular {axi_s 1 volatile  { stream_vector_out_len_in Data } }  }
	{ stream_vector_in int 32 regular {axi_s 1 volatile  { stream_vector_in Data } }  }
	{ stream_weight_in int 32 regular {axi_s 1 volatile  { stream_weight_in Data } }  }
	{ stream_bias_in int 48 regular {axi_s 1 volatile  { stream_bias_in Data } }  }
	{ stream_vector_out int 128 regular {axi_s 0 volatile  { stream_vector_out Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "axis_control_in_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "axis_control_in_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axis_control_in_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axis_control_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axis_sigmoid_switch_in_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "axis_sigmoid_switch_in_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axis_sigmoid_switch_in_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axis_sigmoid_switch_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axis_vector_in_len_in_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "axis_vector_in_len_in_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "axis_vector_in_len_in_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "axis_vector_in_len_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axis_vector_out_len_in_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "axis_vector_out_len_in_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "axis_vector_out_len_in_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "axis_vector_out_len_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axis_vector_in_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "axis_vector_in_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "axis_vector_in_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "axis_vector_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axis_weight_in_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "axis_weight_in_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "axis_weight_in_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "axis_weight_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axis_bias_in_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "axis_bias_in_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "axis_bias_in_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "axis_bias_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axis_vector_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axis_vector_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axis_vector_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axis_vector_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_control_in", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_sigmoid_switch_in", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_vector_in_len_in", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_vector_out_len_in", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_vector_in", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_weight_in", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_bias_in", "interface" : "axis", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_vector_out", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ axis_control_in_TDATA sc_in sc_lv 8 signal 0 } 
	{ axis_control_in_TVALID sc_in sc_logic 1 invld 3 } 
	{ axis_control_in_TREADY sc_out sc_logic 1 inacc 3 } 
	{ axis_control_in_TKEEP sc_in sc_lv 1 signal 1 } 
	{ axis_control_in_TSTRB sc_in sc_lv 1 signal 2 } 
	{ axis_control_in_TLAST sc_in sc_lv 1 signal 3 } 
	{ axis_sigmoid_switch_in_TDATA sc_in sc_lv 8 signal 4 } 
	{ axis_sigmoid_switch_in_TVALID sc_in sc_logic 1 invld 7 } 
	{ axis_sigmoid_switch_in_TREADY sc_out sc_logic 1 inacc 7 } 
	{ axis_sigmoid_switch_in_TKEEP sc_in sc_lv 1 signal 5 } 
	{ axis_sigmoid_switch_in_TSTRB sc_in sc_lv 1 signal 6 } 
	{ axis_sigmoid_switch_in_TLAST sc_in sc_lv 1 signal 7 } 
	{ axis_vector_in_len_in_TDATA sc_in sc_lv 16 signal 8 } 
	{ axis_vector_in_len_in_TVALID sc_in sc_logic 1 invld 11 } 
	{ axis_vector_in_len_in_TREADY sc_out sc_logic 1 inacc 11 } 
	{ axis_vector_in_len_in_TKEEP sc_in sc_lv 2 signal 9 } 
	{ axis_vector_in_len_in_TSTRB sc_in sc_lv 2 signal 10 } 
	{ axis_vector_in_len_in_TLAST sc_in sc_lv 1 signal 11 } 
	{ axis_vector_out_len_in_TDATA sc_in sc_lv 16 signal 12 } 
	{ axis_vector_out_len_in_TVALID sc_in sc_logic 1 invld 15 } 
	{ axis_vector_out_len_in_TREADY sc_out sc_logic 1 inacc 15 } 
	{ axis_vector_out_len_in_TKEEP sc_in sc_lv 2 signal 13 } 
	{ axis_vector_out_len_in_TSTRB sc_in sc_lv 2 signal 14 } 
	{ axis_vector_out_len_in_TLAST sc_in sc_lv 1 signal 15 } 
	{ axis_vector_in_TDATA sc_in sc_lv 16 signal 16 } 
	{ axis_vector_in_TVALID sc_in sc_logic 1 invld 19 } 
	{ axis_vector_in_TREADY sc_out sc_logic 1 inacc 19 } 
	{ axis_vector_in_TKEEP sc_in sc_lv 2 signal 17 } 
	{ axis_vector_in_TSTRB sc_in sc_lv 2 signal 18 } 
	{ axis_vector_in_TLAST sc_in sc_lv 1 signal 19 } 
	{ axis_weight_in_TDATA sc_in sc_lv 32 signal 20 } 
	{ axis_weight_in_TVALID sc_in sc_logic 1 invld 23 } 
	{ axis_weight_in_TREADY sc_out sc_logic 1 inacc 23 } 
	{ axis_weight_in_TKEEP sc_in sc_lv 4 signal 21 } 
	{ axis_weight_in_TSTRB sc_in sc_lv 4 signal 22 } 
	{ axis_weight_in_TLAST sc_in sc_lv 1 signal 23 } 
	{ axis_bias_in_TDATA sc_in sc_lv 32 signal 24 } 
	{ axis_bias_in_TVALID sc_in sc_logic 1 invld 27 } 
	{ axis_bias_in_TREADY sc_out sc_logic 1 inacc 27 } 
	{ axis_bias_in_TKEEP sc_in sc_lv 4 signal 25 } 
	{ axis_bias_in_TSTRB sc_in sc_lv 4 signal 26 } 
	{ axis_bias_in_TLAST sc_in sc_lv 1 signal 27 } 
	{ axis_vector_out_TDATA sc_out sc_lv 32 signal 28 } 
	{ axis_vector_out_TVALID sc_out sc_logic 1 outvld 31 } 
	{ axis_vector_out_TREADY sc_in sc_logic 1 outacc 31 } 
	{ axis_vector_out_TKEEP sc_out sc_lv 4 signal 29 } 
	{ axis_vector_out_TSTRB sc_out sc_lv 4 signal 30 } 
	{ axis_vector_out_TLAST sc_out sc_lv 1 signal 31 } 
	{ stream_control_in_TDATA sc_out sc_lv 8 signal 32 } 
	{ stream_control_in_TVALID sc_out sc_logic 1 outvld 32 } 
	{ stream_control_in_TREADY sc_in sc_logic 1 outacc 32 } 
	{ stream_sigmoid_switch_in_TDATA sc_out sc_lv 8 signal 33 } 
	{ stream_sigmoid_switch_in_TVALID sc_out sc_logic 1 outvld 33 } 
	{ stream_sigmoid_switch_in_TREADY sc_in sc_logic 1 outacc 33 } 
	{ stream_vector_in_len_in_TDATA sc_out sc_lv 16 signal 34 } 
	{ stream_vector_in_len_in_TVALID sc_out sc_logic 1 outvld 34 } 
	{ stream_vector_in_len_in_TREADY sc_in sc_logic 1 outacc 34 } 
	{ stream_vector_out_len_in_TDATA sc_out sc_lv 16 signal 35 } 
	{ stream_vector_out_len_in_TVALID sc_out sc_logic 1 outvld 35 } 
	{ stream_vector_out_len_in_TREADY sc_in sc_logic 1 outacc 35 } 
	{ stream_vector_in_TDATA sc_out sc_lv 32 signal 36 } 
	{ stream_vector_in_TVALID sc_out sc_logic 1 outvld 36 } 
	{ stream_vector_in_TREADY sc_in sc_logic 1 outacc 36 } 
	{ stream_weight_in_TDATA sc_out sc_lv 32 signal 37 } 
	{ stream_weight_in_TVALID sc_out sc_logic 1 outvld 37 } 
	{ stream_weight_in_TREADY sc_in sc_logic 1 outacc 37 } 
	{ stream_bias_in_TDATA sc_out sc_lv 48 signal 38 } 
	{ stream_bias_in_TVALID sc_out sc_logic 1 outvld 38 } 
	{ stream_bias_in_TREADY sc_in sc_logic 1 outacc 38 } 
	{ stream_vector_out_TDATA sc_in sc_lv 128 signal 39 } 
	{ stream_vector_out_TVALID sc_in sc_logic 1 invld 39 } 
	{ stream_vector_out_TREADY sc_out sc_logic 1 inacc 39 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "axis_control_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "axis_control_in_V_data_V", "role": "default" }} , 
 	{ "name": "axis_control_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "axis_control_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_control_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "axis_control_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_control_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_control_in_V_keep_V", "role": "default" }} , 
 	{ "name": "axis_control_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_control_in_V_strb_V", "role": "default" }} , 
 	{ "name": "axis_control_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_control_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_sigmoid_switch_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "axis_sigmoid_switch_in_V_data_V", "role": "default" }} , 
 	{ "name": "axis_sigmoid_switch_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "axis_sigmoid_switch_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_sigmoid_switch_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "axis_sigmoid_switch_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_sigmoid_switch_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_sigmoid_switch_in_V_keep_V", "role": "default" }} , 
 	{ "name": "axis_sigmoid_switch_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_sigmoid_switch_in_V_strb_V", "role": "default" }} , 
 	{ "name": "axis_sigmoid_switch_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_sigmoid_switch_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_vector_in_len_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "axis_vector_in_len_in_V_data_V", "role": "default" }} , 
 	{ "name": "axis_vector_in_len_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "axis_vector_in_len_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_vector_in_len_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "axis_vector_in_len_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_vector_in_len_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axis_vector_in_len_in_V_keep_V", "role": "default" }} , 
 	{ "name": "axis_vector_in_len_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axis_vector_in_len_in_V_strb_V", "role": "default" }} , 
 	{ "name": "axis_vector_in_len_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_vector_in_len_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_vector_out_len_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "axis_vector_out_len_in_V_data_V", "role": "default" }} , 
 	{ "name": "axis_vector_out_len_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "axis_vector_out_len_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_vector_out_len_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "axis_vector_out_len_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_vector_out_len_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axis_vector_out_len_in_V_keep_V", "role": "default" }} , 
 	{ "name": "axis_vector_out_len_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axis_vector_out_len_in_V_strb_V", "role": "default" }} , 
 	{ "name": "axis_vector_out_len_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_vector_out_len_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_vector_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "axis_vector_in_V_data_V", "role": "default" }} , 
 	{ "name": "axis_vector_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "axis_vector_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_vector_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "axis_vector_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_vector_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axis_vector_in_V_keep_V", "role": "default" }} , 
 	{ "name": "axis_vector_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axis_vector_in_V_strb_V", "role": "default" }} , 
 	{ "name": "axis_vector_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_vector_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_weight_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axis_weight_in_V_data_V", "role": "default" }} , 
 	{ "name": "axis_weight_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "axis_weight_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_weight_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "axis_weight_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_weight_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "axis_weight_in_V_keep_V", "role": "default" }} , 
 	{ "name": "axis_weight_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "axis_weight_in_V_strb_V", "role": "default" }} , 
 	{ "name": "axis_weight_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_weight_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_bias_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axis_bias_in_V_data_V", "role": "default" }} , 
 	{ "name": "axis_bias_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "axis_bias_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_bias_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "axis_bias_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_bias_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "axis_bias_in_V_keep_V", "role": "default" }} , 
 	{ "name": "axis_bias_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "axis_bias_in_V_strb_V", "role": "default" }} , 
 	{ "name": "axis_bias_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_bias_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_vector_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axis_vector_out_V_data_V", "role": "default" }} , 
 	{ "name": "axis_vector_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "axis_vector_out_V_last_V", "role": "default" }} , 
 	{ "name": "axis_vector_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "axis_vector_out_V_last_V", "role": "default" }} , 
 	{ "name": "axis_vector_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "axis_vector_out_V_keep_V", "role": "default" }} , 
 	{ "name": "axis_vector_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "axis_vector_out_V_strb_V", "role": "default" }} , 
 	{ "name": "axis_vector_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_vector_out_V_last_V", "role": "default" }} , 
 	{ "name": "stream_control_in_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_control_in", "role": "TDATA" }} , 
 	{ "name": "stream_control_in_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_control_in", "role": "TVALID" }} , 
 	{ "name": "stream_control_in_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_control_in", "role": "TREADY" }} , 
 	{ "name": "stream_sigmoid_switch_in_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_sigmoid_switch_in", "role": "TDATA" }} , 
 	{ "name": "stream_sigmoid_switch_in_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_sigmoid_switch_in", "role": "TVALID" }} , 
 	{ "name": "stream_sigmoid_switch_in_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_sigmoid_switch_in", "role": "TREADY" }} , 
 	{ "name": "stream_vector_in_len_in_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "stream_vector_in_len_in", "role": "TDATA" }} , 
 	{ "name": "stream_vector_in_len_in_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_vector_in_len_in", "role": "TVALID" }} , 
 	{ "name": "stream_vector_in_len_in_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_vector_in_len_in", "role": "TREADY" }} , 
 	{ "name": "stream_vector_out_len_in_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "stream_vector_out_len_in", "role": "TDATA" }} , 
 	{ "name": "stream_vector_out_len_in_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_vector_out_len_in", "role": "TVALID" }} , 
 	{ "name": "stream_vector_out_len_in_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_vector_out_len_in", "role": "TREADY" }} , 
 	{ "name": "stream_vector_in_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_vector_in", "role": "TDATA" }} , 
 	{ "name": "stream_vector_in_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_vector_in", "role": "TVALID" }} , 
 	{ "name": "stream_vector_in_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_vector_in", "role": "TREADY" }} , 
 	{ "name": "stream_weight_in_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_weight_in", "role": "TDATA" }} , 
 	{ "name": "stream_weight_in_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_weight_in", "role": "TVALID" }} , 
 	{ "name": "stream_weight_in_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_weight_in", "role": "TREADY" }} , 
 	{ "name": "stream_bias_in_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "stream_bias_in", "role": "TDATA" }} , 
 	{ "name": "stream_bias_in_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_bias_in", "role": "TVALID" }} , 
 	{ "name": "stream_bias_in_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_bias_in", "role": "TREADY" }} , 
 	{ "name": "stream_vector_out_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_vector_out", "role": "TDATA" }} , 
 	{ "name": "stream_vector_out_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_vector_out", "role": "TVALID" }} , 
 	{ "name": "stream_vector_out_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_vector_out", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42"],
		"CDFG" : "RBM_interface",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "axis_control_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_control_in",
				"BlockSignal" : [
					{"Name" : "axis_control_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_control_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_control_in"},
			{"Name" : "axis_control_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_control_in"},
			{"Name" : "axis_control_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_control_in"},
			{"Name" : "axis_sigmoid_switch_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_sigmoid_switch_in",
				"BlockSignal" : [
					{"Name" : "axis_sigmoid_switch_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_sigmoid_switch_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_sigmoid_switch_in"},
			{"Name" : "axis_sigmoid_switch_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_sigmoid_switch_in"},
			{"Name" : "axis_sigmoid_switch_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_sigmoid_switch_in"},
			{"Name" : "axis_vector_in_len_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_vector_in_len_in",
				"BlockSignal" : [
					{"Name" : "axis_vector_in_len_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_vector_in_len_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_vector_in_len_in"},
			{"Name" : "axis_vector_in_len_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_vector_in_len_in"},
			{"Name" : "axis_vector_in_len_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_vector_in_len_in"},
			{"Name" : "axis_vector_out_len_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_vector_out_len_in",
				"BlockSignal" : [
					{"Name" : "axis_vector_out_len_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_vector_out_len_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_vector_out_len_in"},
			{"Name" : "axis_vector_out_len_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_vector_out_len_in"},
			{"Name" : "axis_vector_out_len_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_vector_out_len_in"},
			{"Name" : "axis_vector_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_vector_in",
				"BlockSignal" : [
					{"Name" : "axis_vector_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_vector_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_vector_in"},
			{"Name" : "axis_vector_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_vector_in"},
			{"Name" : "axis_vector_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_vector_in"},
			{"Name" : "axis_weight_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_weight_in",
				"BlockSignal" : [
					{"Name" : "axis_weight_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_weight_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_weight_in"},
			{"Name" : "axis_weight_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_weight_in"},
			{"Name" : "axis_weight_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_weight_in"},
			{"Name" : "axis_bias_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_bias_in",
				"BlockSignal" : [
					{"Name" : "axis_bias_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_bias_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_bias_in"},
			{"Name" : "axis_bias_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_bias_in"},
			{"Name" : "axis_bias_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "axis_bias_in"},
			{"Name" : "axis_vector_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "axis_vector_out",
				"BlockSignal" : [
					{"Name" : "axis_vector_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_vector_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "axis_vector_out"},
			{"Name" : "axis_vector_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "axis_vector_out"},
			{"Name" : "axis_vector_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "axis_vector_out"},
			{"Name" : "stream_control_in", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_control_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_sigmoid_switch_in", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_sigmoid_switch_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_vector_in_len_in", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_vector_in_len_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_vector_out_len_in", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_vector_out_len_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_vector_in", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_vector_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_weight_in", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_weight_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_bias_in", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_bias_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_vector_out", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_vector_out_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_control_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_control_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_control_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_control_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_sigmoid_switch_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_sigmoid_switch_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_sigmoid_switch_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_sigmoid_switch_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_in_len_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_in_len_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_in_len_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_in_len_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_out_len_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_out_len_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_out_len_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_out_len_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_weight_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_weight_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_weight_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_weight_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_bias_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_bias_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_bias_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_bias_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axis_vector_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_control_in_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_sigmoid_switch_in_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_vector_in_len_in_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_vector_out_len_in_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_vector_in_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_weight_in_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_bias_in_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_vector_out_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	RBM_interface {
		axis_control_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		axis_control_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		axis_control_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		axis_control_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		axis_sigmoid_switch_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		axis_sigmoid_switch_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		axis_sigmoid_switch_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		axis_sigmoid_switch_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		axis_vector_in_len_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		axis_vector_in_len_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		axis_vector_in_len_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		axis_vector_in_len_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		axis_vector_out_len_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		axis_vector_out_len_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		axis_vector_out_len_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		axis_vector_out_len_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		axis_vector_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		axis_vector_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		axis_vector_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		axis_vector_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		axis_weight_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		axis_weight_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		axis_weight_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		axis_weight_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		axis_bias_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		axis_bias_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		axis_bias_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		axis_bias_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		axis_vector_out_V_data_V {Type O LastRead -1 FirstWrite 3}
		axis_vector_out_V_keep_V {Type O LastRead -1 FirstWrite 3}
		axis_vector_out_V_strb_V {Type O LastRead -1 FirstWrite 3}
		axis_vector_out_V_last_V {Type O LastRead -1 FirstWrite 3}
		stream_control_in {Type O LastRead -1 FirstWrite 3}
		stream_sigmoid_switch_in {Type O LastRead -1 FirstWrite 3}
		stream_vector_in_len_in {Type O LastRead -1 FirstWrite 3}
		stream_vector_out_len_in {Type O LastRead -1 FirstWrite 3}
		stream_vector_in {Type O LastRead -1 FirstWrite 3}
		stream_weight_in {Type O LastRead -1 FirstWrite 3}
		stream_bias_in {Type O LastRead -1 FirstWrite 3}
		stream_vector_out {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	axis_control_in_V_data_V { axis {  { axis_control_in_TDATA in_data 0 8 } } }
	axis_control_in_V_keep_V { axis {  { axis_control_in_TKEEP in_data 0 1 } } }
	axis_control_in_V_strb_V { axis {  { axis_control_in_TSTRB in_data 0 1 } } }
	axis_control_in_V_last_V { axis {  { axis_control_in_TVALID in_vld 0 1 }  { axis_control_in_TREADY in_acc 1 1 }  { axis_control_in_TLAST in_data 0 1 } } }
	axis_sigmoid_switch_in_V_data_V { axis {  { axis_sigmoid_switch_in_TDATA in_data 0 8 } } }
	axis_sigmoid_switch_in_V_keep_V { axis {  { axis_sigmoid_switch_in_TKEEP in_data 0 1 } } }
	axis_sigmoid_switch_in_V_strb_V { axis {  { axis_sigmoid_switch_in_TSTRB in_data 0 1 } } }
	axis_sigmoid_switch_in_V_last_V { axis {  { axis_sigmoid_switch_in_TVALID in_vld 0 1 }  { axis_sigmoid_switch_in_TREADY in_acc 1 1 }  { axis_sigmoid_switch_in_TLAST in_data 0 1 } } }
	axis_vector_in_len_in_V_data_V { axis {  { axis_vector_in_len_in_TDATA in_data 0 16 } } }
	axis_vector_in_len_in_V_keep_V { axis {  { axis_vector_in_len_in_TKEEP in_data 0 2 } } }
	axis_vector_in_len_in_V_strb_V { axis {  { axis_vector_in_len_in_TSTRB in_data 0 2 } } }
	axis_vector_in_len_in_V_last_V { axis {  { axis_vector_in_len_in_TVALID in_vld 0 1 }  { axis_vector_in_len_in_TREADY in_acc 1 1 }  { axis_vector_in_len_in_TLAST in_data 0 1 } } }
	axis_vector_out_len_in_V_data_V { axis {  { axis_vector_out_len_in_TDATA in_data 0 16 } } }
	axis_vector_out_len_in_V_keep_V { axis {  { axis_vector_out_len_in_TKEEP in_data 0 2 } } }
	axis_vector_out_len_in_V_strb_V { axis {  { axis_vector_out_len_in_TSTRB in_data 0 2 } } }
	axis_vector_out_len_in_V_last_V { axis {  { axis_vector_out_len_in_TVALID in_vld 0 1 }  { axis_vector_out_len_in_TREADY in_acc 1 1 }  { axis_vector_out_len_in_TLAST in_data 0 1 } } }
	axis_vector_in_V_data_V { axis {  { axis_vector_in_TDATA in_data 0 16 } } }
	axis_vector_in_V_keep_V { axis {  { axis_vector_in_TKEEP in_data 0 2 } } }
	axis_vector_in_V_strb_V { axis {  { axis_vector_in_TSTRB in_data 0 2 } } }
	axis_vector_in_V_last_V { axis {  { axis_vector_in_TVALID in_vld 0 1 }  { axis_vector_in_TREADY in_acc 1 1 }  { axis_vector_in_TLAST in_data 0 1 } } }
	axis_weight_in_V_data_V { axis {  { axis_weight_in_TDATA in_data 0 32 } } }
	axis_weight_in_V_keep_V { axis {  { axis_weight_in_TKEEP in_data 0 4 } } }
	axis_weight_in_V_strb_V { axis {  { axis_weight_in_TSTRB in_data 0 4 } } }
	axis_weight_in_V_last_V { axis {  { axis_weight_in_TVALID in_vld 0 1 }  { axis_weight_in_TREADY in_acc 1 1 }  { axis_weight_in_TLAST in_data 0 1 } } }
	axis_bias_in_V_data_V { axis {  { axis_bias_in_TDATA in_data 0 32 } } }
	axis_bias_in_V_keep_V { axis {  { axis_bias_in_TKEEP in_data 0 4 } } }
	axis_bias_in_V_strb_V { axis {  { axis_bias_in_TSTRB in_data 0 4 } } }
	axis_bias_in_V_last_V { axis {  { axis_bias_in_TVALID in_vld 0 1 }  { axis_bias_in_TREADY in_acc 1 1 }  { axis_bias_in_TLAST in_data 0 1 } } }
	axis_vector_out_V_data_V { axis {  { axis_vector_out_TDATA out_data 1 32 } } }
	axis_vector_out_V_keep_V { axis {  { axis_vector_out_TKEEP out_data 1 4 } } }
	axis_vector_out_V_strb_V { axis {  { axis_vector_out_TSTRB out_data 1 4 } } }
	axis_vector_out_V_last_V { axis {  { axis_vector_out_TVALID out_vld 1 1 }  { axis_vector_out_TREADY out_acc 0 1 }  { axis_vector_out_TLAST out_data 1 1 } } }
	stream_control_in { axis {  { stream_control_in_TDATA out_data 1 8 }  { stream_control_in_TVALID out_vld 1 1 }  { stream_control_in_TREADY out_acc 0 1 } } }
	stream_sigmoid_switch_in { axis {  { stream_sigmoid_switch_in_TDATA out_data 1 8 }  { stream_sigmoid_switch_in_TVALID out_vld 1 1 }  { stream_sigmoid_switch_in_TREADY out_acc 0 1 } } }
	stream_vector_in_len_in { axis {  { stream_vector_in_len_in_TDATA out_data 1 16 }  { stream_vector_in_len_in_TVALID out_vld 1 1 }  { stream_vector_in_len_in_TREADY out_acc 0 1 } } }
	stream_vector_out_len_in { axis {  { stream_vector_out_len_in_TDATA out_data 1 16 }  { stream_vector_out_len_in_TVALID out_vld 1 1 }  { stream_vector_out_len_in_TREADY out_acc 0 1 } } }
	stream_vector_in { axis {  { stream_vector_in_TDATA out_data 1 32 }  { stream_vector_in_TVALID out_vld 1 1 }  { stream_vector_in_TREADY out_acc 0 1 } } }
	stream_weight_in { axis {  { stream_weight_in_TDATA out_data 1 32 }  { stream_weight_in_TVALID out_vld 1 1 }  { stream_weight_in_TREADY out_acc 0 1 } } }
	stream_bias_in { axis {  { stream_bias_in_TDATA out_data 1 48 }  { stream_bias_in_TVALID out_vld 1 1 }  { stream_bias_in_TREADY out_acc 0 1 } } }
	stream_vector_out { axis {  { stream_vector_out_TDATA in_data 0 128 }  { stream_vector_out_TVALID in_vld 0 1 }  { stream_vector_out_TREADY in_acc 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
