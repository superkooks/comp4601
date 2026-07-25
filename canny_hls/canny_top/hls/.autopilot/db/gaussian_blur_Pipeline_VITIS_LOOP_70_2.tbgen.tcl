set moduleName gaussian_blur_Pipeline_VITIS_LOOP_70_2
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
set cdfgNum 40
set C_modelName {gaussian_blur_Pipeline_VITIS_LOOP_70_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict output_r { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lineBuffer_1 { MEM_WIDTH 8 MEM_SIZE 2560 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ empty_38 int 23 regular  }
	{ empty_39 int 23 regular  }
	{ empty_40 int 23 regular  }
	{ empty_41 int 23 regular  }
	{ sub_ln30 int 32 regular  }
	{ add_ln78 int 32 regular  }
	{ empty_42 int 1 regular  }
	{ sub_ln28_1 int 32 regular  }
	{ zext_ln95 int 12 regular  }
	{ select_ln23 int 3 regular  }
	{ sub_ln30_1 int 32 regular  }
	{ add_ln78_1 int 32 regular  }
	{ empty_43 int 1 regular  }
	{ sub_ln28_2 int 32 regular  }
	{ sub_ln30_3 int 32 regular  }
	{ add_ln78_2 int 32 regular  }
	{ empty_44 int 1 regular  }
	{ sub_ln28_3 int 32 regular  }
	{ sub_ln30_4 int 32 regular  }
	{ p_anonymous_namespace_rowsReceived_load int 32 regular  }
	{ empty int 1 regular  }
	{ sub_ln28 int 32 regular  }
	{ output_r int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ lineBuffer_1 int 8 regular {array 2560 { 1 1 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "empty_38", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "empty_39", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "empty_40", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "empty_41", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln78", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_42", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln28_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln95", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln23", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln30_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln78_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_43", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln28_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln30_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln78_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_44", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln28_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln30_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_anonymous_namespace_rowsReceived_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lineBuffer_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ empty_38 sc_in sc_lv 23 signal 0 } 
	{ empty_39 sc_in sc_lv 23 signal 1 } 
	{ empty_40 sc_in sc_lv 23 signal 2 } 
	{ empty_41 sc_in sc_lv 23 signal 3 } 
	{ sub_ln30 sc_in sc_lv 32 signal 4 } 
	{ add_ln78 sc_in sc_lv 32 signal 5 } 
	{ empty_42 sc_in sc_lv 1 signal 6 } 
	{ sub_ln28_1 sc_in sc_lv 32 signal 7 } 
	{ zext_ln95 sc_in sc_lv 12 signal 8 } 
	{ select_ln23 sc_in sc_lv 3 signal 9 } 
	{ sub_ln30_1 sc_in sc_lv 32 signal 10 } 
	{ add_ln78_1 sc_in sc_lv 32 signal 11 } 
	{ empty_43 sc_in sc_lv 1 signal 12 } 
	{ sub_ln28_2 sc_in sc_lv 32 signal 13 } 
	{ sub_ln30_3 sc_in sc_lv 32 signal 14 } 
	{ add_ln78_2 sc_in sc_lv 32 signal 15 } 
	{ empty_44 sc_in sc_lv 1 signal 16 } 
	{ sub_ln28_3 sc_in sc_lv 32 signal 17 } 
	{ sub_ln30_4 sc_in sc_lv 32 signal 18 } 
	{ p_anonymous_namespace_rowsReceived_load sc_in sc_lv 32 signal 19 } 
	{ empty sc_in sc_lv 1 signal 20 } 
	{ sub_ln28 sc_in sc_lv 32 signal 21 } 
	{ output_r_address0 sc_out sc_lv 9 signal 22 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 22 } 
	{ output_r_we0 sc_out sc_logic 1 signal 22 } 
	{ output_r_d0 sc_out sc_lv 8 signal 22 } 
	{ lineBuffer_1_address0 sc_out sc_lv 12 signal 23 } 
	{ lineBuffer_1_ce0 sc_out sc_logic 1 signal 23 } 
	{ lineBuffer_1_q0 sc_in sc_lv 8 signal 23 } 
	{ lineBuffer_1_address1 sc_out sc_lv 12 signal 23 } 
	{ lineBuffer_1_ce1 sc_out sc_logic 1 signal 23 } 
	{ lineBuffer_1_q1 sc_in sc_lv 8 signal 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "empty_38", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "empty_38", "role": "default" }} , 
 	{ "name": "empty_39", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "empty_39", "role": "default" }} , 
 	{ "name": "empty_40", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "empty_40", "role": "default" }} , 
 	{ "name": "empty_41", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "empty_41", "role": "default" }} , 
 	{ "name": "sub_ln30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub_ln30", "role": "default" }} , 
 	{ "name": "add_ln78", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln78", "role": "default" }} , 
 	{ "name": "empty_42", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_42", "role": "default" }} , 
 	{ "name": "sub_ln28_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub_ln28_1", "role": "default" }} , 
 	{ "name": "zext_ln95", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln95", "role": "default" }} , 
 	{ "name": "select_ln23", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln23", "role": "default" }} , 
 	{ "name": "sub_ln30_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub_ln30_1", "role": "default" }} , 
 	{ "name": "add_ln78_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln78_1", "role": "default" }} , 
 	{ "name": "empty_43", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_43", "role": "default" }} , 
 	{ "name": "sub_ln28_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub_ln28_2", "role": "default" }} , 
 	{ "name": "sub_ln30_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub_ln30_3", "role": "default" }} , 
 	{ "name": "add_ln78_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln78_2", "role": "default" }} , 
 	{ "name": "empty_44", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_44", "role": "default" }} , 
 	{ "name": "sub_ln28_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub_ln28_3", "role": "default" }} , 
 	{ "name": "sub_ln30_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub_ln30_4", "role": "default" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_load", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "sub_ln28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub_ln28", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "lineBuffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "address0" }} , 
 	{ "name": "lineBuffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "ce0" }} , 
 	{ "name": "lineBuffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "q0" }} , 
 	{ "name": "lineBuffer_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "address1" }} , 
 	{ "name": "lineBuffer_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "ce1" }} , 
 	{ "name": "lineBuffer_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer_1", "role": "q1" }}  ]}

set ArgLastReadFirstWriteLatency {
	gaussian_blur_Pipeline_VITIS_LOOP_70_2 {
		empty_38 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		sub_ln30 {Type I LastRead 0 FirstWrite -1}
		add_ln78 {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		sub_ln28_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln95 {Type I LastRead 0 FirstWrite -1}
		select_ln23 {Type I LastRead 0 FirstWrite -1}
		sub_ln30_1 {Type I LastRead 0 FirstWrite -1}
		add_ln78_1 {Type I LastRead 0 FirstWrite -1}
		empty_43 {Type I LastRead 0 FirstWrite -1}
		sub_ln28_2 {Type I LastRead 0 FirstWrite -1}
		sub_ln30_3 {Type I LastRead 0 FirstWrite -1}
		add_ln78_2 {Type I LastRead 0 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		sub_ln28_3 {Type I LastRead 0 FirstWrite -1}
		sub_ln30_4 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_load {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		sub_ln28 {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 49}
		lineBuffer_1 {Type I LastRead 48 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6694", "Max" : "6694"}
	, {"Name" : "Interval", "Min" : "6669", "Max" : "6669"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty_38 { ap_none {  { empty_38 in_data 0 23 } } }
	empty_39 { ap_none {  { empty_39 in_data 0 23 } } }
	empty_40 { ap_none {  { empty_40 in_data 0 23 } } }
	empty_41 { ap_none {  { empty_41 in_data 0 23 } } }
	sub_ln30 { ap_none {  { sub_ln30 in_data 0 32 } } }
	add_ln78 { ap_none {  { add_ln78 in_data 0 32 } } }
	empty_42 { ap_none {  { empty_42 in_data 0 1 } } }
	sub_ln28_1 { ap_none {  { sub_ln28_1 in_data 0 32 } } }
	zext_ln95 { ap_none {  { zext_ln95 in_data 0 12 } } }
	select_ln23 { ap_none {  { select_ln23 in_data 0 3 } } }
	sub_ln30_1 { ap_none {  { sub_ln30_1 in_data 0 32 } } }
	add_ln78_1 { ap_none {  { add_ln78_1 in_data 0 32 } } }
	empty_43 { ap_none {  { empty_43 in_data 0 1 } } }
	sub_ln28_2 { ap_none {  { sub_ln28_2 in_data 0 32 } } }
	sub_ln30_3 { ap_none {  { sub_ln30_3 in_data 0 32 } } }
	add_ln78_2 { ap_none {  { add_ln78_2 in_data 0 32 } } }
	empty_44 { ap_none {  { empty_44 in_data 0 1 } } }
	sub_ln28_3 { ap_none {  { sub_ln28_3 in_data 0 32 } } }
	sub_ln30_4 { ap_none {  { sub_ln30_4 in_data 0 32 } } }
	p_anonymous_namespace_rowsReceived_load { ap_none {  { p_anonymous_namespace_rowsReceived_load in_data 0 32 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	sub_ln28 { ap_none {  { sub_ln28 in_data 0 32 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
	lineBuffer_1 { ap_memory {  { lineBuffer_1_address0 mem_address 1 12 }  { lineBuffer_1_ce0 mem_ce 1 1 }  { lineBuffer_1_q0 mem_dout 0 8 }  { lineBuffer_1_address1 MemPortADDR2 1 12 }  { lineBuffer_1_ce1 MemPortCE2 1 1 }  { lineBuffer_1_q1 MemPortDOUT2 0 8 } } }
}
