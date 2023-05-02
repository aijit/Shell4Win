:: add this script path to windows registry table, as AutoRun
::     HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor
::     AutoRun=dir/to/alias.bat
:: cmd.exe will auto run this script first, when open a new terminal
@doskey alias=doskey /macros
@doskey ls=ls --color=auto $*
@doskey ll=ls --color=auto -l $*
@doskey which=where $*
@doskey file=file -m %SHELL4WIN%file\share\misc\magic $*
@doskey find=%SHELL4WIN%findutils\find $*
@doskey date=%SHELL4WIN%coreutils\date $*
