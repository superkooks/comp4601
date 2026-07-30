set moduleName hysteresis_4_Pipeline_VITIS_LOOP_154_4
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
set C_modelName {hysteresis<4>_Pipeline_VITIS_LOOP_154_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict out_hysteresis4 { MEM_WIDTH 2 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ tmp_14 int 8 regular  }
	{ tmp_11 int 8 regular  }
	{ tmp_13 int 8 regular  }
	{ tmp_s int 8 regular  }
	{ tmp_12 int 8 regular  }
	{ tmp int 8 regular  }
	{ outputRow int 31 regular  }
	{ select_ln18 int 2 regular  }
	{ p_smodpost int 2 regular  }
	{ select_ln18_1 int 2 regular  }
	{ out_hysteresis4 int 2 regular {array 512 { 0 3 } 0 1 }  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 int 8 regular {array 512 { 1 3 } 1 1 } {global 0}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 int 8 regular {array 512 { 1 3 } 1 1 } {global 0}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2 int 8 regular {array 512 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "tmp_14", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_13", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "outputRow", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln18", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "p_smodpost", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln18_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_hysteresis4", "interface" : "memory", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tmp_14 sc_in sc_lv 8 signal 0 } 
	{ tmp_11 sc_in sc_lv 8 signal 1 } 
	{ tmp_13 sc_in sc_lv 8 signal 2 } 
	{ tmp_s sc_in sc_lv 8 signal 3 } 
	{ tmp_12 sc_in sc_lv 8 signal 4 } 
	{ tmp sc_in sc_lv 8 signal 5 } 
	{ outputRow sc_in sc_lv 31 signal 6 } 
	{ select_ln18 sc_in sc_lv 2 signal 7 } 
	{ p_smodpost sc_in sc_lv 2 signal 8 } 
	{ select_ln18_1 sc_in sc_lv 2 signal 9 } 
	{ out_hysteresis4_address0 sc_out sc_lv 9 signal 10 } 
	{ out_hysteresis4_ce0 sc_out sc_logic 1 signal 10 } 
	{ out_hysteresis4_we0 sc_out sc_logic 1 signal 10 } 
	{ out_hysteresis4_d0 sc_out sc_lv 2 signal 10 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address0 sc_out sc_lv 9 signal 11 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q0 sc_in sc_lv 8 signal 11 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address0 sc_out sc_lv 9 signal 12 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q0 sc_in sc_lv 8 signal 12 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_address0 sc_out sc_lv 9 signal 13 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_q0 sc_in sc_lv 8 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tmp_14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_14", "role": "default" }} , 
 	{ "name": "tmp_11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_11", "role": "default" }} , 
 	{ "name": "tmp_13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_13", "role": "default" }} , 
 	{ "name": "tmp_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_s", "role": "default" }} , 
 	{ "name": "tmp_12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_12", "role": "default" }} , 
 	{ "name": "tmp", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp", "role": "default" }} , 
 	{ "name": "outputRow", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "outputRow", "role": "default" }} , 
 	{ "name": "select_ln18", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln18", "role": "default" }} , 
 	{ "name": "p_smodpost", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_smodpost", "role": "default" }} , 
 	{ "name": "select_ln18_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln18_1", "role": "default" }} , 
 	{ "name": "out_hysteresis4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_hysteresis4", "role": "address0" }} , 
 	{ "name": "out_hysteresis4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_hysteresis4", "role": "ce0" }} , 
 	{ "name": "out_hysteresis4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_hysteresis4", "role": "we0" }} , 
 	{ "name": "out_hysteresis4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_hysteresis4", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "role": "q0" }}  ]}

set ArgLastReadFirstWriteLatency {
	hysteresis_4_Pipeline_VITIS_LOOP_154_4 {
		tmp_14 {Type I LastRead 0 FirstWrite -1}
		tmp_11 {Type I LastRead 0 FirstWrite -1}
		tmp_13 {Type I LastRead 0 FirstWrite -1}
		tmp_s {Type I LastRead 0 FirstWrite -1}
		tmp_12 {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		outputRow {Type I LastRead 0 FirstWrite -1}
		select_ln18 {Type I LastRead 0 FirstWrite -1}
		p_smodpost {Type I LastRead 0 FirstWrite -1}
		select_ln18_1 {Type I LastRead 0 FirstWrite -1}
		out_hysteresis4 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "515", "Max" : "515"}
	, {"Name" : "Interval", "Min" : "513", "Max" : "513"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tmp_14 { ap_none {  { tmp_14 in_data 0 8 } } }
	tmp_11 { ap_none {  { tmp_11 in_data 0 8 } } }
	tmp_13 { ap_none {  { tmp_13 in_data 0 8 } } }
	tmp_s { ap_none {  { tmp_s in_data 0 8 } } }
	tmp_12 { ap_none {  { tmp_12 in_data 0 8 } } }
	tmp { ap_none {  { tmp in_data 0 8 } } }
	outputRow { ap_none {  { outputRow in_data 0 31 } } }
	select_ln18 { ap_none {  { select_ln18 in_data 0 2 } } }
	p_smodpost { ap_none {  { p_smodpost in_data 0 2 } } }
	select_ln18_1 { ap_none {  { select_ln18_1 in_data 0 2 } } }
	out_hysteresis4 { ap_memory {  { out_hysteresis4_address0 mem_address 1 9 }  { out_hysteresis4_ce0 mem_ce 1 1 }  { out_hysteresis4_we0 mem_we 1 1 }  { out_hysteresis4_d0 mem_din 1 2 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q0 mem_dout 0 8 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q0 mem_dout 0 8 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_q0 mem_dout 0 8 } } }
}
