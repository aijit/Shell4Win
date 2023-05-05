@echo off

SET SHELLDIR=%SHELL4WIN%win-bash
SET SHELL=%SHELLDIR%/bash.exe
SET BASH=%SHELL%

"%BASH%" ^
    -rcfile %SHELLDIR%/bashrc.sh ^
    %*
