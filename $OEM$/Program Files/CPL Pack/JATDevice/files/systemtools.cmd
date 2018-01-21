	@echo off
:: Code by s1ave77
	color 1F
	if not "%~1"=="" goto:%~1
	setlocal EnableExtensions
	setlocal EnableDelayedExpansion
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
	powershell.exe -command "& {$pshost = Get-Host;$pswindow = $pshost.UI.RawUI;$newsize = $pswindow.BufferSize;$newsize.height = 9001;$pswindow.buffersize = $newsize;}"
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:SystemTools
	cls
	pushd %~dp0
	mode con cols=87 lines=50
	color 06
	title ˛ MODULES AND SYSTEM TOOLS MENU ˛ by s1ave77
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  SYSTEM TOOLS ˛ MODULES  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	echo    €ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€
	echo    €‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€
	echo:
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    ++ (1) UPDATE PS MODULE +++++++++++++++++ (2) UPDATE INSTALLER MODULE +++++++++++
	echo    ∞                                                                               ∞
	echo    ++ (3) DISKPART MODULE ++++++++++++++++++ (4) DISM/IMAGEX MODULE ++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ++ (5) BATCH RENAME MODULE ++++++++++++++ (6) REGISTRY TWEAK MODULE +++++++++++++
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    == (A) VSS ADMIN MENU =================== (D) ONLINE DISM MENU ==================
	echo    ∞                                                                               ∞
	echo    == (W) REARM WIN 7 MENU ================= (P) PERFORMANCE INDEX MENU ============
	echo    ∞                                                                               ∞
	echo    == (N) WINDOWS RUNTIMES MENU ============ (G) SPEECH GENERATE ===================
	echo    ∞                                                                               ∞
	echo    == (O) SIMPLIX ON/OFFLINE =============== (E) FILE WRITE/COMPARE ================
	echo    ∞                                                                               ∞
	echo    == (M) MOUNT ISO/VHD ==================== (U) UNPACK MSIs =======================
	echo    ∞                                                                               ∞
	echo    == (Z) DOWNLOAD MENU ==================== (Q) KEYDUMP MENU ======================
	echo    ∞                                                                               ∞
	echo    == (J) REG CHANGE MENU ================== (S) WMI CHECK MENU ====================
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
 	echo    -- (C) Checkdisk ------------------------ (I) Drive Cleanup ---------------------
	echo    ∞                                                                               ∞
	echo    -- (F) System File Integrity Check ------ (H) Edit Hosts File -------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (X) Turn Hibernation On/Off ---------- (Y) Turn Firewall On/Off --------------
	echo    ∞                                                                               ∞
	echo    -- (K) Delete KMS Info ------------------ (L) Enable Caching --------------------
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ≤≤ (R) REBOOT ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) BACK ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
	:choiceST
	CHOICE /C 123456ADWPNGOEMUZQJSCIFHXYKLRB /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto:UpdateInstall
	if %errorlevel%==2 goto:BatchUpdateInstall
	if %errorlevel%==3 goto:PenDrive
	if %errorlevel%==4 goto:DismMenu
	if %errorlevel%==5 goto:BatchRename
	if %errorlevel%==6 goto:RegTweaks
	if %errorlevel%==7 goto:VSSAdmin
	if %errorlevel%==8 goto:OnlineDISM
	if %errorlevel%==9 goto:RearmW7Menu
	if %errorlevel%==10 goto:PerformanceIndex
	if %errorlevel%==11 goto:NETMenu
	if %errorlevel%==12 goto:Speech
	if %errorlevel%==13 goto:SimplixInstall
	if %errorlevel%==14 goto:FILEMenu
	if %errorlevel%==15 goto:MountISO
	if %errorlevel%==16 goto:UnpackMSI
	if %errorlevel%==17 goto:Downloads
	if %errorlevel%==18 goto:OA3KeyDump
	if %errorlevel%==19 goto:REGChangeMenu
	if %errorlevel%==20 goto:WMICheckMenu
	if %errorlevel%==21 goto:CheckDisk
	if %errorlevel%==22 goto:DriveCleanup
	if %errorlevel%==23 goto:SystemFileScan
	if %errorlevel%==24 goto:EditHostsFile
	if %errorlevel%==25 goto:Hibernation
	if %errorlevel%==26 goto:Firewall
	if %errorlevel%==27 goto:DeleteKMSInfo
	if %errorlevel%==28 goto:DnsPublishing
	if %errorlevel%==29 goto:Reboot
	if %errorlevel%==30 (pushd %~dp0)&&(call ..\JATDevice.cmd Jump.In)
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:PenDrive
	pushd %~dp0
	call diskpart.cmd
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:BatchRename
	pushd %~dp0
	call BatchRename.cmd
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:RegTweaks
	pushd %~dp0
	call RT\Regtweak.cmd
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:DismMenu
	pushd "%~dp0"
	call adk\DISM.cmd
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:UpdateInstall
	call Win.Update.Module.cmd
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:BatchUpdateInstall
	call Windows.Update.Installer.cmd
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:Speech
	call Speak.cmd
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:WMICheckMenu
	title ˛ WMI CHECK MENU ˛ by s1ave77
	cls
	call :HEADER "WMI CHECK MENU", " "
	echo    [P] Check current Partition Layout [GPT/MBR]
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C PB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :CheckPartLayout
    if %errorlevel%==2 goto:SystemTools
:CheckPartLayout
	cls
	call :HEADER "CHECK CURRENT PARTITION LAYOUT", " "
	for /f "skip=1 tokens=1 delims=: " %%a in ('"wmic partition where (BootPartition='True' and DiskIndex='0') get Type"') do (
	set checklayout=%%a
	if !checklayout! equ GPT set "layout=GPT"
	if !checklayout! equ Installable set "layout=MBR"
	)
	echo System is configured as: %layout%
	call :FOOTER
	title ˛ WMI CHECK MENU ˛ by s1ave77
	pause
	goto :WMICheckMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:REGChangeMenu
	set "setacl=setacl\setacl.%vera%\setacl.exe"
	title ˛ POWERSHELL REG CHANGE ˛ by s1ave77
	cls
	call :HEADER " REG CHANGE MENU", " "
	echo    [L] LIST REG ENTRIES AND VALUES
	echo:
	echo    [C] CHECK REG KEY OWNER AND PERMISSIONS
	echo:
	echo    [S] CHANGE REG KEY AND RESTORE PERMISSIONS
	echo:
	echo    [R] CHANGE REG KEY AND REVOKE PERMISSIONS
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C LCSRB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto:ListRegEntries
	if %errorlevel%==2 goto:CheckRegOwner
	if %errorlevel%==3 goto:RegChangeRestore
    if %errorlevel%==4 goto:RegChangeRevoke
    if %errorlevel%==5 goto:SystemTools
:ListRegEntries
	cls
	call :HEADER "LIST REG ENTRIES AND VALUES", ""
	call :RegInputHive
	call :FOOTER
	CHOICE /C SW /N /M "   [S]HORT or [W]ITH PS DEPEDENCIES:"
	if %errorlevel%==1 set "depend= -exclude PS*"
	if %errorlevel%==2 set "depend="
	cls
	call :HEADER "LIST REG ENTRIES AND VALUES", " "
	call :RegOwner "%hive%", "%subkey%"
	echo FOR: %hive%\%subkey%
	call :FOOTER
	echo ORIGINAL OWNER    : %owner% 
	if "%owner%"=="TrustedInstaller" (echo ACCESS PERMISSION : RESTRICTED) else (echo ACCESS PERMISSION : GRANTED)
	echo:
	call :RegEntryList "%hive%", "%subkey%"
	call :FOOTER
	pause
	goto :REGChangeMenu
:CheckRegOwner
	cls
	call :HEADER "CHECK REG KEY OWNER AND PERMISSIONS", " "
	call :RegInputHive
	cls
	call :HEADER "CHECK REG KEY OWNER AND PERMISSIONS", " "
	echo HIVE  : %hive%
	echo SUBKEY: %subkey%
	call :FOOTER
	call :RegOwner "%hive%", "%subkey%"
	echo ORIGINAL OWNER: %owner%
	call :FOOTER
	echo Permissions:
	echo:
	call :RegPermissions "%hive%", "%subkey%"
	call :FOOTER
	if "%owner%"=="TrustedInstaller" (echo Permissions need to be changed.) else (echo No need to change Permissions.)
	call :FOOTER
	pause
	goto :REGChangeMenu
:RegChangeRestore
	cls
	call :HEADER "CHANGE REG KEY AND RESTORE PERMISSIONS", " "
	call :RegInputHive
	call :FOOTER
	call :RegInputValue
	call :FOOTER
	cls
	call :HEADER "CHANGE REG KEY AND RESTORE PERMISSIONS", " "
	call :RegOwner "%hive%", "%subkey%"
	echo:
	if "%owner%"=="TrustedInstaller" (
		echo Changing Permissions.
		echo:
		call :RegChangePermissions "%hive%", "%subkey%"
		call :FOOTER
	)
	call :RegChangeLoop "%hive%", "%subkey%", "%entry%", "%entrytype%", "%entryvalue%"
	call :FOOTER
	if "%owner%"=="TrustedInstaller" (
		echo Restoring Permissions.
		echo:
		call :RegRestorePermissions "%hive%", "%subkey%"
		call :FOOTER
	)
	pause
	goto :REGChangeMenu
:RegChangeRevoke
	cls
	call :HEADER "CHANGE REG KEY AND REVOKE PERMISSIONS", " "
	call :RegInputHive
	call :FOOTER
	call :RegInputValue
	call :FOOTER
	cls
	call :HEADER "CHANGE REG KEY AND REVOKE PERMISSIONS", " "
	call :RegOwner "%hive%", "%subkey%"
	echo:
	if not "%owner%"=="TrustedInstaller" (
		echo No need changing Permissions.
		echo:
		echo USE: [S] CHANGE REG KEY AND RESTORE PERMISSIONS
		call :FOOTER
		pause
	goto :REGChangeMenu
	)
	echo:
	echo Changing Permissions.
	echo:
	call :RegChangePermissions "%hive%", "%subkey%"
	call :FOOTER
	echo Revoking TI Permissions.
	echo:
	call :RegRevokePermissions "%hive%", "%subkey%"
	call :FOOTER
	call :RegChangeLoop "%hive%", "%subkey%", "%entry%", "%entrytype%", "%entryvalue%"
	call :FOOTER
	pause
	goto :REGChangeMenu
:RegInputHive
	echo Enter Hive Abreviation 'hklm'
	echo Default: %hive%
	echo:
	echo Enter Subkey 'SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management'
	echo Default: %subkey%
	call :FOOTER
	set /p hive=Enter Hive :
	set /p subkey=Enter Subkey :
	goto:eof
:RegInputValue
	echo Enter Entry name 'DisablePagingExecutive'
	echo Default: %entry%
	echo:
	if "%entrytype%"=="" set "entrytype=DWord"
	echo Enter Entry type 'Binary', 'DWord', 'String'
	echo Default: %entrytype%
	echo:
	echo Enter Entry value '0' NOTE: USE 0x00000000 for DWord
	echo Default: %entryvalue%
	call :FOOTER
	set /p entry=Enter Entry Name :
	set /p entrytype=Enter Entry Type :
	set /p entryvalue=Enter Entry Value :
	goto:eof
:RegEntryList
	set "count=0"
	for /f "tokens=* delims=" %%g in ('"powershell Get-ItemProperty '%~1:\%~2' ^| Select *%depend%"') do (
		set /a count+=1
		echo %%g
		if "!count!"=="30" (
			call :FOOTER
			pause
			cls
			call :HEADER "LIST REG ENTRIES AND VALUES", " "
			set "count=0"
		)
	)	
	goto:eof
:RegOwner
	for /f "skip=2 tokens=3 delims=:\- " %%g in ('"powershell get-acl '%~1:\%~2' ^| Select owner"') do set "owner=%%g"
	goto:eof
:RegPermissions
	%setacl% -on "%~1\%~2" -ot reg -actn list
	goto:eof
:RegChangePermissions
	%setacl% -on "%~1\%~2" -ot reg -actn setowner -ownr "n:S-1-5-32-544;s:y"
	%setacl% -on "%~1\%~2" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;s:y;i:so,sc;m:set;w:dacl"
	goto:eof
:RegRestorePermissions
	%setacl% -on "%~1\%~2" -ot reg -actn ace -ace "n:S-1-5-32-544;p:read;s:y;i:so,sc;m:set;w:dacl"
	%setacl% -on "%~1\%~2" -ot reg -actn setowner -ownr "n:S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464;s:y"
	goto:eof
:RegRevokePermissions
	%setacl% -on "%~1\%~2" -ot reg -actn ace -ace "n:S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464;p:full;s:y;i:so,sc;m:revoke;w:dacl"
	goto:eof
:RegChangeLoop
	powershell Set-ItemProperty -Path '%~1:\%~2' -Name "%~3" -Type "%~4" -Value "%~5"
	if %errorlevel%==0 echo:&&echo Successfully changed values.
	if %errorlevel%==1 echo:&&echo Failed to change values.
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:Downloads
	cls
	title ˛ DOWNLOAD MENU ˛ by s1ave77
	call :HEADER " DOWNLOAD MENU", " "
	echo    [C] Check Page with cURL
	echo:
	echo    [P] Download with Powershell
	echo    [W] Download with WGet
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C CPWB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :cURLCheck
	if %errorlevel%==2 goto :PowershellDownloads
    if %errorlevel%==3 goto :Wget
    if %errorlevel%==4 goto:SystemTools
:cURLCheck
	cls
	call :HEADER "cURL Check", " "
	echo Link to check.
	echo Default: %url%
	call :FOOTER
	set /p url=Set Link to check :
	cls
	call :HEADER "Checking URL", "URL: %url%"
	curl\curl.%vera% -I %url%
	call :FOOTER
	CHOICE /C AB /N /M "[A]gain or [B]ack ?"
	if %errorlevel%==1 goto:cURLCheck
    if %errorlevel%==2 goto:Downloads
:PowershellDownloads
	cls
	call :HEADER "POWERSHELL DOWNLOAD FOLDER", " "
	echo:
	echo Path to Download Folder
	echo Default: %downpath%
	call :FOOTER
	set /p downpath=Set Path to Download Folder :
	if not exist "%downpath%" md "%downpath%"
	echo:
:PowershellDownloadsMenu
	cls
	title ˛ DOWNLOAD MENU ˛ by s1ave77
	call :HEADER "POWERSHELL DOWNLOAD MENU", " "
	echo    [D] Download single URL
	echo    [T] URLs from TXT file
	echo:
	echo    [N] Enter new Data
	echo    [B] BACK
	call :FOOTER
	CHOICE /C DTNB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :PowershellDownloadsURL
    if %errorlevel%==2 goto :PowershellDownloadsFILE
    if %errorlevel%==3 goto :PowershellDownloads
    if %errorlevel%==4 goto:Downloads
:PowershellDownloadsURL
	cls
	call :HEADER "POWERSHELL SINGLE URL", " "
	echo Enter URL
	echo Default: "%url%"
	call :FOOTER
	set /p url=Set URL :
	cls
	call :HEADER "POWERSHELL SINGLE URL", " "
	powershell Start-BitsTransfer -Source "%url%" -Destination "%downpath%"
	call :FOOTER
	pause
	goto:PowershellDownloadsMenu
:PowershellDownloadsFILE
	cls
	call :HEADER "POWERSHELL FROM TEXT FILE", " "
	echo Path to TXT File
	echo Default: %txt%
	call :FOOTER
	set /p txt=Set Path to TXT File :
	set "count=0"
	set "p=0"
	FOR /F "tokens=*" %%A IN (%txt%) DO set /a count+=1
	FOR /F "tokens=*" %%A IN (%txt%) DO (
		set /a p+=1
		cls
		call :HEADER "POWERSHELL FROM TEXT FILE !p! of !count!", "URL: %%A"
		powershell Start-BitsTransfer -Source "%%A" -Destination "%downpath%"
		call :FOOTER
		timeout /t 5
	)
	If exist "%file%" del /s /q "%file%"
	goto:PowershellDownloadsMenu
