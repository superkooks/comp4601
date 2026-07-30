set moduleName sobel_Pipeline_VITIS_LOOP_155_5
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
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
set cdfgNum 41
set C_modelName {sobel_Pipeline_VITIS_LOOP_155_5}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict out_sobel_magnitude { MEM_WIDTH 11 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict out_sobel_direction { MEM_WIDTH 2 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_32_0 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_32_1 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_32_2 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ tmp_2 int 8 regular  }
	{ tmp_6 int 8 regular  }
	{ tmp_3 int 8 regular  }
	{ tmp_5 int 8 regular  }
	{ tmp_4 int 8 regular  }
	{ tmp_1 int 8 regular  }
	{ out_sobel_magnitude int 11 regular {array 512 { 0 3 } 0 1 }  }
	{ out_sobel_direction int 2 regular {array 512 { 0 3 } 0 1 }  }
	{ result int 2 regular  }
	{ result_1 int 2 regular  }
	{ result_2 int 2 regular  }
	{ p_anonymous_namespace_lineBuffer_32_0 int 8 regular {array 512 { 1 3 } 1 1 } {global 0}  }
	{ p_anonymous_namespace_lineBuffer_32_1 int 8 regular {array 512 { 1 3 } 1 1 } {global 0}  }
	{ p_anonymous_namespace_lineBuffer_32_2 int 8 regular {array 512 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "tmp_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_sobel_magnitude", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_sobel_direction", "interface" : "memory", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "result_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "result_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_32_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_32_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_32_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tmp_2 sc_in sc_lv 8 signal 0 } 
	{ tmp_6 sc_in sc_lv 8 signal 1 } 
	{ tmp_3 sc_in sc_lv 8 signal 2 } 
	{ tmp_5 sc_in sc_lv 8 signal 3 } 
	{ tmp_4 sc_in sc_lv 8 signal 4 } 
	{ tmp_1 sc_in sc_lv 8 signal 5 } 
	{ out_sobel_magnitude_address0 sc_out sc_lv 9 signal 6 } 
	{ out_sobel_magnitude_ce0 sc_out sc_logic 1 signal 6 } 
	{ out_sobel_magnitude_we0 sc_out sc_logic 1 signal 6 } 
	{ out_sobel_magnitude_d0 sc_out sc_lv 11 signal 6 } 
	{ out_sobel_direction_address0 sc_out sc_lv 9 signal 7 } 
	{ out_sobel_direction_ce0 sc_out sc_logic 1 signal 7 } 
	{ out_sobel_direction_we0 sc_out sc_logic 1 signal 7 } 
	{ out_sobel_direction_d0 sc_out sc_lv 2 signal 7 } 
	{ result sc_in sc_lv 2 signal 8 } 
	{ result_1 sc_in sc_lv 2 signal 9 } 
	{ result_2 sc_in sc_lv 2 signal 10 } 
	{ p_anonymous_namespace_lineBuffer_32_0_address0 sc_out sc_lv 9 signal 11 } 
	{ p_anonymous_namespace_lineBuffer_32_0_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_anonymous_namespace_lineBuffer_32_0_q0 sc_in sc_lv 8 signal 11 } 
	{ p_anonymous_namespace_lineBuffer_32_1_address0 sc_out sc_lv 9 signal 12 } 
	{ p_anonymous_namespace_lineBuffer_32_1_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_anonymous_namespace_lineBuffer_32_1_q0 sc_in sc_lv 8 signal 12 } 
	{ p_anonymous_namespace_lineBuffer_32_2_address0 sc_out sc_lv 9 signal 13 } 
	{ p_anonymous_namespace_lineBuffer_32_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ p_anonymous_namespace_lineBuffer_32_2_q0 sc_in sc_lv 8 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tmp_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_2", "role": "default" }} , 
 	{ "name": "tmp_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_6", "role": "default" }} , 
 	{ "name": "tmp_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_3", "role": "default" }} , 
 	{ "name": "tmp_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_5", "role": "default" }} , 
 	{ "name": "tmp_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_4", "role": "default" }} , 
 	{ "name": "tmp_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_1", "role": "default" }} , 
 	{ "name": "out_sobel_magnitude_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_sobel_magnitude", "role": "address0" }} , 
 	{ "name": "out_sobel_magnitude_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_sobel_magnitude", "role": "ce0" }} , 
 	{ "name": "out_sobel_magnitude_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_sobel_magnitude", "role": "we0" }} , 
 	{ "name": "out_sobel_magnitude_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "out_sobel_magnitude", "role": "d0" }} , 
 	{ "name": "out_sobel_direction_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_sobel_direction", "role": "address0" }} , 
 	{ "name": "out_sobel_direction_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_sobel_direction", "role": "ce0" }} , 
 	{ "name": "out_sobel_direction_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_sobel_direction", "role": "we0" }} , 
 	{ "name": "out_sobel_direction_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_sobel_direction", "role": "d0" }} , 
 	{ "name": "result", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "result", "role": "default" }} , 
 	{ "name": "result_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "result_1", "role": "default" }} , 
 	{ "name": "result_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "result_2", "role": "default" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_0", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_0", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_0", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_1", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_1", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_1", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_2", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_2", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_2", "role": "q0" }}  ]}

