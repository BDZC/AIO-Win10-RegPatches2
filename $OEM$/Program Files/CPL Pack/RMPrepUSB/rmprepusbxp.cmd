@echo off

REM Script to modify BartPE or similar XP WinPE bootable files
REM to a suitably formatted USB drive
REM
REM This script can be modified by the user if desired
REM
REM (c)2010 RM Education plc
REM 
REM For use with RMPrepUSB

cls
SET SURE=
if "%1"=="" goto :USAGE
if "%2"=="SURE" SET SURE=1
if NOT "%2"=="" IF NOT "%2"=="SURE" goto :USAGE

SET PEN=%1

REM set PEN=F:
set FAIL=
REM Blue screen to start with
color 9f

pushd %~dp0


echo ********************************
echo *                              *
echo * RMPrepUsbXP.cmd              *
echo * ===============              *
echo *                              *
echo * Convert BartPE/XP files to a *
echo * bootable USB format          *
echo *                              *
echo ********************************
echo.

REM Check we are not trying to modify our C: drive!
if NOT "%systemdrive%"=="%pen%" goto :AA
echo ERROR: TARGET DRIVE IS YOUR WINDOWS DRIVE!
goto :ERR 

:AA

REM Check required files exist
set tf=%pen%\i386\setupldr.bin
call :tfile
set tf=%pen%\i386\ntdetect.com
call :tfile

if     exist %pen%\minint\nul   SET FAIL=2
if NOT exist %pen%\i386\nul     SET FAIL=3

IF NOT "%FAIL%"=="" dir %pen%\*.*
ECHO.
if "%FAIL%"=="2"   echo WARNING: %pen%\MININT folder is already present on USB drive!
if "%FAIL%"=="3"   echo ERROR:   %pen%\i386 folder is not present on USB drive!
if "%FAIL%"=="3"   pause
if "%FAIL%"=="3"   goto :EOF

echo.
echo MODIFYING XP PE FILES AND FOLDERS ON %pen% 
echo.
IF NOT "%FAIL%"=="" color 2f
IF NOT "%FAIL%"=="" echo Press CTRL-C to abort or Enter to start copy process...
IF NOT "%FAIL%"=="" PAUSE > nul

IF not "%FAIL%"=="" goto :ERR


:DOCOPY
color 9f
SET FAIL=

if not exist %pen%\NTLDR (
copy /y %pen%\i386\setupldr.bin %pen%\NTLDR
if errorlevel 1 goto :ERR
echo %pen%\NTLDR created
)
if not exist %pen%\NTDETECT.COM (
copy /y %pen%\i386\NTDETECT.COM %pen%\NTDETECT.COM
if errorlevel 1 goto :ERR
echo %pen%\NTDETECT.COM created
)
if not exist %pen%\MININT\nul (
echo Renaming i386 folder to MININT
ren %pen%\I386 MININT
if errorlevel 1 goto :ERR
echo %pen%\MININT folder created
)


set tf=%pen%\NTLDR
call :tfile
set tf=%pen%\ntdetect.com
call :tfile
if NOT exist %pen%\minint\nul   echo *** %pen%\MININT folder is missing (copy error?)
if NOT exist %pen%\minint\nul  SET FAIL=1

REM Copy all files from the PEtoUSB folder to the USB drive
REM change the .\PEtoUSB\*.*  text to your own folder if you wish - e.g. xcopy /herky .\mydir1\mydir2\*.* %pen%\*.*
xcopy /herky .\PEtoUSB\*.* %pen%\*.*


If NOT "%FAIL%"=="" echo *** ERROR - USB DRIVE MAY NOT BOOT!
If "%FAIL%"=="" echo ALL OK - ready to boot!
If NOT "%FAIL%"=="" goto :ERR
color 2F
ECHO Finished
echo.
if "%SURE%"=="" pause

goto :EOF

:ERR
color cf
echo ERROR - OPERATION ABORTED!
pause
REM set errorlevel 0 if passed or NZ if failed
COLOR 00
goto :EOF

:USAGE
color cf
echo.
echo USAGE: RMPrepUSB [target_drive] {SURE}
echo.
echo RMPrepUSB %1 %2   -  IS AN INVALID COMMAND
echo.
goto :ERR



:tfile
SET ERR=
IF NOT EXIST %TF% SET ERR=1
IF "%ERR%"=="1" SET FAIL=1
IF "%ERR%"=="1" ECHO *** %tf% DOES NOT EXIST ***
goto :EOF