:Wget
	cls
	title ˛ WGET MENU ˛ by s1ave77
	call :HEADER "WGET DOWNLOAD FOLDER", " "
	set "wget=wget\wget.exe"
	echo Path to Download Folder
	echo Default: %downpath%
	call :FOOTER
	set /p downpath=Set Path to Download Folder :
	if not exist "%downpath%" md "%downpath%"
	set "log=%downpath%\wget.log"
	echo:
	CHOICE /C OW /N /M "[O]utput Info directly or [W]rite to Log ?:"
	if %errorlevel%==1 set "logging="
    if %errorlevel%==2 set "logging= --append-output=%log%"
	echo:
	CHOICE /C SRD /N /M "[S]pider Mode, + Server [R]esponse or [D]ownload File ?:"
	if %errorlevel%==1 set "spider= --spider"
	if %errorlevel%==2 set "spider= --server-response --spider"
    if %errorlevel%==3 set "spider="
:WgetMenu
	cls
	title ˛ WGET MENU ˛ by s1ave77
	if "%logging%"=="" (set "loggingstatus= Direct Output") else (set "loggingstatus=%logging%")
	if "%spider%"=="" (set "spiderstatus= Direct Download") else (set "spiderstatus=%spider%")
	call :HEADER "WGET MENU", " "
	echo Output  : %downpath%
	echo Logfile :%loggingstatus%
	echo Mode    :%spiderstatus%
	call :FOOTER
	echo    [D] Download single URL
	echo    [T] URLs from TXT file
	echo    [H] URLs from TXT file via HTTPS
	echo:
	echo    [R] Resume Download single url
	echo:
	echo    [C] Check Log File
	echo    [E] Erase Log File
	echo:
	echo    [N] ENTER NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C DTHRCENB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :DownloadSingleUrl
    if %errorlevel%==2 goto :DownloadUrlFromFile
    if %errorlevel%==3 goto :DownloadUrlFromFileHTTPS
    if %errorlevel%==4 goto :DownloadResume
    if %errorlevel%==5 start "" cmd /c notepad "%log%"&&goto:WgetMenu
    if %errorlevel%==6 goto :DeleteLog
    if %errorlevel%==7 goto :Wget
    if %errorlevel%==8 goto:Downloads
:DeleteLog
	del /s /q "%log%" >nul
	goto:WgetMenu
:DownloadSingleUrl
	cls
	call :HEADER "WGET SINGLE URL", " "
	echo Enter URL
	echo Default: "%url%"
	call :FOOTER
	set /p url=Set URL :
	cls
	call :HEADER "WGET SINGLE URL", " "
	%wget% -nc "%url%" -P "%downpath%"%logging%%spider%
	call :FOOTER
	pause
	goto:WgetMenu
:DownloadResume
	cls
	call :HEADER "WGET SINGLE URL", " "
	echo Enter URL
	echo Default: %url%
	call :FOOTER
	set /p url=Set URL :
	cls
	call :HEADER "WGET SINGLE URL", " "
	%wget% -c "%url%" -P "%downpath%"%logging%%spider%
	call :FOOTER
	pause
	goto:WgetMenu
:DownloadUrlFromFile
	cls
	call :HEADER "WGET URLs FROM TXT FILE", " "
	echo Path to TXT File
	echo Default: %txt%
	echo:
	set /p txt=Set Path to TXT File :
	set "count=0"
	set "p=0"
	FOR /F "tokens=*" %%A IN (%txt%) DO set /a count+=1
	FOR /F "tokens=*" %%A IN (%txt%) DO (
		set /a p+=1
		cls
		call :HEADER "WGET FROM TEXT FILE !p! of !count!", "URL: %%A"
		%wget% -nc "%%A" -P "%downpath%"%logging%%spider%
		call :FOOTER
		timeout /t 5
	)
	goto:WgetMenu
:DownloadUrlFromFileHTTPS
	cls
	call :HEADER " WGET URLs FROM TXT FILE", " "
	echo Path to TXT File
	echo Default: %txt%
	echo:
	if /i "%protocol%"=="" set protocol=auto
	echo Choose Protocol. auto, SSLv2, SSLv3, and TLSv1.
	echo Default: %protocol%
	call :FOOTER
	set /p txt=Set Path to TXT File :
	set /p protocol=Set Protocol :
	set "count=0"
	set "p=0"
	FOR /F "tokens=*" %%A IN (%txt%) DO set /a count+=1
	FOR /F "tokens=*" %%A IN (%txt%) DO (
		set /a p+=1
		cls
		call :HEADER " WGET FROM TEXT FILE !p! of !count!", "URL: %%A"
		%wget% -nc "%%A" --secure-protocol=%protocol% -P "%downpath%"%logging%%spider%
		call :FOOTER
		timeout /t 5
	)
	goto:WgetMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:OA3KeyDump
	for /f "tokens=2 delims== " %%A in ('"wmic path %slp% where (Name LIKE '%%Windows%%' and PartialProductKey is not null) get LicenseStatus /format:list"') do set status=%%A
	if %win% GEQ 9200 (set "tok2=2") else (set "tok2=3")
	for /f "tokens=%tok2% delims= " %%A in ('"wmic path %slp% where LicenseStatus='%status%' get name"') do set edition=%%A
	set "keyinfo=KeyInfo\KeyInfo.%vera%.exe"
	set "pkc=pkconfig.txt"
	set "channelid="
	set "keyname="
	set "editionid="
	set "actid="
	set "gid="
	title ˛ OA 3.0 KEY DUMP ˛ by s1ave77
	cls
	call :HEADER "Dump Windows Product Key", " "
	echo    [I] Show Installed PID
	echo:
	echo    [P] Show BIOS OA3.0 Key with Powershell
	echo    [R] Show BIOS OA3.0 Key with RWEverything
	echo:
	echo    [C] Check Key Info
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C IPRCB /N /M "YOUR CHOICE :"
	if %errorlevel%==1 goto :InstalledKey
	if %errorlevel%==2 goto :OA3.0KeyPowershell
	if %errorlevel%==3 goto :OA3.0KeyRWEverything
	if %errorlevel%==4 goto :KeyInfoCheck
	if %errorlevel%==5 goto:SystemTools
:InstalledKey
	cls
	call :HEADER "Dump Installed Key", " "
	echo This will check for installed Product Key.
	call :FOOTER
	if %win% GEQ 9200 for /f %%A in ('cscript PID8.vbs') do set syskey=%%A
	if %win% LSS 9200 for /f %%A in ('cscript PID7.vbs') do set syskey=%%A
	echo PID: %syskey%
	call :FOOTER
	pause
	goto:OA3KeyDump
:OA3.0KeyPowershell
	if %win% LSS 9200 goto:NotSupported
	cls
	call :HEADER "Dump OA 3.0 Key with Powershell", " "
	echo This will check for OA 3.0 Key.
	call :FOOTER
	set "productkey="
	set psfile=%temp%\oa3key.ps1
	echo (Get-WmiObject -query ëselect * from SoftwareLicensingServiceí).OA3xOriginalProductKey>%psfile%
	for /f "tokens=*" %%a in ('powershell -executionpolicy remotesigned -File %psfile%') do set productkey=%%a
	call :KeyCompareLoop
	call :FOOTER
	if exist %psfile% del /s /q %psfile% >nul
	if not "%syskey%"=="%productkey%" if "%editionid%"=="%edition%" (
		CHOICE /C IB /N /M "[I]nstall Key or [B]ack ?:"
	)
	if %errorlevel%==1 goto :OA30KeyInstall
	if %errorlevel%==2 goto:OA3KeyDump
	pause
	goto:OA3KeyDump
:OA3.0KeyRWEverything
	if %win% LSS 9200 goto:NotSupported
	cls
	call :HEADER "Dump OA 3.0 Key with RWEverything", " "
	echo This will check for OA 3.0 Key.
	call :FOOTER
	set "productkey="
	set logfile=rw\rw.log
	set rw=rw\Rw.exe
	%rw% /Min /command="ACPI Dump MSDM";"RwExit" /logfile=rw\rw.log
	for /f "Skip=1 tokens=2 delims=	" %%A in ('find "-" %logfile%') do set productkey=%%A
	call :KeyCompareLoop
	call :FOOTER
	if exist %logfile% del /s /q %logfile% >nul
	if not "%syskey%"=="%productkey%" if "%editionid%"=="%edition%" (
		CHOICE /C IB /N /M "[I]nstall Key or [B]ack ?:"
	)
	if %errorlevel%==1 goto :OA30KeyInstall
	if %errorlevel%==2 goto:OA3KeyDump
	pause
	goto:OA3KeyDump
:KeyInfoCheck
	if %win% LSS 9200 goto:NotSupported
	cls
	call :HEADER "Check Key Info", " "
	echo This will check for Key info.
	call :FOOTER
	set /p productkey=Enter your Key: 
	cls
	call :HEADER "Checking Key Info", " "
	call :KeyInfoLoop %productkey%
	echo PID       : %productkey%
	call :FOOTER
	echo ActID     : !actid!
	echo GroupID   : !gid!
	echo EditionID : !editionid!
	echo Name      : !keyname!
	echo ChannelID : !channelid!
	call :FOOTER
	pause
	goto:OA3KeyDump
:OA30KeyInstall
	call :HEADER "Installing OA 3.0 Key", "PID: %productkey%"
	wmic path %sls% where version='%version%' call InstallProductKey ProductKey="%productkey%" >nul 
	if %errorlevel% equ 0 echo Successfully installed Product Key
	if %errorlevel% neq 0 echo Installing Product Key Failed. 
	call :FOOTER
	pause
	goto:OA3KeyDump
:KeyInfoLoop
	set "count=0"
	for /f "tokens=1,2 delims== " %%a in ('%keyinfo% %~1') do (
		set /a count+=1
		if "!count!"=="2" set "gid=%%a"
	)
	for /f "tokens=1,2,3,4,5 delims=#" %%A in (!pkc!) do if %%B equ !gid! (
		set "actid=%%A"
		set "editionid=%%C"
		set "keyname=%%D"
		set "channelid=%%E"
	)
	goto:eof
:KeyCompareLoop
	if %win% GEQ 9200 for /f %%A in ('cscript PID8.vbs') do set syskey=%%A
	if %win% LSS 9200 for /f %%A in ('cscript PID7.vbs') do set syskey=%%A
	echo SYS KEY : %syskey%
	echo:
	echo EditionID : %edition%
	if not defined productkey (
		call :FOOTER
		echo ERROR   : NO MSDM TABLE FOUND OR INVALID.
		call :FOOTER
		pause
		if exist %psfile% del /s /q %psfile% >nul
		goto:OA3KeyDump
	)
	call :FOOTER
	echo OA3 KEY : %productkey%
	echo:
	call :KeyInfoLoop %productkey%
	echo EditionID : !editionid!
	call :FOOTER
	if "%syskey%"=="%productkey%" if "%editionid%"=="%edition%" echo COMPARE : KEY MATCH
	if not "%syskey%"=="%productkey%" if "%editionid%"=="%edition%" echo COMPARE : KEY MISMATCH ^| EDITION MATCH
	if not "%syskey%"=="%productkey%" if not "%editionid%"=="%edition%" echo COMPARE : KEY MISMATCH ^| EDITION MISMATCH
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:MountISO
	if %win% LSS 9200 goto:NotSupportedSystem
	cls
	call :HEADER "MOUNT ISO OR VHD FILES", " "
	echo    [M] Mount
	echo    [U] Unmount
	echo:
	echo    [C] Check
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C MUCB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :MountISOAction
    if %errorlevel%==2 goto :UnMountISO
    if %errorlevel%==3 goto :CheckISO
    if %errorlevel%==4 goto:SystemTools
:MountISOAction
	cls
	call :HEADER "MOUNT ISO OR VHD", " "
	echo Path to ISO or VHD
	echo Default: %isopath%
	call :FOOTER
	set /p isopath=Set Path to ISO/VHD :
	cls
	call :HEADER "", " "
	echo MOUNT ISO OR VHD
	call :FOOTER
	powershell Mount-DiskImage -ImagePath "%isopath%"
	echo:
	powershell Get-DiskImage -ImagePath "%isopath%" ^| Get-Volume
	call :FOOTER
	pause
	goto:MountISO
:UnMountISO
	cls
	call :HEADER "UNMOUNT ISO OR VHD", " "
	echo Path to ISO or VHD
	echo Default: %isopath%
	call :FOOTER
	set /p isopath=Set Path to ISO/VHD :
	cls
	call :HEADER "UNMOUNT ISO OR VHD", " "
	powershell Dismount-DiskImage -ImagePath "%isopath%"
	call :FOOTER
	pause
	goto:MountISO
:CheckISO
	cls
	call :HEADER "CHECK MOUNTED ISO OR VHD", " "
	echo Path to ISO or VHD
	echo Default: %isopath%
	call :FOOTER
	set /p isopath=Set Path to ISO/VHD :
	cls
	call :HEADER "UNMOUNT ISO OR VHD", " "
	powershell Get-DiskImage -ImagePath "%isopath%" ^| Get-Volume
	call :FOOTER
	pause
	goto:MountISO
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:UnpackMSI
	cls
	call :HEADER "UNPACK MSI FILES", " "
	echo Path to MSI
	echo Default: %msipath%
	echo:
	echo Path to unpack to
	echo Default: %packpath%
	echo:
	echo:
	set /p msipath=Set Path to MSI :
	set /p packpath=Set Path to unpack to :
	cls
	call :HEADER "UNPACKING MSI FILES", " "
	msiexec /a "%msipath%" /qb TARGETDIR="%packpath%"
	call :FOOTER
	pause
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:SimplixInstall
	set "dism=adk\win10.%vera%\dism.exe"
	if %win% lss 9200 set "dism=adk\win81.%vera%\dism.exe"
	cls
	call :HEADER "SIMPLIX PACK INSTALL or INTEGRATION", " "
	echo    [O] Online Install
	echo    [F] Offline Integration
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C OFB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :SimplixInstallOnline
    if %errorlevel%==2 goto :SimplixInstallOffline
    if %errorlevel%==3 goto:SystemTools
:SimplixInstallOnline
	if %win% GEQ 9200 goto:NotSupportedSystem
	cls
	call :HEADER " SIMPLIX PACK INSTALL", " "
	if /i "%temppath%"=="" set temppath=%temp%
	if /i "%ie11%"=="" set ie11=0
	if /i "%reboot%"=="" set reboot=1
	if /i "%silent%"=="" set silent=0
	echo Path to Simplix EXE
	echo Default: %simplixpath%
	echo:
	echo Path to Temp Folder
	echo Default: %temppath%
	echo:
	echo Install IE11?
	echo Default: %ie11% ; '0' to skip, '1' to install
	echo:
	echo Allow Reboot?
	echo Default: %reboot% ; '0' to skip, '1' to reboot
	echo:
	echo Silent Switch?
	echo Default: %silent% ; '0' for /Silent, '1' for /S [very silent]
	call :FOOTER
	set /p simplixpath=Set Path to Simplix EXE :
	set /p temppath=Set Path to Temp Folder :
	set /p ie11=Install IE11 :
	set /p reboot=Allow Reboot :
	set /p silent=Silent Switch :
	if /i "%ie11%"=="0" set "ie11="
	if /i "%ie11%"=="1" set "ie11=/ie11 "
	if /i "%reboot%"=="0" set "reboot="
	if /i "%reboot%"=="1" set "reboot=/reboot "
	if /i "%silent%"=="0" set "silent=/Silent"
	if /i "%silent%"=="1" set "silent=/S"
	echo:
	start "" cmd /c %simplixpath% %ie11%%reboot%%silent% /Temp=%temppath%
	call :FOOTER
	pause	
	goto:SimplixInstall
