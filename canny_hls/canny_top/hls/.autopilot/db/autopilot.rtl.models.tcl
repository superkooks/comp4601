set SynModuleInfo {
  {SRCNAME canny_top_Pipeline_VITIS_LOOP_47_1_VITIS_LOOP_48_2 MODELNAME canny_top_Pipeline_VITIS_LOOP_47_1_VITIS_LOOP_48_2 RTLNAME canny_top_canny_top_Pipeline_VITIS_LOOP_47_1_VITIS_LOOP_48_2
    SUBMODULES {
      {MODELNAME canny_top_flow_control_loop_pipe_sequential_init RTLNAME canny_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME canny_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME canny_top_Pipeline_VITIS_LOOP_79_1_VITIS_LOOP_80_2 MODELNAME canny_top_Pipeline_VITIS_LOOP_79_1_VITIS_LOOP_80_2 RTLNAME canny_top_canny_top_Pipeline_VITIS_LOOP_79_1_VITIS_LOOP_80_2}
  {SRCNAME canny_top_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2 MODELNAME canny_top_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2 RTLNAME canny_top_canny_top_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2}
  {SRCNAME canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_2 MODELNAME canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_2 RTLNAME canny_top_canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_2}
  {SRCNAME canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_21 MODELNAME canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_21 RTLNAME canny_top_canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_21}
  {SRCNAME canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_22 MODELNAME canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_22 RTLNAME canny_top_canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_22}
  {SRCNAME canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_23 MODELNAME canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_23 RTLNAME canny_top_canny_top_Pipeline_VITIS_LOOP_59_1_VITIS_LOOP_60_23}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_12_1.1_Block_newFuncRoot_proc MODELNAME dataflow_in_loop_VITIS_LOOP_12_1_1_Block_newFuncRoot_proc RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_Block_newFuncRoot_proc}
  {SRCNAME grayscale_Pipeline_1 MODELNAME grayscale_Pipeline_1 RTLNAME canny_top_grayscale_Pipeline_1}
  {SRCNAME grayscale_Pipeline_VITIS_LOOP_22_1 MODELNAME grayscale_Pipeline_VITIS_LOOP_22_1 RTLNAME canny_top_grayscale_Pipeline_VITIS_LOOP_22_1
    SUBMODULES {
      {MODELNAME canny_top_mul_8ns_8ns_15_1_1 RTLNAME canny_top_mul_8ns_8ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_mac_muladd_8ns_5ns_15s_15_4_1 RTLNAME canny_top_mac_muladd_8ns_5ns_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME canny_top_mac_muladd_8ns_8ns_15ns_16_4_1 RTLNAME canny_top_mac_muladd_8ns_8ns_15ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME grayscale MODELNAME grayscale RTLNAME canny_top_grayscale
    SUBMODULES {
      {MODELNAME canny_top_grayscale_local_blue_RAM_AUTO_1R1W RTLNAME canny_top_grayscale_local_blue_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME gaussian_blur_Pipeline_VITIS_LOOP_76_2 MODELNAME gaussian_blur_Pipeline_VITIS_LOOP_76_2 RTLNAME canny_top_gaussian_blur_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME gaussian_blur_Pipeline_VITIS_LOOP_125_6 MODELNAME gaussian_blur_Pipeline_VITIS_LOOP_125_6 RTLNAME canny_top_gaussian_blur_Pipeline_VITIS_LOOP_125_6
    SUBMODULES {
      {MODELNAME canny_top_sparsemux_11_3_12_1_1 RTLNAME canny_top_sparsemux_11_3_12_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME gaussian_blur MODELNAME gaussian_blur RTLNAME canny_top_gaussian_blur
    SUBMODULES {
      {MODELNAME canny_top_srem_32ns_4ns_4_36_seq_1 RTLNAME canny_top_srem_32ns_4ns_4_36_seq_1 BINDTYPE op TYPE srem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_srem_32ns_4ns_32_36_seq_1 RTLNAME canny_top_srem_32ns_4ns_32_36_seq_1 BINDTYPE op TYPE srem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sobel_Pipeline_VITIS_LOOP_102_1 MODELNAME sobel_Pipeline_VITIS_LOOP_102_1 RTLNAME canny_top_sobel_Pipeline_VITIS_LOOP_102_1}
  {SRCNAME sobel_Pipeline_VITIS_LOOP_155_5 MODELNAME sobel_Pipeline_VITIS_LOOP_155_5 RTLNAME canny_top_sobel_Pipeline_VITIS_LOOP_155_5
    SUBMODULES {
      {MODELNAME canny_top_sparsemux_7_2_8_1_1 RTLNAME canny_top_sparsemux_7_2_8_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME canny_top_mul_10ns_11ns_20_1_1 RTLNAME canny_top_mul_10ns_11ns_20_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_mul_10ns_10ns_19_1_1 RTLNAME canny_top_mul_10ns_10ns_19_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_mul_10ns_13ns_22_1_1 RTLNAME canny_top_mul_10ns_13ns_22_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_sparsemux_9_3_2_1_1 RTLNAME canny_top_sparsemux_9_3_2_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME sobel MODELNAME sobel RTLNAME canny_top_sobel
    SUBMODULES {
      {MODELNAME canny_top_srem_32ns_3ns_3_36_seq_1 RTLNAME canny_top_srem_32ns_3ns_3_36_seq_1 BINDTYPE op TYPE srem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_srem_32ns_3ns_2_36_seq_1 RTLNAME canny_top_srem_32ns_3ns_2_36_seq_1 BINDTYPE op TYPE srem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_urem_32ns_3ns_2_36_seq_1 RTLNAME canny_top_urem_32ns_3ns_2_36_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME non_maximum_suppression_Pipeline_VITIS_LOOP_57_1 MODELNAME non_maximum_suppression_Pipeline_VITIS_LOOP_57_1 RTLNAME canny_top_non_maximum_suppression_Pipeline_VITIS_LOOP_57_1}
  {SRCNAME non_maximum_suppression_Pipeline_VITIS_LOOP_112_4 MODELNAME non_maximum_suppression_Pipeline_VITIS_LOOP_112_4 RTLNAME canny_top_non_maximum_suppression_Pipeline_VITIS_LOOP_112_4
    SUBMODULES {
      {MODELNAME canny_top_sparsemux_7_2_11_1_1 RTLNAME canny_top_sparsemux_7_2_11_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME canny_top_sparsemux_7_2_2_1_1 RTLNAME canny_top_sparsemux_7_2_2_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME non_maximum_suppression MODELNAME non_maximum_suppression RTLNAME canny_top_non_maximum_suppression
    SUBMODULES {
      {MODELNAME canny_top_srem_32ns_3ns_32_36_seq_1 RTLNAME canny_top_srem_32ns_3ns_32_36_seq_1 BINDTYPE op TYPE srem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME double_threshold_Pipeline_VITIS_LOOP_16_1 MODELNAME double_threshold_Pipeline_VITIS_LOOP_16_1 RTLNAME canny_top_double_threshold_Pipeline_VITIS_LOOP_16_1}
  {SRCNAME double_threshold MODELNAME double_threshold RTLNAME canny_top_double_threshold}
  {SRCNAME hysteresis<1>_Pipeline_VITIS_LOOP_89_1 MODELNAME hysteresis_1_Pipeline_VITIS_LOOP_89_1 RTLNAME canny_top_hysteresis_1_Pipeline_VITIS_LOOP_89_1}
  {SRCNAME hysteresis<1>_Pipeline_VITIS_LOOP_154_4 MODELNAME hysteresis_1_Pipeline_VITIS_LOOP_154_4 RTLNAME canny_top_hysteresis_1_Pipeline_VITIS_LOOP_154_4
    SUBMODULES {
      {MODELNAME canny_top_sparsemux_7_2_8_1_1_x RTLNAME canny_top_sparsemux_7_2_8_1_1_x BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME hysteresis<1> MODELNAME hysteresis_1_s RTLNAME canny_top_hysteresis_1_s}
  {SRCNAME hysteresis<2>_Pipeline_VITIS_LOOP_89_1 MODELNAME hysteresis_2_Pipeline_VITIS_LOOP_89_1 RTLNAME canny_top_hysteresis_2_Pipeline_VITIS_LOOP_89_1}
  {SRCNAME hysteresis<2>_Pipeline_VITIS_LOOP_154_4 MODELNAME hysteresis_2_Pipeline_VITIS_LOOP_154_4 RTLNAME canny_top_hysteresis_2_Pipeline_VITIS_LOOP_154_4}
  {SRCNAME hysteresis<2> MODELNAME hysteresis_2_s RTLNAME canny_top_hysteresis_2_s}
  {SRCNAME hysteresis<3>_Pipeline_VITIS_LOOP_89_1 MODELNAME hysteresis_3_Pipeline_VITIS_LOOP_89_1 RTLNAME canny_top_hysteresis_3_Pipeline_VITIS_LOOP_89_1}
  {SRCNAME hysteresis<3>_Pipeline_VITIS_LOOP_154_4 MODELNAME hysteresis_3_Pipeline_VITIS_LOOP_154_4 RTLNAME canny_top_hysteresis_3_Pipeline_VITIS_LOOP_154_4}
  {SRCNAME hysteresis<3> MODELNAME hysteresis_3_s RTLNAME canny_top_hysteresis_3_s}
  {SRCNAME hysteresis<4>_Pipeline_VITIS_LOOP_89_1 MODELNAME hysteresis_4_Pipeline_VITIS_LOOP_89_1 RTLNAME canny_top_hysteresis_4_Pipeline_VITIS_LOOP_89_1}
  {SRCNAME hysteresis<4>_Pipeline_VITIS_LOOP_154_4 MODELNAME hysteresis_4_Pipeline_VITIS_LOOP_154_4 RTLNAME canny_top_hysteresis_4_Pipeline_VITIS_LOOP_154_4}
  {SRCNAME hysteresis<4> MODELNAME hysteresis_4_s RTLNAME canny_top_hysteresis_4_s}
  {SRCNAME output_row_Pipeline_VITIS_LOOP_20_1 MODELNAME output_row_Pipeline_VITIS_LOOP_20_1 RTLNAME canny_top_output_row_Pipeline_VITIS_LOOP_20_1}
  {SRCNAME output_row MODELNAME output_row RTLNAME canny_top_output_row}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_12_1.1 MODELNAME dataflow_in_loop_VITIS_LOOP_12_1_1 RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1
    SUBMODULES {
      {MODELNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_hysteresis4_RAM_AUTO_1R1W_memcore RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_hysteresis4_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_hysteresis4_RAM_AUTO_1R1W RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_hysteresis4_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_hysteresis3_RAM_AUTO_1R1W_memcore RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_hysteresis3_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_hysteresis3_RAM_AUTO_1R1W RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_hysteresis3_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_nonmax_RAM_AUTO_1R1W_memcore RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_nonmax_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_nonmax_RAM_AUTO_1R1W RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_nonmax_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_grayscale_RAM_AUTO_1R1W_memcore RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_grayscale_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_grayscale_RAM_AUTO_1R1W RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_grayscale_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_fifo_w18_d2_S RTLNAME canny_top_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cond_loc_channel_U}
      {MODELNAME canny_top_fifo_w1_d2_S RTLNAME canny_top_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME gaussian_valid_U}
      {MODELNAME canny_top_fifo_w1_d2_S RTLNAME canny_top_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME sobel_valid_U}
      {MODELNAME canny_top_fifo_w1_d2_S RTLNAME canny_top_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME nonmax_valid_U}
      {MODELNAME canny_top_fifo_w1_d2_S RTLNAME canny_top_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME double_valid_U}
      {MODELNAME canny_top_fifo_w1_d2_S RTLNAME canny_top_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME hysteresis1_valid_U}
      {MODELNAME canny_top_fifo_w1_d2_S RTLNAME canny_top_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME hysteresis2_valid_U}
      {MODELNAME canny_top_fifo_w1_d2_S RTLNAME canny_top_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME hysteresis3_valid_U}
      {MODELNAME canny_top_fifo_w1_d2_S RTLNAME canny_top_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME hysteresis4_valid_U}
    }
  }
  {SRCNAME dataflow_parent_loop_proc MODELNAME dataflow_parent_loop_proc RTLNAME canny_top_dataflow_parent_loop_proc}
  {SRCNAME canny_top MODELNAME canny_top RTLNAME canny_top IS_TOP 1
    SUBMODULES {
      {MODELNAME canny_top_p_anonymous_namespace_lineBuffer_39_0_RAM_AUTO_1R1W RTLNAME canny_top_p_anonymous_namespace_lineBuffer_39_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_p_anonymous_namespace_lineBuffer_32_0_RAM_AUTO_1R1W RTLNAME canny_top_p_anonymous_namespace_lineBuffer_32_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_p_anonymous_namespace_lineBuffer_magnitude_0_RAM_AUTO_1R1W RTLNAME canny_top_p_anonymous_namespace_lineBuffer_magnitude_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_p_anonymous_namespace_lineBuffer_direction_0_RAM_AUTO_1R1W RTLNAME canny_top_p_anonymous_namespace_lineBuffer_direction_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_gmem_m_axi RTLNAME canny_top_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME canny_top_control_s_axi RTLNAME canny_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
