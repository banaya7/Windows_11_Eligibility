@echo off
setlocal

:: Set path to the PowerShell script (same folder as this .bat file)
set "scriptPath=%~dp0Eligibility_Check.ps1"
set "log=%TEMP%\Eligibility_Error.log"

:: Check if the script file exists
if not exist "%scriptPath%" (
    echo ERROR: PowerShell script "%scriptPath%" not found. > "%log%"
    notepad "%log%"
    exit /b 1
)

:: Run the script using PowerShell (bypass execution policy for safety)
PowerShell -NoProfile -ExecutionPolicy Bypass -File "%scriptPath%"

pause
