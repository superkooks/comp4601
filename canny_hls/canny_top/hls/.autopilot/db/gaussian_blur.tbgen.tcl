set moduleName gaussian_blur
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
set cdfgNum 40
set C_modelName {gaussian_blur}
set C_modelType { int 1 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_r { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_r { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lineBuffer_1 { MEM_WIDTH 8 MEM_SIZE 2560 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ input_r int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ output_r int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ p_anonymous_namespace_rowsReceived int 32 regular {pointer 2} {global 2}  }
	{ lineBuffer_1 int 8 regular {array 2560 { 2 1 } 1 1 } {global 2}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_anonymous_namespace_rowsReceived", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "lineBuffer_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_address0 sc_out sc_lv 9 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_q0 sc_in sc_lv 8 signal 0 } 
	{ output_r_address0 sc_out sc_lv 9 signal 1 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_r_we0 sc_out sc_logic 1 signal 1 } 
	{ output_r_d0 sc_out sc_lv 8 signal 1 } 
	{ p_anonymous_namespace_rowsReceived_i sc_in sc_lv 32 signal 2 } 
	{ p_anonymous_namespace_rowsReceived_o sc_out sc_lv 32 signal 2 } 
	{ p_anonymous_namespace_rowsReceived_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ lineBuffer_1_address0 sc_out sc_lv 12 signal 3 } 
	{ lineBuffer_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ lineBuffer_1_we0 sc_out sc_logic 1 signal 3 } 
	{ lineBuffer_1_d0 sc_out sc_lv 8 signal 3 } 
	{ lineBuffer_1_q0 sc_in sc_lv 8 signal 3 } 
	{ lineBuffer_1_address1 sc_out sc_lv 12 signal 3 } 
	{ lineBuffer_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ lineBuffer_1_q1 sc_in sc_lv 8 signal 3 } 
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
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived", "role": "o" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_rowsReceived", "role": "o_ap_vld" }} , 
 	{ "name": "lineBuffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "address0" }} , 
 	{ "name": "lineBuffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "ce0" }} , 
 	{ "name": "lineBuffer_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "we0" }} , 
 	{ "name": "lineBuffer_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "d0" }} , 
 	{ "name": "lineBuffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "q0" }} , 
 	{ "name": "lineBuffer_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "address1" }} , 
 	{ "name": "lineBuffer_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "ce1" }} , 
 	{ "name": "lineBuffer_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	gaussian_blur {
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_rowsReceived {Type IO LastRead 0 FirstWrite 0}
		lineBuffer_1 {Type IO LastRead 48 FirstWrite -1}}
	gaussian_blur_Pipeline_VITIS_LOOP_57_1 {
		zext_ln58 {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 0}
		lineBuffer_1 {Type O LastRead -1 FirstWrite 1}}
	gaussian_blur_Pipeline_VITIS_LOOP_70_2 {
		empty_38 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		sub_ln30 {Type I LastRead 0 FirstWrite -1}
		add_ln78 {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		sub_ln28_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln95 {Type I LastRead 0 FirstWrite -1}
		select_ln23 {Type I LastRead 0 FirstWrite -1}
		sub_ln30_1 {Type I LastRead 0 FirstWrite -1}
		add_ln78_1 {Type I LastRead 0 FirstWrite -1}
		empty_43 {Type I LastRead 0 FirstWrite -1}
		sub_ln28_2 {Type I LastRead 0 FirstWrite -1}
		sub_ln30_3 {Type I LastRead 0 FirstWrite -1}
		add_ln78_2 {Type I LastRead 0 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		sub_ln28_3 {Type I LastRead 0 FirstWrite -1}
		sub_ln30_4 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_load {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		sub_ln28 {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 49}
		lineBuffer_1 {Type I LastRead 48 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "551", "Max" : "7281"}
	, {"Name" : "Interval", "Min" : "551", "Max" : "7281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 9 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 8 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
	p_anonymous_namespace_rowsReceived { ap_ovld {  { p_anonymous_namespace_rowsReceived_i in_data 0 32 }  { p_anonymous_namespace_rowsReceived_o out_data 1 32 }  { p_anonymous_namespace_rowsReceived_o_ap_vld out_vld 1 1 } } }
	lineBuffer_1 { ap_memory {  { lineBuffer_1_address0 mem_address 1 12 }  { lineBuffer_1_ce0 mem_ce 1 1 }  { lineBuffer_1_we0 mem_we 1 1 }  { lineBuffer_1_d0 mem_din 1 8 }  { lineBuffer_1_q0 mem_dout 0 8 }  { lineBuffer_1_address1 MemPortADDR2 1 12 }  { lineBuffer_1_ce1 MemPortCE2 1 1 }  { lineBuffer_1_q1 MemPortDOUT2 0 8 } } }
}
