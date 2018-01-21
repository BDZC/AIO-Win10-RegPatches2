	@echo off
:: Code by s1ave77
	color 1F
	setlocal EnableExtensions
	setlocal EnableDelayedExpansion
::===============================================================================================================
	powershell.exe -command "& {$pshost = Get-Host;$pswindow = $pshost.UI.RawUI;$newsize = $pswindow.BufferSize;$newsize.height = 9001;$pswindow.buffersize = $newsize;}"
::===============================================================================================================
	color 1F
	mode con cols=87 lines=50
	title ˛ Windows Update Module ˛ by s1ave77
	if not "%~1"=="" goto:%~1
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:UpdateInstall
	if exist "%windir%\System32\WindowsPowerShell\v1.0\Modules\PSWindowsUpdate\PSWindowsUpdate.psd1" (set "ishere=INSTALLED") else (set "ishere= NEEDED #")
	cls
	call :WuauservCheck wuauserv
	mode con cols=87 lines=50
	pushd %~dp0
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  WINDOWS UPDATE PS MODULE IS: %ishere%	˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	echo    €ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€
	echo    €‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€
	echo:
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (1) Copy Module --------------------- (2) Delete Module ----------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (3) Get-WUHistory ------------------- (4) Get-WUList -------------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (5) Get-WUInstall manual  ----------- (6) Get-WUInstall All Auto -------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (7) Get-WUInstall Security Auto ----- (D) Hide/unhide Updates ----------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (8) Get-WURebootStatus  ------------- (9) Update-WUModule --------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (S) Search installed Update --------- (H) Check Update Hashes ----------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (G) Go to Defender Menu ------------- (X) Install OnLogon Check Task ---------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (T) Disable Windows Update ---------------------------------------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ≤≤ (R) REBOOT ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) BACK ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
:choiceUI
	CHOICE /C 1234567D89SHGXTRB /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto :CopyModule
	if %errorlevel%==2 goto :DeleteModule
	if %errorlevel%==3 goto :GetWUHistory
	if %errorlevel%==4 goto :GetWUList
	if %errorlevel%==5 goto :GetWUInstallManual
	if %errorlevel%==6 goto :GetWUInstallAuto
	if %errorlevel%==7 goto :GetWUInstallSUAuto
	if %errorlevel%==8 goto :PSWUModuleHide
	if %errorlevel%==9 goto :GetWURebootStatus
	if %errorlevel%==10 goto :UpdateModule
	if %errorlevel%==11 goto :SearchUpdate
	if %errorlevel%==12 goto :CheckUpdateHashes
	if %errorlevel%==13 (pushd %~dp0)&&(call ..\JATDevice.cmd DefenderUpdate)
	if %errorlevel%==14 goto :CheckTask
	if %errorlevel%==15 goto :WuauservSet
	if %errorlevel%==16 goto :Reboot
	if %errorlevel%==17 (pushd %~dp0)&&(call systemtools.cmd SystemTools)
	goto :UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:CopyModule
	cls
	call :HEADER "This option copies the module to PS directory", " "
	if %win% LSS 7601 echo Not supported system found& timeout /t 5& goto :UpdateInstall 
	if %win% GEQ 9200 goto :CopyPS
	wmic qfe get hotfixid | find "KB2506143" >nul
	if %errorlevel%==1 echo Installing Windows Management Framework 3.0 is needed.& goto :KB6.1
