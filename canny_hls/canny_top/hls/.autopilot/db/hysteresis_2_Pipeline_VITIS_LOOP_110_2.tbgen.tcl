set moduleName hysteresis_2_Pipeline_VITIS_LOOP_110_2
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
set C_modelName {hysteresis<2>_Pipeline_VITIS_LOOP_110_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict out_hysteresis2 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 { MEM_WIDTH 8 MEM_SIZE 768 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 { MEM_WIDTH 8 MEM_SIZE 768 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ outputRow int 31 regular  }
	{ out_hysteresis2 int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ select_ln18 int 2 regular  }
	{ result int 2 regular  }
	{ select_ln18_3 int 2 regular  }
	{ zext_ln38_3 int 10 regular  }
	{ xor_ln38 int 1 regular  }
	{ xor_ln33 int 1 regular  }
	{ zext_ln33 int 10 regular  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 int 8 regular {array 768 { 1 1 } 1 1 } {global 0}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 int 8 regular {array 768 { 1 1 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "outputRow", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "out_hysteresis2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln18", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "result", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln18_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_3", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "xor_ln38", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "xor_ln33", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln33", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
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
	{ out_hysteresis2_address0 sc_out sc_lv 9 signal 1 } 
	{ out_hysteresis2_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_hysteresis2_we0 sc_out sc_logic 1 signal 1 } 
	{ out_hysteresis2_d0 sc_out sc_lv 8 signal 1 } 
	{ select_ln18 sc_in sc_lv 2 signal 2 } 
	{ result sc_in sc_lv 2 signal 3 } 
	{ select_ln18_3 sc_in sc_lv 2 signal 4 } 
	{ zext_ln38_3 sc_in sc_lv 10 signal 5 } 
	{ xor_ln38 sc_in sc_lv 1 signal 6 } 
	{ xor_ln33 sc_in sc_lv 1 signal 7 } 
	{ zext_ln33 sc_in sc_lv 10 signal 8 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address0 sc_out sc_lv 10 signal 9 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q0 sc_in sc_lv 8 signal 9 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address1 sc_out sc_lv 10 signal 9 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce1 sc_out sc_logic 1 signal 9 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q1 sc_in sc_lv 8 signal 9 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address0 sc_out sc_lv 10 signal 10 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q0 sc_in sc_lv 8 signal 10 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address1 sc_out sc_lv 10 signal 10 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce1 sc_out sc_logic 1 signal 10 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q1 sc_in sc_lv 8 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "outputRow", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "outputRow", "role": "default" }} , 
 	{ "name": "out_hysteresis2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_hysteresis2", "role": "address0" }} , 
 	{ "name": "out_hysteresis2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_hysteresis2", "role": "ce0" }} , 
 	{ "name": "out_hysteresis2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_hysteresis2", "role": "we0" }} , 
 	{ "name": "out_hysteresis2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_hysteresis2", "role": "d0" }} , 
 	{ "name": "select_ln18", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln18", "role": "default" }} , 
 	{ "name": "result", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "result", "role": "default" }} , 
 	{ "name": "select_ln18_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln18_3", "role": "default" }} , 
 	{ "name": "zext_ln38_3", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln38_3", "role": "default" }} , 
 	{ "name": "xor_ln38", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "xor_ln38", "role": "default" }} , 
 	{ "name": "xor_ln33", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "xor_ln33", "role": "default" }} , 
 	{ "name": "zext_ln33", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln33", "role": "default" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "address1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "ce1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "q1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "address1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "ce1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "q1" }}  ]}

set ArgLastReadFirstWriteLatency {
	hysteresis_2_Pipeline_VITIS_LOOP_110_2 {
		outputRow {Type I LastRead 0 FirstWrite -1}
		out_hysteresis2 {Type O LastRead -1 FirstWrite 1}
		select_ln18 {Type I LastRead 0 FirstWrite -1}
		result {Type I LastRead 0 FirstWrite -1}
		select_ln18_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_3 {Type I LastRead 0 FirstWrite -1}
		xor_ln38 {Type I LastRead 0 FirstWrite -1}
		xor_ln33 {Type I LastRead 0 FirstWrite -1}
		zext_ln33 {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 {Type I LastRead 8 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2566", "Max" : "2566"}
	, {"Name" : "Interval", "Min" : "2565", "Max" : "2565"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	outputRow { ap_none {  { outputRow in_data 0 31 } } }
	out_hysteresis2 { ap_memory {  { out_hysteresis2_address0 mem_address 1 9 }  { out_hysteresis2_ce0 mem_ce 1 1 }  { out_hysteresis2_we0 mem_we 1 1 }  { out_hysteresis2_d0 mem_din 1 8 } } }
	select_ln18 { ap_none {  { select_ln18 in_data 0 2 } } }
	result { ap_none {  { result in_data 0 2 } } }
	select_ln18_3 { ap_none {  { select_ln18_3 in_data 0 2 } } }
	zext_ln38_3 { ap_none {  { zext_ln38_3 in_data 0 10 } } }
	xor_ln38 { ap_none {  { xor_ln38 in_data 0 1 } } }
	xor_ln33 { ap_none {  { xor_ln33 in_data 0 1 } } }
	zext_ln33 { ap_none {  { zext_ln33 in_data 0 10 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address0 mem_address 1 10 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q0 mem_dout 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address1 MemPortADDR2 1 10 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce1 MemPortCE2 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q1 MemPortDOUT2 0 8 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address0 mem_address 1 10 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q0 mem_dout 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address1 MemPortADDR2 1 10 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce1 MemPortCE2 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q1 MemPortDOUT2 0 8 } } }
}
