:: use Administrator to run this script
@echo off
set cwd=%~dp0

:: 1. Add alias.bat to windows registry table
set regTbl="HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor"
set regKey="AutoRun"
set regValue="%cwd%alias.bat"
reg add %regTbl% /t REG_SZ /v %regKey% /d %regValue% /f

:: 2. Add user env variable %SHELL4WIN%
set envName=SHELL4WIN
for /F %%i in ('whoami') do ( set who=%%i)
set usrName=%who:\=\\%
echo.
echo set env variable for %usrName%
echo.
if "%SHELL4WIN%" == "" (
    wmic ENVIRONMENT create name="%envName%", username="%usrName%", VariableValue="%cwd%"
) else (
    wmic ENVIRONMENT where "name='%envName%' and username='%usrName%'" set VariableValue="%cwd%"
)
echo.
echo set SHELL4WIN=%SHELL4WIN%
echo.

:: 3. Add bin paths to user env %PATH%
set BINS=%%SHELL4WIN%%bin;%%SHELL4WIN%%gawk;%%SHELL4WIN%%grep;%%SHELL4WIN%%msls
for /f "tokens=2 delims==" %%a in ('wmic ENVIRONMENT where "UserName='%usrName%' and name='PATH'" get VariableValue /value') do set "usrPath=%%a"
if "%usrPath%" == "" (
    wmic ENVIRONMENT create name="PATH", username="%usrName%", VariableValue="%BINS%"
) else (
    wmic ENVIRONMENT where "name='PATH' and username='%usrName%'" set VariableValue="%usrPath%;%BINS%"
)
echo.
echo set PATH=%usrPath%;%BINS%
echo.

:: Restart explorer to make it work
::taskkill /im explorer.exe /f
::start explorer.exe
echo on
pause