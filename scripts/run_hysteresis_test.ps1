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
    "src\hysteresis.cpp",
    "testbench\hysteresis_reference.cpp",
    "testbench\test_hysteresis.cpp",
    "-o",
    "build\test_hysteresis.exe"
)

& $compiler.Source @compilerArguments

if ($LASTEXITCODE -ne 0) {
    throw "Hysteresis compilation failed."
}

Write-Host "Compilation completed successfully."

& ".\build\test_hysteresis.exe"

if ($LASTEXITCODE -ne 0) {
    throw "The hysteresis test failed."
}

