	@echo off
	TITLE ˛ Windows Update Installer Mk4 ˛ by s1ave77
::Code by s1ave77
	setlocal ENABLEDELAYEDEXPANSION
	REG QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentVersion | FINDSTR 6.0 >NUL
	if %errorlevel%==0 goto :Error
	REG QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentVersion | FINDSTR 5.1 >NUL
	if %errorlevel%==0 goto :Error
:Menu
	CLS
	color 2F
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  UPDATE INSTALLER  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	echo    €ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€
	echo    €‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€
	echo:
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    == (A) Set Update Folder ================ (C) View Updates ======================
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    == (D) LDR Updates [MSU] [WUSA] ========= (E) LDR Updates [MSP] [WUSA] ==========
	echo:   ∞                                                                               ∞
	echo    == (F) LDR/GDR Updates [MSU] [DISM] =============================================
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    == (L) List Installed Updates ===================================================
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo    ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) Back ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
 	CHOICE /C ACDEFLB /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto :SetFolder
	if %errorlevel%==2 goto :ViewUpdates
	if %errorlevel%==3 set end=msu & goto :Install
	if %errorlevel%==4 set end=msp & goto :Install
	if %errorlevel%==5 set end=msu & goto :LDRInstall
	if %errorlevel%==6 goto :InstalledUpdates
	if %errorlevel%==7 (pushd %~dp0)&&(systemtools.cmd)
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:SetFolder
	CLS
	call :HEADER "Set Update Type: [M]SU MS[P]", " "
	CHOICE /C MP /N /M ">          YOUR CHOICE:"
	if %errorlevel%==1 set end=msu
	if %errorlevel%==2 set end=msp
::	if %errorlevel%==3 set end=exe
::	if %errorlevel%==4 set end=cab
	pushd "%~dp0"
	set z=0
	for %%A in (*.%end%) do set /a z+=1
	if "%z%" GTR "0" set p=%cd%
	CLS
	call :HEADER "%username% on %ver% %vera%", "Set path for Updates (%end%) Folder"
	if "%z%" LSS "1" echo No Updates found in current Folder.
	if "%z%" GTR "0" echo Updates found in current Folder: %z%
	echo:
	echo Actual Path: %cd%
	echo:
	echo Update Path: %p%
	echo:
	echo NOTE: You must specify folder path here!
	call :FOOTER
	SET /p p=Enter Folder Path here:	
	if /i "%p:~-1%"=="\" set "p=%p:~0,-1%"
	pause
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ViewUpdates
	CLS
	call :HEADER "Set Update Type: [M]SU MS[P]", " "
	CHOICE /C MP /N /M ">          YOUR CHOICE:"
	if %errorlevel%==1 set end=msu
	if %errorlevel%==2 set end=msp
::	if %errorlevel%==3 set end=exe
::	if %errorlevel%==4 set end=cab
	CLS
	set z=0
	for /R "%p%" %%A in (*.%end%) do set /a z+=1
	if "%z%" LSS "1" goto :Failure
	call :HEADER "Updates (%end%) found: %z%", "Path: %p%"
	CHOICE /C YNI /N /M ">          Show Updates [Y]ES [N]O or [I]NSTALL ?:"
	if %errorlevel%==1 goto :show
	if %errorlevel%==2 goto :Menu
	if %errorlevel%==3 goto :Install
:show
	CLS
	mode con cols=87 lines=53
	Set COUNT=0
	FOR /R "%p%" %%A IN (*.%end%) DO (
		SET /A COUNT+=1
	call :HEADER "Update !COUNT! of %z% = %%~nA.%end%", " "
		if "!COUNT!"=="50" pause&& set "COUNT=0"&& CLS
	)
	pause
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Install
	CLS
	call :HEADER "Install Choice", " "
	CHOICE /C AT /N /M "[A]uto or order from [T]extfile ?"
	if %errorlevel%==1 goto :furtherInstall1
	if %errorlevel%==2 goto :furtherInstall2