:SimplixInstallOffline
	cls
	call :HEADER "SIMPLIX PACK INTEGRATION", " "
	if /i "%temppath%"=="" set temppath=%temp%
	if /i "%ie11%"=="" set ie11=0
	if /i "%index%"=="" set index=*
	echo Path to WIM File
	echo Default: %path2%
	call :FOOTER
	set /p path2=Set Path WIM File :
	call :HEADER "IND  MODIFIED    LP  ARC  BUILD           EDITION", " "
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		for /f "tokens=2 delims=: " %%i in ('%dism% /Get-WimInfo /WimFile:"%path2%" /Index:%%a ^| findstr /i Architecture') do set arch=%%i
		for /f "tokens=2 delims=:" %%k in ('%dism% /Get-WimInfo /WimFile:"%path2%" /Index:%%a ^| findstr /i Version') do set b1=%%k
		for /f "tokens=3 delims=: " %%m in ('%dism% /Get-WimInfo /WimFile:"%path2%" /Index:%%a ^| findstr /i Build') do set b2=%%m
		for /f "tokens=2 delims=- " %%m in ('%dism% /Get-WimInfo /WimFile:"%path2%" /Index:%%a ^| findstr /i ^(Default^)') do set lang=%%m
		for /f "tokens=2 delims=:-" %%m in ('%dism% /Get-WimInfo /WimFile:"%path2%" /Index:%%a ^| findstr /i Modified') do set mod=%%m
		for /f "tokens=2 delims=:" %%g in ('%dism% /Get-WimInfo /WimFile:"%path2%" /Index:%%a ^| findstr /i Name') do (
		echo [%%a] !mod! !lang!  !arch! !b1!.!b2! %%g
		)
	)
	call :FOOTER
	echo Set Index
	echo Default: %index% ; '*' for all
	echo:
	echo Path to Simplix EXE
	echo Default: %simplixpath%
	echo:
	echo Path to Temp Folder
	echo Default: %temppath%
	echo:
	echo Install IE11?
	echo Default: %ie11% ; '0' to skip, '1' to install
	call :FOOTER
	set /p index=Set Index :
	set /p simplixpath=Set Path to Simplix EXE :
	set /p temppath=Set Path to Temp Folder :
	set /p ie11=Install IE11 :
	if /i "%ie11%"=="0" set "ie11="
	if /i "%ie11%"=="1" set "ie11=/ie11 "
	echo:
	start "" cmd /c %simplixpath% %ie11%/Temp=%temppath% /NoSpace /WimFile=%path2% /Index=%index%
	call :FOOTER
	pause	
	goto:SimplixInstall
:NotSupportedSystem
	cls
	call :HEADER "Not supported: %ver% %vera% found!", " "
	echo Operating System is not supported.
	call :FOOTER
	timeout /t 5
	goto:SimplixInstall
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:PerformanceIndex
	cls
	call :HEADER "WINDOWS PERFORMANCE INDEX", " "
	echo    [S] Show Index Info
	echo    [P] Perform Index Tests
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C SPB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :ShowIndex
    if %errorlevel%==2 goto :GetIndex
    if %errorlevel%==3 goto:SystemTools
:ShowIndex
	cls
	call :HEADER "WINDOWS PERFORMANCE INDEX", " "
	set "winsat=CPUScore, MemoryScore, D3DScore, GraphicsScore, DiskScore, WinSPRLevel"
	set "winspr=0"
	set "count2=0"
	set "old="
	call :COLOROUT02 "NOTE: Index is based on lowest score.", "Cyan"
	for /d %%a in (%winsat%) do (
		set "count=0"
		set /a count2+=1"
		for /f "tokens=* delims= " %%A in ('wmic path Win32_WinSAT get %%a ^| findstr /r /v "^$"') do (
			set /a count+=1
			set ix=%%A
			call set ix=%%ix: =%%
			if "!count!"=="1" set "name=!ix!"
			if "!count!"=="2" set "new=!ix!"
		)
		if not "!count2!"=="6" if not "!old!"=="" if !new! leq !old! set "low=!ix!" && set "lowname=!name!"
		if not "!count2!"=="6" if not "!old!"=="" if not !new! leq !old! set "high=!ix!" && set "highname=!name!"
		set "old=!ix!"
	)
	call :COLOROUT02 "--------------------------------------", "Gray"
	call :COLOROUT02 "LOW  : !low!  ^| [!lowname!]", "Yellow"
	call :COLOROUT02 "HIGH : !high!  ^| [!highname!]", "Magenta"
	echo:
	call :SHFOOTER
	set "count2=0"
	for /d %%a in (%winsat%) do (
		set "count=0"
		for /f "tokens=* delims= " %%A in ('wmic path Win32_WinSAT get %%a ^| findstr /r /v "^$"') do (
			set /a count+=1
			set ix=%%A
			call set ix=%%ix: =%%
			if "!ix!"=="WinSPRLevel" set "winspr=1"
			if "!count!"=="1" if "!ix!"=="CPUScore" call :COLOROUT02 "PROCESSOR [!ix!]", "White"
			if "!count!"=="1" if "!ix!"=="MemoryScore" call :COLOROUT02 "SYSTEM MEMORY ^(RAM^) [!ix!]", "White"
			if "!count!"=="1" if "!ix!"=="D3DScore" call :COLOROUT02 "GAMING GRAPHICS [!ix!]", "White"
			if "!count!"=="1" if "!ix!"=="GraphicsScore" call :COLOROUT02 "DESKTOP GRAPHICS [!ix!]", "White"
			if "!count!"=="1" if "!ix!"=="DiskScore" call :COLOROUT02 "SYSTEM DRIVE [!ix!]", "White"
			if "!count!"=="1" if "!ix!"=="WinSPRLevel" call :COLOROUT02 "WINDOWS EXPERIENCE LEVEL [!ix!]", "Cyan"
			if "!count!"=="2" call :COLOROUT02 "--------------------------------------", "Gray"
			if "!count!"=="2" (
				if "!winspr!"=="0" if not "!ix!"=="!low!" if not "!ix!"=="!high!" call :COLOROUT02 "!ix!", "White"
				if "!winspr!"=="0" if "!ix!"=="!low!" call :COLOROUT02 "!ix!", "Yellow"
				if "!winspr!"=="0" if "!ix!"=="!high!" call :COLOROUT02 "!ix!", "Magenta"
				if "!winspr!"=="1" call :COLOROUT02 "!ix!", "Yellow"
			)
			if "!count!"=="2" call :SHFOOTER
	))
	echo:
	pause	
	goto:PerformanceIndex
:GetIndex
	cls
	call :HEADER "WINDOWS PERFORMANCE INDEX", " "
	echo formal          All Tests
	echo dwmformal       Desktop Windows Graphics Test
	echo cpuformal       CPU Test
	echo memformal       Memory Test
	echo graphicsformal  Gaming Graphics Test
	echo diskformal      Disk Test
	call :FOOTER
	if /i "%runtype%"=="" set runtype=formal
	echo Default: %runtype%
	set /p runtype=Set Run Type :
	cls
	call :HEADER "Running %runtype%", " "
	winsat %runtype%
	call :FOOTER
	pause	
	goto:PerformanceIndex
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:DriveCleanup
	cls
	call :HEADER "DRIVE CLEANUP", " "
	echo This will perform a drive cleanup.
	call :FOOTER
	CHOICE /C CB /N /M "[C]ontinue or [B]ack?:"
	if %errorlevel%==1 goto :DriveCleanup1
    if %errorlevel%==2 goto:SystemTools
:DriveCleanup1
	echo:
:AgainDD
	start cleanmgr
	echo NOTE: In case only one partion is available this process can take a while in 
	echo:
	echo background.
	call :FOOTER
	CHOICE /C BA /N /M "[B]ack or [A]gain?:"
	if %errorlevel%==1 goto:SystemTools
	if %errorlevel%==2 goto :AgainDD
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:OnlineDISM
	set "dism=adk\win10.%vera%\dism.exe"
	if %win% lss 9200 set "dism=adk\win81.%vera%\dism.exe"
	cls
	call :HEADER "ONLINE DISM MENU", "DISM: %dism%"
	echo    [S] SCAN AND RESTORE COMPONENT STORE
	echo:
	echo    [A] ANALYZE, CLEANUP, RESETBASE
	echo:
	echo    [D] DEFAULT APP ASSOCIATIONS
	echo:
	echo    [C] CHANGE SERVER SKU
	echo:
	echo    [R] MODERN APPS
	echo:
	echo    [U] WINDOWS UPDATES
	echo:
	echo    [F] WINDOWS FEATURES
	echo:
	echo    [M] DRIVERS MENU
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C SADCRUFMB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :ComponentStore
	if %errorlevel%==2 goto :ComponentCleanUp
	if %errorlevel%==3 goto :DefaultAppAssociations
	if %errorlevel%==4 goto :ChangeSKU
	if %errorlevel%==5 goto :RemoveApps
	if %errorlevel%==6 goto :RemoveUpdates
	if %errorlevel%==7 goto :FeaturesMenu
	if %errorlevel%==8 goto :DriversMenu
    if %errorlevel%==9 goto:SystemTools
:DefaultAppAssociations
	cls
	call :HEADER "DEFAULT APP ASSOCIATIONS", " "
	echo    [D] Show Default App Associations
	echo:
	echo    [S] Save Default App Associations
	echo    [L] Load Default App Associations
	echo    [R] Remove Default App Associations
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C DSLRB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :ShowDefaultAppAssociations
	if %errorlevel%==2 goto :SaveDefaultAppAssociations
	if %errorlevel%==3 goto :ImportDefaultAppAssociations
	if %errorlevel%==4 goto :RemoveDefaultAppAssociations
    if %errorlevel%==5 goto:OnlineDISM
:ComponentStore
	cls
	call :HEADER "SCAN AND RESTORE COMPONENT STORE", " "
	echo    [S] Scan
	echo:
	echo    [R] Restore
	echo    [F] Restore from Folder
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C SRFB /N /M "YOUR CHOICE:"
	if %errorlevel%==1 goto :ScanHealth
	if %errorlevel%==2 goto :RestoreHealth
	if %errorlevel%==3 goto :FolderRestore
  if %errorlevel%==4 goto:OnlineDISM
:ShowDefaultAppAssociations
	cls
	call :HEADER "Show Default App Associations", " "
	set "y=0"
	set file=%~dp0app.assoc.xml
	%dism% /online /quiet /english /Export-DefaultAppAssociations:%file%
	for /f skip^=2^ tokens^=1^,2^,3^,4^,5^,6^,7^ delims^=^" %%a in (%file%) do (
		set /a y+=1
		set associd=%%b
		set progid=%%d
		set appname=%%f
	::	if not defined appname goto :jumpSDAA
		echo Type  : !associd!
		echo App-ID: !progid!
		echo App   : !appname!
		call :FOOTER
		if !y! equ 9 (
		echo:
			pause
			cls
			call :HEADER "Show Default App Associations", " "
			set "y="
		)
	)
	echo:
	pause
	if exist %file% del /s /q %file% >nul
	goto:DefaultAppAssociations
:SaveDefaultAppAssociations
	cls
	call :HEADER "Write Default App Associations to XML File", " "
	if "%file%"==" " set file=%~dp0app.assoc.xml
	echo Default: %file%
	echo Path to Text File 'X:\...\text.xml'
	call :FOOTER
	set /p file=Set Path to File :
	cls
	call :HEADER "Write Default App Associations to XML File", " "
	if exist %file% del /s /q %file% >nul
	%dism% /online /Export-DefaultAppAssociations:%file%
	call :FOOTER
	pause
	goto:DefaultAppAssociations
:ImportDefaultAppAssociations
	cls
	call :HEADER "Import Default App Associations from XML File", " "
	if "%file%"==" " set file=%~dp0app.assoc.xml
	echo Default: %file%
	echo Path to Text File 'X:\...\text.xml'
	call :FOOTER
	set /p file=Set Path to File :
	cls
	call :HEADER "Import Default App Associations from XML File", " "
	%dism% /online /Import-DefaultAppAssociations:%file%
	call :FOOTER
	pause
	goto:DefaultAppAssociations
:RemoveDefaultAppAssociations
	cls
	call :HEADER "Remove Default App Associations", " "
	echo ### WARNING ### This will delete all App Associations ###WARNING
	call :FOOTER
	CHOICE /C CEB /N /M "[C]ontinue, [E]xport or [B]ack ?:"
	if %errorlevel%==1 goto :RemoveDefaultAppAssociationsProcess
	if %errorlevel%==2 goto :SaveDefaultAppAssociations
	if %errorlevel%==3 goto:DefaultAppAssociations
:RemoveDefaultAppAssociationsProcess
	cls
	call :HEADER "Remove Default App Associations", " "
	%dism% /online /Remove-DefaultAppAssociations
	call :FOOTER
	pause
	goto:DefaultAppAssociations
:ScanHealth
	cls
	call :HEADER "COMPONENT STORE HEALTH SCAN", " "
	CHOICE /C OF /N /M "[O]nline or o[F]fline ?:"
	if %errorlevel%==1 goto :SCOnline
	if %errorlevel%==2 goto :SCOffline
:SCOnline
	cls
	call :HEADER "COMPONENT STORE HEALTH SCAN", " "
	%dism% /online /cleanup-image /scanhealth
	call :FOOTER
	pause
	goto:ComponentStore
:SCOffline
	cls
	call :HEADER "COMPONENT STORE HEALTH SCAN", " "
	echo Set Driveletter of Offline Windows 'C:'
	echo default: %pathOS%
	echo:
	echo Set Driveletter of Scratch-Directory 'X:'
	echo default: %pathScratch%
	call :FOOTER
	set /p pathOS=Set Driveletter of Offline WindowsD ^>
	set /p pathScratch=Set Driveletter of Scratch-Directory ^>
	cls
	call :HEADER "COMPONENT STORE HEALTH SCAN", " "
	%dism% /image:"%pathOS%" /cleanup-image /scanhealth /scratchdir:"%pathScratch%"
	call :FOOTER
	pause
	goto:ComponentStore
:RestoreHealth
	cls
	call :HEADER "COMPONENT STORE HEALTH RESTORE ONLINE", " "
	CHOICE /C OF /N /M "[O]nline or o[F]fline ?:"
	if %errorlevel%==1 goto :RHOnline
	if %errorlevel%==2 goto :RHOffline
:RHOnline
	cls
	call :HEADER "COMPONENT STORE HEALTH RESTORE ONLINE", " "
	%dism% /online /cleanup-image /restorehealth
	call :FOOTER
	pause
	goto:ComponentStore
:RHOffline
	cls
	call :HEADER "COMPONENT STORE HEALTH RESTORE ONLINE", " "
	echo Set Driveletter of Offline Windows 'C:'
	echo default: %pathOS%
	echo:
	echo Set Driveletter of Scratch-Directory 'X:'
	echo default: %pathScratch%
	call :FOOTER
	set /p pathOS=Set Driveletter of Offline WindowsD ^>
	set /p pathScratch=Set Driveletter of Scratch-Directory ^>
	cls
	call :HEADER "COMPONENT STORE HEALTH RESTORE ONLINE", " "
	%dism% /image:"%pathOS%" /cleanup-image /restorehealth /scratchdir:"%pathScratch%"
	call :FOOTER
	pause
	goto:ComponentStore
:FolderRestore
	cls
	call :HEADER "COMPONENT STORE HEALTH RESTORE FROM INSTALL FILE", " "
	echo Set Path to WIM or ESD
	echo default: %pathWIM%
	echo:
	if "%wim%"=="" set wim=wim
	echo WIM or ESD
	echo default: %wim%
	echo:
	if "%index%"=="" set index=1
	echo Index Number
	echo default: %index%
	call :FOOTER
	set /p pathWIM=Set Path to WIM or ESD ^>
	set /p wim=Set wim or esd ^>
	set /p index=Set Index Number ^>
	echo:
	CHOICE /C OF /N /M "[O]nline or o[F]fline ?:"
	if %errorlevel%==1 goto :FROnline
	if %errorlevel%==2 goto :FROffline
