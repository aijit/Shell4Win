## Shell4Win

A collection of some usefull GNU/Linux shell tools for Microsoft Windows.


### 配置说明

双击运行 bat 脚本，自动完成以下配置步骤(重复双击运行不影响最终效果)：

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

  `AutoRun`=[dir/to/alias.bat](alias.bat)


### 命令列表

**General**
: [ls](https://u-tools.com/msls)
| [grep](https://gnuwin32.sourceforge.net/packages/grep.htm)
| [sed](https://github.com/mbuilov/sed-windows)
| [awk](https://github.com/mbuilov/gawk-windows)
| [file](https://gnuwin32.sourceforge.net/packages/file.htm)
| [mandoc](https://embedeo.org/ws/doc/man_windows/)
| [unrar](https://www.rarlab.com/rar_add.htm)


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
| dir
| dircolors
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
| make
| mvdir
| paste
| patch
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
| vi
| wget
| which

* win-bash 对 windows 原生特性有较好的支持：

  - 继承了 windows 环境变量

  - 可调用 windows 现有 EXE 程序

  - 使用以磁盘符开头的 windows 绝对路径格式

* win-bash 有以下缺陷：

  - [交互命令中，不支持非 ASCII 字符，如中文、德语](https://sourceforge.net/p/win-bash/discussion/324507/thread/4f27bf1f/#4d00)

  - [不支持自动补全](https://sourceforge.net/p/win-bash/discussion/324507/thread/cd0d5873/#933b)
