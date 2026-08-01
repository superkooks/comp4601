set moduleName grayscale_Pipeline_unpack_pixels
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
set C_modelName {grayscale_Pipeline_unpack_pixels}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict row_bytes { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_1 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_2 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_3 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_4 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_5 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_6 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_7 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_8 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_9 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_10 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_11 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_12 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_13 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_14 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_15 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_16 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_17 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_18 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_19 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_20 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_21 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_22 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_23 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_24 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_25 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_26 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_27 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_28 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_29 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_30 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict row_bytes_31 { MEM_WIDTH 8 MEM_SIZE 48 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ row_bytes int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_1 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_2 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_3 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_4 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_5 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_6 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_7 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_8 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_9 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_10 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_11 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_12 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_13 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_14 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_15 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_16 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_17 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_18 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_19 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_20 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_21 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_22 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_23 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_24 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_25 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_26 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_27 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_28 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_29 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_30 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ row_bytes_31 int 8 regular {array 48 { 1 1 } 1 1 }  }
	{ gray_out int 8 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "row_bytes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_8", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_10", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_11", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_12", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_13", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_14", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_15", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_16", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_17", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_18", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_19", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_20", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_21", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_22", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_23", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_24", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_25", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_26", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_27", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_28", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_29", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_30", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_bytes_31", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "gray_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 203
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gray_out_din sc_out sc_lv 8 signal 32 } 
	{ gray_out_full_n sc_in sc_logic 1 signal 32 } 
	{ gray_out_write sc_out sc_logic 1 signal 32 } 
	{ gray_out_num_data_valid sc_in sc_lv 32 signal 32 } 
	{ gray_out_fifo_cap sc_in sc_lv 32 signal 32 } 
	{ row_bytes_address0 sc_out sc_lv 6 signal 0 } 
	{ row_bytes_ce0 sc_out sc_logic 1 signal 0 } 
	{ row_bytes_q0 sc_in sc_lv 8 signal 0 } 
	{ row_bytes_address1 sc_out sc_lv 6 signal 0 } 
	{ row_bytes_ce1 sc_out sc_logic 1 signal 0 } 
	{ row_bytes_q1 sc_in sc_lv 8 signal 0 } 
	{ row_bytes_1_address0 sc_out sc_lv 6 signal 1 } 
	{ row_bytes_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ row_bytes_1_q0 sc_in sc_lv 8 signal 1 } 
	{ row_bytes_1_address1 sc_out sc_lv 6 signal 1 } 
	{ row_bytes_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ row_bytes_1_q1 sc_in sc_lv 8 signal 1 } 
	{ row_bytes_2_address0 sc_out sc_lv 6 signal 2 } 
	{ row_bytes_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_bytes_2_q0 sc_in sc_lv 8 signal 2 } 
	{ row_bytes_2_address1 sc_out sc_lv 6 signal 2 } 
	{ row_bytes_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ row_bytes_2_q1 sc_in sc_lv 8 signal 2 } 
	{ row_bytes_3_address0 sc_out sc_lv 6 signal 3 } 
	{ row_bytes_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ row_bytes_3_q0 sc_in sc_lv 8 signal 3 } 
	{ row_bytes_3_address1 sc_out sc_lv 6 signal 3 } 
	{ row_bytes_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ row_bytes_3_q1 sc_in sc_lv 8 signal 3 } 
	{ row_bytes_4_address0 sc_out sc_lv 6 signal 4 } 
	{ row_bytes_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_bytes_4_q0 sc_in sc_lv 8 signal 4 } 
	{ row_bytes_4_address1 sc_out sc_lv 6 signal 4 } 
	{ row_bytes_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ row_bytes_4_q1 sc_in sc_lv 8 signal 4 } 
	{ row_bytes_5_address0 sc_out sc_lv 6 signal 5 } 
	{ row_bytes_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ row_bytes_5_q0 sc_in sc_lv 8 signal 5 } 
	{ row_bytes_5_address1 sc_out sc_lv 6 signal 5 } 
	{ row_bytes_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ row_bytes_5_q1 sc_in sc_lv 8 signal 5 } 
	{ row_bytes_6_address0 sc_out sc_lv 6 signal 6 } 
	{ row_bytes_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ row_bytes_6_q0 sc_in sc_lv 8 signal 6 } 
	{ row_bytes_6_address1 sc_out sc_lv 6 signal 6 } 
	{ row_bytes_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ row_bytes_6_q1 sc_in sc_lv 8 signal 6 } 
	{ row_bytes_7_address0 sc_out sc_lv 6 signal 7 } 
	{ row_bytes_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ row_bytes_7_q0 sc_in sc_lv 8 signal 7 } 
	{ row_bytes_7_address1 sc_out sc_lv 6 signal 7 } 
	{ row_bytes_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ row_bytes_7_q1 sc_in sc_lv 8 signal 7 } 
	{ row_bytes_8_address0 sc_out sc_lv 6 signal 8 } 
	{ row_bytes_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ row_bytes_8_q0 sc_in sc_lv 8 signal 8 } 
	{ row_bytes_8_address1 sc_out sc_lv 6 signal 8 } 
	{ row_bytes_8_ce1 sc_out sc_logic 1 signal 8 } 
	{ row_bytes_8_q1 sc_in sc_lv 8 signal 8 } 
	{ row_bytes_9_address0 sc_out sc_lv 6 signal 9 } 
	{ row_bytes_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ row_bytes_9_q0 sc_in sc_lv 8 signal 9 } 
	{ row_bytes_9_address1 sc_out sc_lv 6 signal 9 } 
	{ row_bytes_9_ce1 sc_out sc_logic 1 signal 9 } 
	{ row_bytes_9_q1 sc_in sc_lv 8 signal 9 } 
	{ row_bytes_10_address0 sc_out sc_lv 6 signal 10 } 
	{ row_bytes_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ row_bytes_10_q0 sc_in sc_lv 8 signal 10 } 
	{ row_bytes_10_address1 sc_out sc_lv 6 signal 10 } 
	{ row_bytes_10_ce1 sc_out sc_logic 1 signal 10 } 
	{ row_bytes_10_q1 sc_in sc_lv 8 signal 10 } 
	{ row_bytes_11_address0 sc_out sc_lv 6 signal 11 } 
	{ row_bytes_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ row_bytes_11_q0 sc_in sc_lv 8 signal 11 } 
	{ row_bytes_11_address1 sc_out sc_lv 6 signal 11 } 
	{ row_bytes_11_ce1 sc_out sc_logic 1 signal 11 } 
	{ row_bytes_11_q1 sc_in sc_lv 8 signal 11 } 
	{ row_bytes_12_address0 sc_out sc_lv 6 signal 12 } 
	{ row_bytes_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ row_bytes_12_q0 sc_in sc_lv 8 signal 12 } 
	{ row_bytes_12_address1 sc_out sc_lv 6 signal 12 } 
	{ row_bytes_12_ce1 sc_out sc_logic 1 signal 12 } 
	{ row_bytes_12_q1 sc_in sc_lv 8 signal 12 } 
	{ row_bytes_13_address0 sc_out sc_lv 6 signal 13 } 
	{ row_bytes_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ row_bytes_13_q0 sc_in sc_lv 8 signal 13 } 
	{ row_bytes_13_address1 sc_out sc_lv 6 signal 13 } 
	{ row_bytes_13_ce1 sc_out sc_logic 1 signal 13 } 
	{ row_bytes_13_q1 sc_in sc_lv 8 signal 13 } 
	{ row_bytes_14_address0 sc_out sc_lv 6 signal 14 } 
	{ row_bytes_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ row_bytes_14_q0 sc_in sc_lv 8 signal 14 } 
	{ row_bytes_14_address1 sc_out sc_lv 6 signal 14 } 
	{ row_bytes_14_ce1 sc_out sc_logic 1 signal 14 } 
	{ row_bytes_14_q1 sc_in sc_lv 8 signal 14 } 
	{ row_bytes_15_address0 sc_out sc_lv 6 signal 15 } 
	{ row_bytes_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ row_bytes_15_q0 sc_in sc_lv 8 signal 15 } 
	{ row_bytes_15_address1 sc_out sc_lv 6 signal 15 } 
	{ row_bytes_15_ce1 sc_out sc_logic 1 signal 15 } 
	{ row_bytes_15_q1 sc_in sc_lv 8 signal 15 } 
	{ row_bytes_16_address0 sc_out sc_lv 6 signal 16 } 
	{ row_bytes_16_ce0 sc_out sc_logic 1 signal 16 } 
	{ row_bytes_16_q0 sc_in sc_lv 8 signal 16 } 
	{ row_bytes_16_address1 sc_out sc_lv 6 signal 16 } 
	{ row_bytes_16_ce1 sc_out sc_logic 1 signal 16 } 
	{ row_bytes_16_q1 sc_in sc_lv 8 signal 16 } 
	{ row_bytes_17_address0 sc_out sc_lv 6 signal 17 } 
	{ row_bytes_17_ce0 sc_out sc_logic 1 signal 17 } 
	{ row_bytes_17_q0 sc_in sc_lv 8 signal 17 } 
	{ row_bytes_17_address1 sc_out sc_lv 6 signal 17 } 
	{ row_bytes_17_ce1 sc_out sc_logic 1 signal 17 } 
	{ row_bytes_17_q1 sc_in sc_lv 8 signal 17 } 
	{ row_bytes_18_address0 sc_out sc_lv 6 signal 18 } 
	{ row_bytes_18_ce0 sc_out sc_logic 1 signal 18 } 
	{ row_bytes_18_q0 sc_in sc_lv 8 signal 18 } 
	{ row_bytes_18_address1 sc_out sc_lv 6 signal 18 } 
	{ row_bytes_18_ce1 sc_out sc_logic 1 signal 18 } 
	{ row_bytes_18_q1 sc_in sc_lv 8 signal 18 } 
	{ row_bytes_19_address0 sc_out sc_lv 6 signal 19 } 
	{ row_bytes_19_ce0 sc_out sc_logic 1 signal 19 } 
	{ row_bytes_19_q0 sc_in sc_lv 8 signal 19 } 
	{ row_bytes_19_address1 sc_out sc_lv 6 signal 19 } 
	{ row_bytes_19_ce1 sc_out sc_logic 1 signal 19 } 
	{ row_bytes_19_q1 sc_in sc_lv 8 signal 19 } 
	{ row_bytes_20_address0 sc_out sc_lv 6 signal 20 } 
	{ row_bytes_20_ce0 sc_out sc_logic 1 signal 20 } 
	{ row_bytes_20_q0 sc_in sc_lv 8 signal 20 } 
	{ row_bytes_20_address1 sc_out sc_lv 6 signal 20 } 
	{ row_bytes_20_ce1 sc_out sc_logic 1 signal 20 } 
	{ row_bytes_20_q1 sc_in sc_lv 8 signal 20 } 
	{ row_bytes_21_address0 sc_out sc_lv 6 signal 21 } 
	{ row_bytes_21_ce0 sc_out sc_logic 1 signal 21 } 
	{ row_bytes_21_q0 sc_in sc_lv 8 signal 21 } 
	{ row_bytes_21_address1 sc_out sc_lv 6 signal 21 } 
	{ row_bytes_21_ce1 sc_out sc_logic 1 signal 21 } 
	{ row_bytes_21_q1 sc_in sc_lv 8 signal 21 } 
	{ row_bytes_22_address0 sc_out sc_lv 6 signal 22 } 
	{ row_bytes_22_ce0 sc_out sc_logic 1 signal 22 } 
	{ row_bytes_22_q0 sc_in sc_lv 8 signal 22 } 
	{ row_bytes_22_address1 sc_out sc_lv 6 signal 22 } 
	{ row_bytes_22_ce1 sc_out sc_logic 1 signal 22 } 
	{ row_bytes_22_q1 sc_in sc_lv 8 signal 22 } 
	{ row_bytes_23_address0 sc_out sc_lv 6 signal 23 } 
	{ row_bytes_23_ce0 sc_out sc_logic 1 signal 23 } 
	{ row_bytes_23_q0 sc_in sc_lv 8 signal 23 } 
	{ row_bytes_23_address1 sc_out sc_lv 6 signal 23 } 
	{ row_bytes_23_ce1 sc_out sc_logic 1 signal 23 } 
	{ row_bytes_23_q1 sc_in sc_lv 8 signal 23 } 
	{ row_bytes_24_address0 sc_out sc_lv 6 signal 24 } 
	{ row_bytes_24_ce0 sc_out sc_logic 1 signal 24 } 
	{ row_bytes_24_q0 sc_in sc_lv 8 signal 24 } 
	{ row_bytes_24_address1 sc_out sc_lv 6 signal 24 } 
	{ row_bytes_24_ce1 sc_out sc_logic 1 signal 24 } 
	{ row_bytes_24_q1 sc_in sc_lv 8 signal 24 } 
	{ row_bytes_25_address0 sc_out sc_lv 6 signal 25 } 
	{ row_bytes_25_ce0 sc_out sc_logic 1 signal 25 } 
	{ row_bytes_25_q0 sc_in sc_lv 8 signal 25 } 
	{ row_bytes_25_address1 sc_out sc_lv 6 signal 25 } 
	{ row_bytes_25_ce1 sc_out sc_logic 1 signal 25 } 
	{ row_bytes_25_q1 sc_in sc_lv 8 signal 25 } 
	{ row_bytes_26_address0 sc_out sc_lv 6 signal 26 } 
	{ row_bytes_26_ce0 sc_out sc_logic 1 signal 26 } 
	{ row_bytes_26_q0 sc_in sc_lv 8 signal 26 } 
	{ row_bytes_26_address1 sc_out sc_lv 6 signal 26 } 
	{ row_bytes_26_ce1 sc_out sc_logic 1 signal 26 } 
	{ row_bytes_26_q1 sc_in sc_lv 8 signal 26 } 
	{ row_bytes_27_address0 sc_out sc_lv 6 signal 27 } 
	{ row_bytes_27_ce0 sc_out sc_logic 1 signal 27 } 
	{ row_bytes_27_q0 sc_in sc_lv 8 signal 27 } 
	{ row_bytes_27_address1 sc_out sc_lv 6 signal 27 } 
	{ row_bytes_27_ce1 sc_out sc_logic 1 signal 27 } 
	{ row_bytes_27_q1 sc_in sc_lv 8 signal 27 } 
	{ row_bytes_28_address0 sc_out sc_lv 6 signal 28 } 
	{ row_bytes_28_ce0 sc_out sc_logic 1 signal 28 } 
	{ row_bytes_28_q0 sc_in sc_lv 8 signal 28 } 
	{ row_bytes_28_address1 sc_out sc_lv 6 signal 28 } 
	{ row_bytes_28_ce1 sc_out sc_logic 1 signal 28 } 
	{ row_bytes_28_q1 sc_in sc_lv 8 signal 28 } 
	{ row_bytes_29_address0 sc_out sc_lv 6 signal 29 } 
	{ row_bytes_29_ce0 sc_out sc_logic 1 signal 29 } 
	{ row_bytes_29_q0 sc_in sc_lv 8 signal 29 } 
	{ row_bytes_29_address1 sc_out sc_lv 6 signal 29 } 
	{ row_bytes_29_ce1 sc_out sc_logic 1 signal 29 } 
	{ row_bytes_29_q1 sc_in sc_lv 8 signal 29 } 
	{ row_bytes_30_address0 sc_out sc_lv 6 signal 30 } 
	{ row_bytes_30_ce0 sc_out sc_logic 1 signal 30 } 
	{ row_bytes_30_q0 sc_in sc_lv 8 signal 30 } 
	{ row_bytes_30_address1 sc_out sc_lv 6 signal 30 } 
	{ row_bytes_30_ce1 sc_out sc_logic 1 signal 30 } 
	{ row_bytes_30_q1 sc_in sc_lv 8 signal 30 } 
	{ row_bytes_31_address0 sc_out sc_lv 6 signal 31 } 
	{ row_bytes_31_ce0 sc_out sc_logic 1 signal 31 } 
	{ row_bytes_31_q0 sc_in sc_lv 8 signal 31 } 
	{ row_bytes_31_address1 sc_out sc_lv 6 signal 31 } 
	{ row_bytes_31_ce1 sc_out sc_logic 1 signal 31 } 
	{ row_bytes_31_q1 sc_in sc_lv 8 signal 31 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gray_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gray_out", "role": "din" }} , 
 	{ "name": "gray_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_out", "role": "full_n" }} , 
 	{ "name": "gray_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_out", "role": "write" }} , 
 	{ "name": "gray_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gray_out", "role": "num_data_valid" }} , 
 	{ "name": "gray_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gray_out", "role": "fifo_cap" }} , 
 	{ "name": "row_bytes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes", "role": "address0" }} , 
 	{ "name": "row_bytes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes", "role": "ce0" }} , 
 	{ "name": "row_bytes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes", "role": "q0" }} , 
 	{ "name": "row_bytes_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes", "role": "address1" }} , 
 	{ "name": "row_bytes_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes", "role": "ce1" }} , 
 	{ "name": "row_bytes_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes", "role": "q1" }} , 
 	{ "name": "row_bytes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_1", "role": "address0" }} , 
 	{ "name": "row_bytes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_1", "role": "ce0" }} , 
 	{ "name": "row_bytes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_1", "role": "q0" }} , 
 	{ "name": "row_bytes_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_1", "role": "address1" }} , 
 	{ "name": "row_bytes_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_1", "role": "ce1" }} , 
 	{ "name": "row_bytes_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_1", "role": "q1" }} , 
 	{ "name": "row_bytes_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_2", "role": "address0" }} , 
 	{ "name": "row_bytes_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_2", "role": "ce0" }} , 
 	{ "name": "row_bytes_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_2", "role": "q0" }} , 
 	{ "name": "row_bytes_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_2", "role": "address1" }} , 
 	{ "name": "row_bytes_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_2", "role": "ce1" }} , 
 	{ "name": "row_bytes_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_2", "role": "q1" }} , 
 	{ "name": "row_bytes_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_3", "role": "address0" }} , 
 	{ "name": "row_bytes_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_3", "role": "ce0" }} , 
 	{ "name": "row_bytes_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_3", "role": "q0" }} , 
 	{ "name": "row_bytes_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_3", "role": "address1" }} , 
 	{ "name": "row_bytes_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_3", "role": "ce1" }} , 
 	{ "name": "row_bytes_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_3", "role": "q1" }} , 
 	{ "name": "row_bytes_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_4", "role": "address0" }} , 
 	{ "name": "row_bytes_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_4", "role": "ce0" }} , 
 	{ "name": "row_bytes_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_4", "role": "q0" }} , 
 	{ "name": "row_bytes_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_4", "role": "address1" }} , 
 	{ "name": "row_bytes_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_4", "role": "ce1" }} , 
 	{ "name": "row_bytes_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_4", "role": "q1" }} , 
 	{ "name": "row_bytes_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_5", "role": "address0" }} , 
 	{ "name": "row_bytes_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_5", "role": "ce0" }} , 
 	{ "name": "row_bytes_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_5", "role": "q0" }} , 
 	{ "name": "row_bytes_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_5", "role": "address1" }} , 
 	{ "name": "row_bytes_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_5", "role": "ce1" }} , 
 	{ "name": "row_bytes_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_5", "role": "q1" }} , 
 	{ "name": "row_bytes_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_6", "role": "address0" }} , 
 	{ "name": "row_bytes_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_6", "role": "ce0" }} , 
 	{ "name": "row_bytes_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_6", "role": "q0" }} , 
 	{ "name": "row_bytes_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_6", "role": "address1" }} , 
 	{ "name": "row_bytes_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_6", "role": "ce1" }} , 
 	{ "name": "row_bytes_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_6", "role": "q1" }} , 
 	{ "name": "row_bytes_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_7", "role": "address0" }} , 
 	{ "name": "row_bytes_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_7", "role": "ce0" }} , 
 	{ "name": "row_bytes_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_7", "role": "q0" }} , 
 	{ "name": "row_bytes_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_7", "role": "address1" }} , 
 	{ "name": "row_bytes_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_7", "role": "ce1" }} , 
 	{ "name": "row_bytes_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_7", "role": "q1" }} , 
 	{ "name": "row_bytes_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_8", "role": "address0" }} , 
 	{ "name": "row_bytes_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_8", "role": "ce0" }} , 
 	{ "name": "row_bytes_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_8", "role": "q0" }} , 
 	{ "name": "row_bytes_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_8", "role": "address1" }} , 
 	{ "name": "row_bytes_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_8", "role": "ce1" }} , 
 	{ "name": "row_bytes_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_8", "role": "q1" }} , 
 	{ "name": "row_bytes_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_9", "role": "address0" }} , 
 	{ "name": "row_bytes_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_9", "role": "ce0" }} , 
 	{ "name": "row_bytes_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_9", "role": "q0" }} , 
 	{ "name": "row_bytes_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_9", "role": "address1" }} , 
 	{ "name": "row_bytes_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_9", "role": "ce1" }} , 
 	{ "name": "row_bytes_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_9", "role": "q1" }} , 
 	{ "name": "row_bytes_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_10", "role": "address0" }} , 
 	{ "name": "row_bytes_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_10", "role": "ce0" }} , 
 	{ "name": "row_bytes_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_10", "role": "q0" }} , 
 	{ "name": "row_bytes_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_10", "role": "address1" }} , 
 	{ "name": "row_bytes_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_10", "role": "ce1" }} , 
 	{ "name": "row_bytes_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_10", "role": "q1" }} , 
 	{ "name": "row_bytes_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_11", "role": "address0" }} , 
 	{ "name": "row_bytes_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_11", "role": "ce0" }} , 
 	{ "name": "row_bytes_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_11", "role": "q0" }} , 
 	{ "name": "row_bytes_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_11", "role": "address1" }} , 
 	{ "name": "row_bytes_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_11", "role": "ce1" }} , 
 	{ "name": "row_bytes_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_11", "role": "q1" }} , 
 	{ "name": "row_bytes_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_12", "role": "address0" }} , 
 	{ "name": "row_bytes_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_12", "role": "ce0" }} , 
 	{ "name": "row_bytes_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_12", "role": "q0" }} , 
 	{ "name": "row_bytes_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_12", "role": "address1" }} , 
 	{ "name": "row_bytes_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_12", "role": "ce1" }} , 
 	{ "name": "row_bytes_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_12", "role": "q1" }} , 
 	{ "name": "row_bytes_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_13", "role": "address0" }} , 
 	{ "name": "row_bytes_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_13", "role": "ce0" }} , 
 	{ "name": "row_bytes_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_13", "role": "q0" }} , 
 	{ "name": "row_bytes_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_13", "role": "address1" }} , 
 	{ "name": "row_bytes_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_13", "role": "ce1" }} , 
 	{ "name": "row_bytes_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_13", "role": "q1" }} , 
 	{ "name": "row_bytes_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_14", "role": "address0" }} , 
 	{ "name": "row_bytes_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_14", "role": "ce0" }} , 
 	{ "name": "row_bytes_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_14", "role": "q0" }} , 
 	{ "name": "row_bytes_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_14", "role": "address1" }} , 
 	{ "name": "row_bytes_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_14", "role": "ce1" }} , 
 	{ "name": "row_bytes_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_14", "role": "q1" }} , 
 	{ "name": "row_bytes_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_15", "role": "address0" }} , 
 	{ "name": "row_bytes_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_15", "role": "ce0" }} , 
 	{ "name": "row_bytes_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_15", "role": "q0" }} , 
 	{ "name": "row_bytes_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_15", "role": "address1" }} , 
 	{ "name": "row_bytes_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_15", "role": "ce1" }} , 
 	{ "name": "row_bytes_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_15", "role": "q1" }} , 
 	{ "name": "row_bytes_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_16", "role": "address0" }} , 
 	{ "name": "row_bytes_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_16", "role": "ce0" }} , 
 	{ "name": "row_bytes_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_16", "role": "q0" }} , 
 	{ "name": "row_bytes_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_16", "role": "address1" }} , 
 	{ "name": "row_bytes_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_16", "role": "ce1" }} , 
 	{ "name": "row_bytes_16_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_16", "role": "q1" }} , 
 	{ "name": "row_bytes_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_17", "role": "address0" }} , 
 	{ "name": "row_bytes_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_17", "role": "ce0" }} , 
 	{ "name": "row_bytes_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_17", "role": "q0" }} , 
 	{ "name": "row_bytes_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_17", "role": "address1" }} , 
 	{ "name": "row_bytes_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_17", "role": "ce1" }} , 
 	{ "name": "row_bytes_17_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_17", "role": "q1" }} , 
 	{ "name": "row_bytes_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_18", "role": "address0" }} , 
 	{ "name": "row_bytes_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_18", "role": "ce0" }} , 
 	{ "name": "row_bytes_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_18", "role": "q0" }} , 
 	{ "name": "row_bytes_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_18", "role": "address1" }} , 
 	{ "name": "row_bytes_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_18", "role": "ce1" }} , 
 	{ "name": "row_bytes_18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_18", "role": "q1" }} , 
 	{ "name": "row_bytes_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_19", "role": "address0" }} , 
 	{ "name": "row_bytes_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_19", "role": "ce0" }} , 
 	{ "name": "row_bytes_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_19", "role": "q0" }} , 
 	{ "name": "row_bytes_19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_19", "role": "address1" }} , 
 	{ "name": "row_bytes_19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_19", "role": "ce1" }} , 
 	{ "name": "row_bytes_19_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_19", "role": "q1" }} , 
 	{ "name": "row_bytes_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_20", "role": "address0" }} , 
 	{ "name": "row_bytes_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_20", "role": "ce0" }} , 
 	{ "name": "row_bytes_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_20", "role": "q0" }} , 
 	{ "name": "row_bytes_20_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_20", "role": "address1" }} , 
 	{ "name": "row_bytes_20_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_20", "role": "ce1" }} , 
 	{ "name": "row_bytes_20_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_20", "role": "q1" }} , 
 	{ "name": "row_bytes_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_21", "role": "address0" }} , 
 	{ "name": "row_bytes_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_21", "role": "ce0" }} , 
 	{ "name": "row_bytes_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_21", "role": "q0" }} , 
 	{ "name": "row_bytes_21_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_21", "role": "address1" }} , 
 	{ "name": "row_bytes_21_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_21", "role": "ce1" }} , 
 	{ "name": "row_bytes_21_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_21", "role": "q1" }} , 
 	{ "name": "row_bytes_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_22", "role": "address0" }} , 
 	{ "name": "row_bytes_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_22", "role": "ce0" }} , 
 	{ "name": "row_bytes_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_22", "role": "q0" }} , 
 	{ "name": "row_bytes_22_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_22", "role": "address1" }} , 
 	{ "name": "row_bytes_22_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_22", "role": "ce1" }} , 
 	{ "name": "row_bytes_22_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_22", "role": "q1" }} , 
 	{ "name": "row_bytes_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_23", "role": "address0" }} , 
 	{ "name": "row_bytes_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_23", "role": "ce0" }} , 
 	{ "name": "row_bytes_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_23", "role": "q0" }} , 
 	{ "name": "row_bytes_23_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_23", "role": "address1" }} , 
 	{ "name": "row_bytes_23_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_23", "role": "ce1" }} , 
 	{ "name": "row_bytes_23_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_23", "role": "q1" }} , 
 	{ "name": "row_bytes_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_24", "role": "address0" }} , 
 	{ "name": "row_bytes_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_24", "role": "ce0" }} , 
 	{ "name": "row_bytes_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_24", "role": "q0" }} , 
 	{ "name": "row_bytes_24_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_24", "role": "address1" }} , 
 	{ "name": "row_bytes_24_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_24", "role": "ce1" }} , 
 	{ "name": "row_bytes_24_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_24", "role": "q1" }} , 
 	{ "name": "row_bytes_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_25", "role": "address0" }} , 
 	{ "name": "row_bytes_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_25", "role": "ce0" }} , 
 	{ "name": "row_bytes_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_25", "role": "q0" }} , 
 	{ "name": "row_bytes_25_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_25", "role": "address1" }} , 
 	{ "name": "row_bytes_25_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_25", "role": "ce1" }} , 
 	{ "name": "row_bytes_25_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_25", "role": "q1" }} , 
 	{ "name": "row_bytes_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_26", "role": "address0" }} , 
 	{ "name": "row_bytes_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_26", "role": "ce0" }} , 
 	{ "name": "row_bytes_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_26", "role": "q0" }} , 
 	{ "name": "row_bytes_26_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_26", "role": "address1" }} , 
 	{ "name": "row_bytes_26_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_26", "role": "ce1" }} , 
 	{ "name": "row_bytes_26_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_26", "role": "q1" }} , 
 	{ "name": "row_bytes_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_27", "role": "address0" }} , 
 	{ "name": "row_bytes_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_27", "role": "ce0" }} , 
 	{ "name": "row_bytes_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_27", "role": "q0" }} , 
 	{ "name": "row_bytes_27_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_27", "role": "address1" }} , 
 	{ "name": "row_bytes_27_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_27", "role": "ce1" }} , 
 	{ "name": "row_bytes_27_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_27", "role": "q1" }} , 
 	{ "name": "row_bytes_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_28", "role": "address0" }} , 
 	{ "name": "row_bytes_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_28", "role": "ce0" }} , 
 	{ "name": "row_bytes_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_28", "role": "q0" }} , 
 	{ "name": "row_bytes_28_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_28", "role": "address1" }} , 
 	{ "name": "row_bytes_28_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_28", "role": "ce1" }} , 
 	{ "name": "row_bytes_28_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_28", "role": "q1" }} , 
 	{ "name": "row_bytes_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_29", "role": "address0" }} , 
 	{ "name": "row_bytes_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_29", "role": "ce0" }} , 
 	{ "name": "row_bytes_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_29", "role": "q0" }} , 
 	{ "name": "row_bytes_29_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_29", "role": "address1" }} , 
 	{ "name": "row_bytes_29_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_29", "role": "ce1" }} , 
 	{ "name": "row_bytes_29_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_29", "role": "q1" }} , 
 	{ "name": "row_bytes_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_30", "role": "address0" }} , 
 	{ "name": "row_bytes_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_30", "role": "ce0" }} , 
 	{ "name": "row_bytes_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_30", "role": "q0" }} , 
 	{ "name": "row_bytes_30_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_30", "role": "address1" }} , 
 	{ "name": "row_bytes_30_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_30", "role": "ce1" }} , 
 	{ "name": "row_bytes_30_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_30", "role": "q1" }} , 
 	{ "name": "row_bytes_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_31", "role": "address0" }} , 
 	{ "name": "row_bytes_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_31", "role": "ce0" }} , 
 	{ "name": "row_bytes_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_31", "role": "q0" }} , 
 	{ "name": "row_bytes_31_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_bytes_31", "role": "address1" }} , 
 	{ "name": "row_bytes_31_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_bytes_31", "role": "ce1" }} , 
 	{ "name": "row_bytes_31_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_bytes_31", "role": "q1" }}  ]}

