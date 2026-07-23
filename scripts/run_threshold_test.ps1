& "$PSScriptRoot\run_single_stage_test.ps1" `
    -TestName "Double threshold" `
    -TestFunction "test_threshold" `
    -Sources @(
        "src\double_threshold.cpp",
        "testbench\threshold_reference.cpp",
        "testbench\test_threshold.cpp"
    )