:CopyPS
	md "%windir%\system32\WindowsPowerShell\v1.0\Modules\PSWindowsUpdate" >nul
	xcopy "PSWindowsUpdate\PSWindowsUpdate\*.*" "%windir%\system32\WindowsPowerShell\v1.0\Modules\PSWindowsUpdate" /Q /S >nul
	if %errorlevel%==0 echo Copied Module successfully. & echo:
	if %errorlevel%==1 echo Copy failed. & echo:
	call :PSWUModule "Import-Module PSWindowsUpdate"
	call :FOOTER
	timeout /t 5
	goto :UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:DeleteModule
	cls
	call :HEADER "This option deletes the module from PS directory", " "
	if exist "%windir%\system32\WindowsPowerShell\v1.0\Modules\PSWindowsUpdate" rd "%windir%\system32\WindowsPowerShell\v1.0\Modules\PSWindowsUpdate" /Q /S >nul
	if %errorlevel%==0 echo Deleted Module successfully.
	if %errorlevel%==1 echo Delete failed.
	call :FOOTER
	timeout /t 5
	goto :UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:CheckTask
	cls
	call :HEADER "This option installs Daily Check Task", " "
	SCHTASKS /Query /TN "onlogoncheck" >nul 2>&1
	if %errorlevel%==0 (
		call :COLOROUT "Task Already exists, change it?", "Green"
		call :FOOTER
		CHOICE /C CDB /N /M "[C]hange, [D]elete or [B]ack ?"
		if !errorlevel!==2 goto :CheckTaskDelete
		if !errorlevel!==3 goto :UpdateInstall
		call :FOOTER
		SCHTASKS /Change /TN "onlogoncheck" /TR "cmd /c call %cd%\win.update.module.cmd OnlyGetWUList" /SC ONLOGON /RL Highest /F
		call :FOOTER
		pause
		goto :UpdateInstall
	)
	if %errorlevel%==1 (
		call :COLOROUT "Task does not exist, create it?", "Yellow"
		call :FOOTER
		CHOICE /C CB /N /M "[C]reate or [B]ack ?"
		if !errorlevel!==2 goto :UpdateInstall
		call :FOOTER
		SCHTASKS /Create /TN "onlogoncheck" /TR "cmd /c call %cd%\win.update.module.cmd OnlyGetWUList" /SC ONLOGON /RL Highest /F
		call :FOOTER
		pause
		goto :UpdateInstall
	)
	:CheckTaskDelete
	SCHTASKS /Delete /TN "onlogoncheck" /F
	call :FOOTER
	timeout /t 5
	goto :UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:GetWUHistory
	mode con cols=105 lines=50
	cls
	call :LONGHEADER "This option shows installed Updates", " "
	CHOICE /C SWN /N /M "[S]ave to File, Save [W]U conform or save [N]ot ?"
	if %errorlevel%==1 set save=1
	if %errorlevel%==2 set save=2
	if %errorlevel%==3 (
		set "file="
		set save=0
		goto:OnlyGetWUHistory
	)
	cls
	call :LONGHEADER "This option shows shows installed Updates", " "
	echo Path to TXT: %file%
	call :LONGFOOTER
	set /p file=Enter Path to TXT here:
	if exist "%file%" del /s /q "%file%" >nul
:OnlyGetWUHistory
	cls
	powershell.exe Set-ExecutionPolicy RemoteSigned
	call :LONGHEADER "This option shows installed Updates", " "
	set COUNT=0
	for /d %%a in (
	powershell.exe Get-WUHistory') do (
		for /f "tokens=5 delims= " %%g in ("%%a") do if not "%%k"=="" SET /A COUNT+=1 && echo %%a
		if "!save!"=="1" echo %%a>>!file!
		if "!save!"=="2" if "%win%"=="9200" echo Windows8-RT-%%a-%vera%>>!file!
		if "!save!"=="2" if "%win%"=="9600" echo Windows8.1-%%a-%vera%>>!file!
		if "!save!"=="2" if %win% gtr 9600 echo Windows10.0-%%a-%vera%>>!file!
		if "!COUNT!"=="30" (
			call :LONGFOOTER
			pause
			cls
			call :LONGHEADER "List Updates", " "
			set "COUNT=0"
		)
	)
	call :LONGFOOTER
	pause
	powershell Set-ExecutionPolicy Restricted
	goto :UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:GetWUList
	mode con cols=105 lines=50
	cls
	call :LONGHEADER "This option shows availeable Updates from Windows Update", ""
	CHOICE /C SWN /N /M "[S]ave to File, Save [W]U conform or save [N]ot ?"
	if %errorlevel%==1 set "save=1"
	if %errorlevel%==2 set "save=2"
	if %errorlevel%==3 (
		set "file="
		set "save=0"
		goto:OnlyGetWUList
	)
	cls
	call :LONGHEADER "This option shows availeable Updates from Windows Update", ""
	echo Path to TXT: %file%
	call :LONGFOOTER
	set /p file=Enter Path to TXT here:
	if exist "%file%" del /s /q "%file%" >nul
