:: use Administrator to run this script
@echo off
setlocal enabledelayedexpansion
set cwd=%~dp0

:: 1. Add alias.bat to windows registry table
set regTbl="HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor"
set regKey="AutoRun"
set regValue="%cwd%alias.bat"
reg add %regTbl% /t REG_SZ /v %regKey% /d %regValue% /f

:: 2. Add user env variable %SHELL4WIN%
set usrName=%USERDOMAIN%\\%USERNAME%
echo.
echo set env variable for %usrName%
echo.
set envName=SHELL4WIN
wmic ENVIRONMENT create name="%envName%", username="%usrName%", VariableValue="%cwd%" > nul 2>&1 || (
    wmic ENVIRONMENT where "name='%envName%' and username='%usrName%'" set VariableValue="%cwd%"
    echo %envName% already set.
)
echo.
echo set SHELL4WIN=%cwd%
echo.

:: 3. Add bin paths to user env %PATH%
for /f "tokens=2 delims==" %%a in (
    'wmic ENVIRONMENT where "UserName='%usrName%' and name='PATH'" get VariableValue /value'
) do set usrPath=%%a
set usrPath=%usrPath%
if "!usrPath!" == "" (
    wmic ENVIRONMENT create name="PATH", username="%usrName%", VariableValue=""
)
echo PATH(before)=!usrPath!
echo.
set parent=%cwd:~-10%
for /d %%f in (*) do (
    echo %%f | findstr /b "\." > nul || (
        echo !usrPath! | findstr "!parent!%%f" > nul || (
            set usrPath=!usrPath!%%SHELL4WIN%%%%f;
            echo PATH append %%SHELL4WIN%%%%f;
        )
    )
)
wmic ENVIRONMENT where "name='PATH' and username='%usrName%'" set VariableValue="!usrPath!"
echo.
echo PATH(after)=!usrPath!
echo.

:: 4. Add user env variable
wmic ENVIRONMENT create name="GREP_OPTIONS", username="%usrName%", VariableValue="--color=always" > nul 2>&1 || echo GREP_OPTIONS already set.

:: Restart explorer to make it work
taskkill /im explorer.exe /f
start explorer.exe
echo on
pause