:FROnline
	cls
	call :HEADER "COMPONENT STORE HEALTH RESTORE FROM INSTALL FILE", " "
	%dism% /online /cleanup-image /restorehealth /source:%wim%:"%pathWIM%":%index% /limitaccess
	call :FOOTER
	pause
	goto:ComponentStore
:FROffline
	cls
	call :HEADER "COMPONENT STORE HEALTH RESTORE FROM INSTALL FILE", " "
	echo Set Driveletter of Offline Windows 'C:'
	echo default: %pathOS%
	echo:
	echo Set Driveletter of Scratch-Directory 'X:'
	echo default: %pathScratch%
	call :FOOTER
	set /p pathOS=Set Driveletter of Offline WindowsD ^>
	set /p pathScratch=Set Driveletter of Scratch-Directory ^>
	cls
	call :HEADER "COMPONENT STORE HEALTH RESTORE FROM INSTALL FILE", " "
	%dism% /image:"%pathOS%" /cleanup-image /restorehealth /source:%wim%:"%pathWIM%":%index% /scratchdir:"%pathScratch%" /limitaccess
	call :FOOTER
	pause
	goto:ComponentStore
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ComponentCleanUp
	cls
	call :HEADER "ANALYSIS OF COMPONENT STORE AND CLEANUP", " "
	echo    [A] Analysis
	echo    [C] Cleanup
	echo    [R] ResetBase
	echo:
	echo    [P] RevertPendingActions
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C ACRPB /N /M "YOUR CHOICE:"
	if %errorlevel%==1 goto :AnalyseStore
	if %errorlevel%==2 goto :CleanupStore
	if %errorlevel%==3 goto :ResetbaseStore
	if %errorlevel%==4 goto :RevertPendingActions
    if %errorlevel%==5 goto:OnlineDISM
:AnalyseStore
	cls
	call :HEADER "COMPONENT STORE ANALYSIS", " "
	%dism% /online /cleanup-image /AnalyzeComponentStore
	call :FOOTER
	pause
	goto:ComponentCleanUp
:CleanupStore
	cls
	call :HEADER "COMPONENT STORE CLEANUP", " "
	%dism% /online /cleanup-image /startcomponentcleanup
	call :FOOTER
	pause
	goto:ComponentCleanUp
:ResetbaseStore
	cls
	call :HEADER "COMPONENT STORE RESETBASE", " "
	%dism% /online /cleanup-image /startcomponentcleanup /resetbase
	call :FOOTER
	pause
	goto:ComponentCleanUp
:RevertPendingActions
	cls
	call :HEADER "COMPONENT STORE REVERT PENDING ACTIONS", " "
	CHOICE /C OF /N /M "[O]nline or o[F]fline ?:"
	if %errorlevel%==1 goto :RPAOnline
	if %errorlevel%==2 goto :RPAOffline
:RPAOnline
	cls
	call :HEADER "COMPONENT STORE REVERT PENDING ACTIONS", " "
	%dism% /English /online /cleanup-image /startcomponentcleanup /RevertPendingActions
	call :FOOTER
	pause
	goto:ComponentCleanUp
:RPAOffline
	cls
	call :HEADER "COMPONENT STORE REVERT PENDING ACTIONS", " "
	echo Set Driveletter of Offline Windows 'C:'
	echo default: %pathOS%
	echo:
	echo Set Driveletter of Scratch-Directory 'X:'
	echo default: %pathScratch%
	call :FOOTER
	set /p pathOS=Set Driveletter of Offline WindowsD ^>
	set /p pathScratch=Set Driveletter of Scratch-Directory ^>
	call :HEADER "COMPONENT STORE REVERT PENDING ACTIONS", " "
	%dism% /English /image:"%pathOS%" /cleanup-image /startcomponentcleanup /RevertPendingActions /scratchdir:"%pathScratch%"
	call :FOOTER
	pause
	goto:ComponentCleanUp
:ChangeSKU
	set slp=SoftwareLicensingProduct
	cls
	call :HEADER "CHANGE Server SKU", " "
	set "target="
	for /f "tokens=2 delims==:" %%G in ('"%dism% /online /english /Get-CurrentEdition" ^| findstr /i Edition') do (
		echo Current Edition:%%G
	)
	echo:
	for /f "tokens=2 delims==:" %%G in ('"%dism% /online /english /Get-TargetEditions" ^| findstr /i Edition') do (
		echo Target Edition:%%G
		set "target=%%G"
	)
	if not defined target (
		call :FOOTER
		echo No Target Edition available.
		goto:EndChange
	)
	echo:
	if "%target:~0,1%"==" " set "target=%target:~1%"
:ShowAnswers
	echo Target: %target%
	echo:
	echo Key: %targetkey%
	echo:
	set /p target=Set Target Edition :^>
	set /p targetkey=Set Target Key :^>
	cls
	call :HEADER "Changing Server SKU", " "
	%dism% /online /Set-Edition:%target% /ProductKey:%targetkey% /AcceptEULA
:EndChange
	call :FOOTER
	pause
	goto:OnlineDISM
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:RemoveApps
	cls
	call :HEADER "Modern Apps", " "
	echo    [L] List installed Packages
	echo    [W] Write List to text file
	echo:
	echo    [R] Remove Package
	echo    [M] Batch Remove Package from text file 
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C LWRMB /N /M "YOUR CHOICE:"
	if %errorlevel%==1 goto :ListPackages
    if %errorlevel%==2 goto :WritePackages
    if %errorlevel%==3 goto :RemoveAppsManually
    if %errorlevel%==4 goto :RemoveAppsBatch
    if %errorlevel%==5 goto:OnlineDISM
:ListPackages
	cls
	call :VersionCheck "/online"
	call :HEADER "List Modern Apps", "Found: %offlineversion% %offlineedition%"
	set "COUNT="
	if exist %file% del /s /q %file% >nul
	for /f "tokens=2 delims=: " %%a in ('"%dism% /online /Get-ProvisionedAppxPackages /english" ^| findstr /i PackageName') do (
		set /a COUNT+=1
		echo %%a
		if "!COUNT!"=="30" (
			call :FOOTER
			pause
			cls
			echo:
			call :HEADER "List Modern Apps", "Found: %offlineversion% %offlineedition%"
			set "COUNT="
		)
	)
	call :FOOTER
	pause
	goto:RemoveApps
:WritePackages
	cls
	call :VersionCheck "/online"
	call :HEADER "Write Package Names", "Found: %offlineversion% %offlineedition%"
	set file=%~dp0App.packages.txt
	echo Write Package Names to Text File
	echo Default: %file%
	call :FOOTER
	set /p file=Set Path to Text File:
	cls
	call :FOOTER
	echo Writing Package Names
	echo Found: %offlineversion% %offlineedition%
	echo %file%
	call :FOOTER
	set "COUNT=0"
	set "COUNT2=0"
	if exist %file% del /s /q %file% >nul
	for /f "tokens=2 delims=: " %%a in ('"%dism% /online /Get-ProvisionedAppxPackages /english" ^| findstr /i PackageName') do (
		echo %%a>>%file%
		if !errorlevel! equ 0 set /a COUNT+=1
		if !errorlevel! equ 1 set /a COUNT2+=1
	)
	echo Succeessfully wrote %COUNT% Packages to file.
	echo:
	echo Failed to write %COUNT2% Packages to file.
	call :FOOTER
	pause
	goto:RemoveApps
:RemoveAppsManually
	cls
	call :HEADER "Remove Modern Apps", " "
	echo Set App Package Name.
	call :FOOTER
	set /p packname=Set Package Name:
	call :FOOTER
	%dism% /online /Remove-ProvisionedAppxPackage /packagename:"%packname%" /english
	call :FOOTER
	pause
	goto:RemoveApps
:RemoveAppsBatch
	cls
	call :HEADER " Remove Modern Apps", " "
	set file=%~dp0App.packages.txt
	echo Write Package Names to Text File
	echo Default: %file%
	call :FOOTER
	set /p file=Set Path to Text File:
	call :FOOTER
	set "z="
	set "COUNT="
	for /f "tokens=*" %%a in (%file%) do set /a z+=1
	for /f "tokens=*" %%a in (%file%) do (
		set /a COUNT+=1
		cls
		call :HEADER "Removing !COUNT! of !z!", "%%a"
		%dism% /online /Remove-ProvisionedAppxPackage /packagename:"%%a" /english
		call :FOOTER
		timeout /t 5
	)
	call :FOOTER
	pause
	goto:RemoveApps
:RemoveUpdates
	cls
	call :HEADER "Installed Updates", " "
	echo    [L] List installed Updates: Package Name
	echo    [U] List installed Updates: WU Convention
	echo:
	echo    [W] Write List to text file
	echo:
	echo    [R] Remove Updates
	echo    [M] Batch Remove Updates from text file 
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C LUWRMB /N /M "YOUR CHOICE:"
	if %errorlevel%==1 goto :ListUpdatesOnline
	if %errorlevel%==2 goto :ListUpdatesOnlineWU
    if %errorlevel%==3 goto :WriteUpdatesOnline
    if %errorlevel%==4 goto :RemoveUpdatesManuallyOnline
    if %errorlevel%==5 goto :RemoveUpdatesBatchOnline
    if %errorlevel%==6 goto:OnlineDISM
:ListUpdatesOnline
	cls
	call :HEADER "List Updates", " "
	set "type="
	set "scratch="
	call :OnlineOfflineLoop
	set "COUNT="
	cls
	call :HEADER "List Updates for %type%", "Found: %offlineversion% %offlineedition%"
	for /f "tokens=3 delims=: " %%a in ('"%dism% /%type%%scratch% /Get-Packages /english" ^| findstr /i Package') do (
		set /a COUNT+=1
		echo %%a
		if "!COUNT!"=="30" (
			call :FOOTER
			pause
			cls
			call :HEADER "List Updates for %type%", "Found: %offlineversion% %offlineedition%"
			set "COUNT="
		)
	)
	call :FOOTER
	pause
	goto:RemoveUpdates
:ListUpdatesOnlineWU
	cls
	call :HEADER "List Updates", " "
	set "type="
	set "scratch="
	call :OnlineOfflineLoop
	set "COUNT="
	cls
	call :HEADER "List Updates for %type%", "Found: %offlineversion% %offlineedition%"
	for /f "tokens=5,6,7 delims=:_~ " %%a in ('"%dism% /%type%%scratch% /Get-Packages /english" ^| findstr /i Package') do (
		set /a COUNT+=1
		if %%a equ amd64 (set "offset=rem "&&set /a "COUNT-=1") else (set "offset=")
		if %%a equ x86 (set "offset=rem "&&set /a "COUNT-=1") else (set "offset=")
		if %%c equ amd64 set verarch=x64
		if %%c equ x86 set verarch=%%c
		!offset!echo !name1!-%%a-!verarch!
		if "!COUNT!"=="30" (
			call :FOOTER
			pause
			cls
			call :HEADER "List Updates for %type%", "Found: %offlineversion% %offlineedition%"
			set "COUNT="
		)
	)
	call :FOOTER
	pause
	goto:RemoveUpdates
:WriteUpdatesOnline
	cls
	call :HEADER "Write Updates Names", " "
	set file=%~dp0Updates.packages.txt
	echo Write Updates Names to Text File
	echo Default: %file%
	call :FOOTER
	set /p file=Set Path to Text File:
	call :FOOTER
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "verarch="
	call :OnlineOfflineLoop
	call :FOOTER
	set "trigger="
	CHOICE /C PW /N /M "[P]ackage Names or [W]U Convention ?:"
	if %errorlevel%==1 set "trigger=1"
	if %errorlevel%==2 set "trigger=2"
	cls
	call :FOOTER
	echo Writing Updates Names for %type%
	echo Found: %offlineversion% %offlineedition%
	echo %file%
	call :FOOTER
	if exist %file% del /s /q %file% >nul
	set "offset="
	set "COUNT=0"
	set "COUNT2=0"
	if %trigger% equ 1 (
		for /f "tokens=3 delims=: " %%a in ('"%dism% /%type%%scratch% /Get-Packages /english" ^| findstr /i Package') do (
			if %%a equ amd64 (set "offset=rem ") else (set "offset=")
			if %%a equ x86 (set "offset=rem ") else (set "offset=")
			!offset!echo %%a>>!file!
			if !errorlevel! equ 0 set /a COUNT+=1
			if !errorlevel! equ 1 set /a COUNT2+=1
		)
	)
	if %trigger% equ 2 (
		for /f "tokens=5,6,7 delims=:_~ " %%a in ('"%dism% /%type%%scratch% /Get-Packages /english" ^| findstr /i Package') do (
			if %%a equ amd64 (set "offset=rem ") else (set "offset=")
			if %%a equ x86 (set "offset=rem ") else (set "offset=")
			if %%c equ amd64 set verarch=x64
			if %%c equ x86 set verarch=%%c
			!offset!echo !name1!-%%a-!verarch!>>!file!
			if !errorlevel! equ 0 set /a COUNT+=1
			if !errorlevel! equ 1 set /a COUNT2+=1
		)
	)
	echo Succeessfully wrote %COUNT% Packages to file.
	echo:
	echo Failed to write %COUNT2% Packages to file.
	call :FOOTER
	pause
	goto:RemoveUpdates
:RemoveUpdatesManuallyOnline
	cls
	call :HEADER "Remove Updates", " "
	set "type="
	set "scratch="
	call :OnlineOfflineLoop
	cls
	call :HEADER "Remove Updates", "Found: %offlineversion% %offlineedition%"
	echo Set App Package Name.
	call :FOOTER
	set /p packname=Set Package Name:
	call :FOOTER
	%dism% /%type%%scratch% /Remove-Package /packagename:"%packname%" /english
	call :FOOTER
	pause
	goto:RemoveUpdates
:RemoveUpdatesBatchOnline
	cls
	call :HEADER "Remove Updates", " "
	set "type="
	set "scratch="
	call :OnlineOfflineLoop
	cls
	call :HEADER "Remove Updates", "Found: %offlineversion% %offlineedition%"
	set file=%~dp0Updates.packages.txt
	echo Gather Updates Names to Text File
	echo Default: %file%
	call :FOOTER
	set /p file=Set Path to Text File:
	call :FOOTER
	set "z="
	set "COUNT="
	for /f "tokens=*" %%a in (%file%) do set /a z+=1
	for /f "tokens=*" %%a in (%file%) do (
		set /a COUNT+=1
		cls
		call :HEADER "Removing !COUNT! of !z! for: !offlineversion! !offlineedition!", "%%a"
		%dism% /!type!!scratch! /Remove-Package /packagename:"%%a" /english
		call :FOOTER
		timeout /t 5
	)
	call :FOOTER
	pause
	goto:RemoveUpdates
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:FeaturesMenu
	cls
	call :HEADER "Windows Features", " "
	echo    [L] List All Features
	echo    [S] List Info about specific Features
	echo:
	echo    [W] Write List to text file
	echo    [O] Write List to text file: Names only
	echo:
	echo    [E] Enable Features
	echo:
	echo    [D] Disable Features
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C LSWOEDB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :ListWindowsFeatures
	if %errorlevel%==2 goto :ListFeatureInfo
    if %errorlevel%==3 goto :WriteFeatures
    if %errorlevel%==4 goto :WriteFeatureNames
    if %errorlevel%==5 goto :EnableFeaturesMenu
    if %errorlevel%==6 goto :DisableFeaturesMenu
    if %errorlevel%==7 goto:OnlineDISM