:OnlyGetWUList
	cls
	powershell.exe Set-ExecutionPolicy RemoteSigned
	call :LONGHEADER "This option shows availeable Updates from Windows Update", ""
	set COUNT=0
	for /f "tokens=*" %%a in ('powershell.exe Get-WUList') do (
		SET /A COUNT+=1
		echo %%a
		if "!save!"=="1" echo %%a>>!file!
		if "!save!"=="2" if "%win%"=="9200" echo Windows8-RT-%%a-%vera%>>!file!
		if "!save!"=="2" if "%win%"=="9600" echo Windows8.1-%%a-%vera%>>!file!
		if "!COUNT!"=="30" (
			call :LONGFOOTER
			pause
			cls
			call :LONGHEADER "List Updates", " "
			set "COUNT=0"
		)
	)
	echo:
	call :LONGFOOTER
	echo:
	powershell Set-ExecutionPolicy Restricted
	pause
	goto :UpdateInstall	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:GetWUInstallManual
	cls
	call :HEADER "This option installs available Updates manually", " "
	call :PSWUModule "Get-WUInstall"
	call :FOOTER
	pause
	goto :UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:GetWUInstallAuto
	cls
	call :HEADER "This option installs all availeable Updates automatically", " "
	call :PSWUModule "Get-WUInstall -IgnoreUserInput -WhatIf -Verbose -AcceptAll"
	call :FOOTER
	pause
	goto :UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:GetWUInstallSUAuto
	cls
	call :HEADER "This option installs all availeable Security Updates automatically", " "
	call :PSWUModule "Get-WUInstall -Category "Security" -WhatIf -Verbose -AcceptAll"
	call :FOOTER
	pause
	goto :UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:GetWUInstallSUAuto
	cls
	call :HEADER "This option installs all availeable Security Updates automatically", " "
	call :PSWUModule "Get-WUInstall -Category "Security" -WhatIf -Verbose -AcceptAll"
	call :FOOTER
	pause
	goto :UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::===============================================================================================================
::PS WU MODULE HIDE UPDATES
:PSWUModuleHide
cls
call :HEADER "PS WU MODULE HIDE UPDATES"
echo Checking Windows Update Offer ...
call :FOOTER
call :PSWUModule Get-WUList
call :TITLE
call :FOOTER
	CHOICE /C HUB /N /M "[H]ide, [U]nhide or [B]ack ?:"
	if %errorlevel%==1 goto :PSWUModuleHideProcess
	if %errorlevel%==2 goto :PSWUModuleUnhideProcess
	if %errorlevel%==3 goto:UpdateInstall
:PSWUModuleHideProcess
	call :FOOTER
	CHOICE /C TK /N /M "Hide by [T]itle or [K]B Number ?:"
	if %errorlevel%==1 goto :PSWUModuleHideByTitle
	if %errorlevel%==2 goto :PSWUModuleHideByKBNumber
:PSWUModuleUnhideProcess
	call :FOOTER
	CHOICE /C TK /N /M "Unhide by [T]itle or [K]B Number ?:"
	if %errorlevel%==1 goto :PSWUModuleUnhideByTitle
	if %errorlevel%==2 goto :PSWUModuleUnhideByKBNumber
:PSWUModuleHideByTitle
	call :FOOTER
	echo Title             : %updatetitle%
	echo Enter first two Words, wildcard will be added automatically.
	call :FOOTER
	set /p updatetitle=Set Update Title ^>
	call :FOOTER
	set "hideparam=-Title "%updatetitle%*" -Confirm:$false"
	call :PSWUModule "Hide-WUUpdate %hideparam%"
	call :FOOTER
	pause
	goto:UpdateInstall
:PSWUModuleUnhideByTitle
	call :FOOTER
	echo Title             : %updatetitle%
	echo Enter first two Words, wildcard will be added automatically.
	call :FOOTER
	set /p updatetitle=Set Update Title ^>
	call :FOOTER
	set "hideparam=-Title "%updatetitle%*" -HideStatus:$false -Confirm:$false"
	call :PSWUModule "Hide-WUUpdate %hideparam%"
	call :FOOTER
	pause
	goto:PSWUModuleHide
