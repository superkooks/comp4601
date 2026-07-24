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
set cdfgNum 40
set C_modelName {hysteresis<4>}
set C_modelType { int 1 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict out_hysteresis3 { MEM_WIDTH 2 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict out_hysteresis4 { MEM_WIDTH 2 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 { MEM_WIDTH 2 MEM_SIZE 768 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 { MEM_WIDTH 2 MEM_SIZE 768 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ p_read int 1 regular  }
	{ out_hysteresis3 int 2 regular {array 512 { 1 3 } 1 1 }  }
	{ out_hysteresis4 int 2 regular {array 512 { 0 3 } 0 1 }  }
	{ p_anonymous_namespace_rowsReceived_4_s int 32 regular {pointer 2} {global 2}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 int 2 regular {array 768 { 2 3 } 1 1 } {global 2}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 int 2 regular {array 768 { 2 3 } 1 1 } {global 2}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_hysteresis3", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_hysteresis4", "interface" : "memory", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_anonymous_namespace_rowsReceived_4_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "interface" : "memory", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "interface" : "memory", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 1 signal 0 } 
	{ out_hysteresis3_address0 sc_out sc_lv 9 signal 1 } 
	{ out_hysteresis3_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_hysteresis3_q0 sc_in sc_lv 2 signal 1 } 
	{ out_hysteresis4_address0 sc_out sc_lv 9 signal 2 } 
	{ out_hysteresis4_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_hysteresis4_we0 sc_out sc_logic 1 signal 2 } 
	{ out_hysteresis4_d0 sc_out sc_lv 2 signal 2 } 
	{ p_anonymous_namespace_rowsReceived_4_s_i sc_in sc_lv 32 signal 3 } 
	{ p_anonymous_namespace_rowsReceived_4_s_o sc_out sc_lv 32 signal 3 } 
	{ p_anonymous_namespace_rowsReceived_4_s_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address0 sc_out sc_lv 10 signal 4 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_we0 sc_out sc_logic 1 signal 4 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_d0 sc_out sc_lv 2 signal 4 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q0 sc_in sc_lv 2 signal 4 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address0 sc_out sc_lv 10 signal 5 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_we0 sc_out sc_logic 1 signal 5 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_d0 sc_out sc_lv 2 signal 5 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q0 sc_in sc_lv 2 signal 5 } 
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
 	{ "name": "out_hysteresis3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_hysteresis3", "role": "address0" }} , 
 	{ "name": "out_hysteresis3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_hysteresis3", "role": "ce0" }} , 
 	{ "name": "out_hysteresis3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_hysteresis3", "role": "q0" }} , 
 	{ "name": "out_hysteresis4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_hysteresis4", "role": "address0" }} , 
 	{ "name": "out_hysteresis4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_hysteresis4", "role": "ce0" }} , 
 	{ "name": "out_hysteresis4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_hysteresis4", "role": "we0" }} , 
 	{ "name": "out_hysteresis4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_hysteresis4", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_4_s_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_4_s", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_4_s_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_4_s", "role": "o" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_4_s_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_rowsReceived_4_s", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	hysteresis_4_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_hysteresis3 {Type I LastRead 0 FirstWrite -1}
		out_hysteresis4 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_rowsReceived_4_s {Type IO LastRead 0 FirstWrite 71}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 {Type IO LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 {Type IO LastRead 0 FirstWrite -1}}
	hysteresis_4_Pipeline_VITIS_LOOP_66_1 {
		out_hysteresis4 {Type O LastRead -1 FirstWrite 0}
		writeSlot {Type I LastRead 0 FirstWrite -1}
		out_hysteresis3 {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 {Type O LastRead -1 FirstWrite 1}}
	hysteresis_4_Pipeline_VITIS_LOOP_114_2 {
		result {Type I LastRead 0 FirstWrite -1}
		out_hysteresis4 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1097"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1097"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 1 } } }
	out_hysteresis3 { ap_memory {  { out_hysteresis3_address0 mem_address 1 9 }  { out_hysteresis3_ce0 mem_ce 1 1 }  { out_hysteresis3_q0 mem_dout 0 2 } } }
	out_hysteresis4 { ap_memory {  { out_hysteresis4_address0 mem_address 1 9 }  { out_hysteresis4_ce0 mem_ce 1 1 }  { out_hysteresis4_we0 mem_we 1 1 }  { out_hysteresis4_d0 mem_din 1 2 } } }
	p_anonymous_namespace_rowsReceived_4_s { ap_ovld {  { p_anonymous_namespace_rowsReceived_4_s_i in_data 0 32 }  { p_anonymous_namespace_rowsReceived_4_s_o out_data 1 32 }  { p_anonymous_namespace_rowsReceived_4_s_o_ap_vld out_vld 1 1 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address0 mem_address 1 10 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_d0 mem_din 1 2 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q0 mem_dout 0 2 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address0 mem_address 1 10 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_d0 mem_din 1 2 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q0 mem_dout 0 2 } } }
}
