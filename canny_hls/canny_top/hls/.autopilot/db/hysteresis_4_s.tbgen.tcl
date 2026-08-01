set moduleName hysteresis_4_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 32
set C_modelName {hysteresis<4>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ hyst3_out int 8 regular {fifo 0 volatile }  }
	{ hyst4_out int 8 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "hyst3_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hyst4_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ hyst3_out_dout sc_in sc_lv 8 signal 0 } 
	{ hyst3_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ hyst3_out_read sc_out sc_logic 1 signal 0 } 
	{ hyst3_out_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ hyst3_out_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ hyst4_out_din sc_out sc_lv 8 signal 1 } 
	{ hyst4_out_full_n sc_in sc_logic 1 signal 1 } 
	{ hyst4_out_write sc_out sc_logic 1 signal 1 } 
	{ hyst4_out_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ hyst4_out_fifo_cap sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "hyst3_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hyst3_out", "role": "dout" }} , 
 	{ "name": "hyst3_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hyst3_out", "role": "empty_n" }} , 
 	{ "name": "hyst3_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hyst3_out", "role": "read" }} , 
 	{ "name": "hyst3_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "hyst3_out", "role": "num_data_valid" }} , 
 	{ "name": "hyst3_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "hyst3_out", "role": "fifo_cap" }} , 
 	{ "name": "hyst4_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hyst4_out", "role": "din" }} , 
 	{ "name": "hyst4_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hyst4_out", "role": "full_n" }} , 
 	{ "name": "hyst4_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hyst4_out", "role": "write" }} , 
 	{ "name": "hyst4_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hyst4_out", "role": "num_data_valid" }} , 
 	{ "name": "hyst4_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hyst4_out", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	hysteresis_4_s {
		hyst3_out {Type I LastRead 1 FirstWrite -1}
		hyst4_out {Type O LastRead -1 FirstWrite 2}}
	hysteresis_4_Pipeline_VITIS_LOOP_78_2 {
		buffer_2 {Type O LastRead -1 FirstWrite 1}
		buffer_1 {Type O LastRead -1 FirstWrite 1}
		buffer_r {Type O LastRead -1 FirstWrite 1}
		hyst3_out {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}
	hysteresis_4_Pipeline_VITIS_LOOP_143_5 {
		tmp_15 {Type I LastRead 0 FirstWrite -1}
		tmp_12 {Type I LastRead 0 FirstWrite -1}
		tmp_14 {Type I LastRead 0 FirstWrite -1}
		tmp_s {Type I LastRead 0 FirstWrite -1}
		tmp_13 {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		hasBottom {Type I LastRead 0 FirstWrite -1}
		hasTop {Type I LastRead 0 FirstWrite -1}
		hyst4_out {Type O LastRead -1 FirstWrite 2}
		buffer_r {Type I LastRead 0 FirstWrite -1}
		buffer_1 {Type I LastRead 0 FirstWrite -1}
		buffer_2 {Type I LastRead 0 FirstWrite -1}
		select_ln12 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1540", "Max" : "536086"}
	, {"Name" : "Interval", "Min" : "1540", "Max" : "536086"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	hyst3_out { ap_fifo {  { hyst3_out_dout fifo_data_out 0 8 }  { hyst3_out_empty_n fifo_status_empty 0 1 }  { hyst3_out_read fifo_data_in 1 1 }  { hyst3_out_num_data_valid fifo_update 0 11 }  { hyst3_out_fifo_cap fifo_data 0 11 } } }
	hyst4_out { ap_fifo {  { hyst4_out_din fifo_data_out 1 8 }  { hyst4_out_full_n fifo_status_empty 0 1 }  { hyst4_out_write fifo_data_in 1 1 }  { hyst4_out_num_data_valid fifo_update 0 32 }  { hyst4_out_fifo_cap fifo_data 0 32 } } }
}