:furtherInstall1
	echo:
	echo Update Path: %p%
	echo:
	echo NOTE: You must specify folder path here!
	call :FOOTER
	SET /p p=Enter Folder Path here:
	if /i "%p:~-1%"=="\" set "p=%p:~0,-1%"
	Set COUNT=0
	set z=0
	for /R "%p%" %%A in (*.msu) do set /a z+=1
	if "%z%" LSS "1" goto :Failure
	call :SystemTime
	set timestart=%D.HOUR%%D.MINUTE%%D.SECOND%
	FOR /R "%p%" %%A IN (*.msu) DO (
		CLS
		SET /A COUNT+=1
		echo:
		echo €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
		echo Getting Ready Windows Update for %username%
 		echo Updates found: %z%
 		echo Installing Windows Updates...please wait. This may take a while.
		call :FOOTER
        echo Installing !COUNT! of %z% = %%~nA.%end%
        >NUL TIMEOUT /t 3
        WUSA "%%A" /quiet /norestart
	)
	echo:
	call :SystemTime
	set timeend=%D.HOUR%%D.MINUTE%%D.SECOND%
	set timecompleted=%timeend%-%timestart%
	echo Done installing %z% updates on %D.MONTH%/%D.DAY%/%D.YEAR% time needed %timecompleted%.
	echo:
	echo You should reboot now.
	echo:
	CHOICE /C YN /N /M ">Reboot now? [Y]es [N]o :"
	if %errorlevel%==1 goto :Reboot
	if %errorlevel%==2 goto :Menu
:furtherInstall2
	echo:
	echo Update Path: %p%
	echo:
	echo NOTE: You must specify folder path here!
	echo:
	echo Path to Text File: %path10%
	call :FOOTER
	SET /p p=Enter Folder Path here:	
	SET /p path10=Enter Text File Path here:	
	if /i "%p:~-1%"=="\" set "p=%p:~0,-1%"
	Set COUNT=0
	set z=0
	call :SystemTime
	FOR /F "tokens=*" %%A IN (%path10%) DO set /A z+=1
	FOR /F "tokens=*" %%A IN (%path10%) DO (
		CLS
		SET /A COUNT+=1
		echo:
		echo €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
		echo Getting Ready Windows Update for %username%
 		echo Updates found: %z%
 		echo Installing Windows Updates...please wait. This may take a while.
		call :FOOTER
        echo Installing !COUNT! of %z% = %%A.%end%
        >NUL TIMEOUT /t 3
        WUSA "%p%\%%A.msu" /quiet /norestart
	)
	echo:
	call :SystemTime
	set timeend=%D.HOUR%%D.MINUTE%%D.SECOND%
	set /a timecompleted=%timeend%-%timestart%
	echo Done installing %z% updates on %D.MONTH%/%D.DAY%/%D.YEAR% time needed %timecompleted%.
	echo:
	echo You should reboot now.
	call :FOOTER
	CHOICE /C YN /N /M ">Reboot now? [Y]es [N]o :"
	if %errorlevel%==1 goto :Reboot
	if %errorlevel%==2 goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:LDRInstall
	set dism=adk\win10.%vera%\dism.exe
	set imagex=adk\win10.%vera%\imagex.exe
	set oscdimg=adk\win10.%vera%\oscdimg.exe
	set "used=[WIN10  %vera%]"
	if %win% lss 9200 (set dism=adk\win10.%vera%\dism.exe)&&(set used=[WIN8.1 %vera%])
	if %win% lss 9200 (set dism=adk\win10.%vera%\imagex.exe)
	if %win% lss 9200 (set dism=adk\win10.%vera%\oscdimg.exe)
	CLS
	call :HEADER "Install Choice", " "
	CHOICE /C AT /N /M "[A]uto or order from [T]extfile ?"
	if %errorlevel%==1 goto :furtherLDR1
	if %errorlevel%==2 goto :furtherLDR2
