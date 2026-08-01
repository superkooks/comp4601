set moduleName hysteresis_1_Pipeline_VITIS_LOOP_78_2
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
set C_modelName {hysteresis<1>_Pipeline_VITIS_LOOP_78_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict buffer_2 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_1 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_r { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ buffer_2 int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ buffer_1 int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ buffer_r int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ thresh_out int 8 regular {fifo 0 volatile }  }
	{ empty int 2 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "buffer_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "thresh_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ thresh_out_dout sc_in sc_lv 8 signal 3 } 
	{ thresh_out_empty_n sc_in sc_logic 1 signal 3 } 
	{ thresh_out_read sc_out sc_logic 1 signal 3 } 
	{ thresh_out_num_data_valid sc_in sc_lv 11 signal 3 } 
	{ thresh_out_fifo_cap sc_in sc_lv 11 signal 3 } 
	{ buffer_2_address0 sc_out sc_lv 9 signal 0 } 
	{ buffer_2_ce0 sc_out sc_logic 1 signal 0 } 
	{ buffer_2_we0 sc_out sc_logic 1 signal 0 } 
	{ buffer_2_d0 sc_out sc_lv 8 signal 0 } 
	{ buffer_1_address0 sc_out sc_lv 9 signal 1 } 
	{ buffer_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer_1_we0 sc_out sc_logic 1 signal 1 } 
	{ buffer_1_d0 sc_out sc_lv 8 signal 1 } 
	{ buffer_r_address0 sc_out sc_lv 9 signal 2 } 
	{ buffer_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ buffer_r_we0 sc_out sc_logic 1 signal 2 } 
	{ buffer_r_d0 sc_out sc_lv 8 signal 2 } 
	{ empty sc_in sc_lv 2 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "thresh_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "thresh_out", "role": "dout" }} , 
 	{ "name": "thresh_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thresh_out", "role": "empty_n" }} , 
 	{ "name": "thresh_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thresh_out", "role": "read" }} , 
 	{ "name": "thresh_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "thresh_out", "role": "num_data_valid" }} , 
 	{ "name": "thresh_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "thresh_out", "role": "fifo_cap" }} , 
 	{ "name": "buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "buffer_2", "role": "address0" }} , 
 	{ "name": "buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "ce0" }} , 
 	{ "name": "buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "we0" }} , 
 	{ "name": "buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_2", "role": "d0" }} , 
 	{ "name": "buffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "buffer_1", "role": "address0" }} , 
 	{ "name": "buffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1", "role": "ce0" }} , 
 	{ "name": "buffer_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1", "role": "we0" }} , 
 	{ "name": "buffer_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_1", "role": "d0" }} , 
 	{ "name": "buffer_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "buffer_r", "role": "address0" }} , 
 	{ "name": "buffer_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "ce0" }} , 
 	{ "name": "buffer_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "we0" }} , 
 	{ "name": "buffer_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_r", "role": "d0" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	hysteresis_1_Pipeline_VITIS_LOOP_78_2 {
		buffer_2 {Type O LastRead -1 FirstWrite 1}
		buffer_1 {Type O LastRead -1 FirstWrite 1}
		buffer_r {Type O LastRead -1 FirstWrite 1}
		thresh_out {Type I LastRead 1 FirstWrite -1}
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
	buffer_2 { ap_memory {  { buffer_2_address0 mem_address 1 9 }  { buffer_2_ce0 mem_ce 1 1 }  { buffer_2_we0 mem_we 1 1 }  { buffer_2_d0 mem_din 1 8 } } }
	buffer_1 { ap_memory {  { buffer_1_address0 mem_address 1 9 }  { buffer_1_ce0 mem_ce 1 1 }  { buffer_1_we0 mem_we 1 1 }  { buffer_1_d0 mem_din 1 8 } } }
	buffer_r { ap_memory {  { buffer_r_address0 mem_address 1 9 }  { buffer_r_ce0 mem_ce 1 1 }  { buffer_r_we0 mem_we 1 1 }  { buffer_r_d0 mem_din 1 8 } } }
	thresh_out { ap_fifo {  { thresh_out_dout fifo_data_out 0 8 }  { thresh_out_empty_n fifo_status_empty 0 1 }  { thresh_out_read fifo_data_in 1 1 }  { thresh_out_num_data_valid fifo_update 0 11 }  { thresh_out_fifo_cap fifo_data 0 11 } } }
	empty { ap_none {  { empty in_data 0 2 } } }
}