set ArgLastReadFirstWriteLatency {
	grayscale_Pipeline_unpack_pixels {
		row_bytes {Type I LastRead 3 FirstWrite -1}
		row_bytes_1 {Type I LastRead 3 FirstWrite -1}
		row_bytes_2 {Type I LastRead 3 FirstWrite -1}
		row_bytes_3 {Type I LastRead 3 FirstWrite -1}
		row_bytes_4 {Type I LastRead 3 FirstWrite -1}
		row_bytes_5 {Type I LastRead 3 FirstWrite -1}
		row_bytes_6 {Type I LastRead 3 FirstWrite -1}
		row_bytes_7 {Type I LastRead 3 FirstWrite -1}
		row_bytes_8 {Type I LastRead 3 FirstWrite -1}
		row_bytes_9 {Type I LastRead 3 FirstWrite -1}
		row_bytes_10 {Type I LastRead 3 FirstWrite -1}
		row_bytes_11 {Type I LastRead 3 FirstWrite -1}
		row_bytes_12 {Type I LastRead 3 FirstWrite -1}
		row_bytes_13 {Type I LastRead 3 FirstWrite -1}
		row_bytes_14 {Type I LastRead 3 FirstWrite -1}
		row_bytes_15 {Type I LastRead 3 FirstWrite -1}
		row_bytes_16 {Type I LastRead 3 FirstWrite -1}
		row_bytes_17 {Type I LastRead 3 FirstWrite -1}
		row_bytes_18 {Type I LastRead 3 FirstWrite -1}
		row_bytes_19 {Type I LastRead 3 FirstWrite -1}
		row_bytes_20 {Type I LastRead 3 FirstWrite -1}
		row_bytes_21 {Type I LastRead 3 FirstWrite -1}
		row_bytes_22 {Type I LastRead 3 FirstWrite -1}
		row_bytes_23 {Type I LastRead 3 FirstWrite -1}
		row_bytes_24 {Type I LastRead 3 FirstWrite -1}
		row_bytes_25 {Type I LastRead 3 FirstWrite -1}
		row_bytes_26 {Type I LastRead 3 FirstWrite -1}
		row_bytes_27 {Type I LastRead 3 FirstWrite -1}
		row_bytes_28 {Type I LastRead 3 FirstWrite -1}
		row_bytes_29 {Type I LastRead 3 FirstWrite -1}
		row_bytes_30 {Type I LastRead 3 FirstWrite -1}
		row_bytes_31 {Type I LastRead 3 FirstWrite -1}
		gray_out {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "519", "Max" : "519"}
	, {"Name" : "Interval", "Min" : "513", "Max" : "513"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	row_bytes { ap_memory {  { row_bytes_address0 mem_address 1 6 }  { row_bytes_ce0 mem_ce 1 1 }  { row_bytes_q0 mem_dout 0 8 }  { row_bytes_address1 MemPortADDR2 1 6 }  { row_bytes_ce1 MemPortCE2 1 1 }  { row_bytes_q1 MemPortDOUT2 0 8 } } }
	row_bytes_1 { ap_memory {  { row_bytes_1_address0 mem_address 1 6 }  { row_bytes_1_ce0 mem_ce 1 1 }  { row_bytes_1_q0 mem_dout 0 8 }  { row_bytes_1_address1 MemPortADDR2 1 6 }  { row_bytes_1_ce1 MemPortCE2 1 1 }  { row_bytes_1_q1 MemPortDOUT2 0 8 } } }
	row_bytes_2 { ap_memory {  { row_bytes_2_address0 mem_address 1 6 }  { row_bytes_2_ce0 mem_ce 1 1 }  { row_bytes_2_q0 mem_dout 0 8 }  { row_bytes_2_address1 MemPortADDR2 1 6 }  { row_bytes_2_ce1 MemPortCE2 1 1 }  { row_bytes_2_q1 MemPortDOUT2 0 8 } } }
	row_bytes_3 { ap_memory {  { row_bytes_3_address0 mem_address 1 6 }  { row_bytes_3_ce0 mem_ce 1 1 }  { row_bytes_3_q0 mem_dout 0 8 }  { row_bytes_3_address1 MemPortADDR2 1 6 }  { row_bytes_3_ce1 MemPortCE2 1 1 }  { row_bytes_3_q1 MemPortDOUT2 0 8 } } }
	row_bytes_4 { ap_memory {  { row_bytes_4_address0 mem_address 1 6 }  { row_bytes_4_ce0 mem_ce 1 1 }  { row_bytes_4_q0 mem_dout 0 8 }  { row_bytes_4_address1 MemPortADDR2 1 6 }  { row_bytes_4_ce1 MemPortCE2 1 1 }  { row_bytes_4_q1 MemPortDOUT2 0 8 } } }
	row_bytes_5 { ap_memory {  { row_bytes_5_address0 mem_address 1 6 }  { row_bytes_5_ce0 mem_ce 1 1 }  { row_bytes_5_q0 mem_dout 0 8 }  { row_bytes_5_address1 MemPortADDR2 1 6 }  { row_bytes_5_ce1 MemPortCE2 1 1 }  { row_bytes_5_q1 MemPortDOUT2 0 8 } } }
	row_bytes_6 { ap_memory {  { row_bytes_6_address0 mem_address 1 6 }  { row_bytes_6_ce0 mem_ce 1 1 }  { row_bytes_6_q0 mem_dout 0 8 }  { row_bytes_6_address1 MemPortADDR2 1 6 }  { row_bytes_6_ce1 MemPortCE2 1 1 }  { row_bytes_6_q1 MemPortDOUT2 0 8 } } }
	row_bytes_7 { ap_memory {  { row_bytes_7_address0 mem_address 1 6 }  { row_bytes_7_ce0 mem_ce 1 1 }  { row_bytes_7_q0 mem_dout 0 8 }  { row_bytes_7_address1 MemPortADDR2 1 6 }  { row_bytes_7_ce1 MemPortCE2 1 1 }  { row_bytes_7_q1 MemPortDOUT2 0 8 } } }
	row_bytes_8 { ap_memory {  { row_bytes_8_address0 mem_address 1 6 }  { row_bytes_8_ce0 mem_ce 1 1 }  { row_bytes_8_q0 mem_dout 0 8 }  { row_bytes_8_address1 MemPortADDR2 1 6 }  { row_bytes_8_ce1 MemPortCE2 1 1 }  { row_bytes_8_q1 MemPortDOUT2 0 8 } } }
	row_bytes_9 { ap_memory {  { row_bytes_9_address0 mem_address 1 6 }  { row_bytes_9_ce0 mem_ce 1 1 }  { row_bytes_9_q0 mem_dout 0 8 }  { row_bytes_9_address1 MemPortADDR2 1 6 }  { row_bytes_9_ce1 MemPortCE2 1 1 }  { row_bytes_9_q1 MemPortDOUT2 0 8 } } }
	row_bytes_10 { ap_memory {  { row_bytes_10_address0 mem_address 1 6 }  { row_bytes_10_ce0 mem_ce 1 1 }  { row_bytes_10_q0 mem_dout 0 8 }  { row_bytes_10_address1 MemPortADDR2 1 6 }  { row_bytes_10_ce1 MemPortCE2 1 1 }  { row_bytes_10_q1 MemPortDOUT2 0 8 } } }
	row_bytes_11 { ap_memory {  { row_bytes_11_address0 mem_address 1 6 }  { row_bytes_11_ce0 mem_ce 1 1 }  { row_bytes_11_q0 mem_dout 0 8 }  { row_bytes_11_address1 MemPortADDR2 1 6 }  { row_bytes_11_ce1 MemPortCE2 1 1 }  { row_bytes_11_q1 MemPortDOUT2 0 8 } } }
	row_bytes_12 { ap_memory {  { row_bytes_12_address0 mem_address 1 6 }  { row_bytes_12_ce0 mem_ce 1 1 }  { row_bytes_12_q0 mem_dout 0 8 }  { row_bytes_12_address1 MemPortADDR2 1 6 }  { row_bytes_12_ce1 MemPortCE2 1 1 }  { row_bytes_12_q1 MemPortDOUT2 0 8 } } }
	row_bytes_13 { ap_memory {  { row_bytes_13_address0 mem_address 1 6 }  { row_bytes_13_ce0 mem_ce 1 1 }  { row_bytes_13_q0 mem_dout 0 8 }  { row_bytes_13_address1 MemPortADDR2 1 6 }  { row_bytes_13_ce1 MemPortCE2 1 1 }  { row_bytes_13_q1 MemPortDOUT2 0 8 } } }
	row_bytes_14 { ap_memory {  { row_bytes_14_address0 mem_address 1 6 }  { row_bytes_14_ce0 mem_ce 1 1 }  { row_bytes_14_q0 mem_dout 0 8 }  { row_bytes_14_address1 MemPortADDR2 1 6 }  { row_bytes_14_ce1 MemPortCE2 1 1 }  { row_bytes_14_q1 MemPortDOUT2 0 8 } } }
	row_bytes_15 { ap_memory {  { row_bytes_15_address0 mem_address 1 6 }  { row_bytes_15_ce0 mem_ce 1 1 }  { row_bytes_15_q0 mem_dout 0 8 }  { row_bytes_15_address1 MemPortADDR2 1 6 }  { row_bytes_15_ce1 MemPortCE2 1 1 }  { row_bytes_15_q1 MemPortDOUT2 0 8 } } }
	row_bytes_16 { ap_memory {  { row_bytes_16_address0 mem_address 1 6 }  { row_bytes_16_ce0 mem_ce 1 1 }  { row_bytes_16_q0 mem_dout 0 8 }  { row_bytes_16_address1 MemPortADDR2 1 6 }  { row_bytes_16_ce1 MemPortCE2 1 1 }  { row_bytes_16_q1 MemPortDOUT2 0 8 } } }
	row_bytes_17 { ap_memory {  { row_bytes_17_address0 mem_address 1 6 }  { row_bytes_17_ce0 mem_ce 1 1 }  { row_bytes_17_q0 mem_dout 0 8 }  { row_bytes_17_address1 MemPortADDR2 1 6 }  { row_bytes_17_ce1 MemPortCE2 1 1 }  { row_bytes_17_q1 MemPortDOUT2 0 8 } } }
	row_bytes_18 { ap_memory {  { row_bytes_18_address0 mem_address 1 6 }  { row_bytes_18_ce0 mem_ce 1 1 }  { row_bytes_18_q0 mem_dout 0 8 }  { row_bytes_18_address1 MemPortADDR2 1 6 }  { row_bytes_18_ce1 MemPortCE2 1 1 }  { row_bytes_18_q1 MemPortDOUT2 0 8 } } }
	row_bytes_19 { ap_memory {  { row_bytes_19_address0 mem_address 1 6 }  { row_bytes_19_ce0 mem_ce 1 1 }  { row_bytes_19_q0 mem_dout 0 8 }  { row_bytes_19_address1 MemPortADDR2 1 6 }  { row_bytes_19_ce1 MemPortCE2 1 1 }  { row_bytes_19_q1 MemPortDOUT2 0 8 } } }
	row_bytes_20 { ap_memory {  { row_bytes_20_address0 mem_address 1 6 }  { row_bytes_20_ce0 mem_ce 1 1 }  { row_bytes_20_q0 mem_dout 0 8 }  { row_bytes_20_address1 MemPortADDR2 1 6 }  { row_bytes_20_ce1 MemPortCE2 1 1 }  { row_bytes_20_q1 MemPortDOUT2 0 8 } } }
	row_bytes_21 { ap_memory {  { row_bytes_21_address0 mem_address 1 6 }  { row_bytes_21_ce0 mem_ce 1 1 }  { row_bytes_21_q0 mem_dout 0 8 }  { row_bytes_21_address1 MemPortADDR2 1 6 }  { row_bytes_21_ce1 MemPortCE2 1 1 }  { row_bytes_21_q1 MemPortDOUT2 0 8 } } }
	row_bytes_22 { ap_memory {  { row_bytes_22_address0 mem_address 1 6 }  { row_bytes_22_ce0 mem_ce 1 1 }  { row_bytes_22_q0 mem_dout 0 8 }  { row_bytes_22_address1 MemPortADDR2 1 6 }  { row_bytes_22_ce1 MemPortCE2 1 1 }  { row_bytes_22_q1 MemPortDOUT2 0 8 } } }
	row_bytes_23 { ap_memory {  { row_bytes_23_address0 mem_address 1 6 }  { row_bytes_23_ce0 mem_ce 1 1 }  { row_bytes_23_q0 mem_dout 0 8 }  { row_bytes_23_address1 MemPortADDR2 1 6 }  { row_bytes_23_ce1 MemPortCE2 1 1 }  { row_bytes_23_q1 MemPortDOUT2 0 8 } } }
	row_bytes_24 { ap_memory {  { row_bytes_24_address0 mem_address 1 6 }  { row_bytes_24_ce0 mem_ce 1 1 }  { row_bytes_24_q0 mem_dout 0 8 }  { row_bytes_24_address1 MemPortADDR2 1 6 }  { row_bytes_24_ce1 MemPortCE2 1 1 }  { row_bytes_24_q1 MemPortDOUT2 0 8 } } }
	row_bytes_25 { ap_memory {  { row_bytes_25_address0 mem_address 1 6 }  { row_bytes_25_ce0 mem_ce 1 1 }  { row_bytes_25_q0 mem_dout 0 8 }  { row_bytes_25_address1 MemPortADDR2 1 6 }  { row_bytes_25_ce1 MemPortCE2 1 1 }  { row_bytes_25_q1 MemPortDOUT2 0 8 } } }
	row_bytes_26 { ap_memory {  { row_bytes_26_address0 mem_address 1 6 }  { row_bytes_26_ce0 mem_ce 1 1 }  { row_bytes_26_q0 mem_dout 0 8 }  { row_bytes_26_address1 MemPortADDR2 1 6 }  { row_bytes_26_ce1 MemPortCE2 1 1 }  { row_bytes_26_q1 MemPortDOUT2 0 8 } } }
	row_bytes_27 { ap_memory {  { row_bytes_27_address0 mem_address 1 6 }  { row_bytes_27_ce0 mem_ce 1 1 }  { row_bytes_27_q0 mem_dout 0 8 }  { row_bytes_27_address1 MemPortADDR2 1 6 }  { row_bytes_27_ce1 MemPortCE2 1 1 }  { row_bytes_27_q1 MemPortDOUT2 0 8 } } }
	row_bytes_28 { ap_memory {  { row_bytes_28_address0 mem_address 1 6 }  { row_bytes_28_ce0 mem_ce 1 1 }  { row_bytes_28_q0 mem_dout 0 8 }  { row_bytes_28_address1 MemPortADDR2 1 6 }  { row_bytes_28_ce1 MemPortCE2 1 1 }  { row_bytes_28_q1 MemPortDOUT2 0 8 } } }
	row_bytes_29 { ap_memory {  { row_bytes_29_address0 mem_address 1 6 }  { row_bytes_29_ce0 mem_ce 1 1 }  { row_bytes_29_q0 mem_dout 0 8 }  { row_bytes_29_address1 MemPortADDR2 1 6 }  { row_bytes_29_ce1 MemPortCE2 1 1 }  { row_bytes_29_q1 MemPortDOUT2 0 8 } } }
	row_bytes_30 { ap_memory {  { row_bytes_30_address0 mem_address 1 6 }  { row_bytes_30_ce0 mem_ce 1 1 }  { row_bytes_30_q0 mem_dout 0 8 }  { row_bytes_30_address1 MemPortADDR2 1 6 }  { row_bytes_30_ce1 MemPortCE2 1 1 }  { row_bytes_30_q1 MemPortDOUT2 0 8 } } }
	row_bytes_31 { ap_memory {  { row_bytes_31_address0 mem_address 1 6 }  { row_bytes_31_ce0 mem_ce 1 1 }  { row_bytes_31_q0 mem_dout 0 8 }  { row_bytes_31_address1 MemPortADDR2 1 6 }  { row_bytes_31_ce1 MemPortCE2 1 1 }  { row_bytes_31_q1 MemPortDOUT2 0 8 } } }
	gray_out { ap_fifo {  { gray_out_din fifo_data_out 1 8 }  { gray_out_full_n fifo_status_empty 0 1 }  { gray_out_write fifo_data_in 1 1 }  { gray_out_num_data_valid fifo_update 0 32 }  { gray_out_fifo_cap fifo_data 0 32 } } }
}