:furtherLDR1
	echo:
	echo Update Folder Path: %p%
	echo NOTE: You must specify folder path here!
	echo:
	if "%ptemp%"=="" set ptemp=%temp%\CAB
	echo Temp Folder Path: %ptemp%
	echo NOTE: You must specify folder path here!
	call :FOOTER
	SET /p p=Enter UpdateFolder Path here:
	SET /p ptemp=Enter Temp Folder Path here:
	if exist "%ptemp%" rd /s /q "%ptemp%" >nul
	md "%ptemp%"
	set comm=adk\comm.exe
	set "file=%ptemp%\installed.updates.txt"
	set "file2=%ptemp%\updates.txt"
	set "deltafile=%ptemp%\delta.updates.txt"
	for /f "tokens=3 delims=: " %%g in ('"DISM /online /Get-CurrentEdition /english" ^| findstr /i Image') do set offlineversion=%%g
	for /f "tokens=3 delims=: " %%l in ('"DISM /online /Get-CurrentEdition /english" ^| findstr /i Edition') do set offlineedition=%%l
	if "!offlineversion:~0,3!"=="6.1" set name1=Windows7
	if "!offlineversion:~0,3!"=="6.2" set name1=Windows8-RT
	if "!offlineversion:~0,3!"=="6.3" set name1=Windows8.1
	for /f "tokens=5,6,7 delims=:_~ " %%m in ('"DISM /online /Get-Packages /english" ^| findstr /i Package') do (
		if %%m equ amd64 (set "offset=rem ") else (set "offset=")
		if %%o equ amd64 set offlinearch=x64
		if %%o equ x86 set offlinearch=%%o
		!offset!echo !name1!-%%m-!offlinearch!>>!file!
	)
	for /R "%p%" %%A in (*.msu) do for /f "tokens=1 delims=_ " %%g in ("%%~nA") do echo %%~g>>!file2!
	call :CompareWithPowershell "%file%", "%file2%", "%deltafile%"
::	for /f "tokens=1 delims= " %%a in ('"powershell Compare-Object -ReferenceObject (Get-Content !file!) -DifferenceObject (Get-Content !file2!) ^| Format-Table -AutoSize" ^| findstr /i "=^>"') do echo %%a>>%deltafile%
	if not exist %deltafile% goto :NoUpdatesNeeded
:ShowPackages
	cls
	call :HEADER "Checking Updates against installed ones", " "
	echo Not Installed:
	echo:
	set "y=0"
	for /f "tokens=*" %%a in (%deltafile%) do (
		set /a y+=1
		echo %%a
		if !y! equ 30 (
		call :FOOTER
			pause
			cls
			call :HEADER "Checking Updates against installed ones", " "
			echo Not Installed:
			echo:
			set "y=0"
		)
	)
	call :FOOTER
	pause
	set ldrlist=(2898847, 2898850, 2931358, 2934520)
	Set COUNT=0
	set z=0
	for /f "tokens=*" %%a in (%deltafile%) do set /a z+=1
	if "%z%" LSS "1" goto :Failure
	for /f "tokens=*" %%a in (%deltafile%) do (
		for /r "%p%" %%N in (*.msu) do echo %%~nN | findstr /i "%%a" 1>nul && expand.exe -f:*Windows*.cab "%%N" "%ptemp%" >nul
	)
	call :SystemTime
	set timestart=%D.HOUR%%D.MINUTE%%D.SECOND%
	set z=0
	FOR /R "%ptemp%" %%A IN (*.cab) do set /a z+=1
	FOR /R "%ptemp%" %%A IN (*.cab) DO (
		CLS
		SET /A COUNT+=1
		echo:
		echo €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
		echo Getting Ready Windows Update for %username%
 		echo Updates found: %z%
 		echo Installing Windows Updates...please wait. This may take a while.
		call :FOOTER
        echo Installing !COUNT! of %z% = %%~nA.cab
		echo:
		set "packagename=%%~nA.cab"
		for /d %%G in %ldrlist% do (
			if /i !packagename! equ Windows8.1-KB%%G-!vera!.cab (
				md "!ptemp!\KB%%G"
				expand.exe -f:* "%%A" "%ptemp%\KB%%G" >nul
				set package=!ptemp!\KB%%G\update-bf.mum
			) else (
				set package=%%A
			)
		)
        %dism% /online /english /NoRestart /Add-Package /packagepath:!package!
		call :FOOTER
		timeout /t 3
	)
	echo:
	call :SystemTime
	set timeend=%D.HOUR%%D.MINUTE%%D.SECOND%
	set timecompleted=%timeend%-%timestart%
	call :FOOTER
	echo Done installing %z% updates on %D.MONTH%/%D.DAY%/%D.YEAR% time needed %timecompleted%.
	echo:
	echo You should reboot now.
	call :FOOTER
	CHOICE /C YN /N /M ">Reboot now? [Y]es [N]o :"
	if %errorlevel%==1 if exist %ptemp% rd /s /q %ptemp% >nul&& goto :Reboot
	if %errorlevel%==2 if exist %ptemp% rd /s /q %ptemp% >nul&& goto :Menu
