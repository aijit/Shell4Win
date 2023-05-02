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
@doskey  man=%SHELL4WIN%findutils\find %SHELL4WIN:\=/% -type f -regex ".*/man.*\b$1.*" -exec mandoc {} ; $2 $3 $4 $5 $6 $7 $8 $9
@doskey date=%SHELL4WIN%coreutils\date $*