:ListWindowsFeatures
	cls
	set "y=0"
	call :HEADER "List Windows Features", " "
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "verarch="
	call :OnlineOfflineLoop
	cls
	call :FOOTER
	echo List Windows Features
	echo For: %listing%
	echo Found: !offlineversion! !offlineedition!
	call :FOOTER
	set "COUNT="
	for /f "skip=7 tokens=*" %%m in ('%dism% /%type%%scratch% /Get-Features /english') do (
		set /a COUNT+=1
		set check=%%m
		if "!check:~0,7!"=="Feature" echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
		if "!check:~0,3!"=="The" goto :EndListFeature
		echo %%m
		if "!COUNT!"=="20" (
			call :FOOTER
			pause
			cls
			call :FOOTER
			echo List Windows Features
			echo For: %listing%
			echo Found: !offlineversion! !offlineedition!
			call :FOOTER
			set "COUNT="
		)
	)
:EndListFeature
	call :FOOTER
	pause
	goto:FeaturesMenu
:ListFeatureInfo
	cls
	set "y=0"
	call :HEADER "List Windows Features", " "
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "verarch="
	call :OnlineOfflineLoop
	cls
	set "y=0"
	call :HEADER "List Windows Feature Info", "Found: !offlineversion! !offlineedition!"
	echo Default: %feature%
	echo Name of the Feature.
	call :FOOTER
	set /p feature=Set Feature Name:
	cls
	call :HEADER "List Windows Feature Info", "Found: !offlineversion! !offlineedition!"
	echo For: %feature%
	call :FOOTER
	for /f "skip=7 tokens=1,2,3,4* delims=:" %%m in ('%dism% /%type%%scratch% /english /Get-FeatureInfo /FeatureName:%feature%') do (
		set output=%%m
		if "!output:~0,7!"=="Feature" echo Feature Name     : %%n
		if "!output:~0,7!"=="Display" echo Display Name     : %%n
		if "!output:~0,11!"=="Description" echo:&&echo Description      : %%n&&echo:
		if "!output:~0,7!"=="Restart" echo Restart Required : %%n
		if "!output:~0,5!"=="State" echo State            : %%n
		if "!output:~0,3!"=="The" goto :EndListFeatureInfo
	)
:EndListFeatureInfo
	call :FOOTER
	pause
	goto:FeaturesMenu
:WriteFeatures
	cls
	call :HEADER "Write Features", " "
	set file=%~dp0Features.txt
	echo Write Updates Names to Text File
	echo Default: %file%
	call :FOOTER
	set /p file=Set Path to Text File:
	call :FOOTER
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "verarch="
	call :OnlineOfflineLoop
	cls
	call :FOOTER
	echo Writing Features for %type%
	echo Found: %offlineversion% %offlineedition%
	echo %file%
	call :FOOTER
	if exist %file% del /s /q %file% >nul
	set "offset="
	set "COUNT=0"
	set "COUNT2=0"
	%dism% /%type%%scratch% /Get-Features /english>>!file!
	if %errorlevel%==0 echo Succeessfully wrote Features to file.
	if %errorlevel%==1 echo Failed to write Features to file.
	call :FOOTER
	pause
	goto:FeaturesMenu
:WriteFeatureNames
	cls
	call :HEADER "Write Features Names", " "
	set file=%~dp0Features.txt
	echo Write Updates Names to Text File
	echo Default: %file%
	call :FOOTER
	set /p file=Set Path to Text File:
	call :FOOTER
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "verarch="
	call :OnlineOfflineLoop
	cls
	call :FOOTER
	echo Writing Features
	echo Found: %offlineversion% %offlineedition%
	echo %file%
	call :FOOTER
	if exist %file% del /s /q %file% >nul
	set "offset="
	set "COUNT=0"
	set "COUNT2=0"
	for /f "skip=7 tokens=3 delims=: " %%m in ('%dism% /%type%%scratch% /Get-Features /english') do (
		if %%m equ completed (set "offset=rem ") else (set "offset=")
		!offset!echo %%m>>!file!
	)
	echo Succeessfully wrote Features to file.
	call :FOOTER
	pause
	goto:FeaturesMenu
:EnableFeaturesMenu
	cls
	call :HEADER "Enable Windows Features", " "
	echo    [E] Enable Foundation Package Features
	echo    [F] Enable Foundation Package Features /LimitAccess
	echo:
	echo    [D] Specify Package Name
	echo    [G] Specify Package Name /LimitAccess
	echo:
	echo    [S] Specify Source Folder
	echo    [T] Specify Source Folder /LimitAccess
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C EFDGSTB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 set "limitaccess="&&goto :EnableFoundationFeatures
	if %errorlevel%==2 set "limitaccess= /LimitAccess"&&goto :EnableFoundationFeatures
	if %errorlevel%==3 set "limitaccess="&&goto :EnablePackageFeatures
	if %errorlevel%==4 set "limitaccess= /LimitAccess"&&goto :EnablePackageFeatures
    if %errorlevel%==5 set "limitaccess="&&goto :EnableSourceFeatures
    if %errorlevel%==6 set "limitaccess= /LimitAccess"&&goto :EnableSourceFeatures
    if %errorlevel%==7 goto:FeaturesMenu
:EnableFoundationFeatures
	cls
	set "y=0"
	call :HEADER "Enable Windows Feature", " "
	echo Default: %feature%
	echo Name of the Feature.
	call :FOOTER
	set /p feature=Set Feature Name:
	call :FOOTER
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "trigger="
	call :OnlineOfflineLoop
	cls
	set "y=0"
	call :HEADER "Enable Windows Feature", "Found: !offlineversion! !offlineedition!"
	echo Feature Name: %feature%
	call :FOOTER
	%dism% /%type%%scratch% /english /Enable-Feature /FeatureName:"%feature%" /All%limitaccess%
	call :FOOTER
	if "%trigger%"=="1" (
		CHOICE /C CS /N /M "[C]heck for needed Reboot or [S]kip ?:"
		if %errorlevel%==1 goto:FeatureReboot
		if %errorlevel%==2 goto:EnableFeaturesMenu
	)
	pause
	goto:EnableFeaturesMenu
:EnablePackageFeatures
	cls
	set "y=0"
	call :HEADER "Enable Windows Feature", " "
	echo Default: %feature%
	echo Name of the Feature.
	echo:
	echo Default: %package%
	echo Name of the Package.
	call :FOOTER
	set /p feature=Set Feature Name:
	set /p package=Set Package Name:
	call :FOOTER
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "trigger="
	call :OnlineOfflineLoop
	cls
	set "y=0"
	call :HEADER "Enable Windows Feature", "Found: !offlineversion! !offlineedition!"
	echo Feature Name: %feature%
	echo Package Name: %package%
	call :FOOTER
	%dism% /%type%%scratch% /english /Enable-Feature /FeatureName:"%feature%" /PackageName:"%package%"%limitaccess%
	call :FOOTER
	if "%trigger%"=="1" (
		CHOICE /C CS /N /M "[C]heck for needed Reboot or [S]kip ?:"
		if %errorlevel%==1 goto:FeatureReboot
		if %errorlevel%==2 goto:EnableFeaturesMenu
	)
	pause
	goto:EnableFeaturesMenu
:EnableSourceFeatures
	cls
	set "y=0"
	call :HEADER "Enable Windows Feature", " "
	echo Default: %feature%
	echo Name of the Feature.
	echo:
	echo Default: %sourcefolder%
	echo Path to Source Folder.
	call :FOOTER
	set /p feature=Set Feature Name:
	set /p sourcefolder=Set Source Folder Path:
	call :FOOTER
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "trigger="
	call :OnlineOfflineLoop
	cls
	set "y=0"
	call :HEADER "Enable Windows Feature", "Found: !offlineversion! !offlineedition!"
	echo Feature Name: %feature%
	echo Package Name: %package%
	call :FOOTER
	%dism% /%type%%scratch% /english /Enable-Feature /FeatureName:"%feature%" /Source:"%sourcefolder%"%limitaccess%
	call :FOOTER
	if "%trigger%"=="1" (
		CHOICE /C CS /N /M "[C]heck for needed Reboot or [S]kip ?:"
		if %errorlevel%==1 goto:FeatureReboot
		if %errorlevel%==2 goto:EnableFeaturesMenu
	)
	pause
	goto:EnableFeaturesMenu
:DisableFeaturesMenu
	cls
	call :HEADER "Disable Windows Features", " "
	echo    [E] Disable Foundation Package Features
	echo:
	echo    [D] Specify Package Name
	echo:
	echo    [R] Use /Remove to exclude manifest
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C EDRB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :DisableFoundationFeatures
	if %errorlevel%==2 goto :DisablePackageFeatures
    if %errorlevel%==3 goto :DisableFeaturesWithRemove
    if %errorlevel%==4 goto:FeaturesMenu
:DisableFoundationFeatures
	cls
	set "y=0"
	call :HEADER "Disable Windows Feature", " "
	echo Default: %feature%
	echo Name of the Feature.
	call :FOOTER
	set /p feature=Set Feature Name:
	call :FOOTER
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "trigger="
	call :OnlineOfflineLoop
	cls
	set "y=0"
	call :HEADER "Disable Windows Feature", "Found: !offlineversion! !offlineedition!"
	echo Feature Name: %feature%
	call :FOOTER
	%dism% /%type%%scratch% /english /Disable-Feature /FeatureName:"%feature%"
	call :FOOTER
	if "%trigger%"=="1" (
		CHOICE /C CS /N /M "[C]heck for needed Reboot or [S]kip ?:"
		if %errorlevel%==1 goto:FeatureReboot
		if %errorlevel%==2 goto:DisableFeaturesMenu
	)
	pause
	goto:DisableFeaturesMenu
:DisablePackageFeatures
	cls
	set "y=0"
	call :HEADER "Disable Windows Feature", " "
	echo Default: %feature%
	echo Name of the Feature.
	echo:
	echo Default: %package%
	echo Name of the Package.
	call :FOOTER
	set /p feature=Set Feature Name:
	set /p package=Set Package Name:
	call :FOOTER
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "trigger="
	call :OnlineOfflineLoop
	cls
	set "y=0"
	call :FOOTER
	echo Disable Windows Feature
	echo Found: !offlineversion! !offlineedition!
	call :FOOTER
	echo Feature Name: %feature%
	echo Package Name: %package%
	call :FOOTER
	%dism% /%type%%scratch% /english /Disable-Feature /FeatureName:"%feature%" /PackageName:"%package%"
	call :FOOTER
	if "%trigger%"=="1" (
		CHOICE /C CS /N /M "[C]heck for needed Reboot or [S]kip ?:"
		if %errorlevel%==1 goto:FeatureReboot
		if %errorlevel%==2 goto:DisableFeaturesMenu
	)
	pause
	goto:DisableFeaturesMenu
:DisableFeaturesWithRemove
	cls
	set "y=0"
	call :HEADER "Disable Windows Feature", " "
	echo Default: %feature%
	echo Name of the Feature.
	call :FOOTER
	set /p feature=Set Feature Name:
	call :FOOTER
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "trigger="
	call :OnlineOfflineLoop
	cls
	set "y=0"
	call :HEADER "Disable Windows Feature", "Found: !offlineversion! !offlineedition!"
	echo Feature Name: %feature%
	call :FOOTER
	%dism% /%type%%scratch% /english /Disable-Feature /FeatureName:"%feature%" /Remove
	call :FOOTER
	if "%trigger%"=="1" (
		CHOICE /C CS /N /M "[C]heck for needed Reboot or [S]kip ?:"
		if %errorlevel%==1 goto:FeatureReboot
		if %errorlevel%==2 goto:DisableFeaturesMenu
	)
	pause
	goto:DisableFeaturesMenu
:FeatureReboot
	cls
	for /f "skip=7 tokens=1,2,3,4* delims=:" %%m in ('%dism% /%type%%scratch% /english /Get-FeatureInfo /FeatureName:%feature%') do (
		set output=%%m
		call :HEADER "Enable Windows Feature", "Found: !offlineversion! !offlineedition!"
		echo Feature Name: %feature%
		call :FOOTER
		if "!output:~0,7!"=="Feature" echo Feature Name     : %%n
		echo:
		if "!output:~0,7!"=="Restart" echo Restart Required : %%n
		echo:
		if "!output:~0,5!"=="State" echo State            : %%n
		call :FOOTER
		CHOICE /C RS /N /M "[R]eboot or [S]kip ?:"
		if %errorlevel%==1 start shutdown.exe /r /t 0&&exit
		if %errorlevel%==2 goto:FeaturesMenu
	)
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:DriversMenu
	cls
	call :HEADER "Drivers Menu", " "
	echo    [L] List All Drivers
	echo:
	echo    [W] Write List to text file
	echo:
	echo    [E] Export Drivers
	echo:
	echo    [R] Remove Driver from Offline Image
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C LWERB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :ListWindowsDrivers
    if %errorlevel%==2 goto :WriteDrivers
    if %errorlevel%==3 goto :ExportDrivers
    if %errorlevel%==4 goto :RemoveDrivers
    if %errorlevel%==5 goto:OnlineDISM
:ListWindowsDrivers
	cls
	set "y=0"
	call :HEADER "List Windows Drivers", " "
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "verarch="
	call :OnlineOfflineLoop
	cls
	call :HEADER "List Windows Drivers", "Found: !offlineversion! !offlineedition!"
	set "COUNT="
	for /f "skip=10 tokens=*" %%m in ('%dism% /%type%%scratch% /Get-Drivers /english') do (
		set /a COUNT+=1
		set check=%%m
		if "!check:~0,3!"=="The" goto :EndListDrivers
		echo %%m
		if "!check:~0,7!"=="Version" echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
		if "!COUNT!"=="28" (
			pause
			cls
			call :HEADER "List Windows Drivers", "Found: !offlineversion! !offlineedition!"
			set "COUNT="
		)
	)
:EndListDrivers
	call :FOOTER
	pause
	goto:DriversMenu
:WriteDrivers
	cls
	call :HEADER "Write Drivers", " "
	set file=%~dp0Drivers.txt
	echo Write Drivers Names to Text File
	echo Default: %file%
	call :FOOTER
	set /p file=Set Path to Text File:
	call :FOOTER
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "verarch="
	call :OnlineOfflineLoop
	cls
	call :FOOTER
	echo Writing Drivers for %type%
	echo Found: %offlineversion% %offlineedition%
	echo %file%
	call :FOOTER
	if exist %file% del /s /q %file% >nul
	%dism% /%type%%scratch% /Get-Drivers /english>>!file!
	if %errorlevel%==0 echo Succeessfully wrote Drivers to file.
	if %errorlevel%==1 echo Failed to write Drivers to file.
	call :FOOTER
	pause
	goto:DriversMenu
:ExportDrivers
	cls
	call :HEADER "Write Drivers", " "
	echo Export Drivers to Output Folder
	echo Default: %outfile%
	call :FOOTER
	set /p outfile=Set Path to Output Folder:
	if not exist %outfile% md %outfile%
	call :FOOTER
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "verarch="
	call :OnlineOfflineLoop
	cls
	call :FOOTER
	echo Exporting Drivers for %type%
	echo Found: %offlineversion% %offlineedition%
	echo %outfile%
	call :FOOTER
	%dism% /%type%%scratch% /english /Export-Driver /Destination:"%outfile%"
	call :FOOTER
	pause
	goto:DriversMenu
