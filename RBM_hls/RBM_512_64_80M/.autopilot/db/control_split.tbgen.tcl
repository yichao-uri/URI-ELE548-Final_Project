set moduleName control_split
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {control_split}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_control_in int 8 regular {axi_s 0 volatile  { stream_control_in Data } }  }
	{ control_ch173 int 8 regular {fifo 1 volatile }  }
	{ control_ch274 int 8 regular {fifo 1 volatile }  }
	{ control_ch375 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_control_in", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "control_ch173", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "control_ch274", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "control_ch375", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_control_in_TVALID sc_in sc_logic 1 invld 0 } 
	{ control_ch173_din sc_out sc_lv 8 signal 1 } 
	{ control_ch173_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ control_ch173_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ control_ch173_full_n sc_in sc_logic 1 signal 1 } 
	{ control_ch173_write sc_out sc_logic 1 signal 1 } 
	{ control_ch274_din sc_out sc_lv 8 signal 2 } 
	{ control_ch274_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ control_ch274_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ control_ch274_full_n sc_in sc_logic 1 signal 2 } 
	{ control_ch274_write sc_out sc_logic 1 signal 2 } 
	{ control_ch375_din sc_out sc_lv 8 signal 3 } 
	{ control_ch375_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ control_ch375_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ control_ch375_full_n sc_in sc_logic 1 signal 3 } 
	{ control_ch375_write sc_out sc_logic 1 signal 3 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ stream_control_in_TDATA sc_in sc_lv 8 signal 0 } 
	{ stream_control_in_TREADY sc_out sc_logic 1 inacc 0 } 
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
 	{ "name": "stream_control_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_control_in", "role": "TVALID" }} , 
 	{ "name": "control_ch173_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch173", "role": "din" }} , 
 	{ "name": "control_ch173_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch173", "role": "num_data_valid" }} , 
 	{ "name": "control_ch173_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch173", "role": "fifo_cap" }} , 
 	{ "name": "control_ch173_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_ch173", "role": "full_n" }} , 
 	{ "name": "control_ch173_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_ch173", "role": "write" }} , 
 	{ "name": "control_ch274_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch274", "role": "din" }} , 
 	{ "name": "control_ch274_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch274", "role": "num_data_valid" }} , 
 	{ "name": "control_ch274_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch274", "role": "fifo_cap" }} , 
 	{ "name": "control_ch274_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_ch274", "role": "full_n" }} , 
 	{ "name": "control_ch274_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_ch274", "role": "write" }} , 
 	{ "name": "control_ch375_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch375", "role": "din" }} , 
 	{ "name": "control_ch375_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch375", "role": "num_data_valid" }} , 
 	{ "name": "control_ch375_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_ch375", "role": "fifo_cap" }} , 
 	{ "name": "control_ch375_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_ch375", "role": "full_n" }} , 
 	{ "name": "control_ch375_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_ch375", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "stream_control_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_control_in", "role": "TDATA" }} , 
 	{ "name": "stream_control_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_control_in", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "control_split",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
			{"Name" : "stream_control_in", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_control_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_ch173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "control_ch173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_ch274", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "control_ch274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "control_ch375", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "control_ch375_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_control_in_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	control_split {
		stream_control_in {Type I LastRead 0 FirstWrite -1}
		control_ch173 {Type O LastRead -1 FirstWrite 1}
		control_ch274 {Type O LastRead -1 FirstWrite 1}
		control_ch375 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	stream_control_in { axis {  { stream_control_in_TVALID in_vld 0 1 }  { stream_control_in_TDATA in_data 0 8 }  { stream_control_in_TREADY in_acc 1 1 } } }
	control_ch173 { ap_fifo {  { control_ch173_din fifo_port_we 1 8 }  { control_ch173_num_data_valid fifo_status_num_data_valid 0 8 }  { control_ch173_fifo_cap fifo_update 0 8 }  { control_ch173_full_n fifo_status 0 1 }  { control_ch173_write fifo_data 1 1 } } }
	control_ch274 { ap_fifo {  { control_ch274_din fifo_port_we 1 8 }  { control_ch274_num_data_valid fifo_status_num_data_valid 0 8 }  { control_ch274_fifo_cap fifo_update 0 8 }  { control_ch274_full_n fifo_status 0 1 }  { control_ch274_write fifo_data 1 1 } } }
	control_ch375 { ap_fifo {  { control_ch375_din fifo_port_we 1 8 }  { control_ch375_num_data_valid fifo_status_num_data_valid 0 8 }  { control_ch375_fifo_cap fifo_update 0 8 }  { control_ch375_full_n fifo_status 0 1 }  { control_ch375_write fifo_data 1 1 } } }
}
