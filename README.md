## Shell4Win

This is a collection of some usefull GNU/Linux shell tools for Microsoft Windows.

### 配置说明

双击执行 [config.bat](config.bat) 可自动完成以下配置步骤(重复双击运行不影响最终效果)：

* 在注册表 `HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor` 下，添加
  
  `AutoRun`=[dir/to/alias.bat](alias.bat)

* 添加用户环境变量 `SHELL4WIN`，值为 shell4win 目录的绝对路径

    `SHELL4WIN=dir/to/shell4win/`

* 将所有可执行文件路径，添加到用户 PATH 环境变量

    `%SHELL4WIN%/bin; %SHELL4WIN%/gawk; %SHELL4WIN%/grep; %SHELL4WIN%/coreutils; ...`

* 添加工具推荐环境变量

    `LS_OPTIONS=-bhC --color=auto`

    `GREP_OPTIONS=--color=always`

### ls

<https://u-tools.com/msls>

### grep

<https://gnuwin32.sourceforge.net/packages/grep.htm>

### sed

<https://github.com/mbuilov/sed-windows>

### awk

<https://github.com/mbuilov/gawk-windows>

### mandoc

<https://embedeo.org/ws/doc/man_windows/>

### [GNU/file](file/README.md)

<https://gnuwin32.sourceforge.net/packages/file.htm>

### [GNU/findutils](findutils/README.md)

<https://gnuwin32.sourceforge.net/packages/findutils.htm>

- find
- locate
- xargs

### [GNU/coreutils](coreutils/README.md)

<https://gnuwin32.sourceforge.net/packages/coreutils.htm>


File utilities:

- chgrp: Changes file group ownership.
- chown: Changes file ownership.
- chmod: Changes file permissions.
- cp: Copies files.
- dd: Copies and converts a file.
- df: Shows disk free space on filesystems.
- dir: Gives a brief directory listing.
- dircolors: Setup program for the color output of GNU ls.
- du: Shows disk usage on filesystems.
- install: Copies file and sets its permissions.
- ln: Creates file links.
- ls: Lists directory contents.
- mkdir: Creates directories.
- mkfifo: Creates FIFOs (named pipes).
- mknod: Creates special files.
- mv: Moves files.
- rm: Removes (deletes) files.
- rmdir: Removes empty directories.
- shred: Destroy data in files.
- sync: Synchronizes filesystem buffers and disk.
- touch: Changes file timestamps.
- vdir: Long directory listing.


Text utilities:

- cat: concatenates and prints files on the standard output
- cksum: checksum and count the bytes in a file
- comm: compares two sorted files line by line
- csplit: splits a file into sections determined by context lines
- cut: remove sections from each line of files
- expand: convert tabs to spaces
- fmt: simple optimal text formatter
- fold: wrap each input line to fit in specified width
- head: output the first part of files
- join: join lines of two files on a common field
- md5sum: compute and check MD5 messsage digest
- nl: number lines of files
- od: dump files in octal and other formats
- paste: merge lines of files
- ptx: produce a permuted index of file contents
- pr: convert text files for printing
- shasum: compute and check SHA1 message digest
- sort: sort lines of text files
- split: split a file into pieces
- sum: checksum and count the blocks in a file
- tac: concatenates and prints files in reverse
- tail: outputs the last part of files
- tr: translates or deletes characters
- tsort: perform topological sort
- unexpand: convert spaces to tabs
- uniq: remove duplicate lines from a sorted file
- wc: prints the number of bytes, words, and lines in files


Shell utilities:

- [ - Check file types and compare values
- basename - Removes the path prefix from a given pathname.
- chroot - Changes the root directory.
- date - Prints/sets the system date and time.
- dirname - Removes the last level or filename from a given pathname.
- echo - Prints a line of text.
- env - Displays/modifies the environment.
- expr - Evaluates expressions.
- factor - Prints prime factors.
- false - Returns an unsuccessful exit status.
- groups - Print the groups that the user is a member of.
- hostid - Print the numeric identifier for the current host
- hostname - Print or set the machine name.
- id - Print real/effective uid/gid.
- logname - Print current login name.
- nice - Modify scheduling priority.
- nohup - Allows a command to continue running after logging out.
- pathchk - Check file name portability.
- pinky - Lightweight finger
- printenv - Prints environment variables.
- printf - Formats and prints data.
- pwd - Print the current working directory.
- seq - Print numeric sequences.
- sleep - Suspends execution for a specified time.
- stty - Print/change terminal settings.
- su - Allows you to adopt the id of another user or superuser.
- tee - Sends output to multiple files.
- test - Evaluates an expression.
- true - Returns a successful exit status.
- tty - Print terminal name.
- uname - Print system information.
- users - Print current user names.
- who - Print a list of all users currently logged in.
- whoami - Print effective user id.
- yes - Print a string repeatedly.