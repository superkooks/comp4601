
set TopModule "canny_top"
set ClockPeriod 5
set ClockList ap_clk
set AxiliteClockList {}
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 1
set FloatingPointFlag 0
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
set SourceFiles {sc {} c {../../../src/canny_top.cpp ../../../src/write_frame.cpp ../../../src/hysteresis.cpp ../../../src/double_threshold.cpp ../../../src/non_maximum_suppression.cpp ../../../src/sobel.cpp ../../../src/gaussian_blur.cpp ../../../src/grayscale.cpp}}
set SourceFlags {sc {} c {-I/home/superkooks/Uni/COMP4601/assign/src -I/home/superkooks/Uni/COMP4601/assign/src -I/home/superkooks/Uni/COMP4601/assign/src -I/home/superkooks/Uni/COMP4601/assign/src -I/home/superkooks/Uni/COMP4601/assign/src -I/home/superkooks/Uni/COMP4601/assign/src -I/home/superkooks/Uni/COMP4601/assign/src -I/home/superkooks/Uni/COMP4601/assign/src}}
set DirectiveFile {}
set TBFiles {verilog {/home/superkooks/Uni/COMP4601/assign/testbench/pipeline_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/pipeline_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/hysteresis_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/hysteresis_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/threshold_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/threshold_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/nms_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/nms_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/sobel_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/sobel_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/gaussian_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/gaussian_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_pipeline.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_hysteresis.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_threshold.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_nms.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_sobel.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_gaussian.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_grayscale.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_top.cpp} bc {/home/superkooks/Uni/COMP4601/assign/testbench/pipeline_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/pipeline_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/hysteresis_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/hysteresis_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/threshold_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/threshold_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/nms_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/nms_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/sobel_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/sobel_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/gaussian_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/gaussian_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_pipeline.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_hysteresis.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_threshold.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_nms.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_sobel.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_gaussian.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_grayscale.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_top.cpp} sc {/home/superkooks/Uni/COMP4601/assign/testbench/pipeline_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/pipeline_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/hysteresis_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/hysteresis_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/threshold_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/threshold_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/nms_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/nms_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/sobel_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/sobel_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/gaussian_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/gaussian_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_pipeline.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_hysteresis.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_threshold.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_nms.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_sobel.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_gaussian.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_grayscale.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_top.cpp} vhdl {/home/superkooks/Uni/COMP4601/assign/testbench/pipeline_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/pipeline_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/hysteresis_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/hysteresis_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/threshold_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/threshold_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/nms_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/nms_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/sobel_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/sobel_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/gaussian_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/gaussian_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_pipeline.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_hysteresis.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_threshold.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_nms.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_sobel.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_gaussian.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_grayscale.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_top.cpp} c {} cas {/home/superkooks/Uni/COMP4601/assign/testbench/pipeline_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/pipeline_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/hysteresis_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/hysteresis_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/threshold_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/threshold_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/nms_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/nms_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/sobel_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/sobel_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/gaussian_reference.h /home/superkooks/Uni/COMP4601/assign/testbench/gaussian_reference.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_pipeline.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_hysteresis.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_threshold.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_nms.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_sobel.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_gaussian.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_grayscale.cpp /home/superkooks/Uni/COMP4601/assign/testbench/test_top.cpp}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile {}
set ApsFile hls.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynquplus/zynquplus}}}
set HPFPO 0
