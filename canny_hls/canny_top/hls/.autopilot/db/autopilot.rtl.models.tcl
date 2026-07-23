set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME canny_top_entry_proc}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_7_1.1_Block_newFuncRoot_proc MODELNAME dataflow_in_loop_VITIS_LOOP_7_1_1_Block_newFuncRoot_proc RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_7_1_1_Block_newFuncRoot_proc}
  {SRCNAME grayscale_Pipeline_VITIS_LOOP_7_1 MODELNAME grayscale_Pipeline_VITIS_LOOP_7_1 RTLNAME canny_top_grayscale_Pipeline_VITIS_LOOP_7_1
    SUBMODULES {
      {MODELNAME canny_top_mul_8ns_8ns_15_1_1 RTLNAME canny_top_mul_8ns_8ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_mac_muladd_8ns_5ns_15s_15_4_1 RTLNAME canny_top_mac_muladd_8ns_5ns_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME canny_top_mac_muladd_8ns_8ns_15ns_16_4_1 RTLNAME canny_top_mac_muladd_8ns_8ns_15ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME canny_top_flow_control_loop_pipe_sequential_init RTLNAME canny_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME canny_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME grayscale MODELNAME grayscale RTLNAME canny_top_grayscale}
  {SRCNAME gaussian_blur_Pipeline_VITIS_LOOP_46_1 MODELNAME gaussian_blur_Pipeline_VITIS_LOOP_46_1 RTLNAME canny_top_gaussian_blur_Pipeline_VITIS_LOOP_46_1}
  {SRCNAME gaussian_blur_Pipeline_VITIS_LOOP_64_2 MODELNAME gaussian_blur_Pipeline_VITIS_LOOP_64_2 RTLNAME canny_top_gaussian_blur_Pipeline_VITIS_LOOP_64_2}
  {SRCNAME gaussian_blur MODELNAME gaussian_blur RTLNAME canny_top_gaussian_blur
    SUBMODULES {
      {MODELNAME canny_top_srem_32ns_4ns_32_36_seq_1 RTLNAME canny_top_srem_32ns_4ns_32_36_seq_1 BINDTYPE op TYPE srem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_urem_32ns_4ns_3_36_seq_1 RTLNAME canny_top_urem_32ns_4ns_3_36_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_gaussian_blur_p_ZN12_GLOBAL_N_110lineBufferE_0_RAM_AUTO_1R1W RTLNAME canny_top_gaussian_blur_p_ZN12_GLOBAL_N_110lineBufferE_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sobel_Pipeline_VITIS_LOOP_89_1 MODELNAME sobel_Pipeline_VITIS_LOOP_89_1 RTLNAME canny_top_sobel_Pipeline_VITIS_LOOP_89_1}
  {SRCNAME sobel_Pipeline_VITIS_LOOP_118_2 MODELNAME sobel_Pipeline_VITIS_LOOP_118_2 RTLNAME canny_top_sobel_Pipeline_VITIS_LOOP_118_2
    SUBMODULES {
      {MODELNAME canny_top_sitodp_32s_64_6_no_dsp_1 RTLNAME canny_top_sitodp_32s_64_6_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_dsqrt_64ns_64ns_64_57_no_dsp_1 RTLNAME canny_top_dsqrt_64ns_64ns_64_57_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 56 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_mul_10ns_11ns_20_1_1 RTLNAME canny_top_mul_10ns_11ns_20_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_mul_11s_11s_22_1_1 RTLNAME canny_top_mul_11s_11s_22_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_mul_10ns_10ns_19_1_1 RTLNAME canny_top_mul_10ns_10ns_19_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_mul_10ns_13ns_22_1_1 RTLNAME canny_top_mul_10ns_13ns_22_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_sparsemux_9_3_2_1_1 RTLNAME canny_top_sparsemux_9_3_2_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME canny_top_mac_muladd_11s_11s_22s_22_4_1 RTLNAME canny_top_mac_muladd_11s_11s_22s_22_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME sobel MODELNAME sobel RTLNAME canny_top_sobel
    SUBMODULES {
      {MODELNAME canny_top_srem_32ns_3ns_2_36_seq_1 RTLNAME canny_top_srem_32ns_3ns_2_36_seq_1 BINDTYPE op TYPE srem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_urem_31ns_3ns_2_35_seq_1 RTLNAME canny_top_urem_31ns_3ns_2_35_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 34 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_sobel_p_anonymous_namespace_lineBuffer_16_0_RAM_AUTO_1R1W RTLNAME canny_top_sobel_p_anonymous_namespace_lineBuffer_16_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME non_maximum_suppression_Pipeline_VITIS_LOOP_45_1 MODELNAME non_maximum_suppression_Pipeline_VITIS_LOOP_45_1 RTLNAME canny_top_non_maximum_suppression_Pipeline_VITIS_LOOP_45_1}
  {SRCNAME non_maximum_suppression_Pipeline_VITIS_LOOP_81_2 MODELNAME non_maximum_suppression_Pipeline_VITIS_LOOP_81_2 RTLNAME canny_top_non_maximum_suppression_Pipeline_VITIS_LOOP_81_2}
  {SRCNAME non_maximum_suppression MODELNAME non_maximum_suppression RTLNAME canny_top_non_maximum_suppression
    SUBMODULES {
      {MODELNAME canny_top_non_maximum_suppression_p_anonymous_namespace_lineBuffer_direction_RAM_AUTO_1bkb RTLNAME canny_top_non_maximum_suppression_p_anonymous_namespace_lineBuffer_direction_RAM_AUTO_1bkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_non_maximum_suppression_p_anonymous_namespace_lineBuffer_11_magnitude_0_RAM_Acud RTLNAME canny_top_non_maximum_suppression_p_anonymous_namespace_lineBuffer_11_magnitude_0_RAM_Acud BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME double_threshold_Pipeline_VITIS_LOOP_16_1 MODELNAME double_threshold_Pipeline_VITIS_LOOP_16_1 RTLNAME canny_top_double_threshold_Pipeline_VITIS_LOOP_16_1}
  {SRCNAME double_threshold MODELNAME double_threshold RTLNAME canny_top_double_threshold}
  {SRCNAME hysteresis_Pipeline_VITIS_LOOP_60_1 MODELNAME hysteresis_Pipeline_VITIS_LOOP_60_1 RTLNAME canny_top_hysteresis_Pipeline_VITIS_LOOP_60_1}
  {SRCNAME hysteresis_Pipeline_VITIS_LOOP_108_2 MODELNAME hysteresis_Pipeline_VITIS_LOOP_108_2 RTLNAME canny_top_hysteresis_Pipeline_VITIS_LOOP_108_2}
  {SRCNAME hysteresis MODELNAME hysteresis RTLNAME canny_top_hysteresis
    SUBMODULES {
      {MODELNAME canny_top_hysteresis_p_anonymous_namespace_lineBuffer_6_0_RAM_AUTO_1R1W RTLNAME canny_top_hysteresis_p_anonymous_namespace_lineBuffer_6_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME output_row_Pipeline_VITIS_LOOP_20_1 MODELNAME output_row_Pipeline_VITIS_LOOP_20_1 RTLNAME canny_top_output_row_Pipeline_VITIS_LOOP_20_1}
  {SRCNAME output_row MODELNAME output_row RTLNAME canny_top_output_row}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_7_1.1 MODELNAME dataflow_in_loop_VITIS_LOOP_7_1_1 RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_7_1_1
    SUBMODULES {
      {MODELNAME canny_top_dataflow_in_loop_VITIS_LOOP_7_1_1_out_hysteresis_RAM_AUTO_1R1W_memcore RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_7_1_1_out_hysteresis_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_dataflow_in_loop_VITIS_LOOP_7_1_1_out_hysteresis_RAM_AUTO_1R1W RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_7_1_1_out_hysteresis_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_dataflow_in_loop_VITIS_LOOP_7_1_1_out_double_RAM_AUTO_1R1W_memcore RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_7_1_1_out_double_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_dataflow_in_loop_VITIS_LOOP_7_1_1_out_double_RAM_AUTO_1R1W RTLNAME canny_top_dataflow_in_loop_VITIS_LOOP_7_1_1_out_double_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_fifo_w64_d9_S RTLNAME canny_top_fifo_w64_d9_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_c_U}
      {MODELNAME canny_top_fifo_w18_d2_S RTLNAME canny_top_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cond_loc_channel_U}
      {MODELNAME canny_top_fifo_w1_d2_S RTLNAME canny_top_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME gaussian_valid_U}
      {MODELNAME canny_top_fifo_w1_d2_S RTLNAME canny_top_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME sobel_valid_U}
      {MODELNAME canny_top_fifo_w1_d2_S RTLNAME canny_top_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME nonmax_valid_U}
      {MODELNAME canny_top_fifo_w1_d2_S RTLNAME canny_top_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME double_valid_U}
      {MODELNAME canny_top_fifo_w1_d2_S RTLNAME canny_top_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME hysteresis_valid_U}
    }
  }
  {SRCNAME canny_top MODELNAME canny_top RTLNAME canny_top IS_TOP 1
    SUBMODULES {
      {MODELNAME canny_top_gmem_in_m_axi RTLNAME canny_top_gmem_in_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME canny_top_gmem_out_m_axi RTLNAME canny_top_gmem_out_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME canny_top_control_s_axi RTLNAME canny_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
