$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $PSScriptRoot
Set-Location $projectRoot

New-Item `
    -ItemType Directory `
    -Path ".\build" `
    -Force | Out-Null

$compiler = Get-Command "g++" -ErrorAction SilentlyContinue

if (-not $compiler) {
    throw "No C++ compiler was found."
}

Write-Host "Using compiler: $($compiler.Source)"

$compilerArguments = @(
    "-std=c++17",
    "-Wall",
    "-Wextra",
    "-Isrc",
    "-Itestbench",
    "src\double_threshold.cpp",
    "testbench\threshold_reference.cpp",
    "testbench\test_threshold.cpp",
    "-o",
    "build\test_threshold.exe"
)

& $compiler.Source @compilerArguments

if ($LASTEXITCODE -ne 0) {
    throw "Threshold compilation failed."
}

Write-Host "Compilation completed successfully."

& ".\build\test_threshold.exe"

if ($LASTEXITCODE -ne 0) {
    throw "The double threshold test failed."
}

