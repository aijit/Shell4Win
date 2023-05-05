:: use Administrator to run this script
@echo off
setlocal enabledelayedexpansion

:: Add alias.bat to windows registry table
set regTbl="HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor"
set regKey="AutoRun"
set regValue="%SHELL4WIN%alias.bat"
reg add %regTbl% /t REG_SZ /v %regKey% /d %regValue% /f && echo %regKey%=%regValue% added to %regTbl%

:: Add TerminalHere.bat to windows registry table
set regTbl=HKEY_CLASSES_ROOT\Directory\Background\shell\TerminalHere
reg add %regTbl% /t REG_SZ /ve /d "Terminal Here" /f
reg add %regTbl% /t REG_SZ /v "Icon" /d "%%SystemRoot%%\system32\shell32.dll,-284" /f
reg add %regTbl%\Command /t REG_SZ /ve /d "%SHELL4WIN%bin\TerminalHere.bat ." /f

echo on
pause