:PSWUModuleHideByKBNumber
	call :FOOTER
	echo KB Number^(s^)____: %kb%
	echo 'KBXXXXXX1' or 'KBXXXXXX1, KBXXXXXX2, KBXXXXXX3, KBXXXXXX4' 
	call :FOOTER
	set /p kb=Set Update ID ^>
	call :FOOTER
	for /d %%w in (%kb%) do (
		set "hideparam=-KBArticleID "%%w" -Confirm:$false"
		call :PSWUModule "Hide-WUUpdate !hideparam!"
		call :Footer
	)
	pause
	goto:UpdateInstall
:PSWUModuleUnhideByKBNumber
	call :FOOTER
	echo KB Number^(s^)____: %kb%
	echo 'KBXXXXXX1' or 'KBXXXXXX1, KBXXXXXX2, KBXXXXXX3, KBXXXXXX4'
	call :FOOTER
	set /p kb=Set Update ID ^>
	call :FOOTER
	for /d %%w in (%kb%) do (
		set "hideparam=-KBArticleID "%%w" -HideStatus:$false -Confirm:$false"
		call :PSWUModule "Hide-WUUpdate !hideparam!"
		call :Footer
	)
	pause
	goto:UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:GetWURebootStatus
	cls
	call :HEADER "This option checks for needed Reboots", " "
	call :PSWUModule "Get-WURebootStatus"
	call :FOOTER
	pause
	goto :UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:SearchUpdate
	cls
	powershell Set-ExecutionPolicy Bypass
	call :HEADER "This option searches for an installed Update", " "
	echo 'KBXXXXXX1' or 'KBXXXXXX1, KBXXXXXX2, KBXXXXXX3, KBXXXXXX4'
	echo:
	echo Last: %update%
	call :FOOTER
	set /p update=Set Update ID ^>
	call :FOOTER
	for /d %%w in (%update%) do (
		set "answer="
		for /f "tokens=2,* delims= " %%a in ('"powershell Get-WUHistory" ^| findstr /i "%%w"') do set "answer=%%a at %%b"
		if not defined answer (echo Update not found.)&&(echo:)&&(echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ)&&(pause)&&(goto :UpdateInstall)
		echo Update already installed:
		echo:
		echo !answer!
		call :FOOTER
	)
	pause
	powershell Set-ExecutionPolicy Restricted
	goto :UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:CheckUpdateHashes
	cls
	powershell Set-ExecutionPolicy Bypass
	call :HEADER "This option checks Update Hashes", " "
	CHOICE /C SB /N /M "[S]ingle or [B]atch ? >"
	if %errorlevel%==1 goto :SingleCheck
	if %errorlevel%==2 goto :BatchCheck
:SingleCheck
	cls
	call :HEADER "This option checks Update Hashes", " "
	if /i "%algo%"=="" set algo=sha1
	echo Set SHA version, i.e. SHA1, SHA256
	echo Last: %algo%
	echo:
	echo Set Update Path to File
	echo Last: %updatefilepath%
	call :FOOTER
	set /p algo=Set SHA version ^>
	set /p updatefilepath=Set Update File Path ^>
	call :FOOTER
	for /f "tokens=1,2,3,4,* delims= " %%a in ('powershell get-filehash "%updatefilepath%" -algorithm %algo%') do set hash=%%b
	echo %algo%: %hash%
	call :FOOTER
	powershell Set-ExecutionPolicy Restricted
	CHOICE /C SB /N /M "[S]ingle or [B]atch ? >"
	if %errorlevel%==1 goto :SingleCheck
	if %errorlevel%==2 goto :BatchCheck
