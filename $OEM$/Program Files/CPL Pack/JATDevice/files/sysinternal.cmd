	@echo off
	title ˛ SYSINTERNALS, TASKKILL, BOOT MENU ˛ by s1ave77
:: Code by s1ave77
	color 1F
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:SysInternal
	cls
	mode con cols=87 lines=50
	color 06
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  SYSINTERNALS ˛ TASKKILL ˛ BOOT MENU  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	echo    €ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€
	echo    €‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€
	echo:
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    ++ (A) Autorun Checker ++++++++++++++++++ (C) Process Explorer ++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ++ (D) Autologon ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ++ (E) NtFSinfo +++++++++++++++++++++++++ (F) TCPview +++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ++ (G) Hex2Dec ++++++++++++++++++++++++++ (H) PSinfo ++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ++ (I) PendMoves ++++++++++++++++++++++++ (J) MoveFile ++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ++ (K) Diretory Usage +++++++++++++++++++ (L) Regjump +++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ++ (M) Secure Delete ++++++++++++++++++++ (N) Hash Check ++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    == (O) List Running Tasks =============== (P) Restart Tasks =====================
	echo    ∞                                                                               ∞
	echo    == (Q) Kill Task manually =============== (S) Start Task manually ===============
	echo    ∞                                                                               ∞
	echo    == (T) Kill hanging Tasks automatically =========================================
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (U) Disable Win 8 Bootmenu ----------- (V) Enable Win 8 Bootmenu -------------
	echo    ∞                                                                               ≤
	echo    -- (W) Boot directly to Win RE ---------- (X) List Bootmenu Entries -------------
	echo    ∞                                                                               ∞
	echo    -- (Y) Backup Boot Menu ----------------- (Z) Restore Boot Menu -----------------
	echo:   ∞                                                                               ∞
	echo    -- (1) Clone Boot Menu Entry ------------ (2) Delete Boot Menu Entry ------------
	echo    ∞                                                                               ∞
	echo    -- (3) Make Entry Boot to Safe Mode ----- (4) Set New Entry ---------------------
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ≤≤ (R) REBOOT ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) BACK ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
	:choiceSys
	CHOICE /C ACDEFGHIJKLMNOPQSTUVWXYZ1234RB /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto:AutorunChecker
	if %errorlevel%==2 goto:ProcessExplorer
	if %errorlevel%==3 goto:Autologon
	if %errorlevel%==4 goto:ntfsinfo
	if %errorlevel%==5 goto:tcpview
	if %errorlevel%==6 goto:hex2dec
	if %errorlevel%==7 goto:psinfo
	if %errorlevel%==8 goto:pendmoves
	if %errorlevel%==9 goto:movefile
	if %errorlevel%==10 goto:du
	if %errorlevel%==11 goto:regjump
	if %errorlevel%==12 goto:sdelete
	if %errorlevel%==13 goto:hashcheck
	if %errorlevel%==14 goto:ListTK
	if %errorlevel%==15 goto:KillManualTK
	if %errorlevel%==16 goto:StartTK
	if %errorlevel%==17 goto:RestartTK
	if %errorlevel%==18 goto:KillHangingTK
	if %errorlevel%==19 goto:WinBootOff
	if %errorlevel%==20 goto:WinBootOn
	if %errorlevel%==21 goto:WinRE
	if %errorlevel%==22 goto:ListBM
	if %errorlevel%==23 goto:BackupBM
	if %errorlevel%==24 goto:RestoreBM
	if %errorlevel%==25 goto:SetBM
	if %errorlevel%==26 goto:DeleteBM
	if %errorlevel%==27 goto:SetAutomaticBM
	if %errorlevel%==28 goto:CreateNewEntry
	if %errorlevel%==29 goto:Reboot
	if %errorlevel%==30 (pushd %~dp0)&&(..\JATDevice.cmd)
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:AutorunChecker
	pushd %~dp0
	start sysinternal\autoruns\autoruns.exe
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ProcessExplorer
	pushd %~dp0
	start sysinternal\procexp\procexp.%vera%.exe
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Autologon
	pushd %~dp0
	start sysinternal\autologon\Autologon.exe
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:hex2dec
	pushd %~dp0
	cls
	call :HEADER "Hex2Dec", " "
	echo This will cover hex to dec and vice versa.
	call :FOOTER
	set /p convert=Set Number ^>
	call :FOOTER
	call sysinternal\hex2dec\hex2dec.exe %convert%
	call :FOOTER
	pause
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:psinfo
	pushd %~dp0
	cls
	call :HEADER "Local and Remote System Info Viewer", " "
	call sysinternal\psinfo\PSinfo.exe
	call :FOOTER
	pause
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ntfsinfo
	pushd %~dp0
	cls
	call :HEADER "Disk Info Viewer", " "
	set /p drive=Set Drive ^>
	call :FOOTER
	call sysinternal\ntfsinfo\ntfsinfo.exe %drive%
	call :FOOTER
	pause
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:pendmoves
	cls
	pushd %~dp0
	call :HEADER "Pending File Rename Operations Viewer", " "
	call sysinternal\pendmoves\pendmoves.exe
	call :FOOTER
	pause
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:movefile
	cls
	pushd %~dp0
	call :HEADER "Pending File Rename Operations Viewer", " "
	echo Movefile v1.0 - copies over an in-use file at boot time
	echo USAGE: movefile [source] [dest]
	echo Specifying an empty destination ("") deletes the source at boot.
	call :FOOTER
	set /p sourcefile=Set Source ^>
	set /p destfile=Set Destination ^>
	call :FOOTER
	call sysinternal\movefiles\movefiles.exe %sourcefile% %destfile%
	call :FOOTER
	pause
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:pspasswd
	cls
	set pass=
	call :HEADER "Local and Remote Password Changer", " "
	echo This will change password for %username%.
	call :FOOTER
	CHOICE /C CB /N /M "[C]ontinue or [B]ack ?:"
	if %errorlevel%==1 goto :PSW
	if %errorlevel%==2 goto:SysInternal
