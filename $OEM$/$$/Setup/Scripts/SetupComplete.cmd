
@echo off
cd\
%windir%\System32\regsvr32 /s "%ProgramFiles%\Windows Sidebar\sbdrop.dll"
%windir%\System32\regsvr32 /s "%ProgramFiles%\Windows Sidebar\wlsrvc.dll"
%windir%\SysWOW64\regsvr32 /s "%ProgramFiles(x86)%\Windows Sidebar\sbdrop.dll"
%windir%\SysWOW64\regsvr32 /s "%ProgramFiles(x86)%\Windows Sidebar\wlsrvc.dll"
%windir%\SysWOW64\regsvr32 /s "windir%\Setup\scripts\AIO-Win10.reg"
"%ProgramFiles%\Windows Sidebar\sidebar.exe" /RegServer
"%ProgramFiles(x86)%\Windows Sidebar\sidebar.exe" /RegServer
