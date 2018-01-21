::===============================================================================================================
	@echo off
	cls
	setLocal EnableExtensions EnableDelayedExpansion
	set "o2016rtoolpath=%~dp0"
	set "o2016rtoolpath=%o2016rtoolpath:~0,-1%"
	set "o2016rtoolname=%~n0.cmd"
	pushd "%o2016rtoolpath%"
::===============================================================================================================
:: CHECK ADMIN RIGHTS
	net file >nul 2>&1
	if "%errorlevel%" NEQ "0" (goto:UACPrompt) else (goto:gotAdmin)
::===============================================================================================================
:UACPrompt
	echo:
	echo   Requesting Administrative Privileges...
	echo   Press YES in UAC Prompt to Continue
	echo:
	echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\GetAdmin.vbs"
	echo args = "ELEV " >> "%temp%\GetAdmin.vbs"
	echo For Each strArg in WScript.Arguments >> "%temp%\GetAdmin.vbs"
	echo args = args ^& strArg ^& " "  >> "%temp%\GetAdmin.vbs"
	echo Next >> "%temp%\GetAdmin.vbs"
    echo UAC.ShellExecute "%o2016rtoolname%", args, "%o2016rtoolpath%", "runas", 1 >> "%temp%\GetAdmin.vbs"
    cmd /u /c type "%temp%\GetAdmin.vbs">"%temp%\GetAdminUnicode.vbs"
    cscript //nologo "%temp%\GetAdminUnicode.vbs"
    del /f /q "%temp%\GetAdmin.vbs" >nul 2>&1
    del /f /q "%temp%\GetAdminUnicode.vbs" >nul 2>&1
    exit /B
::===============================================================================================================
:gotAdmin
	if '%1'=='ELEV' shift /1
    if exist "%temp%\GetAdmin.vbs" del /f /q "%temp%\GetAdmin.vbs"
	if exist "%temp%\GetAdminUnicode.vbs" del /f /q "%temp%\GetAdminUnicode.vbs"
::===============================================================================================================
cls