:PSW
	call :FOOTER
	set /p pass=Set new Password ^>
	call sysinternal\pspasswd\pspasswd.exe %username% %pass%
	call :FOOTER
	pause
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:tcpview
	cls
	pushd %~dp0
	start sysinternal\tcpview\Tcpview.exe
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:loadorder
	cls
	pushd %~dp0
	start sysinternal\loadorder\LoadOrd.exe
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:du
	cls
	pushd %~dp0
	call :HEADER "Directory Disk Usage Reporter", " "
	echo Last: %sdy%
	echo Form: x:\
	echo:
	set /p sdy=Search Directory ^>
	call :FOOTER
	call sysinternal\du\du.exe /q %sdy%
	call :FOOTER
	pause
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:regjump
	cls
	pushd %~dp0
	call :HEADER "Jump directly to a Key in RegEdit", " "
	set /p regkey=Enter Reg Key ^>
	call :FOOTER
	call sysinternal\regjump\regjump.exe %regkey%	
	call :FOOTER
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:hashcheck
	cls
	pushd %~dp0
	call :HEADER "File Hash Check", " "
	set /p chpath=Enter Filepath ^>
	call :FOOTER
	call sysinternal\sigcheck\sigcheck.exe /q /a /h %chpath%	
	call :FOOTER
	pause
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:sdelete
	pushd %~dp0
	cls
	set passes=
	call :HEADER "Secure Delete Folders, Files and Drives", " "
	echo CAUTION: This will overwrite data.
	call :FOOTER
	CHOICE /C FDB /N /M "[F]older, [D]rive or [B]ack ?:"
	if %errorlevel%==1 goto :sdfolder
	if %errorlevel%==2 goto :sddrive
	if %errorlevel%==2 goto:SysInternal
:sdfolder
	call :FOOTER
	set /p passes=Set Passes ^>
	set /p sfpath=Set Path ^>
	call sysinternal\sdelete\sdelete.exe /p %passes% /s %sfpath%
	call :FOOTER
	pause
	goto:SysInternal
:sddrive
	call :FOOTER
	CHOICE /C ZO /N /M "[Z]ero Free Space or [O]verwrite ?:"
	if %errorlevel%==1 goto :zero
	if %errorlevel%==2 goto :overwrite
	echo:
