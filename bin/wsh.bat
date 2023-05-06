@echo off
setlocal enabledelayedexpansion

SET SHELLDIR=%SHELL4WIN:\=/%win-bash
SET SHELL=%SHELLDIR%/bash.exe
SET BASH_ENV=%SHELLDIR%/bashrc.sh
SET BASH=%SHELL%

:: PATH = usrPATH + sysPATH
for /f "tokens=2 delims==" %%a in (
    'wmic ENVIRONMENT where "UserName='%USERDOMAIN%\\%USERNAME%' and name='PATH'" get VariableValue /value'
) do set usrPath=%%a
for /f "delims=" %%a in ('echo "%usrPath%"') do set usrPath=%%a

for /f "tokens=2 delims==" %%a in (
    'wmic ENVIRONMENT where "UserName='<system>' and name='PATH'" get VariableValue /value'
) do set sysPath=%%a
for /f "delims=" %%a in ('echo "%sysPath%"') do set sysPath=%%a

SET PATH=!usrPath! !sysPath!
SET PATH=!PATH:~1,-1!

set cwd=%cd%
if not "%USERPROFILE%" == "%cwd%" (
    set CURRENT_DIR=%cwd:\=/%
)

"%BASH%" ^
    -rcfile %SHELLDIR%/bashrc.sh ^
    %*
