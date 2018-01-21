@echo off
cls
pushd %~dp0
REM  Usage InstallWee  DRIVENUMBER  {SURE}

if not exist weesetup.exe goto :BAD
color 1f
set DNO=%1
if "%DNO%"=="" goto :BAD
echo WeeMenu
echo =======
echo.
type weemenu.txt
echo.
echo -------------- LIST OF DRIVES ----------------------
echo.
weesetup.exe -l
if errorlevel 2 goto :EOF
echo.
if /i "%2"=="SURE" goto :DOIT
echo.
echo.
set /P ANS=OK TO INSTALL WEE TO TRACK 0 OF DISK %DNO%   (Y/N) : 
if /i "%ANS%"=="Y" goto :DOIT
goto :EOF

:DOIT
cls
echo Trying to install weemenu.txt to Track 0 of HD%DNO%
weesetup.exe -s weemenu.txt -d (hd%DNO%)
if not errorlevel 1 goto :GOOD
echo.
echo Trying to install weemenu.txt to Track 0 of HD%DNO% using 'Update'
weesetup.exe -u -s weemenu.txt -d (hd%DNO%)
if not errorlevel 1 goto :GOOD
echo.
echo Trying to install weemenu.txt to Track 0 of HD%DNO% using 'Update' and 'Force'
weesetup.exe -f -u -s weemenu.txt -d (hd%DNO%)
if not errorlevel 1 goto :GOOD

:BAD
:: generate errorlevel
color 4f
color 00
echo ERRORLEVEL %errorlevel%
echo. 
echo ERROR DETECTED!
pause
goto :EOF

:GOOD
color 2f
echo.
echo INSTALLED WEE TO HARD DISK %DNO%
echo.
weesetup.exe -l > nul
weesetup.exe > nul
echo ERRORLEVEL %errorlevel%




