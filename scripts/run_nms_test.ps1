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
    "-Iinclude",
    "-Ireference",
    "src\non_maximum_suppression.cpp",
    "reference\nms_reference.cpp",
    "testbench\test_nms.cpp",
    "-o",
    "build\test_nms.exe"
)

& $compiler.Source @compilerArguments

if ($LASTEXITCODE -ne 0) {
    throw "NMS compilation failed."
}

Write-Host "Compilation completed successfully."

& ".\build\test_nms.exe"

if ($LASTEXITCODE -ne 0) {
    throw "The NMS test failed."
}
