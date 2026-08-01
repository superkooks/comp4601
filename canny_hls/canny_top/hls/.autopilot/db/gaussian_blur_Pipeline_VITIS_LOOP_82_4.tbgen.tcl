set moduleName gaussian_blur_Pipeline_VITIS_LOOP_82_4
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
set cdfgNum 32
set C_modelName {gaussian_blur_Pipeline_VITIS_LOOP_82_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict row_in { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lineBuffer_4 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lineBuffer_3 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lineBuffer_2 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lineBuffer_1 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lineBuffer { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ row_in_load int 8 regular  }
	{ row_in_load_1 int 8 regular  }
	{ row_in_load_2 int 8 regular  }
	{ row_in int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ lineBuffer_4 int 12 regular {array 512 { 0 3 } 0 1 }  }
	{ lineBuffer_3 int 12 regular {array 512 { 0 3 } 0 1 }  }
	{ lineBuffer_2 int 12 regular {array 512 { 0 3 } 0 1 }  }
	{ lineBuffer_1 int 12 regular {array 512 { 0 3 } 0 1 }  }
	{ lineBuffer int 12 regular {array 512 { 0 3 } 0 1 }  }
	{ empty int 3 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "row_in_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_in_load_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_in_load_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_in", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "lineBuffer_4", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lineBuffer_3", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lineBuffer_2", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lineBuffer_1", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lineBuffer", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ row_in_load sc_in sc_lv 8 signal 0 } 
	{ row_in_load_1 sc_in sc_lv 8 signal 1 } 
	{ row_in_load_2 sc_in sc_lv 8 signal 2 } 
	{ row_in_address0 sc_out sc_lv 9 signal 3 } 
	{ row_in_ce0 sc_out sc_logic 1 signal 3 } 
	{ row_in_q0 sc_in sc_lv 8 signal 3 } 
	{ lineBuffer_4_address0 sc_out sc_lv 9 signal 4 } 
	{ lineBuffer_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ lineBuffer_4_we0 sc_out sc_logic 1 signal 4 } 
	{ lineBuffer_4_d0 sc_out sc_lv 12 signal 4 } 
	{ lineBuffer_3_address0 sc_out sc_lv 9 signal 5 } 
	{ lineBuffer_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ lineBuffer_3_we0 sc_out sc_logic 1 signal 5 } 
	{ lineBuffer_3_d0 sc_out sc_lv 12 signal 5 } 
	{ lineBuffer_2_address0 sc_out sc_lv 9 signal 6 } 
	{ lineBuffer_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ lineBuffer_2_we0 sc_out sc_logic 1 signal 6 } 
	{ lineBuffer_2_d0 sc_out sc_lv 12 signal 6 } 
	{ lineBuffer_1_address0 sc_out sc_lv 9 signal 7 } 
	{ lineBuffer_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ lineBuffer_1_we0 sc_out sc_logic 1 signal 7 } 
	{ lineBuffer_1_d0 sc_out sc_lv 12 signal 7 } 
	{ lineBuffer_address0 sc_out sc_lv 9 signal 8 } 
	{ lineBuffer_ce0 sc_out sc_logic 1 signal 8 } 
	{ lineBuffer_we0 sc_out sc_logic 1 signal 8 } 
	{ lineBuffer_d0 sc_out sc_lv 12 signal 8 } 
	{ empty sc_in sc_lv 3 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "row_in_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_in_load", "role": "default" }} , 
 	{ "name": "row_in_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_in_load_1", "role": "default" }} , 
 	{ "name": "row_in_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_in_load_2", "role": "default" }} , 
 	{ "name": "row_in_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "row_in", "role": "address0" }} , 
 	{ "name": "row_in_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_in", "role": "ce0" }} , 
 	{ "name": "row_in_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_in", "role": "q0" }} , 
 	{ "name": "lineBuffer_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_4", "role": "address0" }} , 
 	{ "name": "lineBuffer_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_4", "role": "ce0" }} , 
 	{ "name": "lineBuffer_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_4", "role": "we0" }} , 
 	{ "name": "lineBuffer_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lineBuffer_4", "role": "d0" }} , 
 	{ "name": "lineBuffer_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_3", "role": "address0" }} , 
 	{ "name": "lineBuffer_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_3", "role": "ce0" }} , 
 	{ "name": "lineBuffer_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_3", "role": "we0" }} , 
 	{ "name": "lineBuffer_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lineBuffer_3", "role": "d0" }} , 
 	{ "name": "lineBuffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_2", "role": "address0" }} , 
 	{ "name": "lineBuffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_2", "role": "ce0" }} , 
 	{ "name": "lineBuffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_2", "role": "we0" }} , 
 	{ "name": "lineBuffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lineBuffer_2", "role": "d0" }} , 
 	{ "name": "lineBuffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "address0" }} , 
 	{ "name": "lineBuffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "ce0" }} , 
 	{ "name": "lineBuffer_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "we0" }} , 
 	{ "name": "lineBuffer_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "d0" }} , 
 	{ "name": "lineBuffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer", "role": "address0" }} , 
 	{ "name": "lineBuffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer", "role": "ce0" }} , 
 	{ "name": "lineBuffer_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer", "role": "we0" }} , 
 	{ "name": "lineBuffer_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lineBuffer", "role": "d0" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	gaussian_blur_Pipeline_VITIS_LOOP_82_4 {
		row_in_load {Type I LastRead 0 FirstWrite -1}
		row_in_load_1 {Type I LastRead 0 FirstWrite -1}
		row_in_load_2 {Type I LastRead 0 FirstWrite -1}
		row_in {Type I LastRead 0 FirstWrite -1}
		lineBuffer_4 {Type O LastRead -1 FirstWrite 2}
		lineBuffer_3 {Type O LastRead -1 FirstWrite 2}
		lineBuffer_2 {Type O LastRead -1 FirstWrite 2}
		lineBuffer_1 {Type O LastRead -1 FirstWrite 2}
		lineBuffer {Type O LastRead -1 FirstWrite 2}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "515", "Max" : "515"}
	, {"Name" : "Interval", "Min" : "513", "Max" : "513"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	row_in_load { ap_none {  { row_in_load in_data 0 8 } } }
	row_in_load_1 { ap_none {  { row_in_load_1 in_data 0 8 } } }
	row_in_load_2 { ap_none {  { row_in_load_2 in_data 0 8 } } }
	row_in { ap_memory {  { row_in_address0 mem_address 1 9 }  { row_in_ce0 mem_ce 1 1 }  { row_in_q0 mem_dout 0 8 } } }
	lineBuffer_4 { ap_memory {  { lineBuffer_4_address0 mem_address 1 9 }  { lineBuffer_4_ce0 mem_ce 1 1 }  { lineBuffer_4_we0 mem_we 1 1 }  { lineBuffer_4_d0 mem_din 1 12 } } }
	lineBuffer_3 { ap_memory {  { lineBuffer_3_address0 mem_address 1 9 }  { lineBuffer_3_ce0 mem_ce 1 1 }  { lineBuffer_3_we0 mem_we 1 1 }  { lineBuffer_3_d0 mem_din 1 12 } } }
	lineBuffer_2 { ap_memory {  { lineBuffer_2_address0 mem_address 1 9 }  { lineBuffer_2_ce0 mem_ce 1 1 }  { lineBuffer_2_we0 mem_we 1 1 }  { lineBuffer_2_d0 mem_din 1 12 } } }
	lineBuffer_1 { ap_memory {  { lineBuffer_1_address0 mem_address 1 9 }  { lineBuffer_1_ce0 mem_ce 1 1 }  { lineBuffer_1_we0 mem_we 1 1 }  { lineBuffer_1_d0 mem_din 1 12 } } }
	lineBuffer { ap_memory {  { lineBuffer_address0 mem_address 1 9 }  { lineBuffer_ce0 mem_ce 1 1 }  { lineBuffer_we0 mem_we 1 1 }  { lineBuffer_d0 mem_din 1 12 } } }
	empty { ap_none {  { empty in_data 0 3 } } }
}
