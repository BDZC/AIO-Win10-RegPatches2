@echo off
title "AIO-Win10-RegPatches & Tools (20.01.2019)"
setlocal ENABLEDELAYEDEXPANSION
::==================================================================================================================================
REM Elevating UAC Administrator Privileges
IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" ( >nul 2>&1 "%SYSTEMROOT%\SysWOW64\Icacls.exe" "%SYSTEMROOT%\SysWOW64\config\system" ) ELSE ( >nul 2>&1 "%SYSTEMROOT%\system32\Icacls.exe" "%SYSTEMROOT%\system32\config\system" )
IF '%errorlevel%' NEQ '0' ( goto UACPrompt ) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs" & del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
::==================================================================================================================================
cd /d %~dp0

REM Importing Registry Patches
reg import AIO-Win10-RegPatches.reg

REM Copying Files for tools
xcopy "$OEM$\ProgramData\*" "%ProgramData%\" /f /j /s /c /z /i /y
xcopy "$OEM$\$$\*" "%WINDIR%" /f /j /s /c /z /i /y
xcopy "$OEM$\Program Files\*" "%ProgramFiles%" /f /j /s /c /z /i /y