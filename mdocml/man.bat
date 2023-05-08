@echo off
setlocal enabledelayedexpansion
for /f %%m in ('%SHELL4WIN%findutils\find %SHELL4WIN:\=/% -type f -regex ".*/man.*\b%1.*"') do (
    set /a ln+=1
    if !ln! == 1 set manfiles=%%m
)
if "" == "%manfiles%" goto endofman
mandoc %manfiles% | less
set manfiles=
:endofman