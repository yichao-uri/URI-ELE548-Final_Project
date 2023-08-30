set moduleName rbm_size_split
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
set C_modelName {rbm_size_split}
set C_modelType { void 0 }
set C_modelArgList {
	{ vector_in_len int 16 regular {axi_s 0 volatile  { vector_in_len Data } }  }
	{ vector_out_len int 16 regular {axi_s 0 volatile  { vector_out_len Data } }  }
	{ vector_in_len_ch176 int 12 regular {fifo 1 volatile }  }
	{ vector_in_len_ch277 int 12 regular {fifo 1 volatile }  }
	{ vector_in_len_ch378 int 12 regular {fifo 1 volatile }  }
	{ vector_out_len_ch179 int 12 regular {fifo 1 volatile }  }
	{ vector_out_len_ch280 int 12 regular {fifo 1 volatile }  }
	{ vector_out_len_ch381 int 12 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vector_in_len", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "vector_out_len", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "vector_in_len_ch176", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vector_in_len_ch277", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vector_in_len_ch378", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vector_out_len_ch179", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vector_out_len_ch280", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vector_out_len_ch381", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vector_in_len_TVALID sc_in sc_logic 1 invld 0 } 
	{ vector_out_len_TVALID sc_in sc_logic 1 invld 1 } 
	{ vector_in_len_ch176_din sc_out sc_lv 12 signal 2 } 
	{ vector_in_len_ch176_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ vector_in_len_ch176_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ vector_in_len_ch176_full_n sc_in sc_logic 1 signal 2 } 
	{ vector_in_len_ch176_write sc_out sc_logic 1 signal 2 } 
	{ vector_in_len_ch277_din sc_out sc_lv 12 signal 3 } 
	{ vector_in_len_ch277_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ vector_in_len_ch277_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ vector_in_len_ch277_full_n sc_in sc_logic 1 signal 3 } 
	{ vector_in_len_ch277_write sc_out sc_logic 1 signal 3 } 
	{ vector_in_len_ch378_din sc_out sc_lv 12 signal 4 } 
	{ vector_in_len_ch378_num_data_valid sc_in sc_lv 8 signal 4 } 
	{ vector_in_len_ch378_fifo_cap sc_in sc_lv 8 signal 4 } 
	{ vector_in_len_ch378_full_n sc_in sc_logic 1 signal 4 } 
	{ vector_in_len_ch378_write sc_out sc_logic 1 signal 4 } 
	{ vector_out_len_ch179_din sc_out sc_lv 12 signal 5 } 
	{ vector_out_len_ch179_num_data_valid sc_in sc_lv 8 signal 5 } 
	{ vector_out_len_ch179_fifo_cap sc_in sc_lv 8 signal 5 } 
	{ vector_out_len_ch179_full_n sc_in sc_logic 1 signal 5 } 
	{ vector_out_len_ch179_write sc_out sc_logic 1 signal 5 } 
	{ vector_out_len_ch280_din sc_out sc_lv 12 signal 6 } 
	{ vector_out_len_ch280_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ vector_out_len_ch280_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ vector_out_len_ch280_full_n sc_in sc_logic 1 signal 6 } 
	{ vector_out_len_ch280_write sc_out sc_logic 1 signal 6 } 
	{ vector_out_len_ch381_din sc_out sc_lv 12 signal 7 } 
	{ vector_out_len_ch381_num_data_valid sc_in sc_lv 8 signal 7 } 
	{ vector_out_len_ch381_fifo_cap sc_in sc_lv 8 signal 7 } 
	{ vector_out_len_ch381_full_n sc_in sc_logic 1 signal 7 } 
	{ vector_out_len_ch381_write sc_out sc_logic 1 signal 7 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ vector_in_len_TDATA sc_in sc_lv 16 signal 0 } 
	{ vector_in_len_TREADY sc_out sc_logic 1 inacc 0 } 
	{ vector_out_len_TDATA sc_in sc_lv 16 signal 1 } 
	{ vector_out_len_TREADY sc_out sc_logic 1 inacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vector_in_len_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "vector_in_len", "role": "TVALID" }} , 
 	{ "name": "vector_out_len_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "vector_out_len", "role": "TVALID" }} , 
 	{ "name": "vector_in_len_ch176_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "vector_in_len_ch176", "role": "din" }} , 
 	{ "name": "vector_in_len_ch176_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_in_len_ch176", "role": "num_data_valid" }} , 
 	{ "name": "vector_in_len_ch176_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_in_len_ch176", "role": "fifo_cap" }} , 
 	{ "name": "vector_in_len_ch176_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_in_len_ch176", "role": "full_n" }} , 
 	{ "name": "vector_in_len_ch176_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_in_len_ch176", "role": "write" }} , 
 	{ "name": "vector_in_len_ch277_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "vector_in_len_ch277", "role": "din" }} , 
 	{ "name": "vector_in_len_ch277_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_in_len_ch277", "role": "num_data_valid" }} , 
 	{ "name": "vector_in_len_ch277_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_in_len_ch277", "role": "fifo_cap" }} , 
 	{ "name": "vector_in_len_ch277_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_in_len_ch277", "role": "full_n" }} , 
 	{ "name": "vector_in_len_ch277_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_in_len_ch277", "role": "write" }} , 
 	{ "name": "vector_in_len_ch378_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "vector_in_len_ch378", "role": "din" }} , 
 	{ "name": "vector_in_len_ch378_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_in_len_ch378", "role": "num_data_valid" }} , 
 	{ "name": "vector_in_len_ch378_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_in_len_ch378", "role": "fifo_cap" }} , 
 	{ "name": "vector_in_len_ch378_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_in_len_ch378", "role": "full_n" }} , 
 	{ "name": "vector_in_len_ch378_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_in_len_ch378", "role": "write" }} , 
 	{ "name": "vector_out_len_ch179_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "vector_out_len_ch179", "role": "din" }} , 
 	{ "name": "vector_out_len_ch179_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_out_len_ch179", "role": "num_data_valid" }} , 
 	{ "name": "vector_out_len_ch179_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_out_len_ch179", "role": "fifo_cap" }} , 
 	{ "name": "vector_out_len_ch179_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_out_len_ch179", "role": "full_n" }} , 
 	{ "name": "vector_out_len_ch179_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_out_len_ch179", "role": "write" }} , 
 	{ "name": "vector_out_len_ch280_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "vector_out_len_ch280", "role": "din" }} , 
 	{ "name": "vector_out_len_ch280_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_out_len_ch280", "role": "num_data_valid" }} , 
 	{ "name": "vector_out_len_ch280_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_out_len_ch280", "role": "fifo_cap" }} , 
 	{ "name": "vector_out_len_ch280_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_out_len_ch280", "role": "full_n" }} , 
 	{ "name": "vector_out_len_ch280_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_out_len_ch280", "role": "write" }} , 
 	{ "name": "vector_out_len_ch381_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "vector_out_len_ch381", "role": "din" }} , 
 	{ "name": "vector_out_len_ch381_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_out_len_ch381", "role": "num_data_valid" }} , 
 	{ "name": "vector_out_len_ch381_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vector_out_len_ch381", "role": "fifo_cap" }} , 
 	{ "name": "vector_out_len_ch381_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_out_len_ch381", "role": "full_n" }} , 
 	{ "name": "vector_out_len_ch381_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector_out_len_ch381", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "vector_in_len_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vector_in_len", "role": "TDATA" }} , 
 	{ "name": "vector_in_len_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "vector_in_len", "role": "TREADY" }} , 
 	{ "name": "vector_out_len_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vector_out_len", "role": "TDATA" }} , 
 	{ "name": "vector_out_len_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "vector_out_len", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "rbm_size_split",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vector_in_len", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vector_in_len_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vector_out_len", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vector_out_len_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vector_in_len_ch176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vector_in_len_ch176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vector_in_len_ch277", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vector_in_len_ch277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vector_in_len_ch378", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vector_in_len_ch378_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vector_out_len_ch179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vector_out_len_ch179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vector_out_len_ch280", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vector_out_len_ch280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vector_out_len_ch381", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vector_out_len_ch381_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vector_in_len_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vector_out_len_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rbm_size_split {
		vector_in_len {Type I LastRead 0 FirstWrite -1}
		vector_out_len {Type I LastRead 0 FirstWrite -1}
		vector_in_len_ch176 {Type O LastRead -1 FirstWrite 1}
		vector_in_len_ch277 {Type O LastRead -1 FirstWrite 1}
		vector_in_len_ch378 {Type O LastRead -1 FirstWrite 1}
		vector_out_len_ch179 {Type O LastRead -1 FirstWrite 1}
		vector_out_len_ch280 {Type O LastRead -1 FirstWrite 1}
		vector_out_len_ch381 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vector_in_len { axis {  { vector_in_len_TVALID in_vld 0 1 }  { vector_in_len_TDATA in_data 0 16 }  { vector_in_len_TREADY in_acc 1 1 } } }
	vector_out_len { axis {  { vector_out_len_TVALID in_vld 0 1 }  { vector_out_len_TDATA in_data 0 16 }  { vector_out_len_TREADY in_acc 1 1 } } }
	vector_in_len_ch176 { ap_fifo {  { vector_in_len_ch176_din fifo_port_we 1 12 }  { vector_in_len_ch176_num_data_valid fifo_status_num_data_valid 0 8 }  { vector_in_len_ch176_fifo_cap fifo_update 0 8 }  { vector_in_len_ch176_full_n fifo_status 0 1 }  { vector_in_len_ch176_write fifo_data 1 1 } } }
	vector_in_len_ch277 { ap_fifo {  { vector_in_len_ch277_din fifo_port_we 1 12 }  { vector_in_len_ch277_num_data_valid fifo_status_num_data_valid 0 8 }  { vector_in_len_ch277_fifo_cap fifo_update 0 8 }  { vector_in_len_ch277_full_n fifo_status 0 1 }  { vector_in_len_ch277_write fifo_data 1 1 } } }
	vector_in_len_ch378 { ap_fifo {  { vector_in_len_ch378_din fifo_port_we 1 12 }  { vector_in_len_ch378_num_data_valid fifo_status_num_data_valid 0 8 }  { vector_in_len_ch378_fifo_cap fifo_update 0 8 }  { vector_in_len_ch378_full_n fifo_status 0 1 }  { vector_in_len_ch378_write fifo_data 1 1 } } }
	vector_out_len_ch179 { ap_fifo {  { vector_out_len_ch179_din fifo_port_we 1 12 }  { vector_out_len_ch179_num_data_valid fifo_status_num_data_valid 0 8 }  { vector_out_len_ch179_fifo_cap fifo_update 0 8 }  { vector_out_len_ch179_full_n fifo_status 0 1 }  { vector_out_len_ch179_write fifo_data 1 1 } } }
	vector_out_len_ch280 { ap_fifo {  { vector_out_len_ch280_din fifo_port_we 1 12 }  { vector_out_len_ch280_num_data_valid fifo_status_num_data_valid 0 8 }  { vector_out_len_ch280_fifo_cap fifo_update 0 8 }  { vector_out_len_ch280_full_n fifo_status 0 1 }  { vector_out_len_ch280_write fifo_data 1 1 } } }
	vector_out_len_ch381 { ap_fifo {  { vector_out_len_ch381_din fifo_port_we 1 12 }  { vector_out_len_ch381_num_data_valid fifo_status_num_data_valid 0 8 }  { vector_out_len_ch381_fifo_cap fifo_update 0 8 }  { vector_out_len_ch381_full_n fifo_status 0 1 }  { vector_out_len_ch381_write fifo_data 1 1 } } }
}
