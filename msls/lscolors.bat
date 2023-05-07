:: `dircolors.exe -p > lscolors` to generate color scheme to file lscolors
:: modify lscolors to change colors of directories, files, etc.
:: then run this script, apply your scheme to the LS_COLORS environment variable
:: Usage: lscolors.bat <scheme_file>
@echo off
setlocal enabledelayedexpansion
set scheme=%1
for /f "delims=" %%a in ('dircolors.exe -d %scheme%') do (
    set /a ln+=1
    if !ln! == 5 %%a
)

set usrName=%USERDOMAIN%\\%USERNAME%
set envName=LS_COLORS
set envValue=!LS_COLORS!
wmic ENVIRONMENT create name="%envName%", username="%usrName%", VariableValue="!envValue!" > nul 2>&1 || (
    wmic ENVIRONMENT where "name='%envName%' and username='%usrName%'" set VariableValue="!envValue!"
)

echo set LS_COLORS=!LS_COLORS!

taskkill /im explorer.exe /f
start explorer.exe
