set moduleName gaussian_blur_Pipeline_VITIS_LOOP_125_6
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
set C_modelName {gaussian_blur_Pipeline_VITIS_LOOP_125_6}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict output_r { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_0 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_1 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_2 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_3 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_4 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ select_ln29 int 3 regular  }
	{ select_ln29_1 int 3 regular  }
	{ select_ln29_2 int 3 regular  }
	{ select_ln29_3 int 3 regular  }
	{ select_ln29_4 int 3 regular  }
	{ output_r int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ p_anonymous_namespace_lineBuffer_39_0 int 12 regular {array 512 { 1 3 } 1 1 } {global 0}  }
	{ p_anonymous_namespace_lineBuffer_39_1 int 12 regular {array 512 { 1 3 } 1 1 } {global 0}  }
	{ p_anonymous_namespace_lineBuffer_39_2 int 12 regular {array 512 { 1 3 } 1 1 } {global 0}  }
	{ p_anonymous_namespace_lineBuffer_39_3 int 12 regular {array 512 { 1 3 } 1 1 } {global 0}  }
	{ p_anonymous_namespace_lineBuffer_39_4 int 12 regular {array 512 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "select_ln29", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln29_1", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln29_2", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln29_3", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln29_4", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_39_0", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_39_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_39_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_39_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_39_4", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ select_ln29 sc_in sc_lv 3 signal 0 } 
	{ select_ln29_1 sc_in sc_lv 3 signal 1 } 
	{ select_ln29_2 sc_in sc_lv 3 signal 2 } 
	{ select_ln29_3 sc_in sc_lv 3 signal 3 } 
	{ select_ln29_4 sc_in sc_lv 3 signal 4 } 
	{ output_r_address0 sc_out sc_lv 9 signal 5 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 5 } 
	{ output_r_we0 sc_out sc_logic 1 signal 5 } 
	{ output_r_d0 sc_out sc_lv 8 signal 5 } 
	{ p_anonymous_namespace_lineBuffer_39_0_address0 sc_out sc_lv 9 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_39_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_39_0_q0 sc_in sc_lv 12 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_39_1_address0 sc_out sc_lv 9 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_39_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_39_1_q0 sc_in sc_lv 12 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_39_2_address0 sc_out sc_lv 9 signal 8 } 
	{ p_anonymous_namespace_lineBuffer_39_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ p_anonymous_namespace_lineBuffer_39_2_q0 sc_in sc_lv 12 signal 8 } 
	{ p_anonymous_namespace_lineBuffer_39_3_address0 sc_out sc_lv 9 signal 9 } 
	{ p_anonymous_namespace_lineBuffer_39_3_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_anonymous_namespace_lineBuffer_39_3_q0 sc_in sc_lv 12 signal 9 } 
	{ p_anonymous_namespace_lineBuffer_39_4_address0 sc_out sc_lv 9 signal 10 } 
	{ p_anonymous_namespace_lineBuffer_39_4_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_anonymous_namespace_lineBuffer_39_4_q0 sc_in sc_lv 12 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "select_ln29", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln29", "role": "default" }} , 
 	{ "name": "select_ln29_1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln29_1", "role": "default" }} , 
 	{ "name": "select_ln29_2", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln29_2", "role": "default" }} , 
 	{ "name": "select_ln29_3", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln29_3", "role": "default" }} , 
 	{ "name": "select_ln29_4", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln29_4", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "q0" }}  ]}

set ArgLastReadFirstWriteLatency {
	gaussian_blur_Pipeline_VITIS_LOOP_125_6 {
		select_ln29 {Type I LastRead 0 FirstWrite -1}
		select_ln29_1 {Type I LastRead 0 FirstWrite -1}
		select_ln29_2 {Type I LastRead 0 FirstWrite -1}
		select_ln29_3 {Type I LastRead 0 FirstWrite -1}
		select_ln29_4 {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 2}
		p_anonymous_namespace_lineBuffer_39_0 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_1 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_2 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_3 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_4 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "515", "Max" : "515"}
	, {"Name" : "Interval", "Min" : "513", "Max" : "513"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	select_ln29 { ap_none {  { select_ln29 in_data 0 3 } } }
	select_ln29_1 { ap_none {  { select_ln29_1 in_data 0 3 } } }
	select_ln29_2 { ap_none {  { select_ln29_2 in_data 0 3 } } }
	select_ln29_3 { ap_none {  { select_ln29_3 in_data 0 3 } } }
	select_ln29_4 { ap_none {  { select_ln29_4 in_data 0 3 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
	p_anonymous_namespace_lineBuffer_39_0 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_0_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_0_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_0_q0 mem_dout 0 12 } } }
	p_anonymous_namespace_lineBuffer_39_1 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_1_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_1_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_1_q0 mem_dout 0 12 } } }
	p_anonymous_namespace_lineBuffer_39_2 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_2_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_2_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_2_q0 mem_dout 0 12 } } }
	p_anonymous_namespace_lineBuffer_39_3 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_3_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_3_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_3_q0 mem_dout 0 12 } } }
	p_anonymous_namespace_lineBuffer_39_4 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_4_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_4_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_4_q0 mem_dout 0 12 } } }
}
