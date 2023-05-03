:: use Administrator to run this script
@echo off
setlocal enabledelayedexpansion

:: Add alias.bat to windows registry table
set regTbl="HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor"
set regKey="AutoRun"
set regValue="%SHELL4WIN%alias.bat"
reg add %regTbl% /t REG_SZ /v %regKey% /d %regValue% /f && echo %regKey%=%regValue% added to %regTbl%


echo on
pause