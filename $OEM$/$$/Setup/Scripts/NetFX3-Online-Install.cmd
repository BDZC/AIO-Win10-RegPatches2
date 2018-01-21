@echo off
:Begin UAC check and Auto-Elevate Permissions
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo:
echo   Requesting Administrative Privileges...
echo   Press YES in UAC Prompt to Continue
echo:

    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
color 1f
set ONLINENETFX=1
if exist a:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:a:\sources\sxs\
if exist b:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:b:\sources\sxs\
if exist c:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:c:\sources\sxs\
if exist d:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:d:\sources\sxs\
if exist e:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:e:\sources\sxs\
if exist f:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:f:\sources\sxs\
if exist g:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:g:\sources\sxs\
if exist h:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:h:\sources\sxs\
if exist i:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:i:\sources\sxs\
if exist j:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:j:\sources\sxs\
if exist k:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:k:\sources\sxs\
if exist l:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:l:\sources\sxs\
if exist m:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:m:\sources\sxs\
if exist n:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:n:\sources\sxs\
if exist o:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:o:\sources\sxs\
if exist p:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:p:\sources\sxs\
if exist q:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:q:\sources\sxs\
if exist r:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:r:\sources\sxs\
if exist s:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:s:\sources\sxs\
if exist t:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:t:\sources\sxs\
if exist u:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:u:\sources\sxs\
if exist v:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:v:\sources\sxs\
if exist w:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:w:\sources\sxs\
if exist x:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:x:\sources\sxs\
if exist y:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:y:\sources\sxs\
if exist z:\sources\sxs\ set ONLINENETFX=0 && dism /online /enable-feature /featurename:netfx3 /all /limitaccess /source:z:\sources\sxs\
if %ONLINENETFX% EQU 1 dism /online /enable-feature /featurename:netfx3 /all
mode con:cols=23 lines=5
echo ======================
echo ****** Finished ******
echo Press any key to exit.
echo ======================
pause>NUL