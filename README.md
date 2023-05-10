## [Shell4Win](https://github.com/wordworld/Shell4Win)

A collection of some usefull GNU/Linux shell tools for Microsoft Windows.
Besieds a windows porting version of gnu/bash,
[WSH](https://github.com/wordworld/Shell4Win#WSH).


### 配置说明

为使 dos 窗口支持中文，需要在控制面板中设置 【时钟和区域】-【管理】-【更改系统区域设置】- 勾选【Beta: 使用 Unicode UTF-8 提供全球语言支持】。

双击运行 bat 脚本，以完成相应配置步骤(重复双击运行不影响最终效果)：

**[config.bat](config.bat)**

* 添加用户环境变量 `SHELL4WIN`，值为 shell4win 目录的绝对路径

    `SHELL4WIN=dir/to/shell4win/`

* 将所有可执行文件路径，添加到用户 PATH 环境变量

    `%SHELL4WIN%/bin; %SHELL4WIN%/awk; %SHELL4WIN%/grep; %SHELL4WIN%/coreutils; ...`

* 添加工具推荐环境变量

    `LS_OPTIONS=-bhC --color=auto`

    `GREP_OPTIONS=--color=always`

**[config.reg.bat](config.reg.bat)**

* 在注册表 `HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor` 下，添加

  `AutoRun`=[%SHELL4WIN%alias.bat](alias.bat)

* 添加右键快捷菜单 [Terminal Here](bin/TerminalHere.bat)

**[lscolors.bat](msls/lscolors.bat)**

在 dos 环境下执行以下命令，将 dircolors 配色文件中的内容，写入用户环境变量 `LS_COLORS` 中，从而改变 ls 命令输出配色。

`lscolors.bat <scheme_file>`

[配色方案](msls/scheme)：
[Solarized](https://ethanschoonover.com/solarized/)
[dircolors](https://github.com/seebi/dircolors-solarized)
| [Monokai Pro for vscode](https://monokai.pro/)

### [WSH](https://github.com/wordworld/wsh)

### 命令列表

**General**
: [ls](https://u-tools.com/msls)
| dircolors
| [dir](https://github.com/lsd-rs/lsd)
| [grep](https://github.com/mbuilov/grep-windows)
| [sed](https://github.com/mbuilov/sed-windows)
| [awk](https://github.com/mbuilov/gawk-windows)
| [file](https://gnuwin32.sourceforge.net/packages/file.htm)
| [mandoc](https://embedeo.org/ws/doc/man_windows/)
| [unrar](https://www.rarlab.com/rar_add.htm)
| [zip](https://gnuwin32.sourceforge.net/packages/zip.htm)
| [uzip](https://gnuwin32.sourceforge.net/packages/unzip.htm)
| [make](https://gnuwin32.sourceforge.net/packages/make.htm)


[GNU/findutils](https://gnuwin32.sourceforge.net/packages/findutils.htm)
: find
| locate
| xargs


**[GNU/coreutils](https://gnuwin32.sourceforge.net/packages/coreutils.htm)**

**File utilities**
: chgrp
| chown
| chmod
| cp
| dd
| df
| du
| install
| ln
| ls
| mkdir
| mkfifo
| mknod
| mv
| rm
| rmdir
| shred
| sync
| touch
| vdir

**Text utilities**
: cat
= [ct](https://github.com/sharkdp/bat/releases/tag/v0.23.0)
| cksum
| comm
| csplit
| cut
| expand
| fmt
| fold
| head
| join
| md5sum
| nl
| od
| paste
| ptx
| pr
| shasum
| sort
| split
| sum
| tac
| tail
| tr
| tsort
| unexpand
| uniq
| wc

**Shell utilities**
: [
| basename
| chroot
| date
| dirname
| echo
| env
| expr
| factor
| false
| groups
| hostid
| hostname
| id
| logname
| nice
| nohup
| pathchk
| pinky
| printenv
| printf
| pwd
| seq
| sleep
| stty
| su
| tee
| test
| true
| tty
| uname
| users
| who
| whoami
| yes

**[win-bash](https://sourceforge.net/projects/win-bash/)**
: ansi2knr
| bash
| bc
| bison
| cmp
| cpp
| dc
| diff
| diff3
| flex
| fltcr
| gplay
| gsar
| gunzip
| gzip
| indent
| jwhois
| less
| logname
| m4
| mvdir
| paste
| recode
| rman
| sdiff
| sed
| sh
| shar
| tar
| type
| unshar
| uudecode
| uuencode
| wget
| which

* win-bash 对 windows 原生特性有较好的支持：

  - 继承了 windows 环境变量

  - 可调用 windows 现有 `.exe` `.bat` 程序

  - 使用以磁盘符开头的 windows 绝对路径格式

* win-bash 有以下缺陷：

  - [交互命令中，不支持非 ASCII 字符，如中文、德语](https://sourceforge.net/p/win-bash/discussion/324507/thread/4f27bf1f/#4d00)
  
    通过 [fd](bin/fd.sh) 命令解决不能 cd 中文目录的问题

  - [不支持自动补全](https://sourceforge.net/p/win-bash/discussion/324507/thread/cd0d5873/#933b)

  - 不支持 c-style 的 for 循环
  
  - 不支持复杂数组索引，如 `${array[1]}` `${!i}` 等


### 兼容程序

[`vim`](https://github.com/vim/vim-win32-installer/releases)
| [`openssh`](https://github.com/PowerShell/Win32-OpenSSH/releases)