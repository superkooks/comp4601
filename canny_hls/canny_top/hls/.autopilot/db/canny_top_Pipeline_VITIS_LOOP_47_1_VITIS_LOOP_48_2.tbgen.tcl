set moduleName canny_top_Pipeline_VITIS_LOOP_47_1_VITIS_LOOP_48_2
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
set C_modelName {canny_top_Pipeline_VITIS_LOOP_47_1_VITIS_LOOP_48_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_0 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_1 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_2 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_3 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_4 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ p_anonymous_namespace_lineBuffer_39_0 int 12 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ p_anonymous_namespace_lineBuffer_39_1 int 12 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ p_anonymous_namespace_lineBuffer_39_2 int 12 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ p_anonymous_namespace_lineBuffer_39_3 int 12 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ p_anonymous_namespace_lineBuffer_39_4 int 12 regular {array 512 { 0 3 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_anonymous_namespace_lineBuffer_39_0", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_39_1", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_39_2", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_39_3", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_39_4", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_anonymous_namespace_lineBuffer_39_0_address0 sc_out sc_lv 9 signal 0 } 
	{ p_anonymous_namespace_lineBuffer_39_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_anonymous_namespace_lineBuffer_39_0_we0 sc_out sc_logic 1 signal 0 } 
	{ p_anonymous_namespace_lineBuffer_39_0_d0 sc_out sc_lv 12 signal 0 } 
	{ p_anonymous_namespace_lineBuffer_39_1_address0 sc_out sc_lv 9 signal 1 } 
	{ p_anonymous_namespace_lineBuffer_39_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ p_anonymous_namespace_lineBuffer_39_1_we0 sc_out sc_logic 1 signal 1 } 
	{ p_anonymous_namespace_lineBuffer_39_1_d0 sc_out sc_lv 12 signal 1 } 
	{ p_anonymous_namespace_lineBuffer_39_2_address0 sc_out sc_lv 9 signal 2 } 
	{ p_anonymous_namespace_lineBuffer_39_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ p_anonymous_namespace_lineBuffer_39_2_we0 sc_out sc_logic 1 signal 2 } 
	{ p_anonymous_namespace_lineBuffer_39_2_d0 sc_out sc_lv 12 signal 2 } 
	{ p_anonymous_namespace_lineBuffer_39_3_address0 sc_out sc_lv 9 signal 3 } 
	{ p_anonymous_namespace_lineBuffer_39_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ p_anonymous_namespace_lineBuffer_39_3_we0 sc_out sc_logic 1 signal 3 } 
	{ p_anonymous_namespace_lineBuffer_39_3_d0 sc_out sc_lv 12 signal 3 } 
	{ p_anonymous_namespace_lineBuffer_39_4_address0 sc_out sc_lv 9 signal 4 } 
	{ p_anonymous_namespace_lineBuffer_39_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_anonymous_namespace_lineBuffer_39_4_we0 sc_out sc_logic 1 signal 4 } 
	{ p_anonymous_namespace_lineBuffer_39_4_d0 sc_out sc_lv 12 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	canny_top_Pipeline_VITIS_LOOP_47_1_VITIS_LOOP_48_2 {
		p_anonymous_namespace_lineBuffer_39_0 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_39_1 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_39_2 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_39_3 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_39_4 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2562", "Max" : "2562"}
	, {"Name" : "Interval", "Min" : "2561", "Max" : "2561"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_anonymous_namespace_lineBuffer_39_0 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_0_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_0_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_0_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_39_0_d0 mem_din 1 12 } } }
	p_anonymous_namespace_lineBuffer_39_1 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_1_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_1_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_1_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_39_1_d0 mem_din 1 12 } } }
	p_anonymous_namespace_lineBuffer_39_2 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_2_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_2_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_2_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_39_2_d0 mem_din 1 12 } } }
	p_anonymous_namespace_lineBuffer_39_3 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_3_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_3_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_3_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_39_3_d0 mem_din 1 12 } } }
	p_anonymous_namespace_lineBuffer_39_4 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_4_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_4_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_4_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_39_4_d0 mem_din 1 12 } } }
}