:zero
	set /p passes=Set Passes ^>
	set /p sfpath=Set Path ^>
	call sysinternal\sdelete\sdelete.exe /p %passes% /c %sdpath%
	call :FOOTER
	pause
	goto:SysInternal
:overwrite
	set /p passes=Set Passes ^>
	set /p sfpath=Set Path ^>
	call sysinternal\sdelete\sdelete.exe /p %passes% /z %sdpath%
	call :FOOTER
	pause
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ListTK
	cls
	echo:
	call :HEADER " TASKKILL: List running processes", " "
	call :SHORTFOOTER
	echo Image Name                     PID Session Name        Session#       Mem Usage
	echo ========================= ======== ================ =========== ======================
	echo:
	set "y=0"
	for /f "skip=3 tokens=*" %%a in ('tasklist') do (
		set /a y+=1
		echo %%a
		if !y! equ 30 (
			call :FOOTER
			pause
			cls
			call :HEADER " TASKKILL: List running processes", " "
			call :SHORTFOOTER
			echo Image Name                     PID Session Name        Session#       Mem Usage
			echo ========================= ======== ================ =========== ======================
			echo:
			set "y=0"
		)
	)
	call :FOOTER
	pause
	goto:SysInternal
:KillManualTK
	cls
	call :HEADER "TASKKILL: Choose process to kill", " "
	echo This will kill a chose process.
	call :FOOTER
	CHOICE /C CB /N /M "[C]ontinue or [B]ack?:"
	if %errorlevel%==1 goto :KillManualTK1
    if %errorlevel%==2 goto:SysInternal
:KillManualTK1
	echo:
	if /i "%process%" == "" set process=dwm.exe
	echo Choose process to kill. Enter Name or PID.
	echo:
	echo Default: %process%
	call :FOOTER
	set /p process=Set Process :^>
	echo:
	echo:
	taskkill /f /im "%process%"
	call :FOOTER
	CHOICE /C AB /N /M "[A]gain or [B]ack?:"
	if %errorlevel%==1 goto :KillManualTK
    if %errorlevel%==2 goto:SysInternal
:StartTK
	cls
	call :HEADER "TASKKILL: Choose process to kill", " "
	echo This will kill a chose process.
	call :FOOTER
	CHOICE /C CB /N /M "[C]ontinue or [B]ack?:"
	if %errorlevel%==1 goto :StartTK1
    if %errorlevel%==2 goto:SysInternal
:StartTK1
	echo:
	if /i "%process%" == "" set process=explorer.exe
	echo Choose process to start. Enter Name or PID.
	echo:
	echo Default: %process%
	call :FOOTER
	set /p process=Set Process :^>
	call :FOOTER
	echo @Echo Off >%temp%\kill.cmd
	echo %process% >>%temp%\kill.cmd
	echo exit >>%temp%\kill.cmd
	start "Task Start (%process%)" cmd /c "%temp%\kill.cmd"
	call :FOOTER
	CHOICE /C AB /N /M "[A]gain or [B]ack?:"
	if %errorlevel%==1 if exist "%temp%\kill.cmd" del /s /q "%temp%\kill.cmd" && goto :StartTK
    if %errorlevel%==2 if exist "%temp%\kill.cmd" del /s /q "%temp%\kill.cmd" && goto:SysInternal
:RestartTK
	cls
	call :HEADER "TASKKILL: Choose process to kill", " "
	echo This will kill a chose process.
	call :FOOTER
	CHOICE /C CB /N /M "[C]ontinue or [B]ack?:"
	if %errorlevel%==1 goto :RestartTK1
    if %errorlevel%==2 goto:SysInternal
:RestartTK1
	echo:
	if /i "%process%" == "" set process=explorer.exe
	echo Choose process to kill. Enter Name or PID.
	echo:
	echo Default: %process%
	call :FOOTER
	set /p process=Set Process :^>
	call :FOOTER
	echo @Echo Off >%temp%\kill.cmd
	echo taskkill /f /im %process% >>%temp%\kill.cmd
	echo ping -n 3 127.0.0.2 ^>nul >>%temp%\kill.cmd
	echo start %process% >>%temp%\kill.cmd
	echo exit >>%temp%\kill.cmd
	start "Task Restart (%process%)" cmd /c "%temp%\kill.cmd"
	call :FOOTER
	CHOICE /C AB /N /M "[A]gain or [B]ack?:"
	if %errorlevel%==1 if exist "%temp%\kill.cmd" del /s /q "%temp%\kill.cmd" && goto :RestartTK
    if %errorlevel%==2 if exist "%temp%\kill.cmd" del /s /q "%temp%\kill.cmd" && goto:SysInternal
