set moduleName dataflow_parent_loop_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type none
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
set C_modelName {dataflow_parent_loop_proc}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_0 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_1 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_2 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_3 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_39_4 { MEM_WIDTH 12 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_32_0 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_32_1 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_32_2 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_magnitude_0 { MEM_WIDTH 11 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_direction_0 { MEM_WIDTH 2 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_magnitude_1 { MEM_WIDTH 11 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_direction_1 { MEM_WIDTH 2 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_magnitude_2 { MEM_WIDTH 11 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_anonymous_namespace_lineBuffer_direction_2 { MEM_WIDTH 2 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2 { MEM_WIDTH 8 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ gmem int 512 regular {axi_master 2}  }
	{ in_r int 64 regular {ap_stable 0} }
	{ out_r int 64 regular {ap_stable 0} }
	{ p_anonymous_namespace_rowsReceived_1 int 32 regular {pointer 2} {global 2}  }
	{ p_anonymous_namespace_lineBuffer_39_0 int 12 regular {array 512 { 2 3 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_lineBuffer_39_1 int 12 regular {array 512 { 2 3 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_lineBuffer_39_2 int 12 regular {array 512 { 2 3 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_lineBuffer_39_3 int 12 regular {array 512 { 2 3 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_lineBuffer_39_4 int 12 regular {array 512 { 2 3 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_rowsReceived_2 int 32 regular {pointer 2} {global 2}  }
	{ p_anonymous_namespace_lineBuffer_32_0 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_lineBuffer_32_1 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_lineBuffer_32_2 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_rowsReceived int 32 regular {pointer 2} {global 2}  }
	{ p_anonymous_namespace_lineBuffer_magnitude_0 int 11 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_lineBuffer_direction_0 int 2 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_lineBuffer_magnitude_1 int 11 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_lineBuffer_direction_1 int 2 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_lineBuffer_magnitude_2 int 11 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_lineBuffer_direction_2 int 2 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_rowsReceived_1_s int 32 regular {pointer 2} {global 2}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_rowsReceived_2_s int 32 regular {pointer 2} {global 2}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_rowsReceived_3_s int 32 regular {pointer 2} {global 2}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_anonymous_namespace_rowsReceived_4_s int 32 regular {pointer 2} {global 2}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2 int 8 regular {array 512 { 2 1 } 1 1 } {global 2}  }
	{ rowsReceived int 32 regular {pointer 2} {global 2}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READWRITE", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "in_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_anonymous_namespace_rowsReceived_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_39_0", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_39_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_39_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_39_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_39_4", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_rowsReceived_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_32_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_32_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_32_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_rowsReceived", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_magnitude_0", "interface" : "memory", "bitwidth" : 11, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_direction_0", "interface" : "memory", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_magnitude_1", "interface" : "memory", "bitwidth" : 11, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_direction_1", "interface" : "memory", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_magnitude_2", "interface" : "memory", "bitwidth" : 11, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_lineBuffer_direction_2", "interface" : "memory", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_rowsReceived_1_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_rowsReceived_2_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_rowsReceived_3_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_rowsReceived_4_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "rowsReceived", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 349
set portList { 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ in_r sc_in sc_lv 64 signal 1 } 
	{ out_r sc_in sc_lv 64 signal 2 } 
	{ p_anonymous_namespace_rowsReceived_1_i sc_in sc_lv 32 signal 3 } 
	{ p_anonymous_namespace_rowsReceived_1_o sc_out sc_lv 32 signal 3 } 
	{ p_anonymous_namespace_lineBuffer_39_0_address0 sc_out sc_lv 9 signal 4 } 
	{ p_anonymous_namespace_lineBuffer_39_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_anonymous_namespace_lineBuffer_39_0_d0 sc_out sc_lv 12 signal 4 } 
	{ p_anonymous_namespace_lineBuffer_39_0_q0 sc_in sc_lv 12 signal 4 } 
	{ p_anonymous_namespace_lineBuffer_39_0_we0 sc_out sc_logic 1 signal 4 } 
	{ p_anonymous_namespace_lineBuffer_39_0_address1 sc_out sc_lv 9 signal 4 } 
	{ p_anonymous_namespace_lineBuffer_39_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ p_anonymous_namespace_lineBuffer_39_0_d1 sc_out sc_lv 12 signal 4 } 
	{ p_anonymous_namespace_lineBuffer_39_0_q1 sc_in sc_lv 12 signal 4 } 
	{ p_anonymous_namespace_lineBuffer_39_0_we1 sc_out sc_logic 1 signal 4 } 
	{ p_anonymous_namespace_lineBuffer_39_1_address0 sc_out sc_lv 9 signal 5 } 
	{ p_anonymous_namespace_lineBuffer_39_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ p_anonymous_namespace_lineBuffer_39_1_d0 sc_out sc_lv 12 signal 5 } 
	{ p_anonymous_namespace_lineBuffer_39_1_q0 sc_in sc_lv 12 signal 5 } 
	{ p_anonymous_namespace_lineBuffer_39_1_we0 sc_out sc_logic 1 signal 5 } 
	{ p_anonymous_namespace_lineBuffer_39_1_address1 sc_out sc_lv 9 signal 5 } 
	{ p_anonymous_namespace_lineBuffer_39_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ p_anonymous_namespace_lineBuffer_39_1_d1 sc_out sc_lv 12 signal 5 } 
	{ p_anonymous_namespace_lineBuffer_39_1_q1 sc_in sc_lv 12 signal 5 } 
	{ p_anonymous_namespace_lineBuffer_39_1_we1 sc_out sc_logic 1 signal 5 } 
	{ p_anonymous_namespace_lineBuffer_39_2_address0 sc_out sc_lv 9 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_39_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_39_2_d0 sc_out sc_lv 12 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_39_2_q0 sc_in sc_lv 12 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_39_2_we0 sc_out sc_logic 1 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_39_2_address1 sc_out sc_lv 9 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_39_2_ce1 sc_out sc_logic 1 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_39_2_d1 sc_out sc_lv 12 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_39_2_q1 sc_in sc_lv 12 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_39_2_we1 sc_out sc_logic 1 signal 6 } 
	{ p_anonymous_namespace_lineBuffer_39_3_address0 sc_out sc_lv 9 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_39_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_39_3_d0 sc_out sc_lv 12 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_39_3_q0 sc_in sc_lv 12 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_39_3_we0 sc_out sc_logic 1 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_39_3_address1 sc_out sc_lv 9 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_39_3_ce1 sc_out sc_logic 1 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_39_3_d1 sc_out sc_lv 12 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_39_3_q1 sc_in sc_lv 12 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_39_3_we1 sc_out sc_logic 1 signal 7 } 
	{ p_anonymous_namespace_lineBuffer_39_4_address0 sc_out sc_lv 9 signal 8 } 
	{ p_anonymous_namespace_lineBuffer_39_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ p_anonymous_namespace_lineBuffer_39_4_d0 sc_out sc_lv 12 signal 8 } 
	{ p_anonymous_namespace_lineBuffer_39_4_q0 sc_in sc_lv 12 signal 8 } 
	{ p_anonymous_namespace_lineBuffer_39_4_we0 sc_out sc_logic 1 signal 8 } 
	{ p_anonymous_namespace_lineBuffer_39_4_address1 sc_out sc_lv 9 signal 8 } 
	{ p_anonymous_namespace_lineBuffer_39_4_ce1 sc_out sc_logic 1 signal 8 } 
	{ p_anonymous_namespace_lineBuffer_39_4_d1 sc_out sc_lv 12 signal 8 } 
	{ p_anonymous_namespace_lineBuffer_39_4_q1 sc_in sc_lv 12 signal 8 } 
	{ p_anonymous_namespace_lineBuffer_39_4_we1 sc_out sc_logic 1 signal 8 } 
	{ p_anonymous_namespace_rowsReceived_2_i sc_in sc_lv 32 signal 9 } 
	{ p_anonymous_namespace_rowsReceived_2_o sc_out sc_lv 32 signal 9 } 
	{ p_anonymous_namespace_lineBuffer_32_0_address0 sc_out sc_lv 9 signal 10 } 
	{ p_anonymous_namespace_lineBuffer_32_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_anonymous_namespace_lineBuffer_32_0_d0 sc_out sc_lv 8 signal 10 } 
	{ p_anonymous_namespace_lineBuffer_32_0_q0 sc_in sc_lv 8 signal 10 } 
	{ p_anonymous_namespace_lineBuffer_32_0_we0 sc_out sc_logic 1 signal 10 } 
	{ p_anonymous_namespace_lineBuffer_32_0_address1 sc_out sc_lv 9 signal 10 } 
	{ p_anonymous_namespace_lineBuffer_32_0_ce1 sc_out sc_logic 1 signal 10 } 
	{ p_anonymous_namespace_lineBuffer_32_0_d1 sc_out sc_lv 8 signal 10 } 
	{ p_anonymous_namespace_lineBuffer_32_0_q1 sc_in sc_lv 8 signal 10 } 
	{ p_anonymous_namespace_lineBuffer_32_0_we1 sc_out sc_logic 1 signal 10 } 
	{ p_anonymous_namespace_lineBuffer_32_1_address0 sc_out sc_lv 9 signal 11 } 
	{ p_anonymous_namespace_lineBuffer_32_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_anonymous_namespace_lineBuffer_32_1_d0 sc_out sc_lv 8 signal 11 } 
	{ p_anonymous_namespace_lineBuffer_32_1_q0 sc_in sc_lv 8 signal 11 } 
	{ p_anonymous_namespace_lineBuffer_32_1_we0 sc_out sc_logic 1 signal 11 } 
	{ p_anonymous_namespace_lineBuffer_32_1_address1 sc_out sc_lv 9 signal 11 } 
	{ p_anonymous_namespace_lineBuffer_32_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ p_anonymous_namespace_lineBuffer_32_1_d1 sc_out sc_lv 8 signal 11 } 
	{ p_anonymous_namespace_lineBuffer_32_1_q1 sc_in sc_lv 8 signal 11 } 
	{ p_anonymous_namespace_lineBuffer_32_1_we1 sc_out sc_logic 1 signal 11 } 
	{ p_anonymous_namespace_lineBuffer_32_2_address0 sc_out sc_lv 9 signal 12 } 
	{ p_anonymous_namespace_lineBuffer_32_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_anonymous_namespace_lineBuffer_32_2_d0 sc_out sc_lv 8 signal 12 } 
	{ p_anonymous_namespace_lineBuffer_32_2_q0 sc_in sc_lv 8 signal 12 } 
	{ p_anonymous_namespace_lineBuffer_32_2_we0 sc_out sc_logic 1 signal 12 } 
	{ p_anonymous_namespace_lineBuffer_32_2_address1 sc_out sc_lv 9 signal 12 } 
	{ p_anonymous_namespace_lineBuffer_32_2_ce1 sc_out sc_logic 1 signal 12 } 
	{ p_anonymous_namespace_lineBuffer_32_2_d1 sc_out sc_lv 8 signal 12 } 
	{ p_anonymous_namespace_lineBuffer_32_2_q1 sc_in sc_lv 8 signal 12 } 
	{ p_anonymous_namespace_lineBuffer_32_2_we1 sc_out sc_logic 1 signal 12 } 
	{ p_anonymous_namespace_rowsReceived_i sc_in sc_lv 32 signal 13 } 
	{ p_anonymous_namespace_rowsReceived_o sc_out sc_lv 32 signal 13 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_0_address0 sc_out sc_lv 9 signal 14 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_0_ce0 sc_out sc_logic 1 signal 14 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_0_d0 sc_out sc_lv 11 signal 14 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_0_q0 sc_in sc_lv 11 signal 14 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_0_we0 sc_out sc_logic 1 signal 14 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_0_address1 sc_out sc_lv 9 signal 14 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_0_ce1 sc_out sc_logic 1 signal 14 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_0_d1 sc_out sc_lv 11 signal 14 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_0_q1 sc_in sc_lv 11 signal 14 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_0_we1 sc_out sc_logic 1 signal 14 } 
	{ p_anonymous_namespace_lineBuffer_direction_0_address0 sc_out sc_lv 9 signal 15 } 
	{ p_anonymous_namespace_lineBuffer_direction_0_ce0 sc_out sc_logic 1 signal 15 } 
	{ p_anonymous_namespace_lineBuffer_direction_0_d0 sc_out sc_lv 2 signal 15 } 
	{ p_anonymous_namespace_lineBuffer_direction_0_q0 sc_in sc_lv 2 signal 15 } 
	{ p_anonymous_namespace_lineBuffer_direction_0_we0 sc_out sc_logic 1 signal 15 } 
	{ p_anonymous_namespace_lineBuffer_direction_0_address1 sc_out sc_lv 9 signal 15 } 
	{ p_anonymous_namespace_lineBuffer_direction_0_ce1 sc_out sc_logic 1 signal 15 } 
	{ p_anonymous_namespace_lineBuffer_direction_0_d1 sc_out sc_lv 2 signal 15 } 
	{ p_anonymous_namespace_lineBuffer_direction_0_q1 sc_in sc_lv 2 signal 15 } 
	{ p_anonymous_namespace_lineBuffer_direction_0_we1 sc_out sc_logic 1 signal 15 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_1_address0 sc_out sc_lv 9 signal 16 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_1_ce0 sc_out sc_logic 1 signal 16 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_1_d0 sc_out sc_lv 11 signal 16 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_1_q0 sc_in sc_lv 11 signal 16 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_1_we0 sc_out sc_logic 1 signal 16 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_1_address1 sc_out sc_lv 9 signal 16 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_1_ce1 sc_out sc_logic 1 signal 16 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_1_d1 sc_out sc_lv 11 signal 16 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_1_q1 sc_in sc_lv 11 signal 16 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_1_we1 sc_out sc_logic 1 signal 16 } 
	{ p_anonymous_namespace_lineBuffer_direction_1_address0 sc_out sc_lv 9 signal 17 } 
	{ p_anonymous_namespace_lineBuffer_direction_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ p_anonymous_namespace_lineBuffer_direction_1_d0 sc_out sc_lv 2 signal 17 } 
	{ p_anonymous_namespace_lineBuffer_direction_1_q0 sc_in sc_lv 2 signal 17 } 
	{ p_anonymous_namespace_lineBuffer_direction_1_we0 sc_out sc_logic 1 signal 17 } 
	{ p_anonymous_namespace_lineBuffer_direction_1_address1 sc_out sc_lv 9 signal 17 } 
	{ p_anonymous_namespace_lineBuffer_direction_1_ce1 sc_out sc_logic 1 signal 17 } 
	{ p_anonymous_namespace_lineBuffer_direction_1_d1 sc_out sc_lv 2 signal 17 } 
	{ p_anonymous_namespace_lineBuffer_direction_1_q1 sc_in sc_lv 2 signal 17 } 
	{ p_anonymous_namespace_lineBuffer_direction_1_we1 sc_out sc_logic 1 signal 17 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_2_address0 sc_out sc_lv 9 signal 18 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_2_d0 sc_out sc_lv 11 signal 18 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_2_q0 sc_in sc_lv 11 signal 18 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_2_we0 sc_out sc_logic 1 signal 18 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_2_address1 sc_out sc_lv 9 signal 18 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_2_ce1 sc_out sc_logic 1 signal 18 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_2_d1 sc_out sc_lv 11 signal 18 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_2_q1 sc_in sc_lv 11 signal 18 } 
	{ p_anonymous_namespace_lineBuffer_magnitude_2_we1 sc_out sc_logic 1 signal 18 } 
	{ p_anonymous_namespace_lineBuffer_direction_2_address0 sc_out sc_lv 9 signal 19 } 
	{ p_anonymous_namespace_lineBuffer_direction_2_ce0 sc_out sc_logic 1 signal 19 } 
	{ p_anonymous_namespace_lineBuffer_direction_2_d0 sc_out sc_lv 2 signal 19 } 
	{ p_anonymous_namespace_lineBuffer_direction_2_q0 sc_in sc_lv 2 signal 19 } 
	{ p_anonymous_namespace_lineBuffer_direction_2_we0 sc_out sc_logic 1 signal 19 } 
	{ p_anonymous_namespace_lineBuffer_direction_2_address1 sc_out sc_lv 9 signal 19 } 
	{ p_anonymous_namespace_lineBuffer_direction_2_ce1 sc_out sc_logic 1 signal 19 } 
	{ p_anonymous_namespace_lineBuffer_direction_2_d1 sc_out sc_lv 2 signal 19 } 
	{ p_anonymous_namespace_lineBuffer_direction_2_q1 sc_in sc_lv 2 signal 19 } 
	{ p_anonymous_namespace_lineBuffer_direction_2_we1 sc_out sc_logic 1 signal 19 } 
	{ p_anonymous_namespace_rowsReceived_1_s_i sc_in sc_lv 32 signal 20 } 
	{ p_anonymous_namespace_rowsReceived_1_s_o sc_out sc_lv 32 signal 20 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_address0 sc_out sc_lv 9 signal 21 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_ce0 sc_out sc_logic 1 signal 21 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_d0 sc_out sc_lv 8 signal 21 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_q0 sc_in sc_lv 8 signal 21 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_we0 sc_out sc_logic 1 signal 21 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_address1 sc_out sc_lv 9 signal 21 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_ce1 sc_out sc_logic 1 signal 21 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_d1 sc_out sc_lv 8 signal 21 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_q1 sc_in sc_lv 8 signal 21 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_we1 sc_out sc_logic 1 signal 21 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_address0 sc_out sc_lv 9 signal 22 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_ce0 sc_out sc_logic 1 signal 22 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_d0 sc_out sc_lv 8 signal 22 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_q0 sc_in sc_lv 8 signal 22 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_we0 sc_out sc_logic 1 signal 22 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_address1 sc_out sc_lv 9 signal 22 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_ce1 sc_out sc_logic 1 signal 22 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_d1 sc_out sc_lv 8 signal 22 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_q1 sc_in sc_lv 8 signal 22 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_we1 sc_out sc_logic 1 signal 22 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_address0 sc_out sc_lv 9 signal 23 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_ce0 sc_out sc_logic 1 signal 23 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_d0 sc_out sc_lv 8 signal 23 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_q0 sc_in sc_lv 8 signal 23 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_we0 sc_out sc_logic 1 signal 23 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_address1 sc_out sc_lv 9 signal 23 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_ce1 sc_out sc_logic 1 signal 23 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_d1 sc_out sc_lv 8 signal 23 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_q1 sc_in sc_lv 8 signal 23 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_we1 sc_out sc_logic 1 signal 23 } 
	{ p_anonymous_namespace_rowsReceived_2_s_i sc_in sc_lv 32 signal 24 } 
	{ p_anonymous_namespace_rowsReceived_2_s_o sc_out sc_lv 32 signal 24 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address0 sc_out sc_lv 9 signal 25 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce0 sc_out sc_logic 1 signal 25 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_d0 sc_out sc_lv 8 signal 25 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q0 sc_in sc_lv 8 signal 25 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_we0 sc_out sc_logic 1 signal 25 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address1 sc_out sc_lv 9 signal 25 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce1 sc_out sc_logic 1 signal 25 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_d1 sc_out sc_lv 8 signal 25 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q1 sc_in sc_lv 8 signal 25 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_we1 sc_out sc_logic 1 signal 25 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address0 sc_out sc_lv 9 signal 26 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce0 sc_out sc_logic 1 signal 26 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_d0 sc_out sc_lv 8 signal 26 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q0 sc_in sc_lv 8 signal 26 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_we0 sc_out sc_logic 1 signal 26 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address1 sc_out sc_lv 9 signal 26 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce1 sc_out sc_logic 1 signal 26 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_d1 sc_out sc_lv 8 signal 26 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q1 sc_in sc_lv 8 signal 26 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_we1 sc_out sc_logic 1 signal 26 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_address0 sc_out sc_lv 9 signal 27 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_ce0 sc_out sc_logic 1 signal 27 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_d0 sc_out sc_lv 8 signal 27 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_q0 sc_in sc_lv 8 signal 27 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_we0 sc_out sc_logic 1 signal 27 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_address1 sc_out sc_lv 9 signal 27 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_ce1 sc_out sc_logic 1 signal 27 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_d1 sc_out sc_lv 8 signal 27 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_q1 sc_in sc_lv 8 signal 27 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_we1 sc_out sc_logic 1 signal 27 } 
	{ p_anonymous_namespace_rowsReceived_3_s_i sc_in sc_lv 32 signal 28 } 
	{ p_anonymous_namespace_rowsReceived_3_s_o sc_out sc_lv 32 signal 28 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_address0 sc_out sc_lv 9 signal 29 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_ce0 sc_out sc_logic 1 signal 29 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_d0 sc_out sc_lv 8 signal 29 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_q0 sc_in sc_lv 8 signal 29 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_we0 sc_out sc_logic 1 signal 29 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_address1 sc_out sc_lv 9 signal 29 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_ce1 sc_out sc_logic 1 signal 29 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_d1 sc_out sc_lv 8 signal 29 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_q1 sc_in sc_lv 8 signal 29 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_we1 sc_out sc_logic 1 signal 29 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_address0 sc_out sc_lv 9 signal 30 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_ce0 sc_out sc_logic 1 signal 30 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_d0 sc_out sc_lv 8 signal 30 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_q0 sc_in sc_lv 8 signal 30 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_we0 sc_out sc_logic 1 signal 30 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_address1 sc_out sc_lv 9 signal 30 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_ce1 sc_out sc_logic 1 signal 30 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_d1 sc_out sc_lv 8 signal 30 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_q1 sc_in sc_lv 8 signal 30 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_we1 sc_out sc_logic 1 signal 30 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_address0 sc_out sc_lv 9 signal 31 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_ce0 sc_out sc_logic 1 signal 31 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_d0 sc_out sc_lv 8 signal 31 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_q0 sc_in sc_lv 8 signal 31 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_we0 sc_out sc_logic 1 signal 31 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_address1 sc_out sc_lv 9 signal 31 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_ce1 sc_out sc_logic 1 signal 31 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_d1 sc_out sc_lv 8 signal 31 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_q1 sc_in sc_lv 8 signal 31 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_we1 sc_out sc_logic 1 signal 31 } 
	{ p_anonymous_namespace_rowsReceived_4_s_i sc_in sc_lv 32 signal 32 } 
	{ p_anonymous_namespace_rowsReceived_4_s_o sc_out sc_lv 32 signal 32 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address0 sc_out sc_lv 9 signal 33 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce0 sc_out sc_logic 1 signal 33 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_d0 sc_out sc_lv 8 signal 33 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q0 sc_in sc_lv 8 signal 33 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_we0 sc_out sc_logic 1 signal 33 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address1 sc_out sc_lv 9 signal 33 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce1 sc_out sc_logic 1 signal 33 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_d1 sc_out sc_lv 8 signal 33 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q1 sc_in sc_lv 8 signal 33 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_we1 sc_out sc_logic 1 signal 33 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address0 sc_out sc_lv 9 signal 34 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce0 sc_out sc_logic 1 signal 34 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_d0 sc_out sc_lv 8 signal 34 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q0 sc_in sc_lv 8 signal 34 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_we0 sc_out sc_logic 1 signal 34 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address1 sc_out sc_lv 9 signal 34 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce1 sc_out sc_logic 1 signal 34 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_d1 sc_out sc_lv 8 signal 34 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q1 sc_in sc_lv 8 signal 34 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_we1 sc_out sc_logic 1 signal 34 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_address0 sc_out sc_lv 9 signal 35 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_ce0 sc_out sc_logic 1 signal 35 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_d0 sc_out sc_lv 8 signal 35 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_q0 sc_in sc_lv 8 signal 35 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_we0 sc_out sc_logic 1 signal 35 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_address1 sc_out sc_lv 9 signal 35 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_ce1 sc_out sc_logic 1 signal 35 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_d1 sc_out sc_lv 8 signal 35 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_q1 sc_in sc_lv 8 signal 35 } 
	{ p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_we1 sc_out sc_logic 1 signal 35 } 
	{ rowsReceived_i sc_in sc_lv 32 signal 36 } 
	{ rowsReceived_o sc_out sc_lv 32 signal 36 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ in_r_ap_vld sc_in sc_logic 1 invld 1 } 
	{ out_r_ap_vld sc_in sc_logic 1 invld 2 } 
	{ p_anonymous_namespace_rowsReceived_1_i_ap_vld sc_in sc_logic 1 invld 3 } 
	{ p_anonymous_namespace_rowsReceived_1_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ p_anonymous_namespace_rowsReceived_2_i_ap_vld sc_in sc_logic 1 invld 9 } 
	{ p_anonymous_namespace_rowsReceived_2_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ p_anonymous_namespace_rowsReceived_i_ap_vld sc_in sc_logic 1 invld 13 } 
	{ p_anonymous_namespace_rowsReceived_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ p_anonymous_namespace_rowsReceived_1_s_i_ap_vld sc_in sc_logic 1 invld 20 } 
	{ p_anonymous_namespace_rowsReceived_1_s_o_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ p_anonymous_namespace_rowsReceived_2_s_i_ap_vld sc_in sc_logic 1 invld 24 } 
	{ p_anonymous_namespace_rowsReceived_2_s_o_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ p_anonymous_namespace_rowsReceived_3_s_i_ap_vld sc_in sc_logic 1 invld 28 } 
	{ p_anonymous_namespace_rowsReceived_3_s_o_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ p_anonymous_namespace_rowsReceived_4_s_i_ap_vld sc_in sc_logic 1 invld 32 } 
	{ p_anonymous_namespace_rowsReceived_4_s_o_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ rowsReceived_i_ap_vld sc_in sc_logic 1 invld 36 } 
	{ rowsReceived_o_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_gmem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BUSER" }} , 
 	{ "name": "in_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_r", "role": "default" }} , 
 	{ "name": "out_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "default" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_1", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_1", "role": "o" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_0", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_1", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_2", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_3", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_39_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_39_4", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_2", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_2", "role": "o" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_0", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_0", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_0", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_0", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_0", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_0", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_0", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_0", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_0", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_0", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_1", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_1", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_1", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_1", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_1", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_1", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_1", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_1", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_1", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_1", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_2", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_2", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_2", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_2", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_2", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_2", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_2", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_2", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_2", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_32_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_32_2", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived", "role": "o" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_0", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_0", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_0", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_0", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_0", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_0", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_0", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_0", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_0", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_0", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_0", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_0", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_0", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_0", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_0", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_0", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_0", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_0", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_0", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_0", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_1", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_1", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_1", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_1", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_1", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_1", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_1", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_1", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_1", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_1", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_1", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_1", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_1", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_1", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_1", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_1", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_1", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_1", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_1", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_1", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_2", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_2", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_2", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_2", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_2", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_2", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_2", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_2", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_2", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_magnitude_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_magnitude_2", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_2", "role": "address0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_2", "role": "ce0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_2", "role": "d0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_2", "role": "q0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_2", "role": "we0" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_2", "role": "address1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_2", "role": "ce1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_2", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_2", "role": "q1" }} , 
 	{ "name": "p_anonymous_namespace_lineBuffer_direction_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_anonymous_namespace_lineBuffer_direction_2", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_1_s_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_1_s", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_1_s_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_1_s", "role": "o" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0", "role": "address1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0", "role": "ce1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0", "role": "d1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0", "role": "q1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0", "role": "we1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1", "role": "address1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1", "role": "ce1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1", "role": "d1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1", "role": "q1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1", "role": "we1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2", "role": "address1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2", "role": "ce1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2", "role": "d1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2", "role": "q1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_2_s_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_2_s", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_2_s_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_2_s", "role": "o" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "address1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "ce1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "d1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "q1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0", "role": "we1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "address1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "ce1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "d1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "q1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1", "role": "we1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2", "role": "address1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2", "role": "ce1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2", "role": "d1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2", "role": "q1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_3_s_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_3_s", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_3_s_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_3_s", "role": "o" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0", "role": "address1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0", "role": "ce1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0", "role": "d1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0", "role": "q1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0", "role": "we1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1", "role": "address1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1", "role": "ce1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1", "role": "d1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1", "role": "q1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1", "role": "we1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2", "role": "address1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2", "role": "ce1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2", "role": "d1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2", "role": "q1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_4_s_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_4_s", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_4_s_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_anonymous_namespace_rowsReceived_4_s", "role": "o" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "address1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "ce1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "d1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "q1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0", "role": "we1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "address1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "ce1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "d1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "q1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1", "role": "we1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "role": "address0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "role": "ce0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "role": "d0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "role": "q0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "role": "we0" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "role": "address1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "role": "ce1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "role": "d1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "role": "q1" }} , 
 	{ "name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2", "role": "we1" }} , 
 	{ "name": "rowsReceived_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rowsReceived", "role": "i" }} , 
 	{ "name": "rowsReceived_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rowsReceived", "role": "o" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "in_r_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_r", "role": "ap_vld" }} , 
 	{ "name": "out_r_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "out_r", "role": "ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_1_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_anonymous_namespace_rowsReceived_1", "role": "i_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_rowsReceived_1", "role": "o_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_2_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_anonymous_namespace_rowsReceived_2", "role": "i_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_rowsReceived_2", "role": "o_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_anonymous_namespace_rowsReceived", "role": "i_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_rowsReceived", "role": "o_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_1_s_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_anonymous_namespace_rowsReceived_1_s", "role": "i_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_1_s_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_rowsReceived_1_s", "role": "o_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_2_s_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_anonymous_namespace_rowsReceived_2_s", "role": "i_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_2_s_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_rowsReceived_2_s", "role": "o_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_3_s_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_anonymous_namespace_rowsReceived_3_s", "role": "i_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_3_s_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_rowsReceived_3_s", "role": "o_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_4_s_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_anonymous_namespace_rowsReceived_4_s", "role": "i_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_rowsReceived_4_s_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_rowsReceived_4_s", "role": "o_ap_vld" }} , 
 	{ "name": "rowsReceived_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rowsReceived", "role": "i_ap_vld" }} , 
 	{ "name": "rowsReceived_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rowsReceived", "role": "o_ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		out_grayscale {Type O LastRead -1 FirstWrite 78}}
	grayscale_Pipeline_VITIS_LOOP_7_1 {
		empty {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 74 FirstWrite -1}
		out_grayscale {Type O LastRead -1 FirstWrite 78}}
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
	{"Name" : "Latency", "Min" : "840891", "Max" : "849143"}
	, {"Name" : "Interval", "Min" : "840891", "Max" : "849143"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 512 }  { m_axi_gmem_0_WSTRB STRB 1 64 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 512 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	in_r { ap_none {  { in_r in_data 0 64 }  { in_r_ap_vld in_vld 0 1 } } }
	out_r { ap_none {  { out_r in_data 0 64 }  { out_r_ap_vld in_vld 0 1 } } }
	p_anonymous_namespace_rowsReceived_1 { ap_ovld {  { p_anonymous_namespace_rowsReceived_1_i in_data 0 32 }  { p_anonymous_namespace_rowsReceived_1_o out_data 1 32 }  { p_anonymous_namespace_rowsReceived_1_i_ap_vld in_vld 0 1 }  { p_anonymous_namespace_rowsReceived_1_o_ap_vld out_vld 1 1 } } }
	p_anonymous_namespace_lineBuffer_39_0 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_0_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_0_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_0_d0 mem_din 1 12 }  { p_anonymous_namespace_lineBuffer_39_0_q0 mem_dout 0 12 }  { p_anonymous_namespace_lineBuffer_39_0_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_39_0_address1 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_0_ce1 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_0_d1 mem_din 1 12 }  { p_anonymous_namespace_lineBuffer_39_0_q1 mem_dout 0 12 }  { p_anonymous_namespace_lineBuffer_39_0_we1 mem_we 1 1 } } }
	p_anonymous_namespace_lineBuffer_39_1 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_1_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_1_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_1_d0 mem_din 1 12 }  { p_anonymous_namespace_lineBuffer_39_1_q0 mem_dout 0 12 }  { p_anonymous_namespace_lineBuffer_39_1_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_39_1_address1 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_1_ce1 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_1_d1 mem_din 1 12 }  { p_anonymous_namespace_lineBuffer_39_1_q1 mem_dout 0 12 }  { p_anonymous_namespace_lineBuffer_39_1_we1 mem_we 1 1 } } }
	p_anonymous_namespace_lineBuffer_39_2 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_2_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_2_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_2_d0 mem_din 1 12 }  { p_anonymous_namespace_lineBuffer_39_2_q0 mem_dout 0 12 }  { p_anonymous_namespace_lineBuffer_39_2_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_39_2_address1 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_2_ce1 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_2_d1 mem_din 1 12 }  { p_anonymous_namespace_lineBuffer_39_2_q1 mem_dout 0 12 }  { p_anonymous_namespace_lineBuffer_39_2_we1 mem_we 1 1 } } }
	p_anonymous_namespace_lineBuffer_39_3 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_3_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_3_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_3_d0 mem_din 1 12 }  { p_anonymous_namespace_lineBuffer_39_3_q0 mem_dout 0 12 }  { p_anonymous_namespace_lineBuffer_39_3_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_39_3_address1 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_3_ce1 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_3_d1 mem_din 1 12 }  { p_anonymous_namespace_lineBuffer_39_3_q1 mem_dout 0 12 }  { p_anonymous_namespace_lineBuffer_39_3_we1 mem_we 1 1 } } }
	p_anonymous_namespace_lineBuffer_39_4 { ap_memory {  { p_anonymous_namespace_lineBuffer_39_4_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_4_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_4_d0 mem_din 1 12 }  { p_anonymous_namespace_lineBuffer_39_4_q0 mem_dout 0 12 }  { p_anonymous_namespace_lineBuffer_39_4_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_39_4_address1 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_39_4_ce1 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_39_4_d1 mem_din 1 12 }  { p_anonymous_namespace_lineBuffer_39_4_q1 mem_dout 0 12 }  { p_anonymous_namespace_lineBuffer_39_4_we1 mem_we 1 1 } } }
	p_anonymous_namespace_rowsReceived_2 { ap_ovld {  { p_anonymous_namespace_rowsReceived_2_i in_data 0 32 }  { p_anonymous_namespace_rowsReceived_2_o out_data 1 32 }  { p_anonymous_namespace_rowsReceived_2_i_ap_vld in_vld 0 1 }  { p_anonymous_namespace_rowsReceived_2_o_ap_vld out_vld 1 1 } } }
	p_anonymous_namespace_lineBuffer_32_0 { ap_memory {  { p_anonymous_namespace_lineBuffer_32_0_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_32_0_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_32_0_d0 mem_din 1 8 }  { p_anonymous_namespace_lineBuffer_32_0_q0 mem_dout 0 8 }  { p_anonymous_namespace_lineBuffer_32_0_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_32_0_address1 MemPortADDR2 1 9 }  { p_anonymous_namespace_lineBuffer_32_0_ce1 MemPortCE2 1 1 }  { p_anonymous_namespace_lineBuffer_32_0_d1 mem_din 1 8 }  { p_anonymous_namespace_lineBuffer_32_0_q1 MemPortDOUT2 0 8 }  { p_anonymous_namespace_lineBuffer_32_0_we1 mem_we 1 1 } } }
	p_anonymous_namespace_lineBuffer_32_1 { ap_memory {  { p_anonymous_namespace_lineBuffer_32_1_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_32_1_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_32_1_d0 mem_din 1 8 }  { p_anonymous_namespace_lineBuffer_32_1_q0 mem_dout 0 8 }  { p_anonymous_namespace_lineBuffer_32_1_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_32_1_address1 MemPortADDR2 1 9 }  { p_anonymous_namespace_lineBuffer_32_1_ce1 MemPortCE2 1 1 }  { p_anonymous_namespace_lineBuffer_32_1_d1 mem_din 1 8 }  { p_anonymous_namespace_lineBuffer_32_1_q1 MemPortDOUT2 0 8 }  { p_anonymous_namespace_lineBuffer_32_1_we1 mem_we 1 1 } } }
	p_anonymous_namespace_lineBuffer_32_2 { ap_memory {  { p_anonymous_namespace_lineBuffer_32_2_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_32_2_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_32_2_d0 mem_din 1 8 }  { p_anonymous_namespace_lineBuffer_32_2_q0 mem_dout 0 8 }  { p_anonymous_namespace_lineBuffer_32_2_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_32_2_address1 MemPortADDR2 1 9 }  { p_anonymous_namespace_lineBuffer_32_2_ce1 MemPortCE2 1 1 }  { p_anonymous_namespace_lineBuffer_32_2_d1 mem_din 1 8 }  { p_anonymous_namespace_lineBuffer_32_2_q1 MemPortDOUT2 0 8 }  { p_anonymous_namespace_lineBuffer_32_2_we1 mem_we 1 1 } } }
	p_anonymous_namespace_rowsReceived { ap_ovld {  { p_anonymous_namespace_rowsReceived_i in_data 0 32 }  { p_anonymous_namespace_rowsReceived_o out_data 1 32 }  { p_anonymous_namespace_rowsReceived_i_ap_vld in_vld 0 1 }  { p_anonymous_namespace_rowsReceived_o_ap_vld out_vld 1 1 } } }
	p_anonymous_namespace_lineBuffer_magnitude_0 { ap_memory {  { p_anonymous_namespace_lineBuffer_magnitude_0_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_magnitude_0_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_magnitude_0_d0 mem_din 1 11 }  { p_anonymous_namespace_lineBuffer_magnitude_0_q0 mem_dout 0 11 }  { p_anonymous_namespace_lineBuffer_magnitude_0_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_magnitude_0_address1 MemPortADDR2 1 9 }  { p_anonymous_namespace_lineBuffer_magnitude_0_ce1 MemPortCE2 1 1 }  { p_anonymous_namespace_lineBuffer_magnitude_0_d1 mem_din 1 11 }  { p_anonymous_namespace_lineBuffer_magnitude_0_q1 MemPortDOUT2 0 11 }  { p_anonymous_namespace_lineBuffer_magnitude_0_we1 mem_we 1 1 } } }
	p_anonymous_namespace_lineBuffer_direction_0 { ap_memory {  { p_anonymous_namespace_lineBuffer_direction_0_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_direction_0_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_direction_0_d0 mem_din 1 2 }  { p_anonymous_namespace_lineBuffer_direction_0_q0 mem_dout 0 2 }  { p_anonymous_namespace_lineBuffer_direction_0_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_direction_0_address1 MemPortADDR2 1 9 }  { p_anonymous_namespace_lineBuffer_direction_0_ce1 MemPortCE2 1 1 }  { p_anonymous_namespace_lineBuffer_direction_0_d1 mem_din 1 2 }  { p_anonymous_namespace_lineBuffer_direction_0_q1 MemPortDOUT2 0 2 }  { p_anonymous_namespace_lineBuffer_direction_0_we1 mem_we 1 1 } } }
	p_anonymous_namespace_lineBuffer_magnitude_1 { ap_memory {  { p_anonymous_namespace_lineBuffer_magnitude_1_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_magnitude_1_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_magnitude_1_d0 mem_din 1 11 }  { p_anonymous_namespace_lineBuffer_magnitude_1_q0 mem_dout 0 11 }  { p_anonymous_namespace_lineBuffer_magnitude_1_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_magnitude_1_address1 MemPortADDR2 1 9 }  { p_anonymous_namespace_lineBuffer_magnitude_1_ce1 MemPortCE2 1 1 }  { p_anonymous_namespace_lineBuffer_magnitude_1_d1 mem_din 1 11 }  { p_anonymous_namespace_lineBuffer_magnitude_1_q1 MemPortDOUT2 0 11 }  { p_anonymous_namespace_lineBuffer_magnitude_1_we1 mem_we 1 1 } } }
	p_anonymous_namespace_lineBuffer_direction_1 { ap_memory {  { p_anonymous_namespace_lineBuffer_direction_1_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_direction_1_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_direction_1_d0 mem_din 1 2 }  { p_anonymous_namespace_lineBuffer_direction_1_q0 mem_dout 0 2 }  { p_anonymous_namespace_lineBuffer_direction_1_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_direction_1_address1 MemPortADDR2 1 9 }  { p_anonymous_namespace_lineBuffer_direction_1_ce1 MemPortCE2 1 1 }  { p_anonymous_namespace_lineBuffer_direction_1_d1 mem_din 1 2 }  { p_anonymous_namespace_lineBuffer_direction_1_q1 MemPortDOUT2 0 2 }  { p_anonymous_namespace_lineBuffer_direction_1_we1 mem_we 1 1 } } }
	p_anonymous_namespace_lineBuffer_magnitude_2 { ap_memory {  { p_anonymous_namespace_lineBuffer_magnitude_2_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_magnitude_2_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_magnitude_2_d0 mem_din 1 11 }  { p_anonymous_namespace_lineBuffer_magnitude_2_q0 mem_dout 0 11 }  { p_anonymous_namespace_lineBuffer_magnitude_2_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_magnitude_2_address1 MemPortADDR2 1 9 }  { p_anonymous_namespace_lineBuffer_magnitude_2_ce1 MemPortCE2 1 1 }  { p_anonymous_namespace_lineBuffer_magnitude_2_d1 mem_din 1 11 }  { p_anonymous_namespace_lineBuffer_magnitude_2_q1 MemPortDOUT2 0 11 }  { p_anonymous_namespace_lineBuffer_magnitude_2_we1 mem_we 1 1 } } }
	p_anonymous_namespace_lineBuffer_direction_2 { ap_memory {  { p_anonymous_namespace_lineBuffer_direction_2_address0 mem_address 1 9 }  { p_anonymous_namespace_lineBuffer_direction_2_ce0 mem_ce 1 1 }  { p_anonymous_namespace_lineBuffer_direction_2_d0 mem_din 1 2 }  { p_anonymous_namespace_lineBuffer_direction_2_q0 mem_dout 0 2 }  { p_anonymous_namespace_lineBuffer_direction_2_we0 mem_we 1 1 }  { p_anonymous_namespace_lineBuffer_direction_2_address1 MemPortADDR2 1 9 }  { p_anonymous_namespace_lineBuffer_direction_2_ce1 MemPortCE2 1 1 }  { p_anonymous_namespace_lineBuffer_direction_2_d1 mem_din 1 2 }  { p_anonymous_namespace_lineBuffer_direction_2_q1 MemPortDOUT2 0 2 }  { p_anonymous_namespace_lineBuffer_direction_2_we1 mem_we 1 1 } } }
	p_anonymous_namespace_rowsReceived_1_s { ap_ovld {  { p_anonymous_namespace_rowsReceived_1_s_i in_data 0 32 }  { p_anonymous_namespace_rowsReceived_1_s_o out_data 1 32 }  { p_anonymous_namespace_rowsReceived_1_s_i_ap_vld in_vld 0 1 }  { p_anonymous_namespace_rowsReceived_1_s_o_ap_vld out_vld 1 1 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_d0 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_q0 mem_dout 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_address1 MemPortADDR2 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_ce1 MemPortCE2 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_d1 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_q1 MemPortDOUT2 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_we1 mem_we 1 1 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_d0 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_q0 mem_dout 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_address1 MemPortADDR2 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_ce1 MemPortCE2 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_d1 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_q1 MemPortDOUT2 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_we1 mem_we 1 1 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_d0 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_q0 mem_dout 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_address1 MemPortADDR2 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_ce1 MemPortCE2 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_d1 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_q1 MemPortDOUT2 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_we1 mem_we 1 1 } } }
	p_anonymous_namespace_rowsReceived_2_s { ap_ovld {  { p_anonymous_namespace_rowsReceived_2_s_i in_data 0 32 }  { p_anonymous_namespace_rowsReceived_2_s_o out_data 1 32 }  { p_anonymous_namespace_rowsReceived_2_s_i_ap_vld in_vld 0 1 }  { p_anonymous_namespace_rowsReceived_2_s_o_ap_vld out_vld 1 1 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_d0 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q0 mem_dout 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address1 MemPortADDR2 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce1 MemPortCE2 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_d1 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q1 MemPortDOUT2 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_we1 mem_we 1 1 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_d0 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q0 mem_dout 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address1 MemPortADDR2 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce1 MemPortCE2 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_d1 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q1 MemPortDOUT2 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_we1 mem_we 1 1 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_d0 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_q0 mem_dout 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_address1 MemPortADDR2 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_ce1 MemPortCE2 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_d1 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_q1 MemPortDOUT2 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_we1 mem_we 1 1 } } }
	p_anonymous_namespace_rowsReceived_3_s { ap_ovld {  { p_anonymous_namespace_rowsReceived_3_s_i in_data 0 32 }  { p_anonymous_namespace_rowsReceived_3_s_o out_data 1 32 }  { p_anonymous_namespace_rowsReceived_3_s_i_ap_vld in_vld 0 1 }  { p_anonymous_namespace_rowsReceived_3_s_o_ap_vld out_vld 1 1 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_d0 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_q0 mem_dout 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_address1 MemPortADDR2 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_ce1 MemPortCE2 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_d1 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_q1 MemPortDOUT2 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_we1 mem_we 1 1 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_d0 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_q0 mem_dout 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_address1 MemPortADDR2 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_ce1 MemPortCE2 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_d1 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_q1 MemPortDOUT2 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_we1 mem_we 1 1 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_d0 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_q0 mem_dout 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_address1 MemPortADDR2 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_ce1 MemPortCE2 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_d1 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_q1 MemPortDOUT2 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_2_we1 mem_we 1 1 } } }
	p_anonymous_namespace_rowsReceived_4_s { ap_ovld {  { p_anonymous_namespace_rowsReceived_4_s_i in_data 0 32 }  { p_anonymous_namespace_rowsReceived_4_s_o out_data 1 32 }  { p_anonymous_namespace_rowsReceived_4_s_i_ap_vld in_vld 0 1 }  { p_anonymous_namespace_rowsReceived_4_s_o_ap_vld out_vld 1 1 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_d0 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q0 mem_dout 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address1 MemPortADDR2 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce1 MemPortCE2 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_d1 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q1 MemPortDOUT2 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_we1 mem_we 1 1 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_d0 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q0 mem_dout 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address1 MemPortADDR2 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce1 MemPortCE2 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_d1 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q1 MemPortDOUT2 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_we1 mem_we 1 1 } } }
	p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2 { ap_memory {  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_address0 mem_address 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_ce0 mem_ce 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_d0 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_q0 mem_dout 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_we0 mem_we 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_address1 MemPortADDR2 1 9 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_ce1 MemPortCE2 1 1 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_d1 mem_din 1 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_q1 MemPortDOUT2 0 8 }  { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_2_we1 mem_we 1 1 } } }
	rowsReceived { ap_ovld {  { rowsReceived_i in_data 0 32 }  { rowsReceived_o out_data 1 32 }  { rowsReceived_i_ap_vld in_vld 0 1 }  { rowsReceived_o_ap_vld out_vld 1 1 } } }
}
