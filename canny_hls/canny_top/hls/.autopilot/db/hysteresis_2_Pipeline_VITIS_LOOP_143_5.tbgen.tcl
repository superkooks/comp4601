set moduleName hysteresis_2_Pipeline_VITIS_LOOP_143_5
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
set C_modelName {hysteresis<2>_Pipeline_VITIS_LOOP_143_5}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict buffer_r { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_1 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_2 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ tmp_29 int 8 regular  }
	{ tmp_26 int 8 regular  }
	{ tmp_28 int 8 regular  }
	{ tmp_s int 8 regular  }
	{ tmp_27 int 8 regular  }
	{ tmp int 8 regular  }
	{ hasBottom int 1 regular  }
	{ hasTop int 1 regular  }
	{ hyst2_out int 8 regular {fifo 1 volatile }  }
	{ buffer_r int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ buffer_1 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ buffer_2 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ select_ln12 int 2 regular  }
	{ empty int 2 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "tmp_29", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_26", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_28", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_27", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hasBottom", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "hasTop", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "hyst2_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln12", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ hyst2_out_din sc_out sc_lv 8 signal 8 } 
	{ hyst2_out_full_n sc_in sc_logic 1 signal 8 } 
	{ hyst2_out_write sc_out sc_logic 1 signal 8 } 
	{ hyst2_out_num_data_valid sc_in sc_lv 32 signal 8 } 
	{ hyst2_out_fifo_cap sc_in sc_lv 32 signal 8 } 
	{ tmp_29 sc_in sc_lv 8 signal 0 } 
	{ tmp_26 sc_in sc_lv 8 signal 1 } 
	{ tmp_28 sc_in sc_lv 8 signal 2 } 
	{ tmp_s sc_in sc_lv 8 signal 3 } 
	{ tmp_27 sc_in sc_lv 8 signal 4 } 
	{ tmp sc_in sc_lv 8 signal 5 } 
	{ hasBottom sc_in sc_lv 1 signal 6 } 
	{ hasTop sc_in sc_lv 1 signal 7 } 
	{ buffer_r_address0 sc_out sc_lv 9 signal 9 } 
	{ buffer_r_ce0 sc_out sc_logic 1 signal 9 } 
	{ buffer_r_q0 sc_in sc_lv 8 signal 9 } 
	{ buffer_1_address0 sc_out sc_lv 9 signal 10 } 
	{ buffer_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ buffer_1_q0 sc_in sc_lv 8 signal 10 } 
	{ buffer_2_address0 sc_out sc_lv 9 signal 11 } 
	{ buffer_2_ce0 sc_out sc_logic 1 signal 11 } 
	{ buffer_2_q0 sc_in sc_lv 8 signal 11 } 
	{ select_ln12 sc_in sc_lv 2 signal 12 } 
	{ empty sc_in sc_lv 2 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "hyst2_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hyst2_out", "role": "din" }} , 
 	{ "name": "hyst2_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hyst2_out", "role": "full_n" }} , 
 	{ "name": "hyst2_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hyst2_out", "role": "write" }} , 
 	{ "name": "hyst2_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hyst2_out", "role": "num_data_valid" }} , 
 	{ "name": "hyst2_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hyst2_out", "role": "fifo_cap" }} , 
 	{ "name": "tmp_29", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_29", "role": "default" }} , 
 	{ "name": "tmp_26", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_26", "role": "default" }} , 
 	{ "name": "tmp_28", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_28", "role": "default" }} , 
 	{ "name": "tmp_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_s", "role": "default" }} , 
 	{ "name": "tmp_27", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_27", "role": "default" }} , 
 	{ "name": "tmp", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp", "role": "default" }} , 
 	{ "name": "hasBottom", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hasBottom", "role": "default" }} , 
 	{ "name": "hasTop", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hasTop", "role": "default" }} , 
 	{ "name": "buffer_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "buffer_r", "role": "address0" }} , 
 	{ "name": "buffer_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "ce0" }} , 
 	{ "name": "buffer_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_r", "role": "q0" }} , 
 	{ "name": "buffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "buffer_1", "role": "address0" }} , 
 	{ "name": "buffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1", "role": "ce0" }} , 
 	{ "name": "buffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_1", "role": "q0" }} , 
 	{ "name": "buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "buffer_2", "role": "address0" }} , 
 	{ "name": "buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "ce0" }} , 
 	{ "name": "buffer_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_2", "role": "q0" }} , 
 	{ "name": "select_ln12", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln12", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	hysteresis_2_Pipeline_VITIS_LOOP_143_5 {
		tmp_29 {Type I LastRead 0 FirstWrite -1}
		tmp_26 {Type I LastRead 0 FirstWrite -1}
		tmp_28 {Type I LastRead 0 FirstWrite -1}
		tmp_s {Type I LastRead 0 FirstWrite -1}
		tmp_27 {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		hasBottom {Type I LastRead 0 FirstWrite -1}
		hasTop {Type I LastRead 0 FirstWrite -1}
		hyst2_out {Type O LastRead -1 FirstWrite 2}
		buffer_r {Type I LastRead 0 FirstWrite -1}
		buffer_1 {Type I LastRead 0 FirstWrite -1}
		buffer_2 {Type I LastRead 0 FirstWrite -1}
		select_ln12 {Type I LastRead 0 FirstWrite -1}
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
	tmp_29 { ap_none {  { tmp_29 in_data 0 8 } } }
	tmp_26 { ap_none {  { tmp_26 in_data 0 8 } } }
	tmp_28 { ap_none {  { tmp_28 in_data 0 8 } } }
	tmp_s { ap_none {  { tmp_s in_data 0 8 } } }
	tmp_27 { ap_none {  { tmp_27 in_data 0 8 } } }
	tmp { ap_none {  { tmp in_data 0 8 } } }
	hasBottom { ap_none {  { hasBottom in_data 0 1 } } }
	hasTop { ap_none {  { hasTop in_data 0 1 } } }
	hyst2_out { ap_fifo {  { hyst2_out_din fifo_data_out 1 8 }  { hyst2_out_full_n fifo_status_empty 0 1 }  { hyst2_out_write fifo_data_in 1 1 }  { hyst2_out_num_data_valid fifo_update 0 32 }  { hyst2_out_fifo_cap fifo_data 0 32 } } }
	buffer_r { ap_memory {  { buffer_r_address0 mem_address 1 9 }  { buffer_r_ce0 mem_ce 1 1 }  { buffer_r_q0 mem_dout 0 8 } } }
	buffer_1 { ap_memory {  { buffer_1_address0 mem_address 1 9 }  { buffer_1_ce0 mem_ce 1 1 }  { buffer_1_q0 mem_dout 0 8 } } }
	buffer_2 { ap_memory {  { buffer_2_address0 mem_address 1 9 }  { buffer_2_ce0 mem_ce 1 1 }  { buffer_2_q0 mem_dout 0 8 } } }
	select_ln12 { ap_none {  { select_ln12 in_data 0 2 } } }
	empty { ap_none {  { empty in_data 0 2 } } }
}
