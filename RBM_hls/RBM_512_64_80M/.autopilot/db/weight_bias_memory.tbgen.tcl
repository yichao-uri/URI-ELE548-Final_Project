set moduleName weight_bias_memory
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {weight_bias_memory}
set C_modelType { void 0 }
set C_modelArgList {
	{ control_ch375 int 8 regular {fifo 0 volatile }  }
	{ vector_in_len_ch378 int 12 regular {fifo 0 volatile }  }
	{ vector_out_len_ch280 int 12 regular {fifo 0 volatile }  }
	{ stream_weight_in int 32 regular {axi_s 0 volatile  { stream_weight_in Data } }  }
	{ stream_bias_in int 48 regular {axi_s 0 volatile  { stream_bias_in Data } }  }
	{ stream_weight_row_index int 640 regular {fifo 0 volatile }  }
	{ stream_bias_col_index82 int 10 regular {fifo 0 volatile }  }
	{ stream_weight_out int 1600 regular {fifo 1 volatile }  }
	{ stream_bias_out84 int 48 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "control_ch375", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "vector_in_len_ch378", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "vector_out_len_ch280", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "stream_weight_in", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_bias_in", "interface" : "axis", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "stream_weight_row_index", "interface" : "fifo", "bitwidth" : 640, "direction" : "READONLY"} , 
 	{ "Name" : "stream_bias_col_index82", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "stream_weight_out", "interface" : "fifo", "bitwidth" : 1600, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_bias_out84", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_bias_col_index82_dout sc_in sc_lv 10 signal 6 } 
	{ stream_bias_col_index82_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ stream_bias_col_index82_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ stream_bias_col_index82_empty_n sc_in sc_logic 1 signal 6 } 
	{ stream_bias_col_index82_read sc_out sc_logic 1 signal 6 } 
	{ stream_weight_row_index_dout sc_in sc_lv 640 signal 5 } 
	{ stream_weight_row_index_num_data_valid sc_in sc_lv 8 signal 5 } 
	{ stream_weight_row_index_fifo_cap sc_in sc_lv 8 signal 5 } 
	{ stream_weight_row_index_empty_n sc_in sc_logic 1 signal 5 } 
	{ stream_weight_row_index_read sc_out sc_logic 1 signal 5 } 
	{ stream_bias_in_TVALID sc_in sc_logic 1 invld 4 } 
	{ stream_weight_in_TVALID sc_in sc_logic 1 invld 3 } 
	{ vector_in_len_ch378_dout sc_in sc_lv 12 signal 1 } 
	{ vector_in_len_ch378_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ vector_in_len_ch378_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ vector_in_len_ch378_empty_n sc_in sc_logic 1 signal 1 } 
	{ vector_in_len_ch378_read sc_out sc_logic 1 signal 1 } 
	{ vector_out_len_ch280_dout sc_in sc_lv 12 signal 2 } 
	{ vector_out_len_ch280_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ vector_out_len_ch280_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ vector_out_len_ch280_empty_n sc_in sc_logic 1 signal 2 } 
	{ vector_out_len_ch280_read sc_out sc_logic 1 signal 2 } 
	{ control_ch375_dout sc_in sc_lv 8 signal 0 } 
	{ control_ch375_num_data_valid sc_in sc_lv 8 signal 0 } 
	{ control_ch375_fifo_cap sc_in sc_lv 8 signal 0 } 
	{ control_ch375_empty_n sc_in sc_logic 1 signal 0 } 
	{ control_ch375_read sc_out sc_logic 1 signal 0 } 
	{ stream_bias_out84_din sc_out sc_lv 48 signal 8 } 
	{ stream_bias_out84_num_data_valid sc_in sc_lv 8 signal 8 } 
	{ stream_bias_out84_fifo_cap sc_in sc_lv 8 signal 8 } 
	{ stream_bias_out84_full_n sc_in sc_logic 1 signal 8 } 
	{ stream_bias_out84_write sc_out sc_logic 1 signal 8 } 
	{ stream_weight_out_din sc_out sc_lv 1600 signal 7 } 
	{ stream_weight_out_num_data_valid sc_in sc_lv 8 signal 7 } 
	{ stream_weight_out_fifo_cap sc_in sc_lv 8 signal 7 } 
	{ stream_weight_out_full_n sc_in sc_logic 1 signal 7 } 
	{ stream_weight_out_write sc_out sc_logic 1 signal 7 } 
	{ stream_weight_in_TDATA sc_in sc_lv 32 signal 3 } 
	{ stream_weight_in_TREADY sc_out sc_logic 1 inacc 3 } 
	{ stream_bias_in_TDATA sc_in sc_lv 48 signal 4 } 
	{ stream_bias_in_TREADY sc_out sc_logic 1 inacc 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_bias_col_index82_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "stream_bias_col_index82", "role": "dout" }} , 
 	{ "name": "stream_bias_col_index82_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_bias_col_index82", "role": "num_data_valid" }} , 
 	{ "name": "stream_bias_col_index82_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_bias_col_index82", "role": "fifo_cap" }} , 
 	{ "name": "stream_bias_col_index82_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_bias_col_index82", "role": "empty_n" }} , 
 	{ "name": "stream_bias_col_index82_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_bias_col_index82", "role": "read" }} , 
 	{ "name": "stream_weight_row_index_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":640, "type": "signal", "bundle":{"name": "stream_weight_row_index", "role": "dout" }} , 
 	{ "name": "stream_weight_row_index_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_weight_row_index", "role": "num_data_valid" }} , 
 	{ "name": "stream_weight_row_index_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_weight_row_index", "role": "fifo_cap" }} , 
 	{ "name": "stream_weight_row_index_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_weight_row_index", "role": "empty_n" }} , 
 	{ "name": "stream_weight_row_index_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_weight_row_index", "role": "read" }} , 
 	{ "name": "stream_bias_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_bias_in", "role": "TVALID" }} , 
 	{ "name": "stream_weight_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_weight_in", "role": "TVALID" }} , 
 	{ "name": "vector_in_len_ch378_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "vector_in_len_ch378", "role": "dout" }} , 
 	{ "name": "vector_in_len_ch378_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_in_len_ch378", "role": "num_data_valid" }} , 
 	{ "name": "vector_in_len_ch378_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_in_len_ch378", "role": "fifo_cap" }} , 
 	{ "name": "vector_in_len_ch378_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_in_len_ch378", "role": "empty_n" }} , 
 	{ "name": "vector_in_len_ch378_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_in_len_ch378", "role": "read" }} , 
 	{ "name": "vector_out_len_ch280_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "vector_out_len_ch280", "role": "dout" }} , 
 	{ "name": "vector_out_len_ch280_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_out_len_ch280", "role": "num_data_valid" }} , 
 	{ "name": "vector_out_len_ch280_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_out_len_ch280", "role": "fifo_cap" }} , 
 	{ "name": "vector_out_len_ch280_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_out_len_ch280", "role": "empty_n" }} , 
 	{ "name": "vector_out_len_ch280_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_out_len_ch280", "role": "read" }} , 
 	{ "name": "control_ch375_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch375", "role": "dout" }} , 
 	{ "name": "control_ch375_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch375", "role": "num_data_valid" }} , 
 	{ "name": "control_ch375_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch375", "role": "fifo_cap" }} , 
 	{ "name": "control_ch375_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_ch375", "role": "empty_n" }} , 
 	{ "name": "control_ch375_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_ch375", "role": "read" }} , 
 	{ "name": "stream_bias_out84_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "stream_bias_out84", "role": "din" }} , 
 	{ "name": "stream_bias_out84_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_bias_out84", "role": "num_data_valid" }} , 
 	{ "name": "stream_bias_out84_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_bias_out84", "role": "fifo_cap" }} , 
 	{ "name": "stream_bias_out84_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_bias_out84", "role": "full_n" }} , 
 	{ "name": "stream_bias_out84_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_bias_out84", "role": "write" }} , 
 	{ "name": "stream_weight_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1600, "type": "signal", "bundle":{"name": "stream_weight_out", "role": "din" }} , 
 	{ "name": "stream_weight_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_weight_out", "role": "num_data_valid" }} , 
 	{ "name": "stream_weight_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_weight_out", "role": "fifo_cap" }} , 
 	{ "name": "stream_weight_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_weight_out", "role": "full_n" }} , 
 	{ "name": "stream_weight_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_weight_out", "role": "write" }} , 
 	{ "name": "stream_weight_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_weight_in", "role": "TDATA" }} , 
 	{ "name": "stream_weight_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_weight_in", "role": "TREADY" }} , 
 	{ "name": "stream_bias_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "stream_bias_in", "role": "TDATA" }} , 
 	{ "name": "stream_bias_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_bias_in", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67"],
		"CDFG" : "weight_bias_memory",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "control_ch375", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "control_ch375_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vector_in_len_ch378", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vector_in_len_ch378_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vector_out_len_ch280", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vector_out_len_ch280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_weight_in", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_weight_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_bias_in", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_bias_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_weight_row_index", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stream_weight_row_index_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_bias_col_index82", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stream_bias_col_index82_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_weight_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stream_weight_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_bias_out84", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stream_bias_out84_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weight_in_row_index_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weight_in_col_index_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bias_in_col_index_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "vector_out_length_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "vector_in_length_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "stream_index_valid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_53", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_52", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_51", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_50", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_49", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_48", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_47", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_46", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_45", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_44", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_43", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_42", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_41", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_40", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_39", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_38", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_37", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_36", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_35", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_34", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_33", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_32", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_31", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_30", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_29", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_28", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_27", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_26", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_25", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_24", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_23", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_22", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_21", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bias_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bias_col_index_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_107", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_108", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_109", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_110", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_111", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_112", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_113", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_114", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_99", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_98", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_97", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_96", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_95", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_94", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_93", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_92", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_91", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_90", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_89", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_88", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_87", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_86", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_85", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_84", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_83", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_82", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_81", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_80", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_79", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_78", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_77", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_76", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_75", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_74", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_73", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_72", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_54", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_10_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_11_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_12_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_13_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_14_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_15_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_16_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_17_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_18_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_19_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_53_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_52_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_51_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_50_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_49_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_48_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_47_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_46_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_45_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_44_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_43_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_42_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_41_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_40_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_39_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_38_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_37_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_36_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_35_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_34_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_33_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_32_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_31_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_30_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_29_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_28_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_27_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_26_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_25_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_24_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_23_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_22_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_21_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_20_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_19_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_18_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_17_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_16_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_15_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_14_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_13_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_12_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_11_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_10_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_9_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_8_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_7_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_6_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_5_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_4_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_3_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_2_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_1_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_V_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_weight_in_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_bias_in_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	weight_bias_memory {
		control_ch375 {Type I LastRead 0 FirstWrite -1}
		vector_in_len_ch378 {Type I LastRead 0 FirstWrite -1}
		vector_out_len_ch280 {Type I LastRead 0 FirstWrite -1}
		stream_weight_in {Type I LastRead 0 FirstWrite -1}
		stream_bias_in {Type I LastRead 0 FirstWrite -1}
		stream_weight_row_index {Type I LastRead 0 FirstWrite -1}
		stream_bias_col_index82 {Type I LastRead 0 FirstWrite -1}
		stream_weight_out {Type O LastRead -1 FirstWrite 2}
		stream_bias_out84 {Type O LastRead -1 FirstWrite 2}
		control_V {Type IO LastRead -1 FirstWrite -1}
		weight_in_row_index_V {Type IO LastRead -1 FirstWrite -1}
		weight_in_col_index_V {Type IO LastRead -1 FirstWrite -1}
		bias_in_col_index_V {Type IO LastRead -1 FirstWrite -1}
		vector_out_length_V {Type IO LastRead -1 FirstWrite -1}
		vector_in_length_V {Type IO LastRead -1 FirstWrite -1}
		stream_index_valid {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_10 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_11 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_12 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_13 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_14 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_15 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_16 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_17 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_18 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_53 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_52 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_51 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_50 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_49 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_48 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_47 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_46 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_45 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_44 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_43 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_42 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_41 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_39 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_38 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_37 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_36 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES {Type IO LastRead -1 FirstWrite -1}
		bias_V {Type IO LastRead -1 FirstWrite -1}
		bias_col_index_V {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_1 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_2 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_3 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_4 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_5 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_6 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_7 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_8 {Type IO LastRead -1 FirstWrite -1}
		weight_bias_memory_stream_stream_stream_stream_stream_stream_stream_strea_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_107 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_108 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_109 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_110 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_111 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_112 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_113 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_114 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_99 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_98 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_97 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_96 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_95 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_94 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_93 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_92 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_91 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_90 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_89 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_88 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_87 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_86 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_85 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_84 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_83 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_82 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_81 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_80 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_79 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_78 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_77 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_76 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_75 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_74 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_73 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_72 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_71 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_70 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_69 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_68 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_67 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_66 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_65 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_64 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_63 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_62 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_61 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_60 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_59 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_58 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_57 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_56 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_55 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ18weight_bias_memoryRN3hls6streamI7ap_uintILi8EELi0EEERNS0_IS1_ILi12EELi0EEES_54 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	control_ch375 { ap_fifo {  { control_ch375_dout fifo_port_we 0 8 }  { control_ch375_num_data_valid fifo_status_num_data_valid 0 8 }  { control_ch375_fifo_cap fifo_update 0 8 }  { control_ch375_empty_n fifo_status 0 1 }  { control_ch375_read fifo_data 1 1 } } }
	vector_in_len_ch378 { ap_fifo {  { vector_in_len_ch378_dout fifo_port_we 0 12 }  { vector_in_len_ch378_num_data_valid fifo_status_num_data_valid 0 8 }  { vector_in_len_ch378_fifo_cap fifo_update 0 8 }  { vector_in_len_ch378_empty_n fifo_status 0 1 }  { vector_in_len_ch378_read fifo_data 1 1 } } }
	vector_out_len_ch280 { ap_fifo {  { vector_out_len_ch280_dout fifo_port_we 0 12 }  { vector_out_len_ch280_num_data_valid fifo_status_num_data_valid 0 8 }  { vector_out_len_ch280_fifo_cap fifo_update 0 8 }  { vector_out_len_ch280_empty_n fifo_status 0 1 }  { vector_out_len_ch280_read fifo_data 1 1 } } }
	stream_weight_in { axis {  { stream_weight_in_TVALID in_vld 0 1 }  { stream_weight_in_TDATA in_data 0 32 }  { stream_weight_in_TREADY in_acc 1 1 } } }
	stream_bias_in { axis {  { stream_bias_in_TVALID in_vld 0 1 }  { stream_bias_in_TDATA in_data 0 48 }  { stream_bias_in_TREADY in_acc 1 1 } } }
	stream_weight_row_index { ap_fifo {  { stream_weight_row_index_dout fifo_port_we 0 640 }  { stream_weight_row_index_num_data_valid fifo_status_num_data_valid 0 8 }  { stream_weight_row_index_fifo_cap fifo_update 0 8 }  { stream_weight_row_index_empty_n fifo_status 0 1 }  { stream_weight_row_index_read fifo_data 1 1 } } }
	stream_bias_col_index82 { ap_fifo {  { stream_bias_col_index82_dout fifo_port_we 0 10 }  { stream_bias_col_index82_num_data_valid fifo_status_num_data_valid 0 8 }  { stream_bias_col_index82_fifo_cap fifo_update 0 8 }  { stream_bias_col_index82_empty_n fifo_status 0 1 }  { stream_bias_col_index82_read fifo_data 1 1 } } }
	stream_weight_out { ap_fifo {  { stream_weight_out_din fifo_port_we 1 1600 }  { stream_weight_out_num_data_valid fifo_status_num_data_valid 0 8 }  { stream_weight_out_fifo_cap fifo_update 0 8 }  { stream_weight_out_full_n fifo_status 0 1 }  { stream_weight_out_write fifo_data 1 1 } } }
	stream_bias_out84 { ap_fifo {  { stream_bias_out84_din fifo_port_we 1 48 }  { stream_bias_out84_num_data_valid fifo_status_num_data_valid 0 8 }  { stream_bias_out84_fifo_cap fifo_update 0 8 }  { stream_bias_out84_full_n fifo_status 0 1 }  { stream_bias_out84_write fifo_data 1 1 } } }
}
