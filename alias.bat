:: 用 doskey 命令给 cmd 中的命令定义别名(alias)
:: 将本文件绝对路径添加到注册表
::     HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor
::     AutoRun=dir/to/alias.bat
@doskey alias=doskey /macros
@doskey ls=ls --color=auto $*
@doskey ll=ls -l --color=auto $*
@doskey grep=grep --color=always $*
@doskey awk=gawk $*
@doskey which=where $*