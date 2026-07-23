set moduleName gaussian_blur_Pipeline_VITIS_LOOP_46_1
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
set cdfgNum 24
set C_modelName {gaussian_blur_Pipeline_VITIS_LOOP_46_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict output_r { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict input_r { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferE_0 { MEM_WIDTH 8 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferE_1 { MEM_WIDTH 8 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ empty int 3 regular  }
	{ input_r int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ p_ZN12_GLOBAL_N_110lineBufferE_0 int 8 regular {array 1280 { 0 3 } 0 1 } {global 1}  }
	{ p_ZN12_GLOBAL_N_110lineBufferE_1 int 8 regular {array 1280 { 0 3 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferE_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferE_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ empty sc_in sc_lv 3 signal 1 } 
	{ input_r_address0 sc_out sc_lv 9 signal 2 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_r_q0 sc_in sc_lv 8 signal 2 } 
	{ p_ZN12_GLOBAL_N_110lineBufferE_0_address0 sc_out sc_lv 11 signal 3 } 
	{ p_ZN12_GLOBAL_N_110lineBufferE_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ p_ZN12_GLOBAL_N_110lineBufferE_0_we0 sc_out sc_logic 1 signal 3 } 
	{ p_ZN12_GLOBAL_N_110lineBufferE_0_d0 sc_out sc_lv 8 signal 3 } 
	{ p_ZN12_GLOBAL_N_110lineBufferE_1_address0 sc_out sc_lv 11 signal 4 } 
	{ p_ZN12_GLOBAL_N_110lineBufferE_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_ZN12_GLOBAL_N_110lineBufferE_1_we0 sc_out sc_logic 1 signal 4 } 
	{ p_ZN12_GLOBAL_N_110lineBufferE_1_d0 sc_out sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferE_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferE_0", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferE_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferE_0", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferE_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferE_0", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferE_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferE_0", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferE_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferE_1", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferE_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferE_1", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferE_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferE_1", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferE_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferE_1", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	gaussian_blur_Pipeline_VITIS_LOOP_46_1 {
		output_r {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferE_0 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferE_1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "514", "Max" : "514"}
	, {"Name" : "Interval", "Min" : "513", "Max" : "513"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
	empty { ap_none {  { empty in_data 0 3 } } }
	input_r { ap_memory {  { input_r_address0 mem_address 1 9 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 8 } } }
	p_ZN12_GLOBAL_N_110lineBufferE_0 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferE_0_address0 mem_address 1 11 }  { p_ZN12_GLOBAL_N_110lineBufferE_0_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferE_0_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferE_0_d0 mem_din 1 8 } } }
	p_ZN12_GLOBAL_N_110lineBufferE_1 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferE_1_address0 mem_address 1 11 }  { p_ZN12_GLOBAL_N_110lineBufferE_1_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferE_1_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferE_1_d0 mem_din 1 8 } } }
}