:RemoveDrivers
	cls
	call :HEADER "Remove Drivers from Offline Image", " "
	echo Path to Driver INF
	echo Default: %infpath%
	call :FOOTER
	set /p infpath=Set Path to Driver INF:
	call :FOOTER
	set "type="
	set "scratch="
	set "offlineversion="
	set "name1="
	set "verarch="
	echo:
	call :FOOTER
	echo Drive Letter of Offline Install 'd:'
	echo:
	echo Drive Letter of Scratch Dir 'x:'
	call :FOOTER
	set /p driveletter=Set Drive Letter for Offline Install:
	set /p scratch=Set Drive Letter for Scratch Dir:
	call :FOOTER
	set "type=image:%driveletter%\"
	set "scratch= /scratchdir:%scratch%\"
	cls
	call :HEADER "Removing Drivers for %type%", "Found: %offlineversion% %offlineedition%"
	if exist %file% del /s /q %file% >nul
	set "offset="
	set "COUNT=0"
	set "COUNT2=0"
	%dism% /%type%%scratch% /english /Remove-Driver /Driver:"%infpath%"
	call :FOOTER
	pause
	goto:DriversMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:FILEMenu
	title ˛ FILE MENU ˛ by s1ave77
	cls
	call :HEADER "FILE MENU", " "
	echo    [W] Write File Names To Text File
	echo    [D] Write File Name and Info To Text File
	echo:
	echo    [C] Compare Text Files
	echo    [T] Clean Doubles from Text Files
	echo:
	echo    [S] Check single File Hash
	echo    [M] Check multiple File Hashes for specific .EXT
	echo    [F] Check multiple File Hashes for all files in Folder
	echo:
	echo    [H] Compare File Hashes
	echo:
	echo    [P] Parse CBS.log for Errors
	echo    [E] Convert ETL to XML/TXT
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C WDCTSMFHPEB /N /M "YOUR CHOICE:"
	if %errorlevel%==1 goto :FilenameToTextfile
    if %errorlevel%==2 goto :FileinfoToTextfile
    if %errorlevel%==3 goto :CompareTextfiles
    if %errorlevel%==4 goto :CleanTextFile
    if %errorlevel%==5 goto :SingleFileHash
    if %errorlevel%==6 goto :ExtMultiFileHash
    if %errorlevel%==7 goto :AllMultiFileHash
    if %errorlevel%==8 goto :HashCompare
    if %errorlevel%==9 goto :CBSParse
    if %errorlevel%==10 goto :ETLConvert
    if %errorlevel%==11 goto:SystemTools
:CleanTextFile
	set "cleantemp=%temp%\cleantemp.txt"
	set "templist=%temp%\templist.txt"
	set "clean=%temp%\clean.ps1"
	set "p1=0"
	set "p2=0"
	set "p3=0"
	cls
	call :HEADER "Clean Doubles from a text file", " "
	echo Default : %txt%
	echo:
	set /p txt=Enter Path to TXT ? : ^>
	for /f "tokens=*" %%a in (%txt%) do set /a p1+=1
	cls
	call :HEADER "Clean Doubles from a text file", " "
	call :CoolCleanProcess "%txt%"
	for /f "tokens=*" %%a in (%txt%) do  set /a p2+=1
	set /a p3=p1-p2
	echo CHECKED : %p1%
	call :FOOTER
	echo SAVED   : %p2%
	call :FOOTER
	echo DOUBLES : %p3%
	call :FOOTER
	pause
	if exist "%cleantemp%" del /s /q "%cleantemp%" >nul 2>&1
	if exist "%templist%" del /s /q "%templist%" >nul 2>&1
	goto:FILEMenu
:FilenameToTextfile
	cls
	call :HEADER "Write file names to a text file", " "
	if /i "%txtfile%"=="" set txtfile=names
	if /i "%ext%"=="" set ext=msu
	echo Name of text file
	echo Default: %txtfile%
	echo:
	echo File Extension
	echo Default: %ext%
	echo:
	echo Path to folder
	echo Default: %folderpath%
	call :FOOTER
	set /p txtfile=Set Text File Name :
	set /p ext=Set File Extension :
	set /p folderpath=Set Folder Path :
	if not exist "%folderpath%" goto:Tools
	call :FOOTER
	CHOICE /C KWO /N /M "[K]B Numbers or WU like [W]ith or With[O]ut Extension ?"
	if %errorlevel%==1 goto :KBNumbers
	if %errorlevel%==2 goto :WithExtension
	if %errorlevel%==3 goto :OnlyFilename
:KBNumbers
	cls
	call :HEADER "Writing File Name of %folderpath%", "to %folderpath%\%txtfile%.txt"
	set "y=0"
	if exist "%folderpath%\%txtfile%.txt" del "%folderpath%\%txtfile%.txt" /s /q >nul
	for /R "%folderpath%" %%A in (*.%ext%) do (
		set /a y+=1
		set "kbnr=%%~nA"
		for /f "tokens=2 delims=- " %%i in ("!kbnr!") do echo %%i
		for /f "tokens=2 delims=- " %%i in ("!kbnr!") do echo %%i>>!folderpath!\!txtfile!.txt
	)
	call :HEADER "Wrote %y% File Names to Text File.", " "
	pause	
	goto:FILEMenu
:WithExtension
	cls
	call :HEADER "Writing File Name of %folderpath%", "to %folderpath%\%txtfile%.txt"
	set "y=0"
	if exist "%folderpath%\%txtfile%.txt" del "%folderpath%\%txtfile%.txt" /s /q >nul
	for /R "%folderpath%" %%A in (*.%ext%) do (
		set /a y+=1
		echo %%~nxA
		echo %%~nxA>>!folderpath!\!txtfile!.txt
	)
	call :HEADER "Wrote %y% File Names to Text File.", " "
	pause	
	goto:FILEMenu
:OnlyFilename
	cls
	call :HEADER "Writing File Name of %folderpath%", "to %txtfile%.txt"
	set "y=0"
	set "offset="
	if exist "%folderpath%\%txtfile%.txt" del "%folderpath%\%txtfile%.txt" /s /q >nul
	for /R "%folderpath%" %%a in (*.%ext%) do (
		set /a y+=1
		for /f "tokens=1 delims=_ " %%i in ("%%~na") do echo %%i
		for /f "tokens=1 delims=_ " %%i in ("%%~na") do echo %%i>>!folderpath!\!txtfile!.txt
	)
	call :HEADER "Wrote %y% File Names to Text File.", " "
	pause	
	goto:FILEMenu
:FileinfoToTextfile
	cls
	call :HEADER "Write file names to a text file", " "
	echo Path of text file
	echo Default: %txtfilepath%
	echo:
	echo Path to folder
	echo Default: %folderpath%
	echo:
	if /i "%ext%"=="" set ext=*
	echo Wildcard for all or specific Extension
	echo Default: %ext%
	call :FOOTER
	set /p txtfilepath=Set Path to Textfile :
	set /p folderpath=Set Folder Path :
	set /p ext=Set File Extension :
	if not defined folderpath goto:Tools
	cls
	call :HEADER "Writing File Info of %folderpath%", "to %txtfilepath%"
	set "y=0"
	for /R "%folderpath%" %%a in (*.*) do set /a y+=1
	if exist "%txtfilepath%" del "%txtfilepath%" /s /q >nul
	forfiles /p "%folderpath%" /m *.%ext% /s /c "cmd /c echo @relpath ^| @fsize ^| @fdate @ftime"
	forfiles /p "%folderpath%" /m *.%ext% /s /c "cmd /c echo @relpath ^| @fsize ^| @fdate @ftime">%txtfilepath%
	call :FOOTER
	pause
	goto:FILEMenu
:CompareTextfiles
	cls
	call :HEADER "Compare Textfiles", " "
	echo This will compare File 1 against File 2 and create a Delta File
	call :FOOTER
	if /i "%txtfile%"=="" set txtfile=names
	if /i "%ext%"=="" set ext=msu
	echo Path to text file 1
	echo Default: %txtfile%
	echo:
	echo Path to text file 2
	echo Default: %txtfile2%
	echo:
	echo Path to delta file 1
	echo Default: %deltafile%
	call :FOOTER
	set /p txtfile=Set Text File 1 Path :
	set /p txtfile2=Set Text File 2 Path :
	set /p deltafile=Set Delta File 1 Path :
	call :FOOTER
	if exist %deltafile% del /s /q %deltafile% >nul
	set "psfile=%temp%\compare.ps1"
	for /f "tokens=* delims= " %%a in ('"powershell Compare-Object -ReferenceObject (Get-Content %txtfile%) -DifferenceObject (Get-Content %txtfile2%) ^| where-object SideIndicator -eq =^> ^| select -Expand InputObject ^| fl"') do echo %%a>>%deltafile%
:ShowDeltas
	call :TITLE
	cls
	call :HEADER "Checking %txtfile%", "against  %txtfile2%"
	echo Not in %txtfile%:
	echo:
	set "y=0"
	if not exist %deltafile% goto :NoUpdatesNeededDelta
	for /f "tokens=*" %%a in (%deltafile%) do (
		set /a y+=1
		echo %%a
		if !y! equ 20 (
			call :FOOTER
			pause
			cls
			echo:
			call :HEADER "Checking %txtfile2%", "against %txtfile%"
			echo Not in %txtfile%:
			echo:
			set "y=0"
		)
	)
	call :FOOTER
	pause	
	goto:FILEMenu
:NoUpdatesNeededDelta
	cls
	call :HEADER "Checking %txtfile2%", "against %txtfile%"
	echo Not in %txtfile%:
	call :FOOTER
	echo No differences found.
	call :FOOTER
	pause	
	goto:FILEMenu
:SingleFileHash
	powershell.exe Set-ExecutionPolicy RemoteSigned
	cls
	call :HEADER "This option checks File Hashes", " "
	if /i "%algo%"=="" set algo=sha1
	echo Set SHA version, i.e. SHA1, SHA256
	echo Last: %algo%
	echo:
	echo Set Path to File
	echo Last: %filepath%
	echo:
	set /p algo=Set SHA version ^>
	set /p filepath=Set File Path ^>
	call :FOOTER
	for /f "tokens=1,2,3,4,* delims= " %%a in ('powershell get-filehash "%filepath%" -algorithm %algo%') do set hash=%%b
	echo %algo%: %hash%
	call :FOOTER
	pause
	goto:FILEMenu
:ExtMultiFileHash
	cls
	call :HEADER "This option checks File Hashes", " "
	if /i "%algo%"=="" set algo=sha1
	if /i "%ext%"=="" set ext=msu
	echo Set SHA version, i.e. SHA1, SHA256
	echo Last: %algo%
	echo:
	echo Set Path to Folder
	echo Last: %folderpath%
	echo:
	echo Set Extension of File
	echo Last: %ext%
	echo:
	set /p algo=Set SHA version ^>
	set /p folderpath=Set Folder Path ^>
	set /p ext=Set Extension of File ^>
	cls
	call :HEADER "This option checks %algo% Hashes", " "
	for /r "%folderpath%" %%g in (*.%ext%) do (
		for /f "skip=3 tokens=1,2,* delims= " %%a in ('powershell get-filehash "%folderpath%\%%~ng.%ext%" -algorithm %algo%') do (
			echo %%~ng : %%b
		)
	)
	call :FOOTER
	CHOICE /C WB /N /M "[W]rite to File or [B]ack?:"
	if %errorlevel%==1 goto :ExtHashWrite
    if %errorlevel%==2 goto:FILEMenu
:ExtHashWrite
	cls
	call :HEADER "This option checks %algo% Hashes", " "
	echo Set Path to TXT File
	echo Last: %txtpath%
	echo:
	set /p txtpath=Set Path to TXT File ^>
	call :FOOTER
	for /r "%folderpath%" %%g in (*.%ext%) do (
		for /f "skip=3 tokens=1,2,* delims= " %%a in ('powershell get-filehash "%folderpath%\%%~ng.%ext%" -algorithm %algo%') do (
			echo %%~ng : %%b>>%txtpath%
		)
	)
	if %errorlevel%==0 echo TXT File successfully created.
	if %errorlevel%==1 echo Error creating TXT File.
	call :FOOTER
	pause
	goto:FILEMenu
:AllMultiFileHash
	cls
	call :HEADER "This option checks File Hashes", " "
	if /i "%algo%"=="" set algo=sha1
	if /i "%ext%"=="" set ext=msu
	echo Set SHA version, i.e. SHA1, SHA256
	echo Last: %algo%
	echo:
	echo Set Path to Folder
	echo Last: %folderpath%
	echo:
	set /p algo=Set SHA version ^>
	set /p folderpath=Set Folder Path ^>
	cls
	call :HEADER "This option checks %algo% Hashes", " "
	for /r "%folderpath%" %%g in (*.*) do (
		for /f "skip=3 tokens=1,2,* delims= " %%a in ('powershell get-filehash "%folderpath%\%%~nxg" -algorithm %algo%') do (
			echo %%~nxg : %%b
		)
	)
	call :FOOTER
	CHOICE /C WB /N /M "[W]rite to File or [B]ack?:"
	if %errorlevel%==1 goto :AllHashWrite
    if %errorlevel%==2 goto:FILEMenu
:AllHashWrite
	cls
	call :HEADER "This option checks %algo% Hashes", " "
	echo Set Path to TXT File
	echo Last: %txtpath%
	echo:
	set /p txtpath=Set Path to TXT File ^>
	call :FOOTER
	for /r "%folderpath%" %%g in (*.*) do (
		for /f "skip=3 tokens=1,2,* delims= " %%a in ('powershell get-filehash "%folderpath%\%%~nxg" -algorithm %algo%') do (
			echo %%~nxg : %%b>>%txtpath%
		)
	)
	echo TXT File successfully created.
	call :FOOTER
	pause
	goto:FILEMenu
:HashCompare
	powershell.exe Set-ExecutionPolicy RemoteSigned
	cls
	call :HEADER "This option checks File Hashes", " "
	if /i "%algo%"=="" set algo=sha1
	echo Set SHA version, i.e. SHA1, SHA256
	echo Last: %algo%
	echo:
	echo Set Path to File 1
	echo Last: %filepath%
	echo:
	echo Set Path to File 2
	echo Last: %filepath2%
	echo:
	set /p algo=Set SHA version ^>
	set /p filepath=Set File Path 1 ^>
	set /p filepath2=Set File Path 2 ^>
	call :FOOTER
	for /f "tokens=1,2,3,4,* delims= " %%a in ('powershell get-filehash "%filepath%" -algorithm %algo%') do set hash=%%b
	for /f "tokens=1,2,3,4,* delims= " %%a in ('powershell get-filehash "%filepath2%" -algorithm %algo%') do set hash2=%%b
	echo Algorithm: %algo%
	echo:
	echo File 1   : %hash%
	echo:
	echo File 2   : %hash2%
	call :FOOTER
	if /i "%hash%"=="%hash2%" (echo GOTCHA: FILES MATCH.) else (echo ERROR: FILE MISMATCH)
	call :FOOTER
	pause
	goto:FILEMenu
:CBSParse
	cls
	call :HEADER "This option Parses CBS.log for Errors", " "
	if /i "%logout%"=="" set "logout=%userprofile%\desktop\sfc.txt"
	echo Set Path to Output File
	echo Last: %logout%
	call :FOOTER
	set /p logout=Set Path to Output File ^>
	call :FOOTER
	(findstr /i /c:"[SR]" "%windir%\Logs\CBS\CBS.log" | findstr /i /v /c:"verify" > "%logout%") >nul 2>&1
	if not "%errorlevel%"=="0" echo No Errors found.
	if "%errorlevel%"=="0" echo File created sucessfully at: %logout%
	call :FOOTER
	pause
	goto:FILEMenu
:ETLConvert
	cls
	call :HEADER "This option Converts ETL Files", " "
	if /i "%dump%"=="" set "dump=txt"
	echo Set Path to ETL File
	echo Last: %etl%
	echo:
	echo Set Path to Output File
	echo Last: %etlout%
	echo:
	echo Set Dump Value, i.e. txt ot xml
	echo Last: %dump%
	call :FOOTER
	set /p etl=Set Path to ETL File ^>
	set /p etlout=Set Path to Output File ^>
	set /p dump=Set Dump Value ^>
	call :FOOTER
	netsh trace convert input=%etl% output=%etlout% dump=%dump%	
	if not "%errorlevel%"=="0" echo Error.
	if "%errorlevel%"=="0" echo File created sucessfully at: %etlout%
	call :FOOTER
	pause
	goto:FILEMenu
