set moduleName dataflow_in_loop_VITIS_LOOP_7_1_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type dataflow
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
set cdfgNum 24
set C_modelName {dataflow_in_loop_VITIS_LOOP_7_1.1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ i_0 int 10 regular  }
	{ gmem_in int 32 regular {axi_master 0}  }
	{ in_r int 64 regular  }
	{ gmem_out int 512 regular {axi_master 1}  }
	{ out_r int 64 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "i_0", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_in", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_out", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 105
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ i_0 sc_in sc_lv 10 signal 0 } 
	{ m_axi_gmem_in_0_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_in_0_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_in_0_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_in_0_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_in_0_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_in_0_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_in_0_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_in_0_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_in_0_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_in_0_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_in_0_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_in_0_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_in_0_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_in_0_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_in_0_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_in_0_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_in_0_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_in_0_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_in_0_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_in_0_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_in_0_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_in_0_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_in_0_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_in_0_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_in_0_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_in_0_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_in_0_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_in_0_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_in_0_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_in_0_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_in_0_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_in_0_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_in_0_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_in_0_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_in_0_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_in_0_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem_in_0_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_in_0_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_in_0_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_gmem_in_0_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_in_0_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_in_0_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_in_0_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_in_0_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_in_0_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_in_0_BUSER sc_in sc_lv 1 signal 1 } 
	{ in_r sc_in sc_lv 64 signal 2 } 
	{ m_axi_gmem_out_0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_out_0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_0_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_out_0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_out_0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_out_0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_out_0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_out_0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_out_0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_out_0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_out_0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_0_WDATA sc_out sc_lv 512 signal 3 } 
	{ m_axi_gmem_out_0_WSTRB sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_out_0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_out_0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_0_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_out_0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_out_0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_out_0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_out_0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_out_0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_out_0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_out_0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_out_0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_0_RDATA sc_in sc_lv 512 signal 3 } 
	{ m_axi_gmem_out_0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_0_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_gmem_out_0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_out_0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_out_0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_0_BUSER sc_in sc_lv 1 signal 3 } 
	{ out_r sc_in sc_lv 64 signal 4 } 
	{ out_r_ap_vld sc_in sc_logic 1 invld 4 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ i_0_ap_vld sc_in sc_logic 1 invld 0 } 
	{ in_r_ap_vld sc_in sc_logic 1 invld 2 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "i_0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "i_0", "role": "default" }} , 
 	{ "name": "m_axi_gmem_in_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_in_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_in_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_in_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_in_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_in_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_in_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_in_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_in_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_in_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_in_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_in_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_in_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_in_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_in_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_in_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_in_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_in_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_in_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_in_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_in_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_in_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_in_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_in_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_in_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_in_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_in_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_in_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_in_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_in_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_in_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_in_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_in_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_in_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_in_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_in_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_in_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_in_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_in_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_in_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_in_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_in_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_in_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_in_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_in_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_in_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_BUSER" }} , 
 	{ "name": "in_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_r", "role": "default" }} , 
 	{ "name": "m_axi_gmem_out_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_out_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_out_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_out_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_out_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_out_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_out_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_out_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_out_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_out_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_out_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_out_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_out_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_out_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_out_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_out_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_out_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_out_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_out_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_out_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_out_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_out_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_out_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_out_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_out_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_out_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_out_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_out_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_out_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_out_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_out_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_out_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_out_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_out_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_out_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_out_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_out_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_out_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_out_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_out_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_out_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_out_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_out_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_out_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_out_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_out_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_BUSER" }} , 
 	{ "name": "out_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "default" }} , 
 	{ "name": "out_r_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "out_r", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "i_0_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "i_0", "role": "ap_vld" }} , 
 	{ "name": "in_r_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_r", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	dataflow_in_loop_VITIS_LOOP_7_1_1 {
		i_0 {Type I LastRead 0 FirstWrite -1}
		gmem_in {Type I LastRead 74 FirstWrite -1}
		in_r {Type I LastRead 1 FirstWrite -1}
		gmem_out {Type O LastRead 4 FirstWrite 2}
		out_r {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_rowsReceived {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferE_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferE_1 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_2 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_16_0 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_16_1 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_3 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_11_magnitude_0 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_11_magnitude_1 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_rowsReceived_1 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_6_0 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_6_1 {Type IO LastRead -1 FirstWrite -1}
		rowsReceived {Type IO LastRead -1 FirstWrite -1}}
	entry_proc {
		out_r {Type I LastRead 0 FirstWrite -1}
		out_c {Type O LastRead -1 FirstWrite 0}}
	dataflow_in_loop_VITIS_LOOP_7_1_1_Block_newFuncRoot_proc {
		i_0 {Type I LastRead 0 FirstWrite -1}}
	grayscale {
		p_read {Type I LastRead 0 FirstWrite -1}
		gmem_in {Type I LastRead 74 FirstWrite -1}
		in_r {Type I LastRead 1 FirstWrite -1}
		out_grayscale {Type O LastRead -1 FirstWrite 79}}
	grayscale_Pipeline_VITIS_LOOP_7_1 {
		empty {Type I LastRead 0 FirstWrite -1}
		gmem_in {Type I LastRead 74 FirstWrite -1}
		out_grayscale {Type O LastRead -1 FirstWrite 79}}
	gaussian_blur {
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_rowsReceived {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferE_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferE_1 {Type IO LastRead -1 FirstWrite -1}}
	gaussian_blur_Pipeline_VITIS_LOOP_46_1 {
		output_r {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferE_0 {Type O LastRead -1 FirstWrite 1}
		p_ZN12_GLOBAL_N_110lineBufferE_1 {Type O LastRead -1 FirstWrite 1}}
	gaussian_blur_Pipeline_VITIS_LOOP_64_2 {
		select_ln22 {Type I LastRead 0 FirstWrite -1}
		result_15 {Type I LastRead 0 FirstWrite -1}
		select_ln22_1 {Type I LastRead 0 FirstWrite -1}
		select_ln22_2 {Type I LastRead 0 FirstWrite -1}
		select_ln22_3 {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 10}
		p_ZN12_GLOBAL_N_110lineBufferE_0 {Type I LastRead 9 FirstWrite -1}
		p_ZN12_GLOBAL_N_110lineBufferE_1 {Type I LastRead 9 FirstWrite -1}}
	sobel {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_gaussian {Type I LastRead 0 FirstWrite -1}
		out_sobel_magnitude {Type O LastRead -1 FirstWrite 0}
		out_sobel_direction {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_rowsReceived_2 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_16_0 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_16_1 {Type IO LastRead -1 FirstWrite -1}}
	sobel_Pipeline_VITIS_LOOP_89_1 {
		out_sobel_magnitude {Type O LastRead -1 FirstWrite 0}
		out_sobel_direction {Type O LastRead -1 FirstWrite 0}
		writeSlot {Type I LastRead 0 FirstWrite -1}
		out_gaussian {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_16_0 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_lineBuffer_16_1 {Type O LastRead -1 FirstWrite 1}}
	sobel_Pipeline_VITIS_LOOP_118_2 {
		result {Type I LastRead 0 FirstWrite -1}
		writeSlot {Type I LastRead 0 FirstWrite -1}
		result_7 {Type I LastRead 0 FirstWrite -1}
		out_sobel_magnitude {Type O LastRead -1 FirstWrite 73}
		out_sobel_direction {Type O LastRead -1 FirstWrite 7}
		p_anonymous_namespace_lineBuffer_16_0 {Type I LastRead 4 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_16_1 {Type I LastRead 4 FirstWrite -1}}
	non_maximum_suppression {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_sobel_magnitude {Type I LastRead 0 FirstWrite -1}
		out_sobel_direction {Type I LastRead 0 FirstWrite -1}
		out_nonmax {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_rowsReceived_3 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_11_magnitude_0 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_11_magnitude_1 {Type IO LastRead -1 FirstWrite -1}}
	non_maximum_suppression_Pipeline_VITIS_LOOP_45_1 {
		out_nonmax {Type O LastRead -1 FirstWrite 0}
		zext_ln46 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		out_sobel_magnitude {Type I LastRead 0 FirstWrite -1}
		out_sobel_direction {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_lineBuffer_11_magnitude_0 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_lineBuffer_11_magnitude_1 {Type O LastRead -1 FirstWrite 1}}
	non_maximum_suppression_Pipeline_VITIS_LOOP_81_2 {
		out_nonmax {Type O LastRead -1 FirstWrite 3}
		result_9 {Type I LastRead 0 FirstWrite -1}
		result {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_11_magnitude_0 {Type I LastRead 2 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_11_magnitude_1 {Type I LastRead 2 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_direction {Type I LastRead 0 FirstWrite -1}}
	double_threshold {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_nonmax {Type I LastRead 0 FirstWrite -1}
		out_double {Type O LastRead -1 FirstWrite 1}}
	double_threshold_Pipeline_VITIS_LOOP_16_1 {
		out_nonmax {Type I LastRead 0 FirstWrite -1}
		out_double {Type O LastRead -1 FirstWrite 1}}
	hysteresis {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_double {Type I LastRead 0 FirstWrite -1}
		out_hysteresis {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_rowsReceived_1 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_6_0 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_6_1 {Type IO LastRead -1 FirstWrite -1}}
	hysteresis_Pipeline_VITIS_LOOP_60_1 {
		out_hysteresis {Type O LastRead -1 FirstWrite 0}
		writeSlot {Type I LastRead 0 FirstWrite -1}
		out_double {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_6_0 {Type O LastRead -1 FirstWrite 1}
		p_anonymous_namespace_lineBuffer_6_1 {Type O LastRead -1 FirstWrite 1}}
	hysteresis_Pipeline_VITIS_LOOP_108_2 {
		out_hysteresis {Type O LastRead -1 FirstWrite 1}
		result_10 {Type I LastRead 0 FirstWrite -1}
		result {Type I LastRead 0 FirstWrite -1}
		writeSlot {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_6_0 {Type I LastRead 8 FirstWrite -1}
		p_anonymous_namespace_lineBuffer_6_1 {Type I LastRead 8 FirstWrite -1}}
	output_row {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_hysteresis {Type I LastRead 0 FirstWrite -1}
		gmem_out {Type O LastRead 4 FirstWrite 2}
		out_r {Type I LastRead 0 FirstWrite -1}
		rowsReceived {Type IO LastRead -1 FirstWrite -1}}
	output_row_Pipeline_VITIS_LOOP_20_1 {
		gmem_out {Type O LastRead -1 FirstWrite 2}
		sext_ln20_1 {Type I LastRead 0 FirstWrite -1}
		out_hysteresis {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2179", "Max" : "14314"}
	, {"Name" : "Interval", "Min" : "1617", "Max" : "4655"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	i_0 { ap_none {  { i_0 in_data 0 10 }  { i_0_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_gmem_in_0_AWVALID VALID 1 1 }  { m_axi_gmem_in_0_AWREADY READY 0 1 }  { m_axi_gmem_in_0_AWADDR ADDR 1 64 }  { m_axi_gmem_in_0_AWID ID 1 1 }  { m_axi_gmem_in_0_AWLEN SIZE 1 32 }  { m_axi_gmem_in_0_AWSIZE BURST 1 3 }  { m_axi_gmem_in_0_AWBURST LOCK 1 2 }  { m_axi_gmem_in_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_in_0_AWCACHE PROT 1 4 }  { m_axi_gmem_in_0_AWPROT QOS 1 3 }  { m_axi_gmem_in_0_AWQOS REGION 1 4 }  { m_axi_gmem_in_0_AWREGION USER 1 4 }  { m_axi_gmem_in_0_AWUSER DATA 1 1 }  { m_axi_gmem_in_0_WVALID VALID 1 1 }  { m_axi_gmem_in_0_WREADY READY 0 1 }  { m_axi_gmem_in_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_in_0_WSTRB STRB 1 4 }  { m_axi_gmem_in_0_WLAST LAST 1 1 }  { m_axi_gmem_in_0_WID ID 1 1 }  { m_axi_gmem_in_0_WUSER DATA 1 1 }  { m_axi_gmem_in_0_ARVALID VALID 1 1 }  { m_axi_gmem_in_0_ARREADY READY 0 1 }  { m_axi_gmem_in_0_ARADDR ADDR 1 64 }  { m_axi_gmem_in_0_ARID ID 1 1 }  { m_axi_gmem_in_0_ARLEN SIZE 1 32 }  { m_axi_gmem_in_0_ARSIZE BURST 1 3 }  { m_axi_gmem_in_0_ARBURST LOCK 1 2 }  { m_axi_gmem_in_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_in_0_ARCACHE PROT 1 4 }  { m_axi_gmem_in_0_ARPROT QOS 1 3 }  { m_axi_gmem_in_0_ARQOS REGION 1 4 }  { m_axi_gmem_in_0_ARREGION USER 1 4 }  { m_axi_gmem_in_0_ARUSER DATA 1 1 }  { m_axi_gmem_in_0_RVALID VALID 0 1 }  { m_axi_gmem_in_0_RREADY READY 1 1 }  { m_axi_gmem_in_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_in_0_RLAST LAST 0 1 }  { m_axi_gmem_in_0_RID ID 0 1 }  { m_axi_gmem_in_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_in_0_RUSER DATA 0 1 }  { m_axi_gmem_in_0_RRESP RESP 0 2 }  { m_axi_gmem_in_0_BVALID VALID 0 1 }  { m_axi_gmem_in_0_BREADY READY 1 1 }  { m_axi_gmem_in_0_BRESP RESP 0 2 }  { m_axi_gmem_in_0_BID ID 0 1 }  { m_axi_gmem_in_0_BUSER DATA 0 1 } } }
	in_r { ap_none {  { in_r in_data 0 64 }  { in_r_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_gmem_out_0_AWVALID VALID 1 1 }  { m_axi_gmem_out_0_AWREADY READY 0 1 }  { m_axi_gmem_out_0_AWADDR ADDR 1 64 }  { m_axi_gmem_out_0_AWID ID 1 1 }  { m_axi_gmem_out_0_AWLEN SIZE 1 32 }  { m_axi_gmem_out_0_AWSIZE BURST 1 3 }  { m_axi_gmem_out_0_AWBURST LOCK 1 2 }  { m_axi_gmem_out_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_out_0_AWCACHE PROT 1 4 }  { m_axi_gmem_out_0_AWPROT QOS 1 3 }  { m_axi_gmem_out_0_AWQOS REGION 1 4 }  { m_axi_gmem_out_0_AWREGION USER 1 4 }  { m_axi_gmem_out_0_AWUSER DATA 1 1 }  { m_axi_gmem_out_0_WVALID VALID 1 1 }  { m_axi_gmem_out_0_WREADY READY 0 1 }  { m_axi_gmem_out_0_WDATA FIFONUM 1 512 }  { m_axi_gmem_out_0_WSTRB STRB 1 64 }  { m_axi_gmem_out_0_WLAST LAST 1 1 }  { m_axi_gmem_out_0_WID ID 1 1 }  { m_axi_gmem_out_0_WUSER DATA 1 1 }  { m_axi_gmem_out_0_ARVALID VALID 1 1 }  { m_axi_gmem_out_0_ARREADY READY 0 1 }  { m_axi_gmem_out_0_ARADDR ADDR 1 64 }  { m_axi_gmem_out_0_ARID ID 1 1 }  { m_axi_gmem_out_0_ARLEN SIZE 1 32 }  { m_axi_gmem_out_0_ARSIZE BURST 1 3 }  { m_axi_gmem_out_0_ARBURST LOCK 1 2 }  { m_axi_gmem_out_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_out_0_ARCACHE PROT 1 4 }  { m_axi_gmem_out_0_ARPROT QOS 1 3 }  { m_axi_gmem_out_0_ARQOS REGION 1 4 }  { m_axi_gmem_out_0_ARREGION USER 1 4 }  { m_axi_gmem_out_0_ARUSER DATA 1 1 }  { m_axi_gmem_out_0_RVALID VALID 0 1 }  { m_axi_gmem_out_0_RREADY READY 1 1 }  { m_axi_gmem_out_0_RDATA FIFONUM 0 512 }  { m_axi_gmem_out_0_RLAST LAST 0 1 }  { m_axi_gmem_out_0_RID ID 0 1 }  { m_axi_gmem_out_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_out_0_RUSER DATA 0 1 }  { m_axi_gmem_out_0_RRESP RESP 0 2 }  { m_axi_gmem_out_0_BVALID VALID 0 1 }  { m_axi_gmem_out_0_BREADY READY 1 1 }  { m_axi_gmem_out_0_BRESP RESP 0 2 }  { m_axi_gmem_out_0_BID ID 0 1 }  { m_axi_gmem_out_0_BUSER DATA 0 1 } } }
	out_r { ap_none {  { out_r in_data 0 64 }  { out_r_ap_vld in_vld 0 1 } } }
}
