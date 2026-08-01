set moduleName gaussian_blur_Pipeline_VITIS_LOOP_157_7
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
set cdfgNum 31
set C_modelName {gaussian_blur_Pipeline_VITIS_LOOP_157_7}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict lineBuffer { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lineBuffer_1 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lineBuffer_2 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lineBuffer_3 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lineBuffer_4 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ lineBuffer int 12 regular {array 512 { 1 3 } 1 1 }  }
	{ lineBuffer_1 int 12 regular {array 512 { 1 3 } 1 1 }  }
	{ lineBuffer_2 int 12 regular {array 512 { 1 3 } 1 1 }  }
	{ lineBuffer_3 int 12 regular {array 512 { 1 3 } 1 1 }  }
	{ lineBuffer_4 int 12 regular {array 512 { 1 3 } 1 1 }  }
	{ select_ln21 int 3 regular  }
	{ select_ln21_1 int 3 regular  }
	{ empty_45 int 3 regular  }
	{ select_ln21_2 int 3 regular  }
	{ empty int 3 regular  }
	{ gauss_out int 8 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "lineBuffer", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "lineBuffer_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "lineBuffer_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "lineBuffer_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "lineBuffer_4", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln21", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln21_1", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "empty_45", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln21_2", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "gauss_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gauss_out_din sc_out sc_lv 8 signal 10 } 
	{ gauss_out_full_n sc_in sc_logic 1 signal 10 } 
	{ gauss_out_write sc_out sc_logic 1 signal 10 } 
	{ gauss_out_num_data_valid sc_in sc_lv 32 signal 10 } 
	{ gauss_out_fifo_cap sc_in sc_lv 32 signal 10 } 
	{ lineBuffer_address0 sc_out sc_lv 9 signal 0 } 
	{ lineBuffer_ce0 sc_out sc_logic 1 signal 0 } 
	{ lineBuffer_q0 sc_in sc_lv 12 signal 0 } 
	{ lineBuffer_1_address0 sc_out sc_lv 9 signal 1 } 
	{ lineBuffer_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ lineBuffer_1_q0 sc_in sc_lv 12 signal 1 } 
	{ lineBuffer_2_address0 sc_out sc_lv 9 signal 2 } 
	{ lineBuffer_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ lineBuffer_2_q0 sc_in sc_lv 12 signal 2 } 
	{ lineBuffer_3_address0 sc_out sc_lv 9 signal 3 } 
	{ lineBuffer_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ lineBuffer_3_q0 sc_in sc_lv 12 signal 3 } 
	{ lineBuffer_4_address0 sc_out sc_lv 9 signal 4 } 
	{ lineBuffer_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ lineBuffer_4_q0 sc_in sc_lv 12 signal 4 } 
	{ select_ln21 sc_in sc_lv 3 signal 5 } 
	{ select_ln21_1 sc_in sc_lv 3 signal 6 } 
	{ empty_45 sc_in sc_lv 3 signal 7 } 
	{ select_ln21_2 sc_in sc_lv 3 signal 8 } 
	{ empty sc_in sc_lv 3 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gauss_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gauss_out", "role": "din" }} , 
 	{ "name": "gauss_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gauss_out", "role": "full_n" }} , 
 	{ "name": "gauss_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gauss_out", "role": "write" }} , 
 	{ "name": "gauss_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gauss_out", "role": "num_data_valid" }} , 
 	{ "name": "gauss_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gauss_out", "role": "fifo_cap" }} , 
 	{ "name": "lineBuffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer", "role": "address0" }} , 
 	{ "name": "lineBuffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer", "role": "ce0" }} , 
 	{ "name": "lineBuffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lineBuffer", "role": "q0" }} , 
 	{ "name": "lineBuffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "address0" }} , 
 	{ "name": "lineBuffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "ce0" }} , 
 	{ "name": "lineBuffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "q0" }} , 
 	{ "name": "lineBuffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_2", "role": "address0" }} , 
 	{ "name": "lineBuffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_2", "role": "ce0" }} , 
 	{ "name": "lineBuffer_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lineBuffer_2", "role": "q0" }} , 
 	{ "name": "lineBuffer_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_3", "role": "address0" }} , 
 	{ "name": "lineBuffer_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_3", "role": "ce0" }} , 
 	{ "name": "lineBuffer_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lineBuffer_3", "role": "q0" }} , 
 	{ "name": "lineBuffer_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_4", "role": "address0" }} , 
 	{ "name": "lineBuffer_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_4", "role": "ce0" }} , 
 	{ "name": "lineBuffer_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lineBuffer_4", "role": "q0" }} , 
 	{ "name": "select_ln21", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln21", "role": "default" }} , 
 	{ "name": "select_ln21_1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln21_1", "role": "default" }} , 
 	{ "name": "empty_45", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty_45", "role": "default" }} , 
 	{ "name": "select_ln21_2", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln21_2", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	gaussian_blur_Pipeline_VITIS_LOOP_157_7 {
		lineBuffer {Type I LastRead 0 FirstWrite -1}
		lineBuffer_1 {Type I LastRead 0 FirstWrite -1}
		lineBuffer_2 {Type I LastRead 0 FirstWrite -1}
		lineBuffer_3 {Type I LastRead 0 FirstWrite -1}
		lineBuffer_4 {Type I LastRead 0 FirstWrite -1}
		select_ln21 {Type I LastRead 0 FirstWrite -1}
		select_ln21_1 {Type I LastRead 0 FirstWrite -1}
		empty_45 {Type I LastRead 0 FirstWrite -1}
		select_ln21_2 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		gauss_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "515", "Max" : "515"}
	, {"Name" : "Interval", "Min" : "513", "Max" : "513"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	lineBuffer { ap_memory {  { lineBuffer_address0 mem_address 1 9 }  { lineBuffer_ce0 mem_ce 1 1 }  { lineBuffer_q0 mem_dout 0 12 } } }
	lineBuffer_1 { ap_memory {  { lineBuffer_1_address0 mem_address 1 9 }  { lineBuffer_1_ce0 mem_ce 1 1 }  { lineBuffer_1_q0 mem_dout 0 12 } } }
	lineBuffer_2 { ap_memory {  { lineBuffer_2_address0 mem_address 1 9 }  { lineBuffer_2_ce0 mem_ce 1 1 }  { lineBuffer_2_q0 mem_dout 0 12 } } }
	lineBuffer_3 { ap_memory {  { lineBuffer_3_address0 mem_address 1 9 }  { lineBuffer_3_ce0 mem_ce 1 1 }  { lineBuffer_3_q0 mem_dout 0 12 } } }
	lineBuffer_4 { ap_memory {  { lineBuffer_4_address0 mem_address 1 9 }  { lineBuffer_4_ce0 mem_ce 1 1 }  { lineBuffer_4_q0 mem_dout 0 12 } } }
	select_ln21 { ap_none {  { select_ln21 in_data 0 3 } } }
	select_ln21_1 { ap_none {  { select_ln21_1 in_data 0 3 } } }
	empty_45 { ap_none {  { empty_45 in_data 0 3 } } }
	select_ln21_2 { ap_none {  { select_ln21_2 in_data 0 3 } } }
	empty { ap_none {  { empty in_data 0 3 } } }
	gauss_out { ap_fifo {  { gauss_out_din fifo_data_out 1 8 }  { gauss_out_full_n fifo_status_empty 0 1 }  { gauss_out_write fifo_data_in 1 1 }  { gauss_out_num_data_valid fifo_update 0 32 }  { gauss_out_fifo_cap fifo_data 0 32 } } }
}