:furtherLDR2
	if "%ptemp%"=="" set ptemp=%temp%\CAB
	set comm=adk\comm.exe
	set "file=%ptemp%\installed.updates.txt"
	set "file2=%ptemp%\updates.txt"
	set "deltafile=%ptemp%\delta.updates.txt"
	echo:
	echo Update Path: %p%
	echo NOTE: You must specify folder path here!
	echo:
	echo Path to Text File: %file2%
	echo:
	echo Temp Folder Path: %ptemp%
	echo NOTE: You must specify folder path here!
	call :FOOTER
	set /p p=Enter Folder Path here:
	set /p file2=Enter Text File Path here:
	set /p ptemp=Enter Temp Folder Path here:
	if exist %ptemp% rd /s /q %ptemp% >nul
	md %ptemp%
	for /f "tokens=3 delims=: " %%g in ('"DISM /online /Get-CurrentEdition /english" ^| findstr /i Image') do set offlineversion=%%g
	for /f "tokens=3 delims=: " %%l in ('"DISM /online /Get-CurrentEdition /english" ^| findstr /i Edition') do set offlineedition=%%l
	if "!offlineversion:~0,3!"=="6.1" set name1=Windows7
	if "!offlineversion:~0,3!"=="6.2" set name1=Windows8-RT
	if "!offlineversion:~0,3!"=="6.3" set name1=Windows8.1
	for /f "tokens=5,6,7 delims=:_~ " %%m in ('"DISM /online /Get-Packages /english" ^| findstr /i Package') do (
		if %%m equ amd64 (set "offset=rem ") else (set "offset=")
		if %%o equ amd64 set offlinearch=x64
		if %%o equ x86 set offlinearch=%%o
		!offset!echo !name1!-%%m-!offlinearch!>>!file!
	)
	for /R "%p%" %%A in (*.msu) do (echo %%~nA>>!file2!)
	for /f %%i in ('%comm% -2 -3 "!file2!" "!file!"') do (
		echo %%i>>!deltafile!
	)
	if not exist %deltafile% goto :NoUpdatesNeeded
	timeout /t 5
