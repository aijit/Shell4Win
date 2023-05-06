@echo off
setlocal enabledelayedexpansion

set cwd=%~f1
set HERE=
if not "" == "%cwd%" (
    set CURRENT_DIR=%cwd:\=/%
    set HERE=-d !cwd!
)

start %LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe !HERE!