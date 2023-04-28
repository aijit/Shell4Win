## Shell4Win

This is a collection of some usefull GNU/Linux shell tools for Microsoft Windows.

### 配置说明

双击执行 [config.bat](config.bat) 可自动完成以下配置步骤：

* 在注册表 `HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor` 下，添加
  
  `AutoRun`=[dir/to/alias.bat](alias.bat)

* 添加用户环境变量 `SHELL4WIN`，值为 shell4win 目录的绝对路径

    `SHELL4WIN=dir/to/shell4win/`

* 将所有可执行文件路径，添加到用户 PATH 环境变量

    `%SHELL4WIN%/bin; %SHELL4WIN%/gawk; %SHELL4WIN%/grep; %SHELL4WIN%/msls; ...`

### ls

<https://u-tools.com/msls>

LS_OPTIONS=-bhC --color=auto

### cat

<https://github.com/TwiN/cat-for-windows>

### grep

<https://gnuwin32.sourceforge.net/packages/grep.htm>

GREP_OPTIONS=--color=always

### sed

<https://github.com/mbuilov/sed-windows>

### awk

<https://github.com/mbuilov/gawk-windows>

### touch

### file

### stat

### find

### echo

### print

### date

### xargs
