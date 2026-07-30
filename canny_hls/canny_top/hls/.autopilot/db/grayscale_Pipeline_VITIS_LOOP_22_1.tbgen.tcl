set moduleName grayscale_Pipeline_VITIS_LOOP_22_1
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
set C_modelName {grayscale_Pipeline_VITIS_LOOP_22_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict local_blue { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict local_green { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict local_red { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict out_grayscale { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ local_blue int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ local_green int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ local_red int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ out_grayscale int 8 regular {array 512 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "local_blue", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_green", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_red", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_grayscale", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ local_blue_address0 sc_out sc_lv 9 signal 0 } 
	{ local_blue_ce0 sc_out sc_logic 1 signal 0 } 
	{ local_blue_q0 sc_in sc_lv 8 signal 0 } 
	{ local_green_address0 sc_out sc_lv 9 signal 1 } 
	{ local_green_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_green_q0 sc_in sc_lv 8 signal 1 } 
	{ local_red_address0 sc_out sc_lv 9 signal 2 } 
	{ local_red_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_red_q0 sc_in sc_lv 8 signal 2 } 
	{ out_grayscale_address0 sc_out sc_lv 9 signal 3 } 
	{ out_grayscale_ce0 sc_out sc_logic 1 signal 3 } 
	{ out_grayscale_we0 sc_out sc_logic 1 signal 3 } 
	{ out_grayscale_d0 sc_out sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "local_blue_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_blue", "role": "address0" }} , 
 	{ "name": "local_blue_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_blue", "role": "ce0" }} , 
 	{ "name": "local_blue_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_blue", "role": "q0" }} , 
 	{ "name": "local_green_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_green", "role": "address0" }} , 
 	{ "name": "local_green_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_green", "role": "ce0" }} , 
 	{ "name": "local_green_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_green", "role": "q0" }} , 
 	{ "name": "local_red_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_red", "role": "address0" }} , 
 	{ "name": "local_red_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_red", "role": "ce0" }} , 
 	{ "name": "local_red_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_red", "role": "q0" }} , 
 	{ "name": "out_grayscale_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_grayscale", "role": "address0" }} , 
 	{ "name": "out_grayscale_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_grayscale", "role": "ce0" }} , 
 	{ "name": "out_grayscale_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_grayscale", "role": "we0" }} , 
 	{ "name": "out_grayscale_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_grayscale", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	grayscale_Pipeline_VITIS_LOOP_22_1 {
		local_blue {Type I LastRead 0 FirstWrite -1}
		local_green {Type I LastRead 1 FirstWrite -1}
		local_red {Type I LastRead 2 FirstWrite -1}
		out_grayscale {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "518", "Max" : "518"}
	, {"Name" : "Interval", "Min" : "513", "Max" : "513"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	local_blue { ap_memory {  { local_blue_address0 mem_address 1 9 }  { local_blue_ce0 mem_ce 1 1 }  { local_blue_q0 mem_dout 0 8 } } }
	local_green { ap_memory {  { local_green_address0 mem_address 1 9 }  { local_green_ce0 mem_ce 1 1 }  { local_green_q0 mem_dout 0 8 } } }
	local_red { ap_memory {  { local_red_address0 mem_address 1 9 }  { local_red_ce0 mem_ce 1 1 }  { local_red_q0 mem_dout 0 8 } } }
	out_grayscale { ap_memory {  { out_grayscale_address0 mem_address 1 9 }  { out_grayscale_ce0 mem_ce 1 1 }  { out_grayscale_we0 mem_we 1 1 }  { out_grayscale_d0 mem_din 1 8 } } }
}