::===============================================================================================================
::CLEAN LOOP
::CLEAN DOUBLES FROM WU LIST BY KEEPING ORIGINAL LIST ORDER
:CoolCleanProcess
if exist %~1 (
	if exist "%templist%" del /s /q "%templist%" >nul
	if exist "%cleantemp%" del /s /q "%cleantemp%" >nul
	type %~1>>%templist%
	echo $hash = @{}>%clean%
	echo gc "%templist%" ^| %%{ if ^($hash.$_ -eq $nqull^) { $_ }; $hash.$_ = 1 } ^> "%cleantemp%">>%clean%
	powershell -executionpolicy bypass -File %clean% 
	del /s /q "%~1" >nul
	del /s /q "%clean%" >nul
	type %cleantemp%>>%~1
)
goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:BuildLabEx
	cls
	call :HEADER "CHECK BuildLabEx", " "
	FOR /F "tokens=3" %%I IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" ^| findstr BuildLabEx') DO (SET ble=%%I)
	echo BuildLabEx: %ble%
	call :FOOTER
	pause
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:CheckDisk
	cls
	call :HEADER "CHECKDISC: Choose drive for test", " "
	echo This will check a drive for error.
	call :FOOTER
	CHOICE /C CB /N /M "[C]ontinue or [B]ack?:"
	if %errorlevel%==1 goto :CheckDisk1
    if %errorlevel%==2 goto:SystemTools
:CheckDisk1
	echo:
	if /i "%driveletter%" == "" set driveletter=C:
	echo Choose drive for test...
	echo Default: %driveletter%
	echo:
	set /p driveletter=Set Drive Letter :^>
	call :FOOTER
	start "Checkdisk Test on %driveletter%" cmd /k chkdsk.exe %driveletter% /F /R 
	call :FOOTER
	CHOICE /C CB /N /M "[C]heck again or [B]ack?:"
	if %errorlevel%==1 goto :CheckDisk1
    if %errorlevel%==2 goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:Firewall
	cls
	call :HEADER "This option controls Windows Firewall", " "
	CHOICE /C OFB /N /M "Turn Firewall [O]n, O[F]F or [B]ack ?:"
	if %errorlevel%==1 goto :FirewallOn
	if %errorlevel%==2 goto :FirewallOff
    if %errorlevel%==3 goto:SystemTools
:FirewallOn
	cls
	call :HEADER "This option turns Windows Firewall on", " "
	netsh advfirewall set allprofiles state on >nul
	call :FOOTER
	timeout /t 5
	goto:SystemTools
:FirewallOff
	cls
	call :HEADER "This option turns Windows Firewall off", " "
	netsh advfirewall set allprofiles state off >nul
	call :FOOTER
	timeout /t 5
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:NETMenu
	cls
	call :TITLE
	call :HEADER "WINDOWS RUNTIMES MENU", " "
	echo    DOT NET FRAMEWORK
	echo:
	echo    [C] Check and Verify Installed Versions
	echo    [I] Install .NET 3.5 on Win 8/8.x
	echo    [R] Repair Installed Versions
	echo:
	echo    VISUAL C RUNTIMES
	echo:
	echo    [V] Check Installed Versions
	echo    [A] Install Runtimes with Burf's pack
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C CIRVAB /N /M "YOUR CHOICE:"
	if %errorlevel%==1 goto :NETCheck
    if %errorlevel%==2 goto :EnableDotNet
    if %errorlevel%==3 goto :NetRepair
    if %errorlevel%==4 goto :VCCheck
    if %errorlevel%==5 goto :VCInstall
    if %errorlevel%==6 goto:SystemTools
:NETCheck
	cls
	call :HEADER "Check installed .NET Versions", " "
	echo This will show all installed .NET instances.
	call :FOOTER
	set "z=0"
	for /f %%a in ('dir %WINDIR%\Microsoft.Net\Framework\v* /O:-N /B') do (
		set /a z+=1
		echo [!z!] .NET Version: %%a
		echo:
	)
	call :FOOTER
	CHOICE /C VB /N /M "[V]erify Installs or [B]ack?:"
	if %errorlevel%==1 goto :VerifyDotNet
    if %errorlevel%==2 goto:NETMenu
:VerifyDotNet
	start NetFxRepairTool\netfx_setupverifier.exe
	goto:NETMenu
:EnableDotNet
	if not %win% GEQ 9200 goto:NotSupported
	cls
	call :HEADER "Enable .NET 3.5 on Win 8", " "
:edn1
	echo This will enable .NET 3.5.
	call :FOOTER
	CHOICE /C CB /N /M "[C]ontinue or [B]ack?:"
	if %errorlevel%==1 goto :EnableDotNet1
    if %errorlevel%==2 goto:NETMenu
:EnableDotNet1
	echo:
	echo Specify Drive Letter of Install Disk in form 'd'.
	call :FOOTER
	set /p installdisk=Specify Drive Letter :^>
	echo:
	dism.exe /online /enable-feature /featurename:NetFX3 /Source:%installdisk%:\sources\sxs /LimitAccess
	call :FOOTER
	pause
	goto:NETMenu
:NetRepair
	pushd %~dp0
	start NetFxRepairTool\NetFxRepairTool.exe
	goto:NETMenu
:VCCheck
	if not %win% GEQ 9200 goto:NotSupported
	cls
	call :HEADER "Check Installed VC Redist Versions", " "
	echo This will check Installed VC Redist.
	call :FOOTER
	if %vera% neq x64 goto :VCCheckx64
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2012 Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2013 Preview Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2013 RC Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2013 Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 14 CTP Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2015 Preview Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2015 CTP Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2015 RC Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2015 Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2017 RC Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2017 Redistributable" /s >>"%temp%\list2.txt"
	if exist "%temp%\list2.txt" for /f "tokens=1,2,3* delims= " %%a in ('type "%temp%\list2.txt" ^| findstr /c:DisplayName') do if exist "C:\ProgramData\Package Cache\%%a\vcredist_x86.exe" echo:%%c %%d
	if exist "%temp%\list2.txt" for /f "tokens=1,2,3* delims= " %%a in ('type "%temp%\list2.txt" ^| findstr /c:DisplayName') do if exist "C:\ProgramData\Package Cache\%%a\vc_redist.x86.exe" echo:%%c %%d
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2005 Redistributable" /s >>"%temp%\list.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2008 Redistributable" /s >>"%temp%\list.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2010  x86 Redistributable" /s >>"%temp%\list.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2012 x86 Minimum Runtime" /s >>"%temp%\list.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2012 x86 Additional Runtime" /s >>"%temp%\list.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2013 x86 Minimum Runtime" /s >>"%temp%\list.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2013 x86 Additional Runtime" /s >>"%temp%\list.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 14 x86 Minimum Runtime" /s >>"%temp%\list.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 14 x86 Additional Runtime" /s >>"%temp%\list.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2015 x86 Minimum Runtime" /s >>"%temp%\list.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2015 x86 Additional Runtime" /s >>"%temp%\list.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2017 x86 Minimum Runtime" /s >>"%temp%\list.txt"
	reg query hklm\software\wow6432node\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2017 x86 Additional Runtime" /s >>"%temp%\list.txt"
	if exist "%temp%\list.txt" for /f "tokens=1,2,3* delims= " %%a in ('type "%temp%\list.txt" ^| findstr /c:DisplayName') do echo:%%c %%d
	if exist "%temp%\list.txt" del /s /q "%temp%\list.txt" >nul 2>&1
	if exist "%temp%\list2.txt" del /s /q "%temp%\list2.txt" >nul 2>&1
