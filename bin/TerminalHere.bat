:: regedit can ref windows icon as: %SystemRoot%\system32\shell32.dll,-284
:: https://www.urtech.ca/2022/07/solved-download-list-of-icons-in-shell32-dll/
@set CURRENT_DIR=%~f1
@start %LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe -d %CURRENT_DIR%