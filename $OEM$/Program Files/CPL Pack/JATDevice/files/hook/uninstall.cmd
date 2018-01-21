@echo off
::title Uninstall KMS-QADhooker by Qad 
:--------------------------------------
pushd "%~dp0KMS-QADhooker"
:--------------------------------------
set KmsName=KMS-QADhooker
:--------------------------------------
for /f "tokens=6 delims=[]. " %%G in ('ver') do set winbuild=%%G
call :DetectO14IFEOEntry "SppExtComObj.exe"
:--------------------------------------
echo.&echo %KmsName%.dll and %KmsName%.exe have been deleted from %SystemRoot%\System32.
del /f /q "%SystemRoot%\System32\%KmsName%.*" >NUL 2>&1
:--------------------------------------
echo.&echo Uninstallation completed.
echo:
echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
echo:
timeout /t 3 
exit /b
:--------------------------------------
:DetectO14IFEOEntry
set OsppHook=1
if %OsppHook% EQU 1 (
wmic path OfficeSoftwareProtectionService get version >nul 2>&1 || set OsppHook=0
)
if %OsppHook% NEQ 0 (
reg add "hklm\software\microsoft\officesoftwareprotectionplatform" /f /v "inactivityshutdowndelay" /t "REG_DWORD" /d "30" >nul
call :RemoveIFEOEntry "osppsvc.exe"
)
:--------------------------------------
:RemoveIFEOEntry
echo Registry Entry of %~1
echo for %ver% %vera% has been deleted.
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /f /v "inactivityshutdowndelay" /t "REG_DWORD" /d "30" >nul
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /f /v "Windows" >NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /f /v "Office2010" >NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /f /v "Office2013" >NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f >NUL 2>&1
taskkill /f /im %~1 >NUL 2>&1
taskkill /f /im %KmsName%.exe >NUL 2>&1
goto :EOF