:KillHangingTK
	cls
	taskkill /f /fi "status eq not responding"
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:WinBootOn
	cls
	call :HEADER "Enable Win 8 Boot Menu", " "
	if not %win% GEQ 9200 goto:NotSupported
	echo:
	bcdedit /set {default} bootmenupolicy standard	
	call :FOOTER
	pause
	goto:SysInternal
:WinBootOff
	cls
	call :HEADER "Disable Win 8 Boot Menu", " "
	if not %win% GEQ 9200 goto:NotSupported
	echo:
	bcdedit /set {default} bootmenupolicy legacy
	call :FOOTER
	pause
	goto:SysInternal
:WinRE
	if not %win% GEQ 9200 goto:NotSupported
	cls
	call :HEADER "Boot directly to Win RE", " "
	echo NOTE: This will force the system to go into advanced boot options on next reboot.
	call :FOOTER
	CHOICE /C CB /N /M "[C]ontinue or [B]ack?:"
	if %errorlevel%==1 goto:furtherRE
    if %errorlevel%==2 goto:SysInternal
:furtherRE
	echo:
	reagentc.exe /boottore
	call :FOOTER
	CHOICE /C RB /N /M "[R]eboot now or [B]ack to Menu ?:"
	if %errorlevel%==1 goto:Reboot
	if %errorlevel%==2 goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ListBM
	cls
	call :HEADER "List Bootmenu", " "
	set "y=0"
	set "offset="
	for /f "tokens=*" %%a in ('bcdedit /enum /v') do (
		set check=%%a
		set /a y+=1
		if "!y!"=="1" (set "offset=rem ") else (set "offset=")
		if "!check:~0,7!"=="Windows" (
			call :FOOTER
			!offset!pause
			cls
			call :HEADER "List Bootmenu", " "
		)
		echo %%a
	)
	call :FOOTER
	pause
	goto:SysInternal
:BackupBM
	cls
	call :HEADER "Backup Bootmenu", " "
	call :SystemTime
	if /i "%TO%" == "" set TO=5
	if /i "%dest%" == "" set dest=C:\Bootmenu.Backup
	if /i "%nameB%" == "" set nameB=%~dp0%.%D.MONTH%.%D.DAY%.%D.YEAR%.%D.HOUR%.%D.MINUTE%.Backup
	set label2=SafeBoot
	echo BACKUP EXISTING BOOTMENU. Enter a name for Backup.
	echo Default: %nameB%
	echo:
	echo Enter a destination path for backup.
	echo Default: %dest%
	call :FOOTER
	set /p nameB=Set Backup Name :^>
	set /p dest=Set Destination Path :^>
	echo:
	if /i "%dest%" == "" set dest=C:\Bootmenu.Backup
	if not exist "%dest%" md "%dest%" >nul
	bcdedit /export %dest%\%nameB%
	call :FOOTER
	CHOICE /C AB /N /M "[A]gain or [B]ack?:"
	if %errorlevel%==1 goto:BackupBM
    if %errorlevel%==2 goto:SysInternal
:SetBM
	cls
	call :HEADER "Create Entry in Bootmenu", " "
	if /i "%TO%" == "" set TO=5
	if /i "%dest%" == "" set dest=C:\Bootmenu.Backup
	echo This will install new boot entry by doubling the existing Windows one.
	echo Enter the Identifier Number of your Windows 8 Install without the brackets.
	echo:
	echo Enter the Timeout.
	echo Default: %TO%
	call :FOOTER
	set /p ID=Set Identifier Number :^>
	set /p TO=Set Timeout :^>
	call :FOOTER
	bcdedit /copy {%ID%} /d safeboot
	bcdedit /timeout %TO%
	call :FOOTER
	echo NOTE: Copy the new ID above in case you want it to start to Safe Mode automatically!
	call :FOOTER
	CHOICE /C AB /N /M "[A]gain or [B]ack?:"
	if %errorlevel%==1 goto :SetBM
    if %errorlevel%==2 goto:SysInternal
