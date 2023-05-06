@echo off
setlocal enabledelayedexpansion

set cwd=%~f1
if not "" == "%cwd%" (
    set HERE=-d "%cwd:\=/%"
)

start %LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe %HERE%