& "$PSScriptRoot\run_single_stage_test.ps1" `
    -TestName "Optimized repeated-frame pipeline" `
    -TestFunction "test_optimized_pipeline" `
    -Sources @(
        "src\grayscale.cpp",
        "src\gaussian_blur.cpp",
        "src\sobel.cpp",
        "src\non_maximum_suppression.cpp",
        "src\double_threshold.cpp",
        "src\hysteresis.cpp",
        "src\output_row.cpp",
        "src\canny_top.cpp",
        "testbench\gaussian_reference.cpp",
        "testbench\sobel_reference.cpp",
        "testbench\nms_reference.cpp",
        "testbench\threshold_reference.cpp",
        "testbench\hysteresis_reference.cpp",
        "testbench\pipeline_reference.cpp",
        "testbench\test_optimized_pipeline.cpp"
    )
