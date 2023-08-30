set moduleName sigmoid
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
set C_modelName {sigmoid}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_sigmoid_switch int 8 regular {axi_s 0 volatile  { stream_sigmoid_switch Data } }  }
	{ systolic_out int 49 regular {fifo 0 volatile }  }
	{ stream_vector_out int 128 regular {axi_s 1 volatile  { stream_vector_out Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_sigmoid_switch", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "systolic_out", "interface" : "fifo", "bitwidth" : 49, "direction" : "READONLY"} , 
 	{ "Name" : "stream_vector_out", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ systolic_out_dout sc_in sc_lv 49 signal 1 } 
	{ systolic_out_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ systolic_out_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ systolic_out_empty_n sc_in sc_logic 1 signal 1 } 
	{ systolic_out_read sc_out sc_logic 1 signal 1 } 
	{ stream_sigmoid_switch_TVALID sc_in sc_logic 1 invld 0 } 
	{ stream_vector_out_TREADY sc_in sc_logic 1 outacc 2 } 
	{ stream_sigmoid_switch_TDATA sc_in sc_lv 8 signal 0 } 
	{ stream_sigmoid_switch_TREADY sc_out sc_logic 1 inacc 0 } 
	{ stream_vector_out_TDATA sc_out sc_lv 128 signal 2 } 
	{ stream_vector_out_TVALID sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "systolic_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "systolic_out", "role": "dout" }} , 
 	{ "name": "systolic_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "systolic_out", "role": "num_data_valid" }} , 
 	{ "name": "systolic_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "systolic_out", "role": "fifo_cap" }} , 
 	{ "name": "systolic_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic_out", "role": "empty_n" }} , 
 	{ "name": "systolic_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic_out", "role": "read" }} , 
 	{ "name": "stream_sigmoid_switch_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_sigmoid_switch", "role": "TVALID" }} , 
 	{ "name": "stream_vector_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_vector_out", "role": "TREADY" }} , 
 	{ "name": "stream_sigmoid_switch_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_sigmoid_switch", "role": "TDATA" }} , 
 	{ "name": "stream_sigmoid_switch_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_sigmoid_switch", "role": "TREADY" }} , 
 	{ "name": "stream_vector_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_vector_out", "role": "TDATA" }} , 
 	{ "name": "stream_vector_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_vector_out", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "sigmoid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_sigmoid_switch", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_sigmoid_switch_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "systolic_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "systolic_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_vector_out", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_vector_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sigmoid_switch_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sigmoid_slope_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sigmoid_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sigmoid_slope_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sigmoid_bias_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_55s_24ns_79_2_1_U117", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_sigmoid_switch_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_vector_out_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sigmoid {
		stream_sigmoid_switch {Type I LastRead 0 FirstWrite -1}
		systolic_out {Type I LastRead 0 FirstWrite -1}
		stream_vector_out {Type O LastRead -1 FirstWrite 5}
		sigmoid_switch_V {Type IO LastRead -1 FirstWrite -1}
		sigmoid_slope_V {Type I LastRead -1 FirstWrite -1}
		sigmoid_bias_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_sigmoid_switch { axis {  { stream_sigmoid_switch_TVALID in_vld 0 1 }  { stream_sigmoid_switch_TDATA in_data 0 8 }  { stream_sigmoid_switch_TREADY in_acc 1 1 } } }
	systolic_out { ap_fifo {  { systolic_out_dout fifo_port_we 0 49 }  { systolic_out_num_data_valid fifo_status_num_data_valid 0 8 }  { systolic_out_fifo_cap fifo_update 0 8 }  { systolic_out_empty_n fifo_status 0 1 }  { systolic_out_read fifo_data 1 1 } } }
	stream_vector_out { axis {  { stream_vector_out_TREADY out_acc 0 1 }  { stream_vector_out_TDATA out_data 1 128 }  { stream_vector_out_TVALID out_vld 1 1 } } }
}
