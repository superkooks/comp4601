set moduleName non_maximum_suppression_Pipeline_VITIS_LOOP_74_2
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
set cdfgNum 40
set C_modelName {non_maximum_suppression_Pipeline_VITIS_LOOP_74_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict out_nonmax { MEM_WIDTH 11 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_25_magnitude_0 { MEM_WIDTH 11 MEM_SIZE 1536 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_25_magnitude_1 { MEM_WIDTH 11 MEM_SIZE 1536 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_direction { MEM_WIDTH 2 MEM_SIZE 1536 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ outputRow int 31 regular  }
	{ out_nonmax int 11 regular {array 512 { 0 3 } 0 1 }  }
	{ result_3 int 2 regular  }
	{ zext_ln76 int 11 regular  }
	{ select_ln14 int 2 regular  }
	{ select_ln14_1 int 2 regular  }
	{ p_anonymous_namespace_lineBuffer_25_magnitude_0 int 11 regular {array 768 { 1 1 } 1 1 } {global 0}  }
	{ p_anonymous_namespace_lineBuffer_25_magnitude_1 int 11 regular {array 768 { 1 1 } 1 1 } {global 0}  }
	{ p_anonymous_namespace_lineBuffer_direction int 2 regular {array 1536 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "outputRow", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "out_nonmax", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln76", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln14", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln14_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_25_magnitude_0", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_25_magnitude_1", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_direction", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ outputRow sc_in sc_lv 31 signal 0 } 
	{ out_nonmax_address0 sc_out sc_lv 9 signal 1 } 
	{ out_nonmax_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_nonmax_we0 sc_out sc_logic 1 signal 1 } 
	{ out_nonmax_d0 sc_out sc_lv 11 signal 1 } 
	{ result_3 sc_in sc_lv 2 signal 2 } 
	{ zext_ln76 sc_in sc_lv 11 signal 3 } 
	{ select_ln14 sc_in sc_lv 2 signal 4 } 
	{ select_ln14_1 sc_in sc_lv 2 signal 5 } 
	{ p_anonymous_namespace_lineBuffer_25_magnitude_0_address0 sc_out sc_lv 10 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_25_magnitude_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_25_magnitude_0_q0 sc_in sc_lv 11 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_25_magnitude_0_address1 sc_out sc_lv 10 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_25_magnitude_0_ce1 sc_out sc_logic 1 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_25_magnitude_0_q1 sc_in sc_lv 11 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_25_magnitude_1_address0 sc_out sc_lv 10 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_25_magnitude_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_25_magnitude_1_q0 sc_in sc_lv 11 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_25_magnitude_1_address1 sc_out sc_lv 10 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_25_magnitude_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_25_magnitude_1_q1 sc_in sc_lv 11 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_direction_address0 sc_out sc_lv 11 signal 8 } 
	{ p_anonymous_namespace_lineBuffer_direction_ce0 sc_out sc_logic 1 signal 8 } 
	{ p_anonymous_namespace_lineBuffer_direction_q0 sc_in sc_lv 2 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "outputRow", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "outputRow", "role": "default" }} , 
 	{ "name": "out_nonmax_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_nonmax", "role": "address0" }} , 
 	{ "name": "out_nonmax_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nonmax", "role": "ce0" }} , 
 	{ "name": "out_nonmax_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nonmax", "role": "we0" }} , 
 	{ "name": "out_nonmax_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "out_nonmax", "role": "d0" }} , 
 	{ "name": "result_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "result_3", "role": "default" }} , 
 	{ "name": "zext_ln76", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "zext_ln76", "role": "default" }} , 
 	{ "name": "select_ln14", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln14", "role": "default" }} , 
 	{ "name": "select_ln14_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln14_1", "role": "default" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_25_magnitude_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_25_magnitude_0", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_25_magnitude_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_25_magnitude_0", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_25_magnitude_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_25_magnitude_0", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_25_magnitude_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_25_magnitude_0", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_25_magnitude_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_25_magnitude_0", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_25_magnitude_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_25_magnitude_0", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_25_magnitude_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_25_magnitude_1", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_25_magnitude_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_25_magnitude_1", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_25_magnitude_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_25_magnitude_1", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_25_magnitude_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_25_magnitude_1", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_25_magnitude_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_25_magnitude_1", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_25_magnitude_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_25_magnitude_1", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction", "role": "q0" }}  ]}

set ArgLastReadFirstWriteLatency {
	non_maximum_suppression_Pipeline_VITIS_LOOP_74_2 {
		outputRow {Type I LastRead 0 FirstWrite -1}
		out_nonmax {Type O LastRead -1 FirstWrite 3}
		result_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln76 {Type I LastRead 0 FirstWrite -1}
		select_ln14 {Type I LastRead 0 FirstWrite -1}
		select_ln14_1 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_25_magnitude_0 {Type I LastRead 2 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_25_magnitude_1 {Type I LastRead 2 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1027", "Max" : "1027"}
	, {"Name" : "Interval", "Min" : "1026", "Max" : "1026"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	outputRow { ap_none {  { outputRow in_data 0 31 } } }
	out_nonmax { ap_memory {  { out_nonmax_address0 mem_address 1 9 }  { out_nonmax_ce0 mem_ce 1 1 }  { out_nonmax_we0 mem_we 1 1 }  { out_nonmax_d0 mem_din 1 11 } } }
	result_3 { ap_none {  { result_3 in_data 0 2 } } }
	zext_ln76 { ap_none {  { zext_ln76 in_data 0 11 } } }
	select_ln14 { ap_none {  { select_ln14 in_data 0 2 } } }
	select_ln14_1 { ap_none {  { select_ln14_1 in_data 0 2 } } }
	p_anonymous_namespace_lineBuffer_25_magnitude_0 { ap_memory {  { p_anonymous_namespace_lineBuffer_25_magnitude_0_address0 mem_address 1 10 }  { p_anonymous_namespace_lineBuffer_25_magnitude_0_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_25_magnitude_0_q0 mem_dout 0 11 }  { p_anonymous_namespace_lineBuffer_25_magnitude_0_address1 MemPortADDR2 1 10 }  { p_anonymous_namespace_lineBuffer_25_magnitude_0_ce1 MemPortCE2 1 1 }  { p_anonymous_namespace_lineBuffer_25_magnitude_0_q1 MemPortDOUT2 0 11 } } }
	p_anonymous_namespace_lineBuffer_25_magnitude_1 { ap_memory {  { p_anonymous_namespace_lineBuffer_25_magnitude_1_address0 mem_address 1 10 }  { p_anonymous_namespace_lineBuffer_25_magnitude_1_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_25_magnitude_1_q0 mem_dout 0 11 }  { p_anonymous_namespace_lineBuffer_25_magnitude_1_address1 MemPortADDR2 1 10 }  { p_anonymous_namespace_lineBuffer_25_magnitude_1_ce1 MemPortCE2 1 1 }  { p_anonymous_namespace_lineBuffer_25_magnitude_1_q1 MemPortDOUT2 0 11 } } }
	p_anonymous_namespace_lineBuffer_direction { ap_memory {  { p_anonymous_namespace_lineBuffer_direction_address0 mem_address 1 11 }  { p_anonymous_namespace_lineBuffer_direction_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_direction_q0 mem_dout 0 2 } } }
}
