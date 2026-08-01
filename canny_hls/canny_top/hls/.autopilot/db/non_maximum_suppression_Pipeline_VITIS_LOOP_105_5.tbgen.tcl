set moduleName non_maximum_suppression_Pipeline_VITIS_LOOP_105_5
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
set C_modelName {non_maximum_suppression_Pipeline_VITIS_LOOP_105_5}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict lineBuffer_magnitude { MEM_WIDTH 16 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lineBuffer_direction { MEM_WIDTH 8 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lineBuffer_magnitude_1 { MEM_WIDTH 16 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lineBuffer_direction_1 { MEM_WIDTH 8 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lineBuffer_magnitude_2 { MEM_WIDTH 16 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lineBuffer_direction_2 { MEM_WIDTH 8 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ tmp_4 int 8 regular  }
	{ tmp_3 int 16 regular  }
	{ tmp_8 int 16 regular  }
	{ tmp_5 int 16 regular  }
	{ tmp_s int 16 regular  }
	{ tmp_1 int 16 regular  }
	{ tmp_2 int 16 regular  }
	{ tmp_9 int 8 regular  }
	{ outputRow int 9 regular  }
	{ lineBuffer_magnitude int 16 regular {array 640 { 1 3 } 1 1 }  }
	{ lineBuffer_direction int 8 regular {array 640 { 1 3 } 1 1 }  }
	{ lineBuffer_magnitude_1 int 16 regular {array 640 { 1 3 } 1 1 }  }
	{ lineBuffer_direction_1 int 8 regular {array 640 { 1 3 } 1 1 }  }
	{ lineBuffer_magnitude_2 int 16 regular {array 640 { 1 3 } 1 1 }  }
	{ lineBuffer_direction_2 int 8 regular {array 640 { 1 3 } 1 1 }  }
	{ select_ln11 int 2 regular  }
	{ empty int 2 regular  }
	{ nms_out int 16 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "tmp_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_9", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "outputRow", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "lineBuffer_magnitude", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "lineBuffer_direction", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "lineBuffer_magnitude_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "lineBuffer_direction_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "lineBuffer_magnitude_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "lineBuffer_direction_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln11", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "nms_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nms_out_din sc_out sc_lv 16 signal 17 } 
	{ nms_out_full_n sc_in sc_logic 1 signal 17 } 
	{ nms_out_write sc_out sc_logic 1 signal 17 } 
	{ nms_out_num_data_valid sc_in sc_lv 32 signal 17 } 
	{ nms_out_fifo_cap sc_in sc_lv 32 signal 17 } 
	{ tmp_4 sc_in sc_lv 8 signal 0 } 
	{ tmp_3 sc_in sc_lv 16 signal 1 } 
	{ tmp_8 sc_in sc_lv 16 signal 2 } 
	{ tmp_5 sc_in sc_lv 16 signal 3 } 
	{ tmp_s sc_in sc_lv 16 signal 4 } 
	{ tmp_1 sc_in sc_lv 16 signal 5 } 
	{ tmp_2 sc_in sc_lv 16 signal 6 } 
	{ tmp_9 sc_in sc_lv 8 signal 7 } 
	{ outputRow sc_in sc_lv 9 signal 8 } 
	{ lineBuffer_magnitude_address0 sc_out sc_lv 10 signal 9 } 
	{ lineBuffer_magnitude_ce0 sc_out sc_logic 1 signal 9 } 
	{ lineBuffer_magnitude_q0 sc_in sc_lv 16 signal 9 } 
	{ lineBuffer_direction_address0 sc_out sc_lv 10 signal 10 } 
	{ lineBuffer_direction_ce0 sc_out sc_logic 1 signal 10 } 
	{ lineBuffer_direction_q0 sc_in sc_lv 8 signal 10 } 
	{ lineBuffer_magnitude_1_address0 sc_out sc_lv 10 signal 11 } 
	{ lineBuffer_magnitude_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ lineBuffer_magnitude_1_q0 sc_in sc_lv 16 signal 11 } 
	{ lineBuffer_direction_1_address0 sc_out sc_lv 10 signal 12 } 
	{ lineBuffer_direction_1_ce0 sc_out sc_logic 1 signal 12 } 
	{ lineBuffer_direction_1_q0 sc_in sc_lv 8 signal 12 } 
	{ lineBuffer_magnitude_2_address0 sc_out sc_lv 10 signal 13 } 
	{ lineBuffer_magnitude_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ lineBuffer_magnitude_2_q0 sc_in sc_lv 16 signal 13 } 
	{ lineBuffer_direction_2_address0 sc_out sc_lv 10 signal 14 } 
	{ lineBuffer_direction_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ lineBuffer_direction_2_q0 sc_in sc_lv 8 signal 14 } 
	{ select_ln11 sc_in sc_lv 2 signal 15 } 
	{ empty sc_in sc_lv 2 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nms_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "nms_out", "role": "din" }} , 
 	{ "name": "nms_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nms_out", "role": "full_n" }} , 
 	{ "name": "nms_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nms_out", "role": "write" }} , 
 	{ "name": "nms_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nms_out", "role": "num_data_valid" }} , 
 	{ "name": "nms_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nms_out", "role": "fifo_cap" }} , 
 	{ "name": "tmp_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_4", "role": "default" }} , 
 	{ "name": "tmp_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tmp_3", "role": "default" }} , 
 	{ "name": "tmp_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tmp_8", "role": "default" }} , 
 	{ "name": "tmp_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tmp_5", "role": "default" }} , 
 	{ "name": "tmp_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tmp_s", "role": "default" }} , 
 	{ "name": "tmp_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tmp_1", "role": "default" }} , 
 	{ "name": "tmp_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tmp_2", "role": "default" }} , 
 	{ "name": "tmp_9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_9", "role": "default" }} , 
 	{ "name": "outputRow", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "outputRow", "role": "default" }} , 
 	{ "name": "lineBuffer_magnitude_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lineBuffer_magnitude", "role": "address0" }} , 
 	{ "name": "lineBuffer_magnitude_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_magnitude", "role": "ce0" }} , 
 	{ "name": "lineBuffer_magnitude_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "lineBuffer_magnitude", "role": "q0" }} , 
 	{ "name": "lineBuffer_direction_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lineBuffer_direction", "role": "address0" }} , 
 	{ "name": "lineBuffer_direction_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_direction", "role": "ce0" }} , 
 	{ "name": "lineBuffer_direction_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer_direction", "role": "q0" }} , 
 	{ "name": "lineBuffer_magnitude_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lineBuffer_magnitude_1", "role": "address0" }} , 
 	{ "name": "lineBuffer_magnitude_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_magnitude_1", "role": "ce0" }} , 
 	{ "name": "lineBuffer_magnitude_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "lineBuffer_magnitude_1", "role": "q0" }} , 
 	{ "name": "lineBuffer_direction_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lineBuffer_direction_1", "role": "address0" }} , 
 	{ "name": "lineBuffer_direction_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_direction_1", "role": "ce0" }} , 
 	{ "name": "lineBuffer_direction_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer_direction_1", "role": "q0" }} , 
 	{ "name": "lineBuffer_magnitude_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lineBuffer_magnitude_2", "role": "address0" }} , 
 	{ "name": "lineBuffer_magnitude_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_magnitude_2", "role": "ce0" }} , 
 	{ "name": "lineBuffer_magnitude_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "lineBuffer_magnitude_2", "role": "q0" }} , 
 	{ "name": "lineBuffer_direction_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lineBuffer_direction_2", "role": "address0" }} , 
 	{ "name": "lineBuffer_direction_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_direction_2", "role": "ce0" }} , 
 	{ "name": "lineBuffer_direction_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer_direction_2", "role": "q0" }} , 
 	{ "name": "select_ln11", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln11", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	non_maximum_suppression_Pipeline_VITIS_LOOP_105_5 {
		tmp_4 {Type I LastRead 0 FirstWrite -1}
		tmp_3 {Type I LastRead 0 FirstWrite -1}
		tmp_8 {Type I LastRead 0 FirstWrite -1}
		tmp_5 {Type I LastRead 0 FirstWrite -1}
		tmp_s {Type I LastRead 0 FirstWrite -1}
		tmp_1 {Type I LastRead 0 FirstWrite -1}
		tmp_2 {Type I LastRead 0 FirstWrite -1}
		tmp_9 {Type I LastRead 0 FirstWrite -1}
		outputRow {Type I LastRead 0 FirstWrite -1}
		lineBuffer_magnitude {Type I LastRead 0 FirstWrite -1}
		lineBuffer_direction {Type I LastRead 0 FirstWrite -1}
		lineBuffer_magnitude_1 {Type I LastRead 0 FirstWrite -1}
		lineBuffer_direction_1 {Type I LastRead 0 FirstWrite -1}
		lineBuffer_magnitude_2 {Type I LastRead 0 FirstWrite -1}
		lineBuffer_direction_2 {Type I LastRead 0 FirstWrite -1}
		select_ln11 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		nms_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "643", "Max" : "643"}
	, {"Name" : "Interval", "Min" : "641", "Max" : "641"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tmp_4 { ap_none {  { tmp_4 in_data 0 8 } } }
	tmp_3 { ap_none {  { tmp_3 in_data 0 16 } } }
	tmp_8 { ap_none {  { tmp_8 in_data 0 16 } } }
	tmp_5 { ap_none {  { tmp_5 in_data 0 16 } } }
	tmp_s { ap_none {  { tmp_s in_data 0 16 } } }
	tmp_1 { ap_none {  { tmp_1 in_data 0 16 } } }
	tmp_2 { ap_none {  { tmp_2 in_data 0 16 } } }
	tmp_9 { ap_none {  { tmp_9 in_data 0 8 } } }
	outputRow { ap_none {  { outputRow in_data 0 9 } } }
	lineBuffer_magnitude { ap_memory {  { lineBuffer_magnitude_address0 mem_address 1 10 }  { lineBuffer_magnitude_ce0 mem_ce 1 1 }  { lineBuffer_magnitude_q0 mem_dout 0 16 } } }
	lineBuffer_direction { ap_memory {  { lineBuffer_direction_address0 mem_address 1 10 }  { lineBuffer_direction_ce0 mem_ce 1 1 }  { lineBuffer_direction_q0 mem_dout 0 8 } } }
	lineBuffer_magnitude_1 { ap_memory {  { lineBuffer_magnitude_1_address0 mem_address 1 10 }  { lineBuffer_magnitude_1_ce0 mem_ce 1 1 }  { lineBuffer_magnitude_1_q0 mem_dout 0 16 } } }
	lineBuffer_direction_1 { ap_memory {  { lineBuffer_direction_1_address0 mem_address 1 10 }  { lineBuffer_direction_1_ce0 mem_ce 1 1 }  { lineBuffer_direction_1_q0 mem_dout 0 8 } } }
	lineBuffer_magnitude_2 { ap_memory {  { lineBuffer_magnitude_2_address0 mem_address 1 10 }  { lineBuffer_magnitude_2_ce0 mem_ce 1 1 }  { lineBuffer_magnitude_2_q0 mem_dout 0 16 } } }
	lineBuffer_direction_2 { ap_memory {  { lineBuffer_direction_2_address0 mem_address 1 10 }  { lineBuffer_direction_2_ce0 mem_ce 1 1 }  { lineBuffer_direction_2_q0 mem_dout 0 8 } } }
	select_ln11 { ap_none {  { select_ln11 in_data 0 2 } } }
	empty { ap_none {  { empty in_data 0 2 } } }
	nms_out { ap_fifo {  { nms_out_din fifo_data_out 1 16 }  { nms_out_full_n fifo_status_empty 0 1 }  { nms_out_write fifo_data_in 1 1 }  { nms_out_num_data_valid fifo_update 0 32 }  { nms_out_fifo_cap fifo_data 0 32 } } }
}