:VCCheckx64
	reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2012 Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2013 Preview Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2013 RC Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2013 Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 14 CTP Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2015 Preview Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2015 CTP Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2015 RC Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2015 Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2017 RC Redistributable" /s >>"%temp%\list2.txt"
	reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2017 Redistributable" /s >>"%temp%\list2.txt"
	if exist "%temp%\list2.txt" if %vera% equ x86 for /f "tokens=1,2,3* delims= " %%a in ('type "%temp%\list2.txt" ^| findstr /c:DisplayName') do if exist "C:\ProgramData\Package Cache\%%a\vcredist_x86.exe" echo:%%c %%d
	if exist "%temp%\list2.txt" if %vera% equ x86 for /f "tokens=1,2,3* delims= " %%a in ('type "%temp%\list2.txt" ^| findstr /c:DisplayName') do if exist "C:\ProgramData\Package Cache\%%a\vc_redist.x86.exe" echo:%%c %%d
	reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2005 Redistributable" /s >>"%temp%\list.txt"
	reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2008 Redistributable" /s >>"%temp%\list.txt"
	if %vera% equ x64 (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "C++ 2010  x64 Redistributable" /s >>"%temp%\list.txt") else (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "C++ 2010  x86 Redistributable" /s >"%temp%\list.txt")
	if %vera% equ x64 (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2012 x64 Minimum Runtime" /s >>"%temp%\list.txt") else (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2012 x86 Minimum Runtime" /s >"%temp%\list.txt")
	if %vera% equ x64 (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2012 x64 Additional Runtime" /s >>"%temp%\list.txt") else (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2012 x86 Additional Runtime" /s >"%temp%\list.txt")
	if %vera% equ x64 (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2013 x64 Minimum Runtime" /s >>"%temp%\list.txt") else (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2013 x86 Minimum Runtime" /s >"%temp%\list.txt")
	if %vera% equ x64 (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2013 x64 Additional Runtime" /s >>"%temp%\list.txt") else (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2013 x86 Additional Runtime" /s >"%temp%\list.txt")
	if %vera% equ x64 (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 14 x64 Minimum Runtime" /s >>"%temp%\list.txt") else (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 14 x86 Minimum Runtime" /s >"%temp%\list.txt")
	if %vera% equ x64 (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 14 x64 Additional Runtime" /s >>"%temp%\list.txt") else (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 14 x86 Additional Runtime" /s >"%temp%\list.txt")
	if %vera% equ x64 (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2015 x64 Minimum Runtime" /s >>"%temp%\list.txt") else (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2015 x86 Minimum Runtime" /s >"%temp%\list.txt")
	if %vera% equ x64 (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2015 x64 Additional Runtime" /s >>"%temp%\list.txt") else (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2015 x86 Additional Runtime" /s >"%temp%\list.txt")
	if %vera% equ x64 (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2017 x64 Minimum Runtime" /s >>"%temp%\list.txt") else (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2017 x86 Minimum Runtime" /s >"%temp%\list.txt")
	if %vera% equ x64 (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2017 x64 Additional Runtime" /s >>"%temp%\list.txt") else (reg query hklm\software\microsoft\windows\currentversion\uninstall /f "Microsoft Visual C++ 2017 x86 Additional Runtime" /s >"%temp%\list.txt")
	if exist "%temp%\list.txt" for /f "tokens=1,2,3* delims= " %%a in ('type "%temp%\list.txt" ^| findstr /c:DisplayName') do echo:%%c %%d
	if exist "%temp%\list.txt" del /s /q "%temp%\list.txt" >nul 2>&1
	if exist "%temp%\list2.txt" del /s /q "%temp%\list2.txt" >nul 2>&1
	call :FOOTER
	pause
	goto:NETMenu
:VCInstall
	if not %win% GEQ 9200 goto:NotSupported
	if "%dvcredist%"=="" set "dvcredist=%temp%\vc-redist"
	cls
	call :HEADER "Install VC Redist Versions", " "
	echo This will download and install VC Redist.
	call :FOOTER
	CHOICE /C CB /N /M "[C]ontinue or [B]ack?:"
    if %errorlevel%==2 goto:NETMenu
	cls
	call :HEADER "Install VC Redist Versions", " "
	echo Specify Download Folder.
	echo DEFAULT: %dvcredist%
	call :FOOTER
	set /p dvcredist=Specify Folder :^>
	cls
	call :HEADER "Install VC Redist Versions", " "
	if not exist "%dvcredist%" md "%dvcredist%"
	set "wget=wget\wget.exe"
	set "sevenzip=files\7z\7z.exe"
	set "toolurl=https://dl.dropboxusercontent.com/s/se5bg81qpnjaqb8/Visual%20C%2B%2B%20Redist%20Installer%20V50a.exe?dl=0"
	set "txturl=https://dl.dropboxusercontent.com/s/xp6zrido4m267o8/version.txt?dl=0"
	if exist "%dvcredist%\version.txt" del /s /q "%dvcredist%\version.txt" >nul 2>&1
	%wget% -nc "%txturl%" --secure-protocol=auto -P "%dvcredist%" --no-check-certificate
	call :FOOTER
	for /r "%dvcredist%" %%a in (*.*) do echo %%~na | findstr /i "version" 1>nul && set "vertxt=%%a"
	ren "%vertxt%" "version.txt"
	for /r "%dvcredist%" %%a in (*.txt) do echo %%~na | findstr /i "version" 1>nul && set "vertxt=%%a"
	for /f "tokens=*" %%a in (%vertxt%) do set "burfversion=%%a"
	if exist "%dvcredist%\%burfversion%.exe" (echo Found latest %burfversion%, skipping download && goto:VCInstallAct)
	echo Downloading latest: %burfversion% ...
	call :FOOTER
	for /r "%dvcredist%" %%a in (*.exe) do echo %%~na | findstr /i "Visual C++ Redist Installer" 1>nul && set "burf=%%a"
	if exist "%burf%" del /s /q "%burf%"
	%wget% -nc "%toolurl%" --secure-protocol=auto -P "%dvcredist%" --no-check-certificate
::	powershell Start-BitsTransfer -Source "%url%" -Destination "%dvcredist%"
:VCInstallAct
	for /r "%dvcredist%" %%a in (*.*) do echo %%~na | findstr /i "Visual C++ Redist Installer" 1>nul && (set "burf=%%a" && set "burfname=%%~na")
	ren "%burf%" "%burfversion%.exe"
	for /r "%dvcredist%" %%a in (*.exe) do echo %%~na | findstr /c:"%burfversion%" 1>nul && set "burf=%%a"
	%sevenzip% x "%burf%" -o"%dvcredist%\%burfversion%"
	cls
	call :HEADER "Installing VC Redist Versions", " "
	call "%dvcredist%\%burfversion%\%vera%.cmd" auto
	for /d /r %%x in (vcredist*) do rd /s /q "%%x"
	if exist "%dvcredist%\version.txt" del /s /q "%dvcredist%\version.txt" >nul 2>&1
	call :FOOTER
	CHOICE /C DB /N /M "[D]elete Temp files or [B]ack?:"
    if %errorlevel%==2 goto:NETMenu
	if exist "%burf%" del /s /q "%burf%" >nul 2>&1
	if exist "%dvcredist%\%burfversion%" rd /s /q "%dvcredist%\%burfversion%" >nul 2>&1
	goto:NETMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:EditHostsFile
	cls
	call :HEADER "Edit Hosts File", " "
	CHOICE /C MAB /N /M "Edit [M]anually, [A]d from List or [B]ack ?:"
	if %errorlevel%==1 goto :ManualEdit
	if %errorlevel%==2 goto :AdFromList
    if %errorlevel%==3 goto:SystemTools
:ManualEdit
	cls
	call :HEADER "Edit Hosts File", " "
	echo Permissions changed to edit the Hosts File.
	echo NOTE: Closing notepad will change permissions back to default.
	call :FOOTER
	SET hosts=%windir%\system32\drivers\etc\hosts
	attrib -r %hosts%
	notepad %hosts%
	attrib +r %hosts%
	goto:EditHostsFile
:AdFromList
	cls
	echo Specify Path to TXT file.
	echo Default: %txtfile%
	call :FOOTER
	set /p txtfile=Specify File Path :^>
	cls
	call :HEADER "Adding Entries from List to Hosts File", " "
	set ps1file=%temp%\add.ip.ps1
	echo copy-item "%windir%\System32\Drivers\etc\hosts" "%windir%\System32\Drivers\etc\hosts.backup">%ps1file%
	echo Function Hosts_Updater ^(^){>>%ps1file%
	echo: >>%ps1file%
	echo $a = Get-Content "%windir%\System32\Drivers\etc\hosts">>%ps1file%
	echo $b = Get-Content "%txtfile%">>%ps1file%
	echo: >>%ps1file%
	echo ForEach ^($i in $b^) {>>%ps1file%
	echo $a += "0.0.0.0 $i">>%ps1file%
	echo $a ^| Set-Content "%windir%\System32\Drivers\etc\hosts">>%ps1file%
	echo }}>>%ps1file%
	echo: >>%ps1file%
	echo Hosts_Updater>>%ps1file%
	powershell -executionpolicy remotesigned -File "%ps1file%"
	call :FOOTER
	pause
	if exist "%ps1file%" del /s /q "%ps1file%" >nul
	goto:EditHostsFile
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:DeleteKMSInfo
	set sls=SoftwareLicensingService
	cls
	call :HEADER "Delete KMS Info", " "
	echo This will delete the Adress and Port for KMS
	call :FOOTER
	wmic path %sls% where version='%version%' call ClearKeyManagementServiceMachine
	wmic path %sls% where version='%version%' call ClearKeyManagementServicePort
	wmic path %sls% where version='%version%' call DisableKeyManagementServiceDnsPublishing 1
	wmic path %sls% where version='%version%' call DisableKeyManagementServiceHostCaching 1
	call :FOOTER
	pause	
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:DnsPublishing
	set sls=SoftwareLicensingService
	cls
	call :HEADER "Enable DnsPublishing and HostCaching", " "
	echo This will enable DnsPublishing and HostCaching for KMS
	call :FOOTER
	wmic path %sls% where version='%version%' call DisableKeyManagementServiceDnsPublishing 0
	wmic path %sls% where version='%version%' call DisableKeyManagementServiceHostCaching 0
	call :FOOTER
	pause	
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:Hibernation
	cls
	call :HEADER "This option controls Hibernation", " "
	CHOICE /C OFB /N /M "Turn Hibernation [O]n, O[F]F or [B]ack ?:"
	if %errorlevel%==1 goto :HibernationOn
	if %errorlevel%==2 goto :HibernationOff
    if %errorlevel%==3 goto:SystemTools
:HibernationOn
	cls
	call :HEADER "This option turns Hibernation on", " "
	powercfg.exe /hibernate on >nul
	if %errorlevel%==0 echo: & echo Successfully enabled Hibernation.
	if %errorlevel% NEQ 0 echo: & echo Enabling Hibernation failed.
	call :FOOTER
	timeout /t 5
	goto:SystemTools
:HibernationOff
	cls
	call :HEADER "This option turns Hibernation off", " "
	powercfg.exe /hibernate off >nul
	if %errorlevel%==0 echo: & echo Successfully disabled Hibernation.
	if %errorlevel% NEQ 0 echo: & echo Disabling Hibernation failed.
	call :FOOTER
	timeout /t 5
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:SystemFileScan
	cls
	call :HEADER "System File Integrity Check", " "
	echo This will perform a systemfile integrity check.
	call :FOOTER
	CHOICE /C COB /N /M "[C]ontinue, [O]ffline check or [B]ack?:"
	if %errorlevel%==1 goto :FurtherSystemFileScan
	if %errorlevel%==2 goto :FurtherOfflineFileScan
    if %errorlevel%==3 goto:SystemTools
:FurtherSystemFileScan
	echo:
	start "System File Integrity Check" cmd /k sfc /scannow
	goto:SystemTools
:FurtherOfflineFileScan
	echo:
	echo Enter Letter of Offline Windows. Form: 'x'
	echo:
	SET /p driveletter=Enter Letter here:	^>
	echo:
	start "SFC" cmd /k sfc /OFFBOOTDIR=%driveletter%:\ /OFFWINDIR=%driveletter%:\windows /scannow
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:RearmW7Menu
	cls
	if %win% GEQ 9200 goto:NotSupported
	call :HEADER "This will Rearm %ver% %vera%", " "
	echo:
	echo    [R] Rearm System
	echo:
	echo    [C] Restore Rearm Count [Reset to Fresh Install]
	echo:
	echo    [S] Set Time
	echo:
	echo    [B] BACK
	echo:
	call :FOOTER
	CHOICE /C RCSB /N /M "YOUR CHOICE:"
	if %errorlevel%==1 goto :RearmRA
	if %errorlevel%==2 goto :RestoreRearmW7
	if %errorlevel%==3 goto :SetTime
	if %errorlevel%==4 goto:SystemTools
:RearmRA
	cls
	call :HEADER "Rearming %ver% %vera%", " "
	echo Remaining Rearm Count: %r%
	call :FOOTER
	echo How many attempts to go...? To run all available simply hit enter.
	call :FOOTER
	SET /p r=Enter Number here:	^>
	echo:
	FOR /L %%i IN (1,1,%r%) DO (
		cls
		call :HEADER "Rearming %ver% %vera%", " "
		echo:
		SET /A COUNT+=1
		echo ...Rearm Attempt !COUNT! of %r%
		call :FOOTER
		cscript.exe /b %windir%\system32\slmgr.vbs /rearm
		net stop sppsvc >NUL
		net start sppsvc >NUL
		)
	goto:RearmW7Menu
:RestoreRearmW7
	cls
	call :HEADER "RESTORE REARM COUNT OF WINDOWS 7", " "
	echo Remaining Rearm Count: %r%
	echo:
	call :FOOTER
	CHOICE /C CB /N /M "[C]ontinue or [B]ack ?:"
	if %errorlevel%==1 goto :furtherW7
    if %errorlevel%==2 goto:RearmW7Menu
:furtherW7
	cls
	call :HEADER "RESTORE REARM COUNT OF WINDOWS 7", " "
	for /f "delims=[]" %%a in ('find /n "::StartOf"^<"%~f0"') do more +%%a "%~f0" 1>%SystemDrive%\R7.bat
:Execute
	schtasks /create /tn "Key" /tr "%SystemDrive%\R7.bat" /sc onlogon /ru "" >nul
	REG SAVE HKLM\SYSTEM %TEMP%\SYSTEM.HIV /y >NUL 2>&1
	REG RESTORE HKLM\SYSTEM %TEMP%\SYSTEM.HIV >NUL 2>&1
	del %TEMP%\SYSTEM.HIV >NUL 2>&1
	POWERSHELL -command rename-item HKLM:\SYSTEM\WPA -NewName WPA_Delete >NUL 2>&1
	REG DELETE HKLM\SYSTEM\WPA_Delete /f >NUL 2>&1
	echo WINDOWS NEEDS TO REBOOT NOW...
	echo:
	echo REBOOT IS MANDATORY, SO DO NOT STOP^^!^^!^^!
	call :FOOTER
	timeout /t 10 /nobreak >nul
	shutdown.exe /r /t 5
	exit
:SetTime
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
	echo:
:BackSD
	cls
	call :HEADER "Set Date", " "
	echo Actual date: %D.MONTH%/%D.DAY%/%D.YEAR% and time: %D.HOUR%:%D.MINUTE%:%D.SECOND%.
	call :FOOTER
	echo Actual Day: %D.DAY%
	echo Actual Month: %D.MONTH%
	echo Actual Year: %D.YEAR%	
	call :FOOTER
	SET /p D.DAY=Enter Day here:
	SET /p D.MONTH=Enter Month here:
	SET /p D.YEAR=Enter Year here:
	echo:
	echo Sytemvalue new: %D.YEAR%%D.MONTH%%D.DAY%%D.HOUR%%D.MINUTE%%D.SECOND%.%D.FRACTIONS%%D.OFFSET%
	wmic os where( primary=1) call setdatetime %D.YEAR%%D.MONTH%%D.DAY%%D.HOUR%%D.MINUTE%%D.SECOND%.%D.FRACTIONS%%D.OFFSET% >nul
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
	echo New date: %D.MONTH%/%D.DAY%/%D.YEAR% and time: %D.HOUR%:%D.MINUTE%:%D.SECOND%.
	call :FOOTER
	CHOICE /C AC /N /M "[A]gain or [C]ontinue ?:"
	if %errorlevel%==1 goto :BackSD
	if %errorlevel%==2 goto :furtherSD
:furtherSD
	cls
	call :HEADER "Restore Rearm Count of Windows 7", " "
	cscript %windir%\system32\slmgr.vbs /dlv
	call :FOOTER
	pause
	goto:RearmW7Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:NotSupported
	cls
	call :HEADER "Not supported: %ver% %vera% found!", " "
	echo Operating System is not supported.
	call :FOOTER
	timeout /t 5
	goto:SystemTools
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:VSSAdmin
	cls
	call :HEADER "Volume Shadow Copy Service", " "
	echo    [L] List Shadows
	echo    [S] List ShadowStorage
	echo    [V] List Volumes
	echo    [D] Delete Shadows
	echo    [R] Resize ShadowStorage
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C LSVDRB /N /M "YOUR CHOICE:"
	if %errorlevel%==1 goto :ListShadows
	if %errorlevel%==2 goto :ListShadowStorage
	if %errorlevel%==3 goto :ListVolumes
	if %errorlevel%==4 goto :DeleteShadows
	if %errorlevel%==5 goto :ResizeShadowStorage
	if %errorlevel%==6 goto:SystemTools
:ListShadows
	cls
	call :HEADER "List Shadows", " "
	vssadmin list shadows
	call :FOOTER
	pause
	goto :VSSAdmin
:ListShadowStorage
	cls
	echo:
	echo €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo List Shadow Storage
	echo:
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	vssadmin list shadowstorage
	call :FOOTER
	pause
	goto :VSSAdmin
:ListVolumes
	cls
	call :HEADER "List Volumes", " "
	vssadmin list volumes
	call :FOOTER
	pause
	goto :VSSAdmin
:DeleteShadows
	cls
	call :HEADER "Delete Shadows", " "
	echo    [F] For specific Volume
	echo    [S] Specific Shadow
	echo    [A] All Shadows
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C FSAB /N /M "YOUR CHOICE:"
	if %errorlevel%==1 goto :SpecificVolume
	if %errorlevel%==2 goto :SpecificShadow
	if %errorlevel%==3 goto :AllShadows
	if %errorlevel%==4 goto :VSSAdmin
:SpecificVolume
	cls
	call :HEADER "Delete Shadows for specific Volume", " "
	if /i "%for%"=="" set for=c:
	echo Default: %for%
	echo Set Volume Letter
	call :FOOTER
	set /p for=Set Volume Letter :
	call :FOOTER
	CHOICE /C OA /N /M "[O]ldest or [A]ll ?"
	if %errorlevel%==1 set "oldest=/oldest"
	if %errorlevel%==2 set "oldest="
	call :FOOTER
	vssadmin delete shadows /for=%for% %oldest%
	call :FOOTER
	pause
	goto :DeleteShadows
:SpecificShadow
	cls
	call :HEADER "Delete specific Shadow", " "
	echo Default: %shadowid%
	echo Set Shadow ID
	call :FOOTER
	set /p shadowid=Set Shadow ID :
	call :FOOTER
	vssadmin delete shadows /shadow=%shadowid%
	call :FOOTER
	pause
	goto :DeleteShadows
:AllShadows
	cls
	call :HEADER "Delete all Shadows", " "
	vssadmin delete shadows /all
	call :FOOTER
	pause
	goto :DeleteShadows
:ResizeShadowStorage
	cls
	call :HEADER "Resize Shadow Storage", " "
	if /i "%for%"=="" set for=c:
	echo Default: %for%
	echo Set Volume Letter [ForVolume]
	echo:
	if /i "%on%"=="" set on=c:
	echo Default: %on%
	echo Set Volume Letter [OnVolume]
	echo:
	echo Default: %maxsize%
	echo Set Max Size: i.e. 900MB ^| 1GB ^| 20% ^| UNBOUNDED
	call :FOOTER
	set /p for=Set Volume Letter [ForVolume] :
	set /p on=Set Volume Letter [OnVolume] :
	set /p maxsize=Set Max Size :
	call :FOOTER
	vssadmin resize shadowstorage /for=%for% /on=%on% /maxsize=%maxsize%
	call :FOOTER
	pause
	goto :VSSAdmin
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:VersionCheck
	for /f "tokens=3 delims=: " %%a in ('"%dism% %~1 /Get-CurrentEdition /english" ^| findstr /i Image') do set offlineversion=%%a
	for /f "tokens=3 delims=: " %%a in ('"%dism% %~1 /Get-CurrentEdition /english" ^| findstr /i Edition') do set offlineedition=%%a
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:VersionCheckSet
		if "!offlineversion:~0,3!"=="6.1" set name1=Windows6.1
		if "!offlineversion:~0,3!"=="6.2" set name1=Windows8-RT
		if "!offlineversion:~0,3!"=="6.3" set name1=Windows8.1
		if "!offlineversion:~0,3!"=="10.0" set name1=Windows10.0
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:OnlineOfflineLoop
	CHOICE /C OF /N /M "[O]nline or O[F]fline Install?:"
	if %errorlevel%==1 (
		set "type=online"
		set "scratch="
		call :VersionCheck "/online"
	)
    if %errorlevel%==2 (
		call :FOOTER
		echo Drive Letter of Offline Install 'd:'
		echo:
		echo Drive Letter of Scratch Dir 'x:'
		call :FOOTER
		set /p driveletter=Set Drive Letter for Offline Install:
		set /p scratch=Set Drive Letter for Scratch Dir:
		call :FOOTER
		set "type=image:%driveletter%\"
		set "scratch= /scratchdir:%scratch%\"
		call :VersionCheck "/image:%driveletter%\"
	)
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:COLOROUT
	powershell "Write-Host '%~1' -foreground Gray"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:COLOROUT02
	powershell "Write-Host '%~1' -foreground %~2"
	goto:eof
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
:FOOTER
	echo:
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:SHFOOTER
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:TITLE
	title s1ave77s ˛ S-M-R-T JATDevice Mk III ˛ v1.00.56
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Reboot
	start shutdown.exe /r /t 0	
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::StartOf
	@echo off
	FOR /F "tokens=2 delims==" %%A in ('wmic path SoftwareLicensingService get version /format:list') do set ver=%%A
	FOR /F "tokens=3" %%A in ('REG QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "EditionID"') do set edition=%%A
	FOR %%i IN (Starter:7Q28W-FT9PC-CMMYT-WHMY2-89M6G HomeBasic:YGFVB-QTFXQ-3H233-PTWTJ-YRYRV HomePremium:RHPQ2-RMFJH-74XYM-BH4JX-XM76F Professional:HYF8J-CVRMY-CM74G-RPHKF-PW487 Ultimate:D4F6K-QK3RD-TMVMJ-BBMRX-3MBMV StarterE:BRQCV-K7HGQ-CKXP6-2XP7K-F233B HomeBasicE:VTKM9-74GQY-K3W94-47DHV-FTXJY HomePremiumE:76BRM-9Q4K3-QDJ48-FH4F3-9WT2R ProfessionalE:3YHKG-DVQ27-RYRBX-JMPVM-WG38T UltimateE:TWMF7-M387V-XKW4Y-PVQQD-RK7C8 StarterN:D4C3G-38HGY-HGQCV-QCWR8-97FFR HomeBasicN:MD83G-H98CG-DXPYQ-Q8GCR-HM8X2 HomePremiumN:D3PVQ-V7M4J-9Q9K3-GG4K3-F99JM ProfessionalN:BKFRB-RTCT3-9HW44-FX3X8-M48M6 UltimateN:HTJK6-DXX8T-TVCR6-KDG67-97J8Q Enterprise:H7X92-3VPBB-Q799D-Y6JJ3-86WC6 EnterpriseE:H3V6Q-JKQJG-GKVK3-FDDRF-TCKVR EnterpriseN:BQ4TH-BWRRY-424Y9-7PQX2-B4WBD) DO FOR /F "tokens=1,2 delims=:" %%A IN ("%%i") DO if "%edition%"=="%%A" set pk=%%B
	wmic path SoftwareLicensingService where version='%ver%' call InstallProductKey ProductKey="%pk%"
	net stop sppsvc 
	net start sppsvc 
	schtasks /delete /tn "Key" /f
	del /F /Q %0