:BatchCheck
	cls
	call :HEADER "This option checks Update Hashes", " "
	if /i "%algo%"=="" set algo=sha1
	if /i "%ext%"=="" set ext=msu
	echo Set SHA version, i.e. SHA1, SHA256
	echo Last: %algo%
	echo:
	echo Set Update Path to File
	echo Last: %updatefolderpath%
	echo:
	echo Set Extension of File
	echo Last: %ext%
	echo:
	set /p algo=Set SHA version ^>
	set /p updatefolderpath=Set Update Folder Path ^>
	set /p ext=Set Extension of File ^>
	cls
	call :HEADER "This option checks Update Hashes", " "
	for /r "%updatefolderpath%" %%g in (*.%ext%) do (
		for /f "tokens=1,2,* delims= " %%a in ('powershell get-filehash "%updatefolderpath%\%%~ng.%ext%" -algorithm %algo%') do (
			if not %%b EQU Hash if not %%b EQU ---- echo %%~ng %algo%: %%b
		)
	)
	call :FOOTER
	powershell Set-ExecutionPolicy Restricted
	CHOICE /C SBE /N /M "[S]ingle, [B]atch or [E]xit ? >"
	if %errorlevel%==1 goto :SingleCheck
	if %errorlevel%==2 goto :BatchCheck
	if %errorlevel%==3 goto :UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:UpdateModule
	cls
	call :HEADER "This option checks for Module Updates", " "
	call :PSWUModule "Update-WUModule"
	call :FOOTER
	pause
	goto :UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:WuauservSet
	sc query "wuauserv" | find "RUNNING" >nul 2>&1
	if "!errorlevel!"=="0" set "runstate=RUNNING"
	if "!errorlevel!"=="1" set "runstate=STOPPED"
	for /f "tokens=3 delims= " %%g in ('reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv" ^| findstr /c:" Start"') do (
		if %%g equ 0x1 set "state=AUTO DELAYED"
		if %%g equ 0x2 set "state=AUTO"
		if %%g equ 0x3 set "state=MANUAL"
		if %%g equ 0x4 set "state=DISABLED"
	)
	if "%state%"=="DISABLED" goto:UpdateInstall
	cls
	call :HEADER "Windows Update Service Check", " "
	echo Windows Update is %state%. 
	call :FOOTER
	echo SERVICE		 : 	wuauserv
	echo START  		 : 	%state%
	echo STATUS 		 : 	%runstate%
	call :FOOTER
	CHOICE /C SB /N /M "[S]et to DISABLED or [B]ack ?:"
	if %errorlevel%==2 goto :UpdateInstall
	call :FOOTER
	call :ServiceDisableLoop wuauserv, disabled
	call :FOOTER
	pause
	goto:UpdateInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:WuauservCheck
	sc query "%~1" | find "RUNNING" >nul 2>&1
	if "!errorlevel!"=="0" set "runstate=RUNNING"
	if "!errorlevel!"=="1" set "runstate=STOPPED"
	for /f "tokens=3 delims= " %%g in ('reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\%~1" ^| findstr /c:" Start"') do (
		if %%g equ 0x1 set "state=AUTO DELAYED"
		if %%g equ 0x2 set "state=AUTO"
		if %%g equ 0x3 set "state=MANUAL"
		if %%g equ 0x4 set "state=DISABLED"
	)
	if not "%state%"=="DISABLED" goto:eof
	cls
	call :HEADER "Windows Update Service Check", " "
	echo Windows Update is %state%. 
	call :FOOTER
	echo SERVICE		 : 	%~1
	echo START  		 : 	%state%
	echo STATUS 		 : 	%runstate%
	call :FOOTER
	CHOICE /C SB /N /M "[S]et to MANUAL or [B]ack ?:"
	if %errorlevel%==2 (pushd %~dp0)&&(call systemtools.cmd SystemTools)
	call :FOOTER
	call :ServiceDisableLoop wuauserv, demand
	call :FOOTER
	pause
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:ServiceDisableLoop
	for /d %%a in (%~1) do (
		sc query "%%a" | find "RUNNING" >nul 2>&1 && net stop "%%a"
		for /f "tokens=3 delims= " %%g in ('reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\%%a" ^| findstr /c:" Start"') do sc config "%%a" start= %~2
	)
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::PS WU MODULE
:PSWUModule
	powershell Set-ExecutionPolicy Bypass
	powershell Import-Module PSWindowsUpdate
	powershell %~1
	powershell Set-ExecutionPolicy Restricted
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:COLOROUT
	powershell "Write-Host '%~1' -foreground %~2"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:HEADER
	echo:
	echo €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:%~1
	echo:%~2
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:LONGHEADER
	echo:
	echo €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:%~1
	echo:%~2
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:FOOTER
	echo:
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:LONGFOOTER
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Reboot
	start shutdown.exe /r /t 0	
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:TITLE
	title ˛ Windows Update Module ˛ by s1ave77
	goto:eof