set ArgLastReadFirstWriteLatency {
	sobel_Pipeline_VITIS_LOOP_155_5 {
		tmp_2 {Type I LastRead 0 FirstWrite -1}
		tmp_6 {Type I LastRead 0 FirstWrite -1}
		tmp_3 {Type I LastRead 0 FirstWrite -1}
		tmp_5 {Type I LastRead 0 FirstWrite -1}
		tmp_4 {Type I LastRead 0 FirstWrite -1}
		tmp_1 {Type I LastRead 0 FirstWrite -1}
		out_sobel_magnitude {Type O LastRead -1 FirstWrite 2}
		out_sobel_direction {Type O LastRead -1 FirstWrite 3}
		result {Type I LastRead 0 FirstWrite -1}
		result_1 {Type I LastRead 0 FirstWrite -1}
		result_2 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_0 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_1 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "516", "Max" : "516"}
	, {"Name" : "Interval", "Min" : "513", "Max" : "513"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tmp_2 { ap_none {  { tmp_2 in_data 0 8 } } }
	tmp_6 { ap_none {  { tmp_6 in_data 0 8 } } }
	tmp_3 { ap_none {  { tmp_3 in_data 0 8 } } }
	tmp_5 { ap_none {  { tmp_5 in_data 0 8 } } }
	tmp_4 { ap_none {  { tmp_4 in_data 0 8 } } }
	tmp_1 { ap_none {  { tmp_1 in_data 0 8 } } }
	out_sobel_magnitude { ap_memory {  { out_sobel_magnitude_address0 mem_address 1 9 }  { out_sobel_magnitude_ce0 mem_ce 1 1 }  { out_sobel_magnitude_we0 mem_we 1 1 }  { out_sobel_magnitude_d0 mem_din 1 11 } } }
	out_sobel_direction { ap_memory {  { out_sobel_direction_address0 mem_address 1 9 }  { out_sobel_direction_ce0 mem_ce 1 1 }  { out_sobel_direction_we0 mem_we 1 1 }  { out_sobel_direction_d0 mem_din 1 2 } } }
	result { ap_none {  { result in_data 0 2 } } }
	result_1 { ap_none {  { result_1 in_data 0 2 } } }
	result_2 { ap_none {  { result_2 in_data 0 2 } } }
	p_anonymous_namespace_lineBuffer_32_0 { ap_memory {  { p_anonymous_namespace_lineBuffer_32_0_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_32_0_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_32_0_q0 mem_dout 0 8 } } }
	p_anonymous_namespace_lineBuffer_32_1 { ap_memory {  { p_anonymous_namespace_lineBuffer_32_1_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_32_1_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_32_1_q0 mem_dout 0 8 } } }
	p_anonymous_namespace_lineBuffer_32_2 { ap_memory {  { p_anonymous_namespace_lineBuffer_32_2_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_32_2_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_32_2_q0 mem_dout 0 8 } } }
}
