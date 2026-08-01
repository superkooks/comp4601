set moduleName sobel_Pipeline_VITIS_LOOP_149_6
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
set C_modelName {sobel_Pipeline_VITIS_LOOP_149_6}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict lineBuffer { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lineBuffer_1 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lineBuffer_2 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ tmp_2 int 8 regular  }
	{ tmp_6 int 8 regular  }
	{ tmp_3 int 8 regular  }
	{ tmp_5 int 8 regular  }
	{ tmp_4 int 8 regular  }
	{ tmp_1 int 8 regular  }
	{ sobel_out int 24 regular {fifo 1 volatile }  }
	{ lineBuffer int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ lineBuffer_1 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ lineBuffer_2 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ select_ln23 int 2 regular  }
	{ empty int 2 regular  }
	{ select_ln23_1 int 2 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "tmp_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sobel_out", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lineBuffer", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "lineBuffer_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "lineBuffer_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln23", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln23_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sobel_out_din sc_out sc_lv 24 signal 6 } 
	{ sobel_out_full_n sc_in sc_logic 1 signal 6 } 
	{ sobel_out_write sc_out sc_logic 1 signal 6 } 
	{ sobel_out_num_data_valid sc_in sc_lv 32 signal 6 } 
	{ sobel_out_fifo_cap sc_in sc_lv 32 signal 6 } 
	{ tmp_2 sc_in sc_lv 8 signal 0 } 
	{ tmp_6 sc_in sc_lv 8 signal 1 } 
	{ tmp_3 sc_in sc_lv 8 signal 2 } 
	{ tmp_5 sc_in sc_lv 8 signal 3 } 
	{ tmp_4 sc_in sc_lv 8 signal 4 } 
	{ tmp_1 sc_in sc_lv 8 signal 5 } 
	{ lineBuffer_address0 sc_out sc_lv 9 signal 7 } 
	{ lineBuffer_ce0 sc_out sc_logic 1 signal 7 } 
	{ lineBuffer_q0 sc_in sc_lv 8 signal 7 } 
	{ lineBuffer_1_address0 sc_out sc_lv 9 signal 8 } 
	{ lineBuffer_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ lineBuffer_1_q0 sc_in sc_lv 8 signal 8 } 
	{ lineBuffer_2_address0 sc_out sc_lv 9 signal 9 } 
	{ lineBuffer_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ lineBuffer_2_q0 sc_in sc_lv 8 signal 9 } 
	{ select_ln23 sc_in sc_lv 2 signal 10 } 
	{ empty sc_in sc_lv 2 signal 11 } 
	{ select_ln23_1 sc_in sc_lv 2 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sobel_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "sobel_out", "role": "din" }} , 
 	{ "name": "sobel_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sobel_out", "role": "full_n" }} , 
 	{ "name": "sobel_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sobel_out", "role": "write" }} , 
 	{ "name": "sobel_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sobel_out", "role": "num_data_valid" }} , 
 	{ "name": "sobel_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sobel_out", "role": "fifo_cap" }} , 
 	{ "name": "tmp_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_2", "role": "default" }} , 
 	{ "name": "tmp_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_6", "role": "default" }} , 
 	{ "name": "tmp_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_3", "role": "default" }} , 
 	{ "name": "tmp_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_5", "role": "default" }} , 
 	{ "name": "tmp_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_4", "role": "default" }} , 
 	{ "name": "tmp_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_1", "role": "default" }} , 
 	{ "name": "lineBuffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer", "role": "address0" }} , 
 	{ "name": "lineBuffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer", "role": "ce0" }} , 
 	{ "name": "lineBuffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer", "role": "q0" }} , 
 	{ "name": "lineBuffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "address0" }} , 
 	{ "name": "lineBuffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "ce0" }} , 
 	{ "name": "lineBuffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "q0" }} , 
 	{ "name": "lineBuffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_2", "role": "address0" }} , 
 	{ "name": "lineBuffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_2", "role": "ce0" }} , 
 	{ "name": "lineBuffer_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer_2", "role": "q0" }} , 
 	{ "name": "select_ln23", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln23", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "select_ln23_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln23_1", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	sobel_Pipeline_VITIS_LOOP_149_6 {
		tmp_2 {Type I LastRead 0 FirstWrite -1}
		tmp_6 {Type I LastRead 0 FirstWrite -1}
		tmp_3 {Type I LastRead 0 FirstWrite -1}
		tmp_5 {Type I LastRead 0 FirstWrite -1}
		tmp_4 {Type I LastRead 0 FirstWrite -1}
		tmp_1 {Type I LastRead 0 FirstWrite -1}
		sobel_out {Type O LastRead -1 FirstWrite 3}
		lineBuffer {Type I LastRead 0 FirstWrite -1}
		lineBuffer_1 {Type I LastRead 0 FirstWrite -1}
		lineBuffer_2 {Type I LastRead 0 FirstWrite -1}
		select_ln23 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		select_ln23_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "516", "Max" : "516"}
	, {"Name" : "Interval", "Min" : "513", "Max" : "513"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tmp_2 { ap_none {  { tmp_2 in_data 0 8 } } }
	tmp_6 { ap_none {  { tmp_6 in_data 0 8 } } }
	tmp_3 { ap_none {  { tmp_3 in_data 0 8 } } }
	tmp_5 { ap_none {  { tmp_5 in_data 0 8 } } }
	tmp_4 { ap_none {  { tmp_4 in_data 0 8 } } }
	tmp_1 { ap_none {  { tmp_1 in_data 0 8 } } }
	sobel_out { ap_fifo {  { sobel_out_din fifo_data_out 1 24 }  { sobel_out_full_n fifo_status_empty 0 1 }  { sobel_out_write fifo_data_in 1 1 }  { sobel_out_num_data_valid fifo_update 0 32 }  { sobel_out_fifo_cap fifo_data 0 32 } } }
	lineBuffer { ap_memory {  { lineBuffer_address0 mem_address 1 9 }  { lineBuffer_ce0 mem_ce 1 1 }  { lineBuffer_q0 mem_dout 0 8 } } }
	lineBuffer_1 { ap_memory {  { lineBuffer_1_address0 mem_address 1 9 }  { lineBuffer_1_ce0 mem_ce 1 1 }  { lineBuffer_1_q0 mem_dout 0 8 } } }
	lineBuffer_2 { ap_memory {  { lineBuffer_2_address0 mem_address 1 9 }  { lineBuffer_2_ce0 mem_ce 1 1 }  { lineBuffer_2_q0 mem_dout 0 8 } } }
	select_ln23 { ap_none {  { select_ln23 in_data 0 2 } } }
	empty { ap_none {  { empty in_data 0 2 } } }
	select_ln23_1 { ap_none {  { select_ln23_1 in_data 0 2 } } }
}
