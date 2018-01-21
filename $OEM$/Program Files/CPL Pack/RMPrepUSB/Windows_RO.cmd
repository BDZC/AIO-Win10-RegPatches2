echo off
cls
color 1f

REM RMPrepUSB helper file to set or clear Windows Read-Only attributes

:: Usage: Windows_RO.cmd [Disk number]  [Drive letter]   ["SET" | "CLEAR"]  ["SURE"]"
::
:: e.g. Windows_RO.cmd  2 H: CLEAR SURE
::

set SURE=
if "%1"=="" goto :ERR
if "%2"=="" goto :ERR

set ACTION=
if /i "%3"=="SET" set ACTION=SET
if /i "%3"=="CLEAR" set ACTION=CLEAR
if "%ACTION%"=="" goto :ERR

if "%4"=="SURE" set SURE=Y

if "%1"=="0" (
 echo "WARNING: THIS IS DISK %1 (probably your System Disk!) - Are you really sure?"
  set /p ASK=Enter Y or N : 
  if /i "%ASK%"=="Y" goto :DOIT
  goto :EOF
)


:DOIT
echo SELECT DISK %1 >RO.scr
::echo DETECT DISK>>RO.scr
echo ATT DISK %ACTION% READONLY>>RO.scr
echo DETAIL DISK>>RO.scr
echo SELECT VOL %2 >>RO.scr
::echo DET VOL>>RO.scr
echo ATT VOL %ACTION% READONLY>>RO.scr
echo DETAIL VOL>>RO.scr
echo EXIT>>RO.scr
:: run the command
echo.
type ro.scr
echo.
set ASK=Y
if NOT  "%SURE%"=="Y" set /p ASK=OK to run this Diskpart script on DISK %1 VOLUME %2 (Y/N) : 
if /i "%ASK%"=="Y" diskpart /s RO.scr

:: Note: setting volume to RO on removable media will fail as not allowed.
::       So this command may well fail - so don't test result

:: cleanup
if exist RO.scr del RO.scr >nul

goto :EOF

:ERR
echo ERROR: Bad parameters  Disk no.="%1"  Drive Lett.="%2" Action="%3" SURE="%4"
echo.
echo Usage "Windows_RO.cmd [Disk number]  [Drive letter]   ["SET" | "CLEAR"]  ["SURE"]"
echo.
:: cleanup
if exist RO.scr del RO.scr >nul

pause


