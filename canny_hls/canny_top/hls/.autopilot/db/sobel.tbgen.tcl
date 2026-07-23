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
set cdfgNum 24
set C_modelName {sobel}
set C_modelType { int 1 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict out_gaussian { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict out_sobel_magnitude { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict out_sobel_direction { MEM_WIDTH 2 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ p_read int 1 regular  }
	{ out_gaussian int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ out_sobel_magnitude int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ out_sobel_direction int 2 regular {array 512 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_gaussian", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_sobel_magnitude", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_sobel_direction", "interface" : "memory", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 1 signal 0 } 
	{ out_gaussian_address0 sc_out sc_lv 9 signal 1 } 
	{ out_gaussian_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_gaussian_q0 sc_in sc_lv 8 signal 1 } 
	{ out_sobel_magnitude_address0 sc_out sc_lv 9 signal 2 } 
	{ out_sobel_magnitude_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_sobel_magnitude_we0 sc_out sc_logic 1 signal 2 } 
	{ out_sobel_magnitude_d0 sc_out sc_lv 8 signal 2 } 
	{ out_sobel_direction_address0 sc_out sc_lv 9 signal 3 } 
	{ out_sobel_direction_ce0 sc_out sc_logic 1 signal 3 } 
	{ out_sobel_direction_we0 sc_out sc_logic 1 signal 3 } 
	{ out_sobel_direction_d0 sc_out sc_lv 2 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "out_gaussian_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_gaussian", "role": "address0" }} , 
 	{ "name": "out_gaussian_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_gaussian", "role": "ce0" }} , 
 	{ "name": "out_gaussian_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_gaussian", "role": "q0" }} , 
 	{ "name": "out_sobel_magnitude_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_sobel_magnitude", "role": "address0" }} , 
 	{ "name": "out_sobel_magnitude_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_sobel_magnitude", "role": "ce0" }} , 
 	{ "name": "out_sobel_magnitude_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_sobel_magnitude", "role": "we0" }} , 
 	{ "name": "out_sobel_magnitude_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_sobel_magnitude", "role": "d0" }} , 
 	{ "name": "out_sobel_direction_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_sobel_direction", "role": "address0" }} , 
 	{ "name": "out_sobel_direction_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_sobel_direction", "role": "ce0" }} , 
 	{ "name": "out_sobel_direction_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_sobel_direction", "role": "we0" }} , 
 	{ "name": "out_sobel_direction_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_sobel_direction", "role": "d0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	sobel {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_gaussian {Type I LastRead 0 FirstWrite -1}
		out_sobel_magnitude {Type O LastRead -1 FirstWrite 0}
		out_sobel_direction {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_rowsReceived_2 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_16_0 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_16_1 {Type IO LastRead -1 FirstWrite -1}}
	sobel_Pipeline_VITIS_LOOP_89_1 {
		out_sobel_magnitude {Type O LastRead -1 FirstWrite 0}
		out_sobel_direction {Type O LastRead -1 FirstWrite 0}
		writeSlot {Type I LastRead 0 FirstWrite -1}
		out_gaussian {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_16_0 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_lineBuffer_16_1 {Type O LastRead -1 FirstWrite 1}}
	sobel_Pipeline_VITIS_LOOP_118_2 {
		result {Type I LastRead 0 FirstWrite -1}
		writeSlot {Type I LastRead 0 FirstWrite -1}
		result_7 {Type I LastRead 0 FirstWrite -1}
		out_sobel_magnitude {Type O LastRead -1 FirstWrite 73}
		out_sobel_direction {Type O LastRead -1 FirstWrite 7}
		p_anonymous_namespace_lineBuffer_16_0 {Type I LastRead 4 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_16_1 {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "2187"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "2187"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 1 } } }
	out_gaussian { ap_memory {  { out_gaussian_address0 mem_address 1 9 }  { out_gaussian_ce0 mem_ce 1 1 }  { out_gaussian_q0 mem_dout 0 8 } } }
	out_sobel_magnitude { ap_memory {  { out_sobel_magnitude_address0 mem_address 1 9 }  { out_sobel_magnitude_ce0 mem_ce 1 1 }  { out_sobel_magnitude_we0 mem_we 1 1 }  { out_sobel_magnitude_d0 mem_din 1 8 } } }
	out_sobel_direction { ap_memory {  { out_sobel_direction_address0 mem_address 1 9 }  { out_sobel_direction_ce0 mem_ce 1 1 }  { out_sobel_direction_we0 mem_we 1 1 }  { out_sobel_direction_d0 mem_din 1 2 } } }
}
