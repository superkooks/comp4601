set moduleName sobel_Pipeline_VITIS_LOOP_116_2
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
set C_modelName {sobel_Pipeline_VITIS_LOOP_116_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict out_sobel_magnitude { MEM_WIDTH 11 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict out_sobel_direction { MEM_WIDTH 2 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lineBuffer { MEM_WIDTH 8 MEM_SIZE 1536 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ select_ln27 int 2 regular  }
	{ select_ln27_1 int 2 regular  }
	{ select_ln27_2 int 2 regular  }
	{ out_sobel_magnitude int 11 regular {array 512 { 0 3 } 0 1 }  }
	{ out_sobel_direction int 2 regular {array 512 { 0 3 } 0 1 }  }
	{ lineBuffer int 8 regular {array 1536 { 1 1 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "select_ln27", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln27_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln27_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_sobel_magnitude", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_sobel_direction", "interface" : "memory", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lineBuffer", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ select_ln27 sc_in sc_lv 2 signal 0 } 
	{ select_ln27_1 sc_in sc_lv 2 signal 1 } 
	{ select_ln27_2 sc_in sc_lv 2 signal 2 } 
	{ out_sobel_magnitude_address0 sc_out sc_lv 9 signal 3 } 
	{ out_sobel_magnitude_ce0 sc_out sc_logic 1 signal 3 } 
	{ out_sobel_magnitude_we0 sc_out sc_logic 1 signal 3 } 
	{ out_sobel_magnitude_d0 sc_out sc_lv 11 signal 3 } 
	{ out_sobel_direction_address0 sc_out sc_lv 9 signal 4 } 
	{ out_sobel_direction_ce0 sc_out sc_logic 1 signal 4 } 
	{ out_sobel_direction_we0 sc_out sc_logic 1 signal 4 } 
	{ out_sobel_direction_d0 sc_out sc_lv 2 signal 4 } 
	{ lineBuffer_address0 sc_out sc_lv 11 signal 5 } 
	{ lineBuffer_ce0 sc_out sc_logic 1 signal 5 } 
	{ lineBuffer_q0 sc_in sc_lv 8 signal 5 } 
	{ lineBuffer_address1 sc_out sc_lv 11 signal 5 } 
	{ lineBuffer_ce1 sc_out sc_logic 1 signal 5 } 
	{ lineBuffer_q1 sc_in sc_lv 8 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "select_ln27", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln27", "role": "default" }} , 
 	{ "name": "select_ln27_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln27_1", "role": "default" }} , 
 	{ "name": "select_ln27_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln27_2", "role": "default" }} , 
 	{ "name": "out_sobel_magnitude_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_sobel_magnitude", "role": "address0" }} , 
 	{ "name": "out_sobel_magnitude_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_sobel_magnitude", "role": "ce0" }} , 
 	{ "name": "out_sobel_magnitude_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_sobel_magnitude", "role": "we0" }} , 
 	{ "name": "out_sobel_magnitude_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "out_sobel_magnitude", "role": "d0" }} , 
 	{ "name": "out_sobel_direction_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_sobel_direction", "role": "address0" }} , 
 	{ "name": "out_sobel_direction_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_sobel_direction", "role": "ce0" }} , 
 	{ "name": "out_sobel_direction_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_sobel_direction", "role": "we0" }} , 
 	{ "name": "out_sobel_direction_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_sobel_direction", "role": "d0" }} , 
 	{ "name": "lineBuffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "lineBuffer", "role": "address0" }} , 
 	{ "name": "lineBuffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer", "role": "ce0" }} , 
 	{ "name": "lineBuffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer", "role": "q0" }} , 
 	{ "name": "lineBuffer_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "lineBuffer", "role": "address1" }} , 
 	{ "name": "lineBuffer_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer", "role": "ce1" }} , 
 	{ "name": "lineBuffer_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lineBuffer", "role": "q1" }}  ]}

set ArgLastReadFirstWriteLatency {
	sobel_Pipeline_VITIS_LOOP_116_2 {
		select_ln27 {Type I LastRead 0 FirstWrite -1}
		select_ln27_1 {Type I LastRead 0 FirstWrite -1}
		select_ln27_2 {Type I LastRead 0 FirstWrite -1}
		out_sobel_magnitude {Type O LastRead -1 FirstWrite 5}
		out_sobel_direction {Type O LastRead -1 FirstWrite 8}
		lineBuffer {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2054", "Max" : "2054"}
	, {"Name" : "Interval", "Min" : "2052", "Max" : "2052"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	select_ln27 { ap_none {  { select_ln27 in_data 0 2 } } }
	select_ln27_1 { ap_none {  { select_ln27_1 in_data 0 2 } } }
	select_ln27_2 { ap_none {  { select_ln27_2 in_data 0 2 } } }
	out_sobel_magnitude { ap_memory {  { out_sobel_magnitude_address0 mem_address 1 9 }  { out_sobel_magnitude_ce0 mem_ce 1 1 }  { out_sobel_magnitude_we0 mem_we 1 1 }  { out_sobel_magnitude_d0 mem_din 1 11 } } }
	out_sobel_direction { ap_memory {  { out_sobel_direction_address0 mem_address 1 9 }  { out_sobel_direction_ce0 mem_ce 1 1 }  { out_sobel_direction_we0 mem_we 1 1 }  { out_sobel_direction_d0 mem_din 1 2 } } }
	lineBuffer { ap_memory {  { lineBuffer_address0 mem_address 1 11 }  { lineBuffer_ce0 mem_ce 1 1 }  { lineBuffer_q0 mem_dout 0 8 }  { lineBuffer_address1 MemPortADDR2 1 11 }  { lineBuffer_ce1 MemPortCE2 1 1 }  { lineBuffer_q1 MemPortDOUT2 0 8 } } }
}
