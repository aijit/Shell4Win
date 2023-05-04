:: add this script path to windows registry table, as AutoRun
::     HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor
::     AutoRun=dir/to/alias.bat
:: cmd.exe will auto run this script first, when open a new terminal
@doskey alias=doskey /macros
@doskey find=%SHELL4WIN%findutils\find $*
@doskey date=%SHELL4WIN%coreutils\date $*
