set moduleName canny_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
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
set C_modelName {canny_top}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem int 512 regular {axi_master 2}  }
	{ in_r int 64 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READWRITE", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "in_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"canny_top","role":"start","value":"0","valid_bit":"0"},{"name":"canny_top","role":"continue","value":"0","valid_bit":"4"},{"name":"canny_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"in_r","role":"data","value":"16"},{"name":"out_r","role":"data","value":"28"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"canny_top","role":"start","value":"0","valid_bit":"0"},{"name":"canny_top","role":"done","value":"0","valid_bit":"1"},{"name":"canny_top","role":"idle","value":"0","valid_bit":"2"},{"name":"canny_top","role":"ready","value":"0","valid_bit":"3"},{"name":"canny_top","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set ArgLastReadFirstWriteLatency {
	canny_top {
		gmem {Type IO LastRead 74 FirstWrite -1}
		in_r {Type I LastRead 2 FirstWrite -1}
		out_r {Type I LastRead 2 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_1 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_0 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_1 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_2 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_3 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_4 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_2 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_0 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_1 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_2 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_rowsReceived {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_magnitude_0 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_0 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_magnitude_1 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_1 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_magnitude_2 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_2 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_1_s {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_2_s {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_3_s {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_4_s {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2 {Type IO LastRead -1 FirstWrite -1}
		rowsReceived {Type IO LastRead -1 FirstWrite -1}}
	canny_top_Pipeline_VITIS_LOOP_47_1_VITIS_LOOP_48_2 {
		p_anonymous_namespace_lineBuffer_39_0 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_39_1 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_39_2 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_39_3 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_39_4 {Type O LastRead -1 FirstWrite 0}}
	canny_top_Pipeline_VITIS_LOOP_79_1_VITIS_LOOP_80_2 {
		p_anonymous_namespace_lineBuffer_32_0 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_32_1 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_32_2 {Type O LastRead -1 FirstWrite 0}}
	canny_top_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2 {
		p_anonymous_namespace_lineBuffer_magnitude_0 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_direction_0 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_magnitude_1 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_direction_1 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_magnitude_2 {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_direction_2 {Type O LastRead -1 FirstWrite 0}}
	canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_2 {
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0 {Type O LastRead -1 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1 {Type O LastRead -1 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2 {Type O LastRead -1 FirstWrite 0}}
	canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_21 {
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 {Type O LastRead -1 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 {Type O LastRead -1 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2 {Type O LastRead -1 FirstWrite 0}}
	canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_22 {
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0 {Type O LastRead -1 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1 {Type O LastRead -1 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2 {Type O LastRead -1 FirstWrite 0}}
	canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_23 {
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 {Type O LastRead -1 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 {Type O LastRead -1 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2 {Type O LastRead -1 FirstWrite 0}}
	dataflow_parent_loop_proc {
		gmem {Type IO LastRead 74 FirstWrite -1}
		in_r {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_1 {Type IO LastRead 0 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_39_0 {Type IO LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_1 {Type IO LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_2 {Type IO LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_3 {Type IO LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_4 {Type IO LastRead 0 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_2 {Type IO LastRead 0 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_32_0 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_1 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_2 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_rowsReceived {Type IO LastRead 0 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_magnitude_0 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_0 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_magnitude_1 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_1 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_magnitude_2 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_2 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_1_s {Type IO LastRead 0 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_2_s {Type IO LastRead 0 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_3_s {Type IO LastRead 0 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_4_s {Type IO LastRead 0 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2 {Type IO LastRead 70 FirstWrite -1}
		rowsReceived {Type IO LastRead 0 FirstWrite 0}}
	dataflow_in_loop_VITIS_LOOP_12_1_1 {
		i_0 {Type I LastRead 0 FirstWrite -1}
		gmem {Type IO LastRead 74 FirstWrite -1}
		in_r {Type I LastRead 1 FirstWrite -1}
		out_r {Type I LastRead 19 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_1 {Type IO LastRead 0 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_39_0 {Type IO LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_1 {Type IO LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_2 {Type IO LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_3 {Type IO LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_4 {Type IO LastRead 0 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_2 {Type IO LastRead 0 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_32_0 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_1 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_2 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_rowsReceived {Type IO LastRead 0 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_magnitude_0 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_0 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_magnitude_1 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_1 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_magnitude_2 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_2 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_1_s {Type IO LastRead 0 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_2_s {Type IO LastRead 0 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_3_s {Type IO LastRead 0 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_4_s {Type IO LastRead 0 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2 {Type IO LastRead 70 FirstWrite -1}
		rowsReceived {Type IO LastRead 0 FirstWrite 0}}
	dataflow_in_loop_VITIS_LOOP_12_1_1_Block_newFuncRoot_proc {
		i_0 {Type I LastRead 0 FirstWrite -1}}
	grayscale {
		p_read {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 74 FirstWrite -1}
		in_r {Type I LastRead 1 FirstWrite -1}
		out_grayscale {Type O LastRead -1 FirstWrite 5}}
	grayscale_Pipeline_1 {
		empty {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 74 FirstWrite -1}
		local_blue {Type O LastRead -1 FirstWrite 73}
		local_green {Type O LastRead -1 FirstWrite 74}
		local_red {Type O LastRead -1 FirstWrite 75}}
	grayscale_Pipeline_VITIS_LOOP_22_1 {
		local_blue {Type I LastRead 0 FirstWrite -1}
		local_green {Type I LastRead 1 FirstWrite -1}
		local_red {Type I LastRead 2 FirstWrite -1}
		out_grayscale {Type O LastRead -1 FirstWrite 5}}
	gaussian_blur {
		input_r {Type I LastRead 34 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 2}
		p_anonymous_namespace_rowsReceived_1 {Type IO LastRead 0 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_39_0 {Type IO LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_1 {Type IO LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_2 {Type IO LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_3 {Type IO LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_4 {Type IO LastRead 0 FirstWrite -1}}
	gaussian_blur_Pipeline_VITIS_LOOP_76_2 {
		input_load {Type I LastRead 0 FirstWrite -1}
		input_load_1 {Type I LastRead 0 FirstWrite -1}
		input_load_2 {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_0 {Type O LastRead -1 FirstWrite 2}
		p_anonymous_namespace_lineBuffer_39_1 {Type O LastRead -1 FirstWrite 2}
		p_anonymous_namespace_lineBuffer_39_2 {Type O LastRead -1 FirstWrite 2}
		p_anonymous_namespace_lineBuffer_39_3 {Type O LastRead -1 FirstWrite 2}
		p_anonymous_namespace_lineBuffer_39_4 {Type O LastRead -1 FirstWrite 2}}
	gaussian_blur_Pipeline_VITIS_LOOP_125_6 {
		select_ln29 {Type I LastRead 0 FirstWrite -1}
		select_ln29_1 {Type I LastRead 0 FirstWrite -1}
		select_ln29_2 {Type I LastRead 0 FirstWrite -1}
		select_ln29_3 {Type I LastRead 0 FirstWrite -1}
		select_ln29_4 {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 2}
		p_anonymous_namespace_lineBuffer_39_0 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_1 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_2 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_3 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_39_4 {Type I LastRead 0 FirstWrite -1}}
	sobel {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_gaussian {Type I LastRead 0 FirstWrite -1}
		out_sobel_magnitude {Type O LastRead -1 FirstWrite 2}
		out_sobel_direction {Type O LastRead -1 FirstWrite 3}
		p_anonymous_namespace_rowsReceived_2 {Type IO LastRead 0 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_32_0 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_1 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_2 {Type IO LastRead 70 FirstWrite -1}}
	sobel_Pipeline_VITIS_LOOP_102_1 {
		out_gaussian {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_0 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_lineBuffer_32_1 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_lineBuffer_32_2 {Type O LastRead -1 FirstWrite 1}}
	sobel_Pipeline_VITIS_LOOP_155_5 {
		tmp_2 {Type I LastRead 0 FirstWrite -1}
		tmp_6 {Type I LastRead 0 FirstWrite -1}
		tmp_3 {Type I LastRead 0 FirstWrite -1}
		tmp_5 {Type I LastRead 0 FirstWrite -1}
		tmp_4 {Type I LastRead 0 FirstWrite -1}
		tmp_1 {Type I LastRead 0 FirstWrite -1}
		out_sobel_magnitude {Type O LastRead -1 FirstWrite 2}
		out_sobel_direction {Type O LastRead -1 FirstWrite 3}
		result {Type I LastRead 0 FirstWrite -1}
		result_1 {Type I LastRead 0 FirstWrite -1}
		result_2 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_0 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_1 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_32_2 {Type I LastRead 0 FirstWrite -1}}
	non_maximum_suppression {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_sobel_magnitude {Type I LastRead 0 FirstWrite -1}
		out_sobel_direction {Type I LastRead 0 FirstWrite -1}
		out_nonmax {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_rowsReceived {Type IO LastRead 0 FirstWrite 0}
		p_anonymous_namespace_lineBuffer_magnitude_0 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_0 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_magnitude_1 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_1 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_magnitude_2 {Type IO LastRead 70 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_2 {Type IO LastRead 70 FirstWrite -1}}
	non_maximum_suppression_Pipeline_VITIS_LOOP_57_1 {
		out_sobel_magnitude {Type I LastRead 0 FirstWrite -1}
		out_sobel_direction {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_magnitude_0 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_lineBuffer_direction_0 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_lineBuffer_magnitude_1 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_lineBuffer_direction_1 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_lineBuffer_magnitude_2 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_lineBuffer_direction_2 {Type O LastRead -1 FirstWrite 1}}
	non_maximum_suppression_Pipeline_VITIS_LOOP_112_4 {
		tmp_5 {Type I LastRead 0 FirstWrite -1}
		tmp_4 {Type I LastRead 0 FirstWrite -1}
		tmp_s {Type I LastRead 0 FirstWrite -1}
		tmp_6 {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		tmp_2 {Type I LastRead 0 FirstWrite -1}
		tmp_3 {Type I LastRead 0 FirstWrite -1}
		tmp_1 {Type I LastRead 0 FirstWrite -1}
		outputRow {Type I LastRead 0 FirstWrite -1}
		out_nonmax {Type O LastRead -1 FirstWrite 1}
		select_ln14 {Type I LastRead 0 FirstWrite -1}
		p_smodpost {Type I LastRead 0 FirstWrite -1}
		select_ln14_1 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_magnitude_0 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_0 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_magnitude_1 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_magnitude_2 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_1 {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction_2 {Type I LastRead 0 FirstWrite -1}}
	double_threshold {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_nonmax {Type I LastRead 0 FirstWrite -1}
		out_double {Type O LastRead -1 FirstWrite 2}}
	double_threshold_Pipeline_VITIS_LOOP_16_1 {
		out_nonmax {Type I LastRead 0 FirstWrite -1}
		out_double {Type O LastRead -1 FirstWrite 2}}
	hysteresis_1_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_double {Type I LastRead 0 FirstWrite -1}
		out_hysteresis1 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_rowsReceived_1_s {Type IO LastRead 0 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2 {Type IO LastRead 70 FirstWrite -1}}
	hysteresis_1_Pipeline_VITIS_LOOP_89_1 {
		out_double {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2 {Type O LastRead -1 FirstWrite 1}}
	hysteresis_1_Pipeline_VITIS_LOOP_154_4 {
		tmp_35 {Type I LastRead 0 FirstWrite -1}
		tmp_32 {Type I LastRead 0 FirstWrite -1}
		tmp_34 {Type I LastRead 0 FirstWrite -1}
		tmp_s {Type I LastRead 0 FirstWrite -1}
		tmp_33 {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		outputRow {Type I LastRead 0 FirstWrite -1}
		select_ln18 {Type I LastRead 0 FirstWrite -1}
		p_smodpost {Type I LastRead 0 FirstWrite -1}
		select_ln18_4 {Type I LastRead 0 FirstWrite -1}
		out_hysteresis1 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0 {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1 {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2 {Type I LastRead 0 FirstWrite -1}}
	hysteresis_2_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_hysteresis1 {Type I LastRead 0 FirstWrite -1}
		out_hysteresis2 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_rowsReceived_2_s {Type IO LastRead 0 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2 {Type IO LastRead 70 FirstWrite -1}}
	hysteresis_2_Pipeline_VITIS_LOOP_89_1 {
		out_hysteresis1 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2 {Type O LastRead -1 FirstWrite 1}}
	hysteresis_2_Pipeline_VITIS_LOOP_154_4 {
		tmp_28 {Type I LastRead 0 FirstWrite -1}
		tmp_25 {Type I LastRead 0 FirstWrite -1}
		tmp_27 {Type I LastRead 0 FirstWrite -1}
		tmp_s {Type I LastRead 0 FirstWrite -1}
		tmp_26 {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		outputRow {Type I LastRead 0 FirstWrite -1}
		select_ln18 {Type I LastRead 0 FirstWrite -1}
		p_smodpost {Type I LastRead 0 FirstWrite -1}
		select_ln18_3 {Type I LastRead 0 FirstWrite -1}
		out_hysteresis2 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2 {Type I LastRead 0 FirstWrite -1}}
	hysteresis_3_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_hysteresis2 {Type I LastRead 0 FirstWrite -1}
		out_hysteresis3 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_rowsReceived_3_s {Type IO LastRead 0 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2 {Type IO LastRead 70 FirstWrite -1}}
	hysteresis_3_Pipeline_VITIS_LOOP_89_1 {
		out_hysteresis2 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2 {Type O LastRead -1 FirstWrite 1}}
	hysteresis_3_Pipeline_VITIS_LOOP_154_4 {
		tmp_21 {Type I LastRead 0 FirstWrite -1}
		tmp_18 {Type I LastRead 0 FirstWrite -1}
		tmp_20 {Type I LastRead 0 FirstWrite -1}
		tmp_s {Type I LastRead 0 FirstWrite -1}
		tmp_19 {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		outputRow {Type I LastRead 0 FirstWrite -1}
		select_ln18 {Type I LastRead 0 FirstWrite -1}
		p_smodpost {Type I LastRead 0 FirstWrite -1}
		select_ln18_2 {Type I LastRead 0 FirstWrite -1}
		out_hysteresis3 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0 {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1 {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2 {Type I LastRead 0 FirstWrite -1}}
	hysteresis_4_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_hysteresis3 {Type I LastRead 0 FirstWrite -1}
		out_hysteresis4 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_rowsReceived_4_s {Type IO LastRead 0 FirstWrite 0}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 {Type IO LastRead 70 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2 {Type IO LastRead 70 FirstWrite -1}}
	hysteresis_4_Pipeline_VITIS_LOOP_89_1 {
		out_hysteresis3 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2 {Type O LastRead -1 FirstWrite 1}}
	hysteresis_4_Pipeline_VITIS_LOOP_154_4 {
		tmp_14 {Type I LastRead 0 FirstWrite -1}
		tmp_11 {Type I LastRead 0 FirstWrite -1}
		tmp_13 {Type I LastRead 0 FirstWrite -1}
		tmp_s {Type I LastRead 0 FirstWrite -1}
		tmp_12 {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		outputRow {Type I LastRead 0 FirstWrite -1}
		select_ln18 {Type I LastRead 0 FirstWrite -1}
		p_smodpost {Type I LastRead 0 FirstWrite -1}
		select_ln18_1 {Type I LastRead 0 FirstWrite -1}
		out_hysteresis4 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2 {Type I LastRead 0 FirstWrite -1}}
	output_row {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_hysteresis4 {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 4 FirstWrite 2}
		out_r {Type I LastRead 0 FirstWrite -1}
		rowsReceived {Type IO LastRead 0 FirstWrite 0}}
	output_row_Pipeline_VITIS_LOOP_20_1 {
		gmem {Type O LastRead -1 FirstWrite 2}
		sext_ln20_1 {Type I LastRead 0 FirstWrite -1}
		out_hysteresis4 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1112296", "Max" : "1120548"}
	, {"Name" : "Interval", "Min" : "1112297", "Max" : "1120549"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem { CHANNEL_NUM 0 BUNDLE gmem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