:ShowPackages2
	cls
	call :HEADER "Checking Updates against installed ones", " "
	echo Not Installed:
	echo:
	set "y=0"
	for /f "tokens=*" %%a in (%deltafile%) do (
		set /a y+=1
		echo %%a
		if !y! equ 30 (
			call :FOOTER
			pause
			cls
			call :HEADER "Checking Updates against installed ones", " "
			echo Not Installed:
			echo:
			set "y=0"
		)
	)
	call :FOOTER
	pause
	set ldrlist=(2898847,2898850,2931358,2934520)
	Set COUNT=0
	set z=0
	for /R "%p%" %%A in (*.msu) do set /a z+=1
	if "%z%" LSS "1" goto :Failure
	for /f "tokens=*" %%a in (%deltafile%) do (
		expand.exe -f:*Windows*.cab "%p%\%%a.msu" "%ptemp%" >nul
	)
	pause
	call :SystemTime
	set timestart=%D.HOUR%%D.MINUTE%%D.SECOND%
	set z=0
	FOR /F "tokens=*" %%A IN (%deltafile%) DO set /A z+=1
	FOR /F "tokens=*" %%A IN (%deltafile%) DO (
		CLS
		SET /A COUNT+=1
		echo:
		echo €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
		echo Getting Ready Windows Update for %username%
 		echo Updates found: %z%
 		echo Installing Windows Updates...please wait. This may take a while.
		call :FOOTER
        echo Installing !COUNT! of %z% = %%A.cab
		set "packagename=%%A.cab"
		for /d %%G in %ldrlist% do (
			if /i !packagename! equ Windows8.1-KB%%G-!vera!.cab (
				md "!ptemp!\KB%%G"
				expand.exe -f:* "%ptemp%\%%A.cab" "%ptemp%\KB%%G" >nul
				set package=!ptemp!\KB%%G\update-bf.mum
			) else (
				set package=!ptemp!\%%A.cab
			)
		)
        %dism% /online /english /NoRestart /Add-Package /packagepath:!package!
		call :FOOTER
		timeout /t 3
	)
	echo:
	call :SystemTime
	set timeend=%D.HOUR%%D.MINUTE%%D.SECOND%
	set timecompleted=%timeend%-%timestart%
	call :FOOTER
	echo Done installing %z% updates on %D.MONTH%/%D.DAY%/%D.YEAR% time needed %timecompleted%.
	echo:
	echo You should reboot now.
	call :FOOTER
	CHOICE /C YN /N /M ">Reboot now? [Y]es [N]o :"
	if %errorlevel%==1 if exist %ptemp% rd /s /q %ptemp% >nul&& goto :Reboot
	if %errorlevel%==2 if exist %ptemp% rd /s /q %ptemp% >nul&& goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:InstalledUpdates
	CLS
	call :HEADER "%username% on %ver% %vera%", "List installed Updates"
	if "%checklist%"=="" set "checklist=%temp%\checklist.txt"
	echo Path to Text File: %checklist%
	call :FOOTER
	set /p checklist=Enter Path to Text File here:
	if exist "%checklist%" del /s /q "%checklist%" >nul
	set "count=0"&&set "count2=0"
	CLS
	echo:
	call :HEADER "%username% on %ver% %vera%", "List installed Updates"
	set "count=0"&&set "count2=0"
	for /f "tokens=1,2,3,4 delims= " %%a in ('"wmic qfe get Description, HotFixID, InstalledOn"') do (
		set /a count2+=1
		if /i %%a equ Security echo Security Update : %%c :%%d&&echo Security Update : %%c :%%d>>%checklist%
		if /i %%a equ Hotfix echo Hotfix          : %%b :%%c&&echo Hotfix          : %%b :%%c>>%checklist%
		if /i %%a equ Update echo Update          : %%b :%%c&&echo Update          : %%b :%%c>>%checklist%
		if /i "!count2!"=="30" (
			set "count2=0"
			call :FOOTER
			pause
			CLS
			call :HEADER "%username% on %ver% %vera%", "List installed Updates"
		)
	)
	call :FOOTER
	pause
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::CALL TARGET LOOPS
:SystemTime
	set "X="
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
:================================================================================================================
::===============================================================================================================
::COMPARE LISTS WITH POWERSHELL
:CompareWithPowershell
for /f "tokens=* delims= " %%a in ('"powershell Compare-Object -ReferenceObject (Get-Content %~1) -DifferenceObject (Get-Content %~2) ^| where-object SideIndicator -eq =^> ^| select -Expand InputObject ^| fl"') do (
	echo %%a
	echo %%a>>%~3
)
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
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Failure
	CLS
	color 0C
	echo:
	echo:
	echo:
	echo:
	echo:
	echo:
	echo €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo ### NO UPDATES FOUND ###
	echo:
	echo NOTE: Updates (*.MSU) must be in same directory as this script.
	echo:
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	pause
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Error
	CLS
	color 0C
	echo:
	echo:
	echo:
	echo:
	echo:
	echo €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 	echo NOTE: THIS SCRIPT ONLY WORKS ON WIN 7- AND WIN 8-FAMILIES
	echo:
	echo:
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	pause
	exit /b
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Reboot
	ENDLOCAL
	start shutdown.exe /r /t 0	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Exit
	ENDLOCAL
	exit