:SetAutomaticBM
	cls
	call :HEADER "Force Entry to start automatically into Safe Mode", " "
	echo This will set the new entry to boot to safemode automatically.
	echo Enter the new Identifier Number without the brackets.
	call :FOOTER
	set /p ID=Set Identifier Number :^>
	call :FOOTER
	bcdedit /set {%ID%} safeboot minimal
	call :FOOTER
	CHOICE /C AB /N /M "[A]gain or [B]ack?:"
	if %errorlevel%==1 goto :SetAutomaticBM
    if %errorlevel%==2 goto:SysInternal
:RestoreBM
	cls
	call :HEADER "Restore Bootmenu", " "
	call :SystemTime
	if /i "%dest%" == "" set dest=C:\Bootmenu.Backup
	if /i "%nameB%" == "" set nameB=%username%.%D.MONTH%.%D.DAY%.%D.YEAR%.%D.HOUR%.%D.MINUTE%.Backup
	echo RESTORE STORED BOOTMENU. Enter a name for Backup.
	echo Default: %nameB%
	echo:
	echo Enter a destination path for backup.
	echo Default: %dest%
	call :FOOTER
	set /p name=Set Backup Name :^>
	set /p dest=Set Destination Path :^>
	call :FOOTER
	bcdedit /import %dest%\%nameB%
	call :FOOTER
	CHOICE /C AB /N /M "[A]gain or [B]ack?:"
	if %errorlevel%==1 goto :RestoreBM
    if %errorlevel%==2 goto:SysInternal
:DeleteBM
	cls
	call :HEADER "Delete Entry in Bootmenu", " "
	start cmd /k bcdedit /enum /v
	echo Enter the Identifier Number of your Windows 8 Install without the brackets.
	call :FOOTER
	set /p ID=Set Identifier Number :^>
	call :FOOTER
	bcdedit /delete {%ID%}
	call :FOOTER
	CHOICE /C AB /N /M "[A]gain or [B]ack?:"
	if %errorlevel%==1 goto :DeleteBM
    if %errorlevel%==2 goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CreateNewEntry
	cls
	call :HEADER "Create Entry for Windows Install in Bootmenu", " "
	CHOICE /C CB /N /M "[C]reate Boot Entry or [B]ack ?"
	if %errorlevel%==1 goto :furtherNewEntry
	if %errorlevel%==2 goto:SysInternal
:furtherNewEntry
	cls
	call :HEADER "This Creates Boot Entry", " "
	echo Default: %lang%
	echo Values: Language of Edition 'en-US' 
	echo:
	echo Default: %bootdisk%
	echo Values: Path to Boot Disk 'X:'
	echo:
	echo Default: %path1%
	echo Values: Path of Target Disk 'X:'
	call :FOOTER
	set /p lang=Set Language of Edition ^>
	set /p bootdisk=Set Path to Boot Disk ^>
	set /p path1=Path of Target Disk  ^>
	call :FOOTER
	%path1%\Windows\System32\bcdboot %path1%\Windows /l %lang% /s %bootdisk%
	call :FOOTER
	pause
	goto:SysInternal
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:SystemTime
	set X=
	for /f "skip=1 delims=" %%x in ('wmic os get localdatetime') do if not defined X set X=%%x
	set D.YEAR=%X:~0,4%
	set D.MONTH=%X:~4,2%
	set D.DAY=%X:~6,2%
	set D.HOUR=%X:~8,2%
	set D.MINUTE=%X:~10,2%
	set D.SECOND=%X:~12,2%
	set D.FRACTIONS=%X:~15,6%
	set D.OFFSET=%X:~21,4%
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:HEADER
	echo:
	echo €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo %~1 
	echo:%~2
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:FOOTER
	echo:
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:SHORTFOOTER
	echo:
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:KeyInfoChoice
	CHOICE /C DRB /N /M "[D]ecode, [R]eassemble or [B]ack?:"
	if %errorlevel%==1 goto :Decode
	if %errorlevel%==2 goto :Reassemble
	if %errorlevel%==3 goto:Tools
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
