& "$PSScriptRoot\run_single_stage_test.ps1" `
    -TestName "Hysteresis" `
    -TestFunction "test_hysteresis" `
    -Sources @(
        "src\hysteresis.cpp",
        "testbench\hysteresis_reference.cpp",
        "testbench\test_hysteresis.cpp"
    )
