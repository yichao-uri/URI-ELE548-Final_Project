set moduleName double_buffer
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {double_buffer}
set C_modelType { void 0 }
set C_modelArgList {
	{ control_ch173 int 8 regular {fifo 0 volatile }  }
	{ vector_in_len_ch176 int 12 regular {fifo 0 volatile }  }
	{ stream_vector_in int 32 regular {axi_s 0 volatile  { stream_vector_in Data } }  }
	{ buffer_out int 21 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "control_ch173", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "vector_in_len_ch176", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "stream_vector_in", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_out", "interface" : "fifo", "bitwidth" : 21, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_vector_in_TVALID sc_in sc_logic 1 invld 2 } 
	{ vector_in_len_ch176_dout sc_in sc_lv 12 signal 1 } 
	{ vector_in_len_ch176_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ vector_in_len_ch176_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ vector_in_len_ch176_empty_n sc_in sc_logic 1 signal 1 } 
	{ vector_in_len_ch176_read sc_out sc_logic 1 signal 1 } 
	{ control_ch173_dout sc_in sc_lv 8 signal 0 } 
	{ control_ch173_num_data_valid sc_in sc_lv 8 signal 0 } 
	{ control_ch173_fifo_cap sc_in sc_lv 8 signal 0 } 
	{ control_ch173_empty_n sc_in sc_logic 1 signal 0 } 
	{ control_ch173_read sc_out sc_logic 1 signal 0 } 
	{ buffer_out_din sc_out sc_lv 21 signal 3 } 
	{ buffer_out_num_data_valid sc_in sc_lv 11 signal 3 } 
	{ buffer_out_fifo_cap sc_in sc_lv 11 signal 3 } 
	{ buffer_out_full_n sc_in sc_logic 1 signal 3 } 
	{ buffer_out_write sc_out sc_logic 1 signal 3 } 
	{ stream_vector_in_TDATA sc_in sc_lv 32 signal 2 } 
	{ stream_vector_in_TREADY sc_out sc_logic 1 inacc 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_vector_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_vector_in", "role": "TVALID" }} , 
 	{ "name": "vector_in_len_ch176_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "vector_in_len_ch176", "role": "dout" }} , 
 	{ "name": "vector_in_len_ch176_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_in_len_ch176", "role": "num_data_valid" }} , 
 	{ "name": "vector_in_len_ch176_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_in_len_ch176", "role": "fifo_cap" }} , 
 	{ "name": "vector_in_len_ch176_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_in_len_ch176", "role": "empty_n" }} , 
 	{ "name": "vector_in_len_ch176_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_in_len_ch176", "role": "read" }} , 
 	{ "name": "control_ch173_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch173", "role": "dout" }} , 
 	{ "name": "control_ch173_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch173", "role": "num_data_valid" }} , 
 	{ "name": "control_ch173_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch173", "role": "fifo_cap" }} , 
 	{ "name": "control_ch173_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_ch173", "role": "empty_n" }} , 
 	{ "name": "control_ch173_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_ch173", "role": "read" }} , 
 	{ "name": "buffer_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "buffer_out", "role": "din" }} , 
 	{ "name": "buffer_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buffer_out", "role": "num_data_valid" }} , 
 	{ "name": "buffer_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buffer_out", "role": "fifo_cap" }} , 
 	{ "name": "buffer_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_out", "role": "full_n" }} , 
 	{ "name": "buffer_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_out", "role": "write" }} , 
 	{ "name": "stream_vector_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_vector_in", "role": "TDATA" }} , 
 	{ "name": "stream_vector_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_vector_in", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "double_buffer",
		"Protocol" : "ap_ctrl_none",
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
			{"Name" : "control_ch173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "control_ch173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vector_in_len_ch176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vector_in_len_ch176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_vector_in", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_vector_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "buffer_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "buffer_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "vector_in_length_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "vector_in_length_minus_1_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_write_en", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_data_read_valid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_data_read_first_data", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_data_read_last_data", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_data_read_axis_last", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_data_read_pad_zero", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_data_read_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_write_select", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer0_read_en", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "double_buffer_stream_stream_stream_stream_buffer_data_t_0_buffer_status_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "double_buffer_stream_stream_stream_stream_buffer_data_t_0_buffer_status_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer1_read_en", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "double_buffer_stream_stream_stream_stream_buffer_data_t_0_buffer_status_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "double_buffer_stream_stream_stream_stream_buffer_data_t_0_buffer_status", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "double_buffer_stream_stream_stream_stream_buffer_data_t_0_buffer_status_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "double_buffer_stream_stream_stream_stream_buffer_data_t_0_buffer_status_1", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_0_fifo_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_1_fifo_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_vector_in_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	double_buffer {
		control_ch173 {Type I LastRead 0 FirstWrite -1}
		vector_in_len_ch176 {Type I LastRead 0 FirstWrite -1}
		stream_vector_in {Type I LastRead 0 FirstWrite -1}
		buffer_out {Type O LastRead -1 FirstWrite 2}
		control_V_1 {Type IO LastRead -1 FirstWrite -1}
		vector_in_length_V_1 {Type IO LastRead -1 FirstWrite -1}
		vector_in_length_minus_1_V {Type IO LastRead -1 FirstWrite -1}
		buffer_write_en {Type IO LastRead -1 FirstWrite -1}
		buffer_data_read_valid {Type IO LastRead -1 FirstWrite -1}
		buffer_data_read_first_data {Type IO LastRead -1 FirstWrite -1}
		buffer_data_read_last_data {Type IO LastRead -1 FirstWrite -1}
		buffer_data_read_axis_last {Type IO LastRead -1 FirstWrite -1}
		buffer_data_read_pad_zero {Type IO LastRead -1 FirstWrite -1}
		buffer_data_read_data_V {Type IO LastRead -1 FirstWrite -1}
		buffer_write_select {Type IO LastRead -1 FirstWrite -1}
		buffer0_read_en {Type IO LastRead -1 FirstWrite -1}
		double_buffer_stream_stream_stream_stream_buffer_data_t_0_buffer_status_4 {Type IO LastRead -1 FirstWrite -1}
		double_buffer_stream_stream_stream_stream_buffer_data_t_0_buffer_status_5 {Type IO LastRead -1 FirstWrite -1}
		buffer1_read_en {Type IO LastRead -1 FirstWrite -1}
		double_buffer_stream_stream_stream_stream_buffer_data_t_0_buffer_status_2 {Type IO LastRead -1 FirstWrite -1}
		double_buffer_stream_stream_stream_stream_buffer_data_t_0_buffer_status {Type IO LastRead -1 FirstWrite -1}
		double_buffer_stream_stream_stream_stream_buffer_data_t_0_buffer_status_3 {Type IO LastRead -1 FirstWrite -1}
		double_buffer_stream_stream_stream_stream_buffer_data_t_0_buffer_status_1 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	control_ch173 { ap_fifo {  { control_ch173_dout fifo_port_we 0 8 }  { control_ch173_num_data_valid fifo_status_num_data_valid 0 8 }  { control_ch173_fifo_cap fifo_update 0 8 }  { control_ch173_empty_n fifo_status 0 1 }  { control_ch173_read fifo_data 1 1 } } }
	vector_in_len_ch176 { ap_fifo {  { vector_in_len_ch176_dout fifo_port_we 0 12 }  { vector_in_len_ch176_num_data_valid fifo_status_num_data_valid 0 8 }  { vector_in_len_ch176_fifo_cap fifo_update 0 8 }  { vector_in_len_ch176_empty_n fifo_status 0 1 }  { vector_in_len_ch176_read fifo_data 1 1 } } }
	stream_vector_in { axis {  { stream_vector_in_TVALID in_vld 0 1 }  { stream_vector_in_TDATA in_data 0 32 }  { stream_vector_in_TREADY in_acc 1 1 } } }
	buffer_out { ap_fifo {  { buffer_out_din fifo_port_we 1 21 }  { buffer_out_num_data_valid fifo_status_num_data_valid 0 11 }  { buffer_out_fifo_cap fifo_update 0 11 }  { buffer_out_full_n fifo_status 0 1 }  { buffer_out_write fifo_data 1 1 } } }
}
