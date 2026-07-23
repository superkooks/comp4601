
set TopModule "canny_top"
set ClockPeriod 5
set ClockList ap_clk
set AxiliteClockList {}
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 1
set ResetVariableFlag 0
set ResetRegisterNum 3
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix canny_top_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set RtlWriterOptions {}
set CbcGenFlag 0
set CasGenFlag 0
set CasMonitorFlag 0
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xck26:-sfvc784:-2LV-c
set SourceFiles {sc {} c {../../../src/output_row.cpp ../../../src/gaussian_blur.cpp ../../../src/canny_top.cpp ../../../src/double_threshold.cpp ../../../src/grayscale.cpp ../../../src/hysteresis.cpp ../../../src/non_maximum_suppression.cpp ../../../src/sobel.cpp}}
set SourceFlags {sc {} c {{} {} {} {} {} {} {} {}}}
set DirectiveFile {}
set TBFiles {verilog {C:/Users/twhsaw/Projects/comp4601/testbench/test_top.cpp C:/Users/twhsaw/Projects/comp4601/testbench/gaussian_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/gaussian_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/nms_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/nms_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/sobel_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/sobel_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/canny_stages.h C:/Users/twhsaw/Projects/comp4601/testbench/canny_types.h C:/Users/twhsaw/Projects/comp4601/testbench/config.h C:/Users/twhsaw/Projects/comp4601/testbench/test_gaussian.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_grayscale.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_hysteresis.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_nms.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_pipeline.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_sobel.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_threshold.cpp} bc {C:/Users/twhsaw/Projects/comp4601/testbench/test_top.cpp C:/Users/twhsaw/Projects/comp4601/testbench/gaussian_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/gaussian_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/nms_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/nms_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/sobel_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/sobel_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/canny_stages.h C:/Users/twhsaw/Projects/comp4601/testbench/canny_types.h C:/Users/twhsaw/Projects/comp4601/testbench/config.h C:/Users/twhsaw/Projects/comp4601/testbench/test_gaussian.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_grayscale.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_hysteresis.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_nms.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_pipeline.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_sobel.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_threshold.cpp} sc {C:/Users/twhsaw/Projects/comp4601/testbench/test_top.cpp C:/Users/twhsaw/Projects/comp4601/testbench/gaussian_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/gaussian_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/nms_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/nms_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/sobel_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/sobel_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/canny_stages.h C:/Users/twhsaw/Projects/comp4601/testbench/canny_types.h C:/Users/twhsaw/Projects/comp4601/testbench/config.h C:/Users/twhsaw/Projects/comp4601/testbench/test_gaussian.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_grayscale.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_hysteresis.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_nms.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_pipeline.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_sobel.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_threshold.cpp} vhdl {C:/Users/twhsaw/Projects/comp4601/testbench/test_top.cpp C:/Users/twhsaw/Projects/comp4601/testbench/gaussian_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/gaussian_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/nms_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/nms_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/sobel_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/sobel_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/canny_stages.h C:/Users/twhsaw/Projects/comp4601/testbench/canny_types.h C:/Users/twhsaw/Projects/comp4601/testbench/config.h C:/Users/twhsaw/Projects/comp4601/testbench/test_gaussian.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_grayscale.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_hysteresis.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_nms.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_pipeline.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_sobel.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_threshold.cpp} c {} cas {C:/Users/twhsaw/Projects/comp4601/testbench/test_top.cpp C:/Users/twhsaw/Projects/comp4601/testbench/gaussian_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/gaussian_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/nms_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/nms_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/sobel_reference.cpp C:/Users/twhsaw/Projects/comp4601/testbench/sobel_reference.h C:/Users/twhsaw/Projects/comp4601/testbench/canny_stages.h C:/Users/twhsaw/Projects/comp4601/testbench/canny_types.h C:/Users/twhsaw/Projects/comp4601/testbench/config.h C:/Users/twhsaw/Projects/comp4601/testbench/test_gaussian.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_grayscale.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_hysteresis.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_nms.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_pipeline.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_sobel.cpp C:/Users/twhsaw/Projects/comp4601/testbench/test_threshold.cpp}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {../../../reference/gaussian_reference.cpp ../../../reference/gaussian_reference.h ../../../reference/nms_reference.cpp ../../../reference/nms_reference.h ../../../reference/sobel_reference.cpp ../../../reference/sobel_reference.h ../../../include/canny_stages.h ../../../include/canny_types.h ../../../include/config.h}
set AppFile {}
set ApsFile hls.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynquplus/zynquplus}}}
set HPFPO 0
