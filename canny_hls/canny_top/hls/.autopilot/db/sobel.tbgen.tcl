set moduleName sobel
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
set cdfgNum 31
set C_modelName {sobel}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gauss_out int 8 regular {fifo 0 volatile }  }
	{ sobel_out int 24 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gauss_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sobel_out", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ gauss_out_dout sc_in sc_lv 8 signal 0 } 
	{ gauss_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ gauss_out_read sc_out sc_logic 1 signal 0 } 
	{ gauss_out_num_data_valid sc_in sc_lv 12 signal 0 } 
	{ gauss_out_fifo_cap sc_in sc_lv 12 signal 0 } 
	{ sobel_out_din sc_out sc_lv 24 signal 1 } 
	{ sobel_out_full_n sc_in sc_logic 1 signal 1 } 
	{ sobel_out_write sc_out sc_logic 1 signal 1 } 
	{ sobel_out_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ sobel_out_fifo_cap sc_in sc_lv 32 signal 1 } 
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
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "gauss_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gauss_out", "role": "dout" }} , 
 	{ "name": "gauss_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gauss_out", "role": "empty_n" }} , 
 	{ "name": "gauss_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gauss_out", "role": "read" }} , 
 	{ "name": "gauss_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "gauss_out", "role": "num_data_valid" }} , 
 	{ "name": "gauss_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "gauss_out", "role": "fifo_cap" }} , 
 	{ "name": "sobel_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "sobel_out", "role": "din" }} , 
 	{ "name": "sobel_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sobel_out", "role": "full_n" }} , 
 	{ "name": "sobel_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sobel_out", "role": "write" }} , 
 	{ "name": "sobel_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sobel_out", "role": "num_data_valid" }} , 
 	{ "name": "sobel_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sobel_out", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	sobel {
		gauss_out {Type I LastRead 1 FirstWrite -1}
		sobel_out {Type O LastRead -1 FirstWrite 3}}
	sobel_Pipeline_VITIS_LOOP_96_2 {
		lineBuffer_2 {Type O LastRead -1 FirstWrite 1}
		lineBuffer_1 {Type O LastRead -1 FirstWrite 1}
		lineBuffer {Type O LastRead -1 FirstWrite 1}
		gauss_out {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}
	sobel_Pipeline_VITIS_LOOP_149_6 {
		tmp_2 {Type I LastRead 0 FirstWrite -1}
		tmp_6 {Type I LastRead 0 FirstWrite -1}
		tmp_3 {Type I LastRead 0 FirstWrite -1}
		tmp_5 {Type I LastRead 0 FirstWrite -1}
		tmp_4 {Type I LastRead 0 FirstWrite -1}
		tmp_1 {Type I LastRead 0 FirstWrite -1}
		sobel_out {Type O LastRead -1 FirstWrite 3}
		lineBuffer {Type I LastRead 0 FirstWrite -1}
		lineBuffer_1 {Type I LastRead 0 FirstWrite -1}
		lineBuffer_2 {Type I LastRead 0 FirstWrite -1}
		empty_30 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		select_ln23 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1444", "Max" : "636845"}
	, {"Name" : "Interval", "Min" : "1444", "Max" : "636845"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gauss_out { ap_fifo {  { gauss_out_dout fifo_data_out 0 8 }  { gauss_out_empty_n fifo_status_empty 0 1 }  { gauss_out_read fifo_data_in 1 1 }  { gauss_out_num_data_valid fifo_update 0 12 }  { gauss_out_fifo_cap fifo_data 0 12 } } }
	sobel_out { ap_fifo {  { sobel_out_din fifo_data_out 1 24 }  { sobel_out_full_n fifo_status_empty 0 1 }  { sobel_out_write fifo_data_in 1 1 }  { sobel_out_num_data_valid fifo_update 0 32 }  { sobel_out_fifo_cap fifo_data 0 32 } } }
}
