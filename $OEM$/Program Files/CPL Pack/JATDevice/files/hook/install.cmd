@echo off
::title Install KMS-QADhooker by Qad 
:--------------------------------------
pushd "%~dp0KMS-QADhooker"
:--------------------------------------
set "KmsName=KMS-QADhooker"
set "KMSActivationInterval=43200"
:--------------------------------------
for /f "tokens=6 delims=[]. " %%G in ('ver') do set winbuild=%%G
call :DetectO14IFEOEntry "SppExtComObj.exe"
:--------------------------------------
set xOS=x86
reg query "hklm\software\microsoft\Windows NT\currentversion" /v buildlabex 2>nul | find /i "amd64" >nul 2>&1 && set xOS=x64
echo.&echo %KmsName%.dll and %KmsName%.exe have been copied to %SystemRoot%\System32.
copy /y "%xOS%\*.*" "%SystemRoot%\System32"  >NUL 2>&1
:--------------------------------------
echo Installation completed.
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
call :CreateIFEOEntry "osppsvc.exe"
)
:--------------------------------------
:CreateIFEOEntry
echo Registry Entry of %~1
echo for %ver% %nera% has been created.
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\55c92734-d682-4d71-983e-d6ec3f16059f" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Debugger" /t REG_SZ /d "%KmsName%.exe" >NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "KMS_ActivationInterval" /t REG_DWORD /d %KMSActivationInterval% >nul 2>&1
taskkill /f /im %~1 >NUL 2>&1
taskkill /f /im %KmsName%.exe >NUL 2>&1
goto :EOF

