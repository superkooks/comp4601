set moduleName non_maximum_suppression_Pipeline_VITIS_LOOP_50_2
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
set C_modelName {non_maximum_suppression_Pipeline_VITIS_LOOP_50_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict lineBuffer_direction_2 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lineBuffer_direction_1 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lineBuffer_direction { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lineBuffer_magnitude_2 { MEM_WIDTH 16 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lineBuffer_magnitude_1 { MEM_WIDTH 16 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lineBuffer_magnitude { MEM_WIDTH 16 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ lineBuffer_direction_2 int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ lineBuffer_direction_1 int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ lineBuffer_direction int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ lineBuffer_magnitude_2 int 16 regular {array 512 { 0 3 } 0 1 }  }
	{ lineBuffer_magnitude_1 int 16 regular {array 512 { 0 3 } 0 1 }  }
	{ lineBuffer_magnitude int 16 regular {array 512 { 0 3 } 0 1 }  }
	{ sobel_out int 24 regular {fifo 0 volatile }  }
	{ empty int 2 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "lineBuffer_direction_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lineBuffer_direction_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lineBuffer_direction", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lineBuffer_magnitude_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lineBuffer_magnitude_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lineBuffer_magnitude", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sobel_out", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sobel_out_dout sc_in sc_lv 24 signal 6 } 
	{ sobel_out_empty_n sc_in sc_logic 1 signal 6 } 
	{ sobel_out_read sc_out sc_logic 1 signal 6 } 
	{ sobel_out_num_data_valid sc_in sc_lv 11 signal 6 } 
	{ sobel_out_fifo_cap sc_in sc_lv 11 signal 6 } 
	{ lineBuffer_direction_2_address0 sc_out sc_lv 9 signal 0 } 
	{ lineBuffer_direction_2_ce0 sc_out sc_logic 1 signal 0 } 
	{ lineBuffer_direction_2_we0 sc_out sc_logic 1 signal 0 } 
	{ lineBuffer_direction_2_d0 sc_out sc_lv 8 signal 0 } 
	{ lineBuffer_direction_1_address0 sc_out sc_lv 9 signal 1 } 
	{ lineBuffer_direction_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ lineBuffer_direction_1_we0 sc_out sc_logic 1 signal 1 } 
	{ lineBuffer_direction_1_d0 sc_out sc_lv 8 signal 1 } 
	{ lineBuffer_direction_address0 sc_out sc_lv 9 signal 2 } 
	{ lineBuffer_direction_ce0 sc_out sc_logic 1 signal 2 } 
	{ lineBuffer_direction_we0 sc_out sc_logic 1 signal 2 } 
	{ lineBuffer_direction_d0 sc_out sc_lv 8 signal 2 } 
	{ lineBuffer_magnitude_2_address0 sc_out sc_lv 9 signal 3 } 
	{ lineBuffer_magnitude_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ lineBuffer_magnitude_2_we0 sc_out sc_logic 1 signal 3 } 
	{ lineBuffer_magnitude_2_d0 sc_out sc_lv 16 signal 3 } 
	{ lineBuffer_magnitude_1_address0 sc_out sc_lv 9 signal 4 } 
	{ lineBuffer_magnitude_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ lineBuffer_magnitude_1_we0 sc_out sc_logic 1 signal 4 } 
	{ lineBuffer_magnitude_1_d0 sc_out sc_lv 16 signal 4 } 
	{ lineBuffer_magnitude_address0 sc_out sc_lv 9 signal 5 } 
	{ lineBuffer_magnitude_ce0 sc_out sc_logic 1 signal 5 } 
	{ lineBuffer_magnitude_we0 sc_out sc_logic 1 signal 5 } 
	{ lineBuffer_magnitude_d0 sc_out sc_lv 16 signal 5 } 
	{ empty sc_in sc_lv 2 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sobel_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "sobel_out", "role": "dout" }} , 
 	{ "name": "sobel_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sobel_out", "role": "empty_n" }} , 
 	{ "name": "sobel_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sobel_out", "role": "read" }} , 
 	{ "name": "sobel_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sobel_out", "role": "num_data_valid" }} , 
 	{ "name": "sobel_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sobel_out", "role": "fifo_cap" }} , 
 	{ "name": "lineBuffer_direction_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_direction_2", "role": "address0" }} , 
 	{ "name": "lineBuffer_direction_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_direction_2", "role": "ce0" }} , 
 	{ "name": "lineBuffer_direction_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_direction_2", "role": "we0" }} , 
 	{ "name": "lineBuffer_direction_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer_direction_2", "role": "d0" }} , 
 	{ "name": "lineBuffer_direction_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_direction_1", "role": "address0" }} , 
 	{ "name": "lineBuffer_direction_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_direction_1", "role": "ce0" }} , 
 	{ "name": "lineBuffer_direction_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_direction_1", "role": "we0" }} , 
 	{ "name": "lineBuffer_direction_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer_direction_1", "role": "d0" }} , 
 	{ "name": "lineBuffer_direction_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_direction", "role": "address0" }} , 
 	{ "name": "lineBuffer_direction_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_direction", "role": "ce0" }} , 
 	{ "name": "lineBuffer_direction_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_direction", "role": "we0" }} , 
 	{ "name": "lineBuffer_direction_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer_direction", "role": "d0" }} , 
 	{ "name": "lineBuffer_magnitude_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_magnitude_2", "role": "address0" }} , 
 	{ "name": "lineBuffer_magnitude_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_magnitude_2", "role": "ce0" }} , 
 	{ "name": "lineBuffer_magnitude_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_magnitude_2", "role": "we0" }} , 
 	{ "name": "lineBuffer_magnitude_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "lineBuffer_magnitude_2", "role": "d0" }} , 
 	{ "name": "lineBuffer_magnitude_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_magnitude_1", "role": "address0" }} , 
 	{ "name": "lineBuffer_magnitude_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_magnitude_1", "role": "ce0" }} , 
 	{ "name": "lineBuffer_magnitude_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_magnitude_1", "role": "we0" }} , 
 	{ "name": "lineBuffer_magnitude_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "lineBuffer_magnitude_1", "role": "d0" }} , 
 	{ "name": "lineBuffer_magnitude_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_magnitude", "role": "address0" }} , 
 	{ "name": "lineBuffer_magnitude_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_magnitude", "role": "ce0" }} , 
 	{ "name": "lineBuffer_magnitude_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_magnitude", "role": "we0" }} , 
 	{ "name": "lineBuffer_magnitude_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "lineBuffer_magnitude", "role": "d0" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	non_maximum_suppression_Pipeline_VITIS_LOOP_50_2 {
		lineBuffer_direction_2 {Type O LastRead -1 FirstWrite 1}
		lineBuffer_direction_1 {Type O LastRead -1 FirstWrite 1}
		lineBuffer_direction {Type O LastRead -1 FirstWrite 1}
		lineBuffer_magnitude_2 {Type O LastRead -1 FirstWrite 1}
		lineBuffer_magnitude_1 {Type O LastRead -1 FirstWrite 1}
		lineBuffer_magnitude {Type O LastRead -1 FirstWrite 1}
		sobel_out {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "514", "Max" : "514"}
	, {"Name" : "Interval", "Min" : "513", "Max" : "513"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	lineBuffer_direction_2 { ap_memory {  { lineBuffer_direction_2_address0 mem_address 1 9 }  { lineBuffer_direction_2_ce0 mem_ce 1 1 }  { lineBuffer_direction_2_we0 mem_we 1 1 }  { lineBuffer_direction_2_d0 mem_din 1 8 } } }
	lineBuffer_direction_1 { ap_memory {  { lineBuffer_direction_1_address0 mem_address 1 9 }  { lineBuffer_direction_1_ce0 mem_ce 1 1 }  { lineBuffer_direction_1_we0 mem_we 1 1 }  { lineBuffer_direction_1_d0 mem_din 1 8 } } }
	lineBuffer_direction { ap_memory {  { lineBuffer_direction_address0 mem_address 1 9 }  { lineBuffer_direction_ce0 mem_ce 1 1 }  { lineBuffer_direction_we0 mem_we 1 1 }  { lineBuffer_direction_d0 mem_din 1 8 } } }
	lineBuffer_magnitude_2 { ap_memory {  { lineBuffer_magnitude_2_address0 mem_address 1 9 }  { lineBuffer_magnitude_2_ce0 mem_ce 1 1 }  { lineBuffer_magnitude_2_we0 mem_we 1 1 }  { lineBuffer_magnitude_2_d0 mem_din 1 16 } } }
	lineBuffer_magnitude_1 { ap_memory {  { lineBuffer_magnitude_1_address0 mem_address 1 9 }  { lineBuffer_magnitude_1_ce0 mem_ce 1 1 }  { lineBuffer_magnitude_1_we0 mem_we 1 1 }  { lineBuffer_magnitude_1_d0 mem_din 1 16 } } }
	lineBuffer_magnitude { ap_memory {  { lineBuffer_magnitude_address0 mem_address 1 9 }  { lineBuffer_magnitude_ce0 mem_ce 1 1 }  { lineBuffer_magnitude_we0 mem_we 1 1 }  { lineBuffer_magnitude_d0 mem_din 1 16 } } }
	sobel_out { ap_fifo {  { sobel_out_dout fifo_data_out 0 24 }  { sobel_out_empty_n fifo_status_empty 0 1 }  { sobel_out_read fifo_data_in 1 1 }  { sobel_out_num_data_valid fifo_update 0 11 }  { sobel_out_fifo_cap fifo_data 0 11 } } }
	empty { ap_none {  { empty in_data 0 2 } } }
}
