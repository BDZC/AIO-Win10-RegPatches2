:: Code by s1ave77 ColdZero ms-7 MasterDisaster xinso
:: Know How by CODYQX4 & mikmik38 & nosferati87 & qad & deagles & Hotbird64 & jm287 & sirWest & CyNecx
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	@echo off
	set "jatdpath=%cd%"
    (NET FILE||(powershell start-process -WorkingDirectory '%jatdpath%' -FilePath '%0' -verb runas)&&(exit /B)) >NUL 2>&1
	setlocal EnableExtensions
	setlocal EnableDelayedExpansion
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	powershell.exe -command "& {$pshost = Get-Host;$pswindow = $pshost.UI.RawUI;$newsize = $pswindow.BufferSize;$newsize.height = 9001;$pswindow.buffersize = $newsize;}"
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	if not "%~1"=="" goto :%~1
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CreateRandomIP
	set /a num1=%random% %% 50+30
	set /a num2=%random% %% 186+20
	set "host=10.%num1%.3.%num2%"
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Jump.In
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::	call :CheckPowershellVersion
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::MENU SECTION
:Menu1
	cls
	pushd %~dp0
	mode con cols=87 lines=50
	color 07
	call :TITLE
	call :CheckToolStart
	call :CheckSPPSVC
	call :ID
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  M A I N M E N U  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	call :Layout
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ++ EMULATORS, SERVICES AND REDIRECT HOOKS +++++++++++++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    == (1) KMS EMULATORS MENU =============== (2) KMS SERVICES MENU =================
	echo    ∞                                                                               ∞
	echo    == (3) HOOKED KMS SERVERS MENU ========== (4) KMS CLIENT MENU ===================
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ++ CHECK, ACTIVATION AND INFORMATION ++++++++++++++++++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    == (C) CHECK STATUS MENU ================ (A) ACTIVATION MENU ===================
	echo    ∞                                                                               ∞
	echo    == (G) ABOUT KMS ACTIVATION ============= (X) SECURITY MENU =====================
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ++ TOOLS SECTION ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    == (S) MODULES/SYSTEM TOOLS MENU ======== (T) SYS PANEL/MDL TOOLS MENU ==========
	echo    ∞                                                                               ∞
	echo    == (I) SYSINTERNALS/TASKKILL/BOOT MENU == (U) CHECK/UPDATE JATD VERSION =========
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ≤≤ (P) COMMAND PROMPT ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (E) EXIT ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
:choice1
	CHOICE /C 1234CAGXSTIUPE /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto:MenuC
	if %errorlevel%==2 goto:Menu2
	if %errorlevel%==3 goto:MenuH
	if %errorlevel%==4 goto:Menu3
	if %errorlevel%==5 goto:MenuA
	if %errorlevel%==6 goto:Menu5
	if %errorlevel%==7 goto:About
	if %errorlevel%==8 goto:Security
	if %errorlevel%==9 goto:StartSystemTools
	if %errorlevel%==10 goto:StartTools
	if %errorlevel%==11 goto:StartSysInternal
	if %errorlevel%==12 goto:JATDUpdate
	if %errorlevel%==13 goto:CommandPrompt
	if %errorlevel%==14 goto:Exit
	goto:Menu1
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:MenuC
	cls
	mode con cols=87 lines=50
	color 0F
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  KMS EMULATORS  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	call :Layout
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (C) Emulator by CODYQX4 -------------- (D) Emulator by deagles ---------------
	echo    ∞                                                                               ∞
	echo    -- (H) Emulator by Hotbird64 ----------------------------------------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (S) Stop Server Emulator -----------------------------------------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (A) Create Firewall Rule ------------- (R) Delete Firewall Rule --------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) BACK ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
:choiceC
	CHOICE /C CDHSARB /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto:CodyRunEmulator
	if %errorlevel%==2 goto:DeaglesRunEmulator
	if %errorlevel%==3 goto:HotbirdRunEmulator
	if %errorlevel%==4 goto:StopEmulator
	if %errorlevel%==5 goto:FirewallInstall2
	if %errorlevel%==6 goto:FirewallDelete2
	if %errorlevel%==7 goto:Menu1
	goto:MenuC
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Menu2
	cls
	mode con cols=87 lines=50
	color 0E
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  KMS SERVER SERVICES  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	call :Layout
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (C) Service by CODYQX4 [8.1] --------- (K) Service by deagles [Win 8.1] ------
	echo    ∞                                                                               ∞
	echo    -- (H) Service by Hotbird64 [8.1] -----------------------------------------------
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (U) Uninstall Server Service -------------------------------------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (S) Settings CODYQX4's --------------- (T) Settings for deagles's-------------
	echo    ∞                                                                               ∞
	echo    -- (V) Settings Hotbird64's -----------------------------------------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (D) Delete Firewall Rules ------------ (E) Enable Firewall Rules -------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) Back ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
:choice2
	CHOICE /C CKHUSTVDEB /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto:CodyInstall
	if %errorlevel%==2 goto:DeaglesInstall
	if %errorlevel%==3 goto:Hotbird64Install
	if %errorlevel%==4 goto:ServiceUninstall
	if %errorlevel%==5 goto:CustomCody
	if %errorlevel%==6 goto:CustomDeagles
	if %errorlevel%==7 goto:CustomHotbird64
	if %errorlevel%==8 goto:FirewallDelete
	if %errorlevel%==9 goto:FirewallInstall
	if %errorlevel%==10 goto:Menu1
	goto:Menu2
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:MenuH
	cls
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  HOOKED KMS SERVERS  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	call :Layout
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ++ HOOKS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (1) WinDivert 1.1 ------------------- (2) SppExtComObjPatch Hook -------------
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ++ HOOKED SERVERS +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (5) Hook ^& Server by CyNecx --------- (6) ^<^<^< Uninstall ----------------------
	echo    ∞                                                                               ∞
	echo    -- (7) Hook ^& Server by qad ------------ (8) ^<^<^< Uninstall ----------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ≤≤ (R) REBOOT ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) BACK ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
:choiceH
	CHOICE /C 125678B /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto:WinDivert
	if %errorlevel%==2 goto:SppExtComObjPatch
	if %errorlevel%==3 goto:CynecxInstall
	if %errorlevel%==4 goto:CynecxUnInstall
	if %errorlevel%==5 goto:QADInstall
	if %errorlevel%==6 goto:QADUnInstall
	if %errorlevel%==7 goto:Menu1
	goto:MenuH
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Menu3
	cls
	mode con cols=87 lines=50
	color 0B
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  KMS CLIENT EMULATOR  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	call :Layout
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ---------------------- (C) KMS Client Emulator by CODYQX4 -----------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ---------------------- (H) KMS Client Emulator by Hotbird64 ---------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) BACK ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
:choice3
	CHOICE /C CHB /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto:CodyInput
	if %errorlevel%==2 goto:HotbirdInput
	if %errorlevel%==3 goto:Menu1
	goto:Menu3
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:MenuA
	cls
	mode con cols=87 lines=50
	color 0A
	call :CheckSPPSVC
	call :ID
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  CHECK STATUS  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	call :Layout
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (1) CHECK SERVERS -------------------- (2) CHECK EMULATOR --------------------
	echo    ∞                                                                               ∞
	echo    -- (3) CHECK PHYSICAL HOST -------------- (4) CHECK PORT ------------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ++ (C) ACTIVATION STATUS ALL ++++++++++++++++++++++++++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (H) Halt Service -------------------------------------------------------------
	echo    ∞                                                                               ∞
	echo    -- (R) Restart Service manually --------- (S) Start Service ---------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (I) IP Lookup ------------------------ (L) Clear all Logs --------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) BACK ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
:choiceA
	CHOICE /C 1234CRHSILB /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto:CheckInstall
	if %errorlevel%==2 goto:CheckEmulator
	if %errorlevel%==3 goto:CheckRealHost
	if %errorlevel%==4 goto:CheckPortUsage
	if %errorlevel%==5 goto:CheckActivation
	if %errorlevel%==6 goto:RestartService
	if %errorlevel%==7 goto:HaltService
	if %errorlevel%==8 goto:StartService
	if %errorlevel%==9 goto:Ipconfig
	if %errorlevel%==10 goto:ClearLogs
	if %errorlevel%==11 goto:Menu1
	goto:MenuA
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Menu5
	cls
	pushd %~dp0
	mode con cols=87 lines=50
	color 0C
	call :CheckSPPSVC
	call :ID
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  ACTIVATION  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	call :Layout
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ++ (W) ACTIVATE WINDOWS +++++++++++++++++ (O) ACTIVATE OFFICE +++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ++ (I) INSTALL PRODUCT KEY ++++++++++++++ (Z) REARM OFFICE 2013 +++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ++ (T) RE-ACTIVATION TASK +++++++++++++++ (C) CONVERT OFFICE 15/16 INSTALL ++++++
	echo    ∞                                                                               ∞
	echo    ++ (F) OFFICE FIXITs ++++++++++++++++++++ (U) UNINSTALL OFFICE LICENSE ++++++++++
	echo    ∞                                                                               ∞
	echo    +++++++++++++++++++++++++++++++++++++++++ (D) DOWNLOAD/INSTALL OFFICE 16 ++++++++
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ++ ACTIVATE WITH CHOICE +++++++++++++++++ ACTIVATE ALL AUTOMATICALLY ++++++++++++
	echo    ∞                                                                               ∞
	echo    -- (1) Instant Run  [CODY/qad] ---------- (2) "Quick 'n Dirty" [CODY/qad] -------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (P) Activate by Phone ---------------- (R) Rebuild License -------------------
	echo    ∞                                                                               ∞
	echo    -- (V) Validate Win 7 Online ------------ (E) Export Tokens [Win 8 up] ----------
	echo    ∞                                                                               ∞
	echo    -- (K) Block MS KMS-Check --------------- (L) Unblock MS KMS-Check --------------
	echo    ∞                                                                               ∞
	echo    ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) BACK ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
:choice5
	CHOICE /C WOIZTCFUD12PRVEKLB /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto:Activate
	if %errorlevel%==2 goto:ActivateOffice
	if %errorlevel%==3 goto:KeyInstall
	if %errorlevel%==4 goto:RearmOffice
	if %errorlevel%==5 goto:ReactivationTasks
	if %errorlevel%==6 goto:ConvertOffice
	if %errorlevel%==7 goto:OfficeFixit
	if %errorlevel%==8 goto:UninstallOffice
	if %errorlevel%==9 goto:Office16VnextInstall
	if %errorlevel%==10 goto:InstantActivation
	if %errorlevel%==11 goto:QuickAndDirtyQAD
	if %errorlevel%==12 goto:CallMS
	if %errorlevel%==13 goto:RebuildLicense
	if %errorlevel%==14 goto:Validate
	if %errorlevel%==15 goto:ExportTokens
	if %errorlevel%==16 goto:BlockCheck
	if %errorlevel%==17 goto:UnBlockCheck
	if %errorlevel%==18 goto:Menu1
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Security
	cls
	call :TITLE
	if exist "%windir%\System32\WindowsPowerShell\v1.0\Modules\PSWindowsUpdate\PSWindowsUpdate.psd1" (set "ishere=INSTALLED") else (set "ishere=...NEEDED")
	mode con cols=87 lines=50
	color 07
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  WINDOWS 10 (WU PS MODULE: %ishere%)  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	echo    €ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€
	echo    €‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€
	echo:
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    == (1) S-M-R-T SECURITY TOOL ============ (2) S-M-R-T WIN UPDATE TOOL ===========
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ++ (3) WIN DEFENDER MENU ++++++++++++++++ (4) SETTINGS PANE QUICK ACCESS MENU +++
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) BACK ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
:choice5
	CHOICE /C 1234B /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto:SmrtDisable
	if %errorlevel%==2 goto:SmrtWU
	if %errorlevel%==3 goto:DefenderUpdate
	if %errorlevel%==4 goto:QuickAccess
	if %errorlevel%==5 goto:Menu1
	goto:Security
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:DefenderUpdate
	cls
	mode con cols=87 lines=50
	color 07
	set "hive=hklm"
	set "subkey=SOFTWARE\Microsoft\Windows Defender\Exclusions\Paths"
	title ˛ WINDOWS DEFENDER MENU ˛ by s1ave77
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  WINDOWS DEFENDER MENU  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	echo    €ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€
	echo    €‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€
	echo:
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    ++ (U) UPDATE DEFENDER ++++++++++++++++++ (P) REVERT TO PREVIOUS ++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ++ (O) REVERT TO ORIGINAL +++++++++++++++ (C) LIST DEFENDER UPDATE LOG ++++++++++
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    == (Q) QUICK SCAN ======================= (S) COMPLETE SCAN =====================
	echo    ∞                                                                               ∞
	echo    == (F) FILES AND FOLDER SCAN ============ (V) VIEW QUARRANTINE ==================
	echo    ∞                                                                               ∞
	echo    == (R) RESTORE FROM QUARRANTINE ========= (L) LIST DEFENDER ACTION LOG ==========
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    -- (E) SHOW EXCLUSIONS ------------------ (D) SHOW DETECTED THREATS -------------
	echo    ∞                                                                               ∞
	echo    -- (T) SET EXCLUSIONS ------------------- (X) REMOVE EXCLUSIONS -----------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    == (W) CHANGE SETTINGS ==========================================================
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
 	echo    -- (G) GO BACK TO PS WU MODULE --------------------------------------------------
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) BACK ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
	CHOICE /C UPOCQSFVRLEDTXWGB /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto :DefenderUpdateProcess
	if %errorlevel%==2 goto :DefenderDefRevert
	if %errorlevel%==3 goto :DefenderDefRevertAll
	if %errorlevel%==4 goto :DefenderLog
	if %errorlevel%==5 goto :DefenderScanQuick
	if %errorlevel%==6 goto :DefenderScanComplete
	if %errorlevel%==7 goto :DefenderScanFiles
	if %errorlevel%==8 goto :DefenderQuar
	if %errorlevel%==9 goto :DefenderQuarRestore
	if %errorlevel%==10 goto :DefenderActionLog
	if %errorlevel%==11 goto :DefenderShowExclusion
	if %errorlevel%==12 goto :DefenderShowThreats
	if %errorlevel%==13 goto :DefenderSetExclusion
	if %errorlevel%==14 goto :DefenderRemExclusion
	if %errorlevel%==15 goto :DefenderSettings
	if %errorlevel%==16 (pushd %~dp0)&&(call files\Win.Update.Module.cmd UpdateInstall)
	if %errorlevel%==17 goto :Security
	goto:DefenderUpdate
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:QuickAccess
	cls
	mode con cols=87 lines=50
	color 0B
	title ˛ WINDOWS DEFENDER MENU ˛ by s1ave77
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  QUICK ACCESS MENU MENU  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	echo    €ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€
	echo    €‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€
	echo:
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    ++ (1) PRIVACY SETTINGS +++++++++++++++++ (2) PERSONALIZATION SETTINGS ++++++++++
	echo    ∞                                                                               ∞
	echo    ++ (3) NOTIFICATION SETTINGS ++++++++++++ (4) OPTIONAL FEATURES SETTINGS ++++++++
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	echo    ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ∞                                                                               ∞
	echo    ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) BACK ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
	CHOICE /C 1234B /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto :PrivacySettings
	if %errorlevel%==2 goto :PersonalizationSettings
	if %errorlevel%==3 goto :NotificationsSetting
	if %errorlevel%==4 goto :OptionalFeaturesSetting
	if %errorlevel%==5 goto :Security
	goto:QuickAccess
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:About
	cls
	color 0B
	echo:
	echo    €ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ€
	echo:   €                                                                               €
	echo    €  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  ABOUT KMS ACTIVATION   ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  €
	echo:   €                                                                               €
	echo    €‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹€
	echo:
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    ∞  FIRST: As there won't be any serious Loader for Win 8, like the one by Daz   ∞ 
	echo    ∞  for Win 7, due to O.A 3.0, there are only two ways for legit activation:     ∞
	echo    ∞  (1) legit RETAIL Key or MAK or (2) volume-based KMS activation.              ∞
	echo:   ∞                                                                               ∞
	echo    ∞  With RTM of Win 8.1 Microsoft introduced KMS V6 protocol, which refuses      ∞
	echo    ∞  activation via localhost. Now a redirect hook is needed to reach the Host.   ∞
	echo:   ∞                                                                               ∞
	echo    ∞  The new solutions work for Win 8 and 8.1, but are not downward compatible.   ∞
	echo    ∞  So for Win 7 and Server 2008 R2 the old solutions needed to be installed.    ∞
	echo:   ∞                                                                               ∞
	echo    ∞  NOTE: "Instant Run" and "Quick & Dirty" will determine the OS Version by     ∞
	echo    ∞  buildstring and automatically install the proper Server.                     ∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo    ∞  LIMITATION: Volume-based activation is time-limitted by design.              ∞
	echo:   ∞                                                                               ∞
	echo    ∞  WIN 7  : Professional, Enterprise and Servers (180 days)                     ∞
	echo:   ∞                                                                               ∞
	echo    ∞  WIN 8  : Pro, Ent and Servers (180 days); Core ^& ProfessionalWMC (30 days)   ∞
	echo:   ∞                                                                               ∞
	echo    ∞  WIN 8.1: Pro, Ent and Servers (180 days); Core ^& ProfessionalWMC (45 days)   ∞
	echo:   ∞                                                                               ∞
	echo    ∞  OFFICE : Office 2010 ProPlus VL and Office 2013 ProPlus VL (180 days)        ∞
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   
	echo                      YOUR SYSTEM   : %computername%                  
	echo                      STATUS        : %license% %left%
	echo                      OS-NAME       : %ver%  %comment%
	echo                      CHANNEL       : %channel%
	echo                      OS-BUILD      : %build%.%build1%
	echo                      OS-EDITION    : %edition%
	echo                      OS-ARCITECTURE: %vera% 
	echo    €ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ€
	echo    €       Greetings to all MDL menbers out there, keep reaching the rainbow.      €
	echo    €‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  (c) s1ave77 (tm) [SUCKERS Inc. (SubNode Beta)]  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	echo    €‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹/ press any key to continue \‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹€ && pause >nul
	goto:BroughtToYou
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:BroughtToYou
	cls
	color 04
	echo:
	echo  ‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹
	echo  €ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ€
	echo  €ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ€
	echo  €  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  THIS TOOL IS BROUGHT TO YOU BY:  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  €
	echo  €‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹€
	echo  €‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹ﬂ‹€
	echo  ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	echo  €ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€
	echo  €‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€
	echo  € € ‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹ € €
	echo  €ﬂ€ €˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛€ €ﬂ€
	echo  €‹€ €˛€ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ€˛€ €‹€
	echo  € € €˛€ €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ €˛€ € €
	echo  €ﬂ€ €˛€ €≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤€€ ﬂ €€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤€ €˛€ €ﬂ€
	echo  €‹€ €˛€ €±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±€ ‹€‹ €±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±€ €˛€ €‹€
	echo  € € €˛€ €∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞€‹ ﬂ ‹€∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞€ €˛€ € €
	echo  € ‹‹ ‹   ‹‹‹ ‹  ‹‹‹ ‹ ‹ ‹‹‹   ‹ ‹‹ ‹‹‹ ‹‹ ‹ ‹‹ ‹‹‹ ‹‹ ‹   ‹‹‹ ‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹€
	echo  € ﬂ  ‹‹ﬂﬂ≤≤€  ‹€±€±ﬂ€   €≤≤ﬂﬂ‹‹  ﬂ   €€€€   €€€€   ﬂ  ‹‹ﬂﬂ≤≤€ €ﬂ±€ﬂﬂ€ﬂ±€ €ﬂ±€ﬂﬂ€ﬂ±€ €
	echo  €  ‹€ﬂﬂ€±±±€ ﬂﬂ€≤≤€ €   €±±±€ﬂﬂ€‹    €ﬂ€€   €€ﬂ€    ‹€ﬂﬂ€±±±€ €±±€  €≤≤€ €±±€  €≤≤€ €
	echo  € €≤±€  €∞∞€   €≤≤± €   €∞∞€  €≤≤€   €≤≤€   €≤≤€   €≤±€  €∞∞€ €€ﬂﬂ  €≤≤€ €€ﬂﬂ  €≤≤€ €
	echo  € €≤≤€  ﬂﬂ€ﬂ   €±±∞ €   ﬂ€ﬂﬂ  €≤≤€   €≤≤€   €≤≤€   €±±€  €±€‹    ‹  €€±€    ‹  €€±€ €
	echo  €  ﬂ€€‹    ‹≤‹ ﬂ∞±± ﬂ ‹≤‹    ‹€±±€   €€±€   €±€€   €€±€  €∞∞€ ‹≤‹   ﬂ±±€ ‹≤‹   ﬂ±±€ €
 	echo  € €‹  ﬂ€€‹‹ ﬂ  €∞∞≤ €  ﬂ ‹‹€ﬂﬂ€±±€ ‹ €±±€   €±±€ ‹ €∞∞€‹‹€ﬂﬂ   ﬂ ‹  €∞∞€  ﬂ ‹  €∞∞€ €
	echo  €       €€€€   €∞∞±ﬂ€   €€€€  €∞∞‹ ‹ ‹∞∞€   €∞∞‹ ‹ ‹∞∞€ﬂ            €∞∞€       €∞∞€ €
	echo  € €€‹‹  €≤≤€   ±€±± €   €≤≤€  ﬂ∞∞€   €€∞€   €∞€€   €±±€  ‹‹€€  ﬂ  ﬂ €±±ﬂ  ﬂ  ﬂ €±±ﬂ €
	echo  € €≤≤€  €±±€ ‹ €∞∞∞ € ‹ €±±€  €±‹€   €±±€   €±±€   €±±€  €∞∞€  ∞€ﬂ∞ €±±€  ∞€ﬂ∞ €±±€ €
	echo  € ‹±±€  €∞∞‹ ‹ ‹≤≤≤ ‹ ‹ ‹∞∞€  €≤≤€   ﬂ‹ €   € ‹ﬂ   €€±€  €±±‹  ±± ∞ €≤≤€  ±± ∞ €≤≤€ €
	echo  € €∞∞€  €€‹€   €€±€ €   €‹€€  €≤€€ ‹≤‹ ﬂ€€‹€€ﬂ ‹≤‹ €±‹€  €€€€  ‹ ﬂﬂ €≤≤€  ‹ ﬂﬂ €≤≤€ €
	echo  €  ﬂﬂ€€€€ﬂ ‹ ‹‹€‹€€‹€‹‹  ﬂﬂ€€€€€€€‹ ﬂ ‹  ﬂ€ﬂ  ‹ ﬂ ‹ ﬂﬂ€€€€ﬂ ‹‹ﬂ≤ﬂ ‹‹€€€€‹ﬂ≤ﬂ ‹‹€€€€‹€
	echo  €                                         ‹                                         €
	echo  € € €˛€ €∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞€ﬂ ‹ ﬂ€∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞€ €˛€ € €
	echo  €ﬂ€ €˛€ €±±±±±±±±±±±±±±±±±±±±±D±±C±±L±±€ ﬂ€ﬂ €±±X±±V±±I±±±±±±±±±±±±±±±±±±±±±€ €˛€ €ﬂ€
	echo  €‹€ €˛€ €≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤€€ ‹ €€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤€ €˛€ €‹€
	echo  € € €˛€ €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ €˛€ € €
	echo  €ﬂ€ €˛€‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹€˛€ €ﬂ€
	echo  €‹€ €˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛€ €‹€
	echo  € € ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ € €
	echo  €ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€
	echo  €‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€
	echo:
	echo  ‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹
	echo:
	echo  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  (c) s1ave77 (tm) [SUCKERS Inc. (SubNode Beta)]  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	echo  ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	echo  €‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹/ press any key to continue \‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹€ && pause >nul
	goto:Menu1
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::EMULATOR START SECTION
:CodyRunEmulator
	color 0F
	pushd %~dp0
	cls
	call :HEADER "This option runs KMS Server Emulator by CODYQX4", " "
	echo:
	call :SetEmulatorData
	echo:
	call :CodyPID
	cls
	call :HEADER "This option runs KMS Server Emulator by CODYQX4", " "
	if exist "%windir%\KMSServer\KMSServer.exe" del /s /q "%windir%\KMSServer\KMSServer.exe" >nul
	xcopy "files\KMS Server %vera%.exe" "%windir%\KMSServer\" /Q /S >nul
	ren "%windir%\KMSServer\KMS Server %vera%.exe" "KMSServer.exe"
	netsh advfirewall firewall add rule name="KMS Server Emulator" dir=in  program="%windir%\KMSServer\KMSServer.exe" localport=%port% protocol=TCP action=allow remoteip=any
	netsh advfirewall firewall add rule name="KMS Server Emulator" dir=in  program="%windir%\KMSServer\KMSServer.exe" localport=%port% protocol=TCP action=allow remoteip=localsubnet
	call :RegCODY
	call :RegOffice
	start "KMS Emulator by CODYQX4 (08/03/2014)" cmd /c "%windir%\KMSServer\KMSServer.exe"
	goto:MenuC
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:HotbirdRunEmulator
	set "hSpp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
	set "hOspp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform"
	set WindowsPid=Random
	set Office2010Pid=Random
	set Office2013Pid=Random
	color 0F
	pushd %~dp0
	cls
	call :HEADER "This option runs KMS Server Emulator by Hotbird64", " "
	echo:
	call :SetEmulatorData
	echo:
	echo Windows ePID %WindowsPid%
	echo Office 2010 ePID %Office2010Pid%
	echo Office 2013 ePID %Office2013Pid%
	call :FOOTER
	set /p WindowsPid=Set WindowsPid ^>
	set /p Office2010Pid=Set Office2010Pid ^>
	set /p Office2013Pid=Set Office2013Pid ^>
	cls
	call :HEADER "This option runs KMS Server Emulator by Hotbird64", " "
	if exist "%windir%\KMSServer\KMSServer.exe" del /s /q "%windir%\KMSServer\KMSServer.exe" >nul
	xcopy "files\kms-hgm.exe" "%windir%\KMSServer\" /Q /Y >nul
	ren "%windir%\KMSServer\kms-hgm.exe" "KMSServer.exe"
	netsh advfirewall firewall add rule name="KMS Server Emulator" dir=in  program="%windir%\KMSServer\KMSServer.exe" localport=%port% protocol=TCP action=allow remoteip=any
	netsh advfirewall firewall add rule name="KMS Server Emulator" dir=in  program="%windir%\KMSServer\KMSServer.exe" localport=%port% protocol=TCP action=allow remoteip=localsubnet
	call :RegOffice
	call :RegDH
	start "KMS Emulator by Hotbird64 (10/03/2014)" cmd /c "%windir%\KMSServer\KMSServer.exe" Port=%port% Office2010=%Office2010Pid% Office2013=%Office2013Pid% Windows=%WindowsPid% RenewalInterval=%sri%
	goto:MenuC
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:DeaglesRunEmulator
	color 0F
	pushd %~dp0
	set WindowsPid="05426-00206-152-251264-03-1031-9200.0000-0902013"
	set Office2010Pid="05426-00206-234-251264-03-1031-9200.0000-0902013"
	set Office2013Pid="55041-00096-199-251264-03-1031-9200.0000-0902013"
	cls
	call :HEADER "This option runs KMS Server Emulator by deagles", " "
	echo:
	call :SetEmulatorData
	echo:
	echo Windows ePID=%WindowsPid%
	echo Office 2010 ePID=%Office2010Pid%
	echo Office 2013 ePID=%Office2013Pid%
	call :FOOTER
	set /p WindowsPid=Set Windows ePID ^>
	set /p Office2010Pid=Set Office 2010 ePID ^>
	set /p Office2013Pid=Set Office 2013 ePID ^>
	cls
	call :HEADER "This option runs KMS Server Emulator by deagles", " "
	if exist "%windir%\KMSServer\KMSServer.exe" del /s /q "%windir%\KMSServer\KMSServer.exe" >nul
	xcopy "files\kms.exe" "%windir%\KMSServer\" /Q /Y >nul
	ren "%windir%\KMSServer\kms.exe" "KMSServer.exe"
	netsh advfirewall firewall add rule name="KMS Server Emulator" dir=in  program="%windir%\KMSServer\KMSServer.exe" localport=%port% protocol=TCP action=allow remoteip=any
	netsh advfirewall firewall add rule name="KMS Server Emulator" dir=in  program="%windir%\KMSServer\KMSServer.exe" localport=%port% protocol=TCP action=allow remoteip=localsubnet
	call :RegOffice& call :RegDH
	start "KMS Emulator by deagles (May 2014)" cmd /c "%windir%\KMSServer\KMSServer.exe"
	goto:MenuC
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:StopEmulator
	set "hSpp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
	set "hOspp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform"
	cls
	call :HEADER "This option stops KMS Server Emulator", " "
	echo Checking for Server Emulator instances:
	echo:
	wmic process where "name='KMSServer.exe'" | findstr /i /c:"KMSServer.exe" >nul	
	if %errorlevel%==1 call :ServerNotRunning
	if %errorlevel%==1 goto:MenuC
	echo:
	TASKKILL /F /IM "KMSServer.exe" >nul
	netsh advfirewall firewall delete rule name="KMS Server Emulator"
	call :UnRegOffice
	reg delete "HKLM\SYSTEM\CurrentControlSet\Services\KMSServerService" /f >nul 2>&1
	reg delete "HKLM\SYSTEM\CurrentControlSet\services\KMSServer" /f >nul 2>&1
	if exist "%windir%\KMSServer\" rd /s /q "%windir%\KMSServer\" >nul
	if exist "kms.ini" del /s /q "kms.ini" /f >nul 
	goto:MenuC
:ServerNotRunning
	echo:
	echo ...Server Emulator is not running.
	call :FOOTER
	timeout /t 5
	goto:MenuC
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::KMS SERVICES SECTION
:CodyInstall
	cls
	call :HEADER "This option installs the KMS Server Service by CODYQX4 ", " "
	call :SetServiceData
	call :CodyPID
	cls
	call :HEADER "This option installs the KMS Server Service by CODYQX4 ", " "
	call :Initiate
	call :FOOTER
	call :RegCody
	call :RegOffice
	sc create %name% binPath= "%windir%\%name%\%name%.exe" type= own error= normal obj= "NT AUTHORITY\NetworkService" start= %start% DisplayName= %name%
	call :FOOTER
	net start %name% >nul
	if %errorlevel% equ 0 echo Successfully started %name%.
	if %errorlevel% neq 0 echo Starting %name% Failed. 
	call :FOOTER
	timeout /t 5
	goto:Menu2
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:DeaglesInstall
	set WindowsPid="05426-00206-152-251264-03-1031-9200.0000-0902013"
	set Office2010Pid="05426-00206-234-251264-03-1031-9200.0000-0902013"
	set Office2013Pid="55041-00096-199-251264-03-1031-9200.0000-0902013"
	set hService="HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\%name%\Parameters"
	pushd "%~dp0"
	cls
	call :HEADER "This option installs the KMS Server Service by deagles", " "
	call :SetServiceData
	cls
	call :HEADER "This option installs the KMS Server Service by deagles", " "
	echo Windows ePID %WindowsPid%
	echo Office 2010 ePID %Office2010Pid%
	echo Office 2013 ePID %Office2013Pid%
	call :FOOTER
	set /p WindowsPid=Set WindowsPid ^>
	set /p Office2010Pid=      Set Office2010Pid ^>
	set /p Office2013Pid=Set Office2013Pid ^>
	cls
	call :HEADER "This option installs the KMS Server Service by deagles", " "
	call :RegDH
	call :RegOffice
	call :Initiate
	sc create %name% binPath= "%windir%\%name%\%name%.exe" type= own error= normal obj= "NT AUTHORITY\NetworkService" start= %start% DisplayName= %name%
	echo:
	net start %name% >nul
	if %errorlevel% equ 0 echo Successfully started %name%.
	if %errorlevel% neq 0 echo Starting %name% Failed. 
	call :FOOTER
	timeout /t 5
	goto:Menu2
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Hotbird64Install
	set WindowsPid="05426-00206-152-251264-03-1031-9200.0000-0902013"
	set Office2010Pid="05426-00206-234-251264-03-1031-9200.0000-0902013"
	set Office2013Pid="55041-00096-199-251264-03-1031-9200.0000-0902013"
	set hService="HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\KMS\Parameters"
	cls
	call :HEADER "This option installs the KMS Server Service by Hotbird64", " "
	call :SetServiceData
	cls
	call :HEADER "This option installs the KMS Server Service by Hotbird64", " "
	echo    Run Service with RandomKMSPID or enter ePIDs manually?
	CHOICE /C RM /M "......Set ePID mode :"
	if %errorlevel%==1 set rpid=1 && goto :furtherH1
	if %errorlevel%==2 set rpid=0 && goto :furtherH2
:furtherH2
	echo:
	echo Windows ePID %WindowsPid%
	echo Office 2010 ePID %Office2010Pid%
	echo Office 2013 ePID %Office2013Pid%
	call :FOOTER
	set /p WindowsPid=Set WindowsPid ^>
	set /p Office2010Pid=Set Office2010Pid ^>
	set /p Office2013Pid=Set Office2013Pid ^>
	echo:
:furtherH1
	cls
	call :HEADER "This option installs the KMS Server Service by Hotbird64", " "
	call :RegDH
	reg add %hService% /f /v "RandomPID" /d %rpid% /t "REG_DWORD" >nul
	call :RegOffice
	call :Initiate
	sc create %name% binPath= "%windir%\%name%\%name%.exe" type= own error= normal obj= "NT AUTHORITY\NetworkService" start= %start% DisplayName= %name%	
	net start %name%
	call :FOOTER
	timeout /t 5
	goto:Menu2
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CustomCody
	cls
	pushd "%~dp0"
	call :HEADER "This option change ePID, Port and Intervals (sai/sri) for KMS Server Service", " "
	echo:
	set triggerS=4
	call :SetServiceData
	call :CodyPID
:InstallServiceCODY2
	cls
	call :HEADER "This option installs the KMS Server Service by CODYQX4 ", " "
	net stop %name% >nul
	if %errorlevel% equ 0 echo Successfully stopped %name%.
	if %errorlevel% neq 0 echo Stopping %name% Failed. 
	call :RegCody
	sc config %name% start= %start%
	netsh advfirewall firewall add rule name="%name% %port%" dir=in  program="%windir%\%name%\%name%.exe" localport=%port% protocol=TCP action=allow remoteip=any
	netsh advfirewall firewall add rule name="%name% %port%" dir=in  program="%windir%\%name%\%name%.exe" localport=%port% protocol=TCP action=allow remoteip=localsubnet
	call :FOOTER
	CHOICE /C YN /M "Start Sevice now? :"
	if %errorlevel%==1 goto :start2
	if %errorlevel%==2 goto:Menu2
:start2
	echo:
	net start %name% >nul
	if %errorlevel% equ 0 echo Successfully started %name%.
	if %errorlevel% neq 0 echo Starting %name% Failed. 
	call :FOOTER
	timeout /t 5
	goto:Menu2
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CustomDeagles
	set WindowsPid="05426-00206-152-251264-03-1031-9200.0000-0902013"
	set Office2010Pid="05426-00206-234-251264-03-1031-9200.0000-0902013"
	set Office2013Pid="55041-00096-199-251264-03-1031-9200.0000-0902013"
	cls
	pushd "%~dp0"
	call :HEADER "This option change ePID, Port and Intervals (sai/sri) for KMS Server Service", " "
	echo:
	set triggerS=4
	call :SetServiceData
	cls
	call :HEADER "This option installs the KMS Server Service by deagles", " "
	if /i "%WindowsPid%"=="" set WindowsPid="05426-00206-152-251264-03-1031-9200.0000-0902013"
	if /i "%Office2010Pid%"=="" set Office2010Pid="05426-00206-234-251264-03-1031-9200.0000-0902013"
	if /i "%Office2013Pid%"=="" set Office2013Pid="55041-00096-199-251264-03-1031-9200.0000-0902013"
	echo Windows ePID %WindowsPid%
	echo Office 2010 ePID %Office2010Pid%
	echo Office 2013 ePID %Office2013Pid%
	call :FOOTER
	set /p WindowsPid=Set WindowsPid ^>
	set /p Office2010Pid=Set Office2010Pid ^>
	set /p Office2013Pid=Set Office2013Pid ^>
	cls
	call :HEADER "This option installs the KMS Server Service by deagles", " "
	net stop %name% >nul
	if %errorlevel% equ 0 echo Successfully stopped %name%.
	if %errorlevel% neq 0 echo Stopping %name% Failed. 
	sc config %name% start= %start%
	set hService="HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\%name%\Parameters"
	call :RegDH
	CHOICE /C YN /M "Start Sevice now? :"
	if %errorlevel%==1 goto :start20
	if %errorlevel%==2 goto:Menu2
:start20
	echo:
	net start %name% >nul
	if %errorlevel% equ 0 echo Successfully started %name%.
	if %errorlevel% neq 0 echo Starting %name% Failed. 
	call :FOOTER
	timeout /t 5
	goto:Menu2
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CustomHotbird64
	set WindowsPid="05426-00206-152-251264-03-1031-9200.0000-0902013"
	set Office2010Pid="05426-00206-234-251264-03-1031-9200.0000-0902013"
	set Office2013Pid="55041-00096-199-251264-03-1031-9200.0000-0902013"
	cls
	pushd "%~dp0"
	call :HEADER "This option change ePID, Port and Intervals (sai/sri) for KMS Server Service", " "
	echo:
	set triggerS=4
	call :SetServiceData
	cls
	call :HEADER "This option installs the KMS Server Service by Hotbird64", " "
	echo Run Service with RandomKMSPID or enter ePIDs manually?
	CHOICE /C RM /M "Set ePID mode :"
	if %errorlevel%==1 set rpid=1 && goto :furtherH5
	if %errorlevel%==2 set rpid=0 && goto :furtherH6
:furtherH6
	echo:
	echo Windows ePID %WindowsPid%
	echo Office 2010 ePID %Office2010Pid%
	echo Office 2013 ePID %Office2013Pid%
	call :FOOTER
	set /p WindowsPid=Set WindowsPid ^>
	set /p Office2010Pid=Set Office2010Pid ^>
	set /p Office2013Pid=Set Office2013Pid ^>
	echo:
:furtherH5
	cls
	call :HEADER "This option installs the KMS Server Service by Hotbird64", " "
	net stop %name% >nul
	if %errorlevel% equ 0 echo Successfully stopped %name%.
	if %errorlevel% neq 0 echo Stopping %name% Failed. 
	sc config %name% start= %start%
	set hService="HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\KMS\Parameters"
	call :RegDH
	reg add %hService% /f /v "RandomPID" /d %rpid% /t "REG_DWORD" >nul
	CHOICE /C YN /M "Start Sevice now? :"
	if %errorlevel%==1 goto :startH
	if %errorlevel%==2 goto:Menu2
:startH
	echo:
	net start %name% >nul
	if %errorlevel% equ 0 echo Successfully started %name%.
	if %errorlevel% neq 0 echo Starting %name% Failed. 
	call :FOOTER
	timeout /t 5
	goto:Menu2
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ServiceUninstall
	set "hSpp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
	set "hOspp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform"
	set "hService=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\KMS"
	set "hService2=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\%name%"
	cls
	call :HEADER "This option uninstalls KMS Server Service", " "
	echo:
	if /i "%name%"=="" set name=KMSServer
	echo Default: %name%
	echo Values: Servername
	echo:
	sc query %name% >nul
	if errorlevel 1 goto :NotInstalled
	if /i "%port%"=="" set "port=1688"
	echo Default: %port%
	echo Values: Port
	call :FOOTER
	set /p name=Set name ^>
	set /p port=Set port ^>
	echo:
	echo:
	net stop %name% >nul
	if %errorlevel% equ 0 echo Successfully stopped %name%.
	if %errorlevel% neq 0 echo Stopping %name% Failed. 
	sc delete %name%
	reg delete %hService% /f >nul 2>&1
	reg delete %hService2% /f >nul 2>&1
	call :FOOTER
	call :UnRegOffice
	SchTasks /Delete /TN "Reactivate Service MINUTE" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Service HOURLY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Service DAILY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Service WEEKLY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Service MONTHLY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Service ONSTART" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Service ONLOGON" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Instant MINUTE" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Instant HOURLY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Instant DAILY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Instant WEEKLY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Instant MONTHLY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Instant ONSTART" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Instant ONLOGON" /F >nul 2>&1
	netsh advfirewall firewall delete rule name="%name% %port%"
	if exist "%windir%\%name%" rd /s /q "%windir%\%name%" >nul
	call :FOOTER
	echo:
	timeout /t 5
	goto:Menu2
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:NotInstalled
	echo:
	echo ...Service is not installed.
	echo:
	echo:
	timeout /t 5
	goto:Menu2
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:FirewallInstall
	cls
	call :HEADER "This option installs Firewall Rule for Service", " "
	echo:
	if /i "%name%"=="" set name=KMSServer
	if /i "%port%"=="" set "port=1688"
	echo Default: %name%
	echo Default: %port%
	call :FOOTER
	set /p name=Set name ^>
	set /p port=Set port ^>
	echo:
	sc query %name% >nul
	if errorlevel 1 (
		call :NotInstalled
		goto:Menu2
	)
	if errorlevel 1 goto:Menu2
	netsh advfirewall firewall add rule name="%name% %port%" dir=in  program="%windir%\%name%\%name%.exe" localport=%port% protocol=TCP action=allow remoteip=any
	netsh advfirewall firewall add rule name="%name% %port%" dir=in  program="%windir%\%name%\%name%.exe" localport=%port% protocol=TCP action=allow remoteip=localsubnet
	call :FOOTER
	timeout /t 5
	goto:Menu2
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:FirewallDelete
	cls
	call :HEADER "This option deletes Firewall Rule for Service", " "
	echo:
	if /i "%name%"=="" set name=KMSServer
	if /i "%port%"=="" set "port=1688"
	echo Default: %name%
	echo Default: %port%
	call :FOOTER
	set /p name=Set name ^>
	set /p port=Set port ^>
	echo:
	sc query %name% >nul
	if errorlevel 1 (
		call :NotInstalled
		goto:Menu2
	)
	if errorlevel 1 goto:Menu2
	netsh advfirewall firewall delete rule name="%name% %port%"
	call :FOOTER
	timeout /t 5
	goto:Menu2
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::HOOKED EMULATORS SECTION
:WinDivert
	pushd "%~dp0"
	cls
	call :HEADER "This option installs the WinDivert1.1 Hook ", " "
	echo:
	if not %win% GEQ 9200 (
		call :NotSupported
		goto:MenuH
	)
	wmic process where "name='FakeClient.exe'" | findstr /i /c:"FakeClient.exe" >nul
	if %errorlevel%==0 (
		echo Hook is already installed.
		call :FOOTER
		timeout /t 5
		goto :DeleteWinDivert
	)
	call :FOOTER
	echo Default: %host%
	echo Values: Host IP     
	call :FOOTER
	set /p host=Set Host IP ^>
	call :FOOTER
	if exist "%windir%\Hook" rd /s /q "%windir%\Hook" >nul
	xcopy "files\windivert1.1\%vera%\FakeClient.exe" "%windir%\Hook\" /Q /S
	route print | find /i "10.255.255.254" >nul 2>&1
	if %errorlevel% neq 0 (route add %host% 10.255.255.254 IF 1 >nul 2>&1)
	pushd files\windivert1.1\%vera%
	cmd /c start /b /high FakeClient.exe %host% >nul 2>&1
	popd
	ping -n 2 localhost
	call :FOOTER
	timeout /t 5
	goto:MenuH
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:DeleteWinDivert
	pushd "%~dp0"
	cls
	call :HEADER "This option uninstalls the WinDivert1.1 Hook", " "
	echo:
	if not %win% GEQ 9200 (
		call :NotSupported
		goto:MenuH
	)
	taskkill /t /f /IM FakeClient.exe
	route delete %host% 10.255.255.254
	sc delete WinDivert1.1
	if exist "%windir%\Hook" rd /s /q "%windir%\Hook" >nul
	call :FOOTER
	timeout /t 5
	goto:MenuH
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:SppExtComObjPatch
	cls
	call :HEADER "This option installs the SppExtComObjPatcher Hook", " "
	echo:
	wmic path OfficeSoftwareProtectionService get version >nul 2>&1 || set OsppHook=0

	if %win% GEQ 9200 (
		set OSType=Win8
	) else if %win% GEQ 7600 (
		set OSType=Win7
	) else (
		goto :UnsupportedVersion
	)
	echo.
	echo Microsoft (R) Windows Software Licensing.
	echo Copyright (C) Microsoft Corporation. All rights reserved.
	call :FOOTER
	IF EXIST "%SystemRoot%\system32\SppExtComObjPatcher.exe" goto :uninst
:inst
	echo SppExtComObjPatcher will be installed on your computer.
	call :FOOTER
:run1
	call :StopService sppsvc
	if not "%OsppHook%"=="0" call :StopService osppsvc
	IF ERRORLEVEL 1 echo status: Error
	echo.
	echo Copying Files... 
	copy /y "files\SppExtComObjPatcher\%vera%\SppExtComObjPatcher.exe" "%SystemRoot%\system32" >nul
	echo status: OK 
	IF ERRORLEVEL 1 echo status: Error
	copy /y "files\SppExtComObjPatcher\%vera%\SppExtComObjHook.dll" "%SystemRoot%\system32" >nul
	echo status: OK 
	IF ERRORLEVEL 1 echo status: Error
	echo Creating Registry Entries...
	if %OSType% EQU Win8 (
		echo Creating Registry Entry for SppExtComObj.exe of Windows 8/8.1
		call :CreateIFEOEntry "SppExtComObj.exe"
	)
	if %OSType% EQU Win7 (
		echo Creating Registry Entry for sppsvc.exe of Windows 7
		call :CreateIFEOEntry "sppsvc.exe"
	)
	if not "%OsppHook%"=="0" (
		echo Creating Registry Entry for osppsvc.exe of Office 2010/2013
		call :CreateIFEOEntry "osppsvc.exe"
	)
	goto :end
:uninst
	echo SppExtComObjPatcher will be removed from your computer.
	call :FOOTER
:run2
	call :StopService2 sppsvc
	if not "%OsppHook%"=="0" call :StopService2 osppsvc
	echo Removing Installed Files... 
	if exist "%SystemRoot%\system32\SppExtComObjPatcher.exe" (
		echo SppExtComObjPatcher.exe Found. Removing... 
		del /f /q "%SystemRoot%\system32\SppExtComObjPatcher.exe"
	)
	if exist "%SystemRoot%\system32\SppExtComObjHook.dll" (
		echo SppExtComObjHook.dll Found. Removing... 
		del /f /q "%SystemRoot%\system32\SppExtComObjHook.dll"
	)
	echo Removing Registry Entries...
	if %OSType% EQU Win8 (
		echo Removing Registry Entry for SppExtComObj.exe of Windows 8/8.1
		call :RemoveIFEOEntry "SppExtComObj.exe"
	)
	if %OSType% EQU Win7 (
		echo Removing Registry Entry for sppsvc.exe of Windows 7
		call :RemoveIFEOEntry "sppsvc.exe"
	)
	if not "%OsppHook%"=="0" (
		echo Removing Registry Entry for osppsvc.exe of Office 2010/2013
		call :RemoveIFEOEntry "osppsvc.exe"
	)
	schtasks /delete /f /tn "\Microsoft\Windows\SoftwareProtectionPlatform\SvcTrigger" >nul 2>&1
	goto :end
:CreateIFEOEntry
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Debugger" /t REG_SZ /d "SppExtComObjPatcher.exe" >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "KMS_Emulation" /t REG_DWORD /d %KMS_Emulation% >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "KMS_ActivationInterval" /t REG_DWORD /d %KMS_ActivationInterval% >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "KMS_RenewalInterval" /t REG_DWORD /d %KMS_RenewalInterval% >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Office2013" /t REG_SZ /d "%Office2013%" >nul 2>&1
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	if %~1 NEQ osppsvc.exe (
		reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Windows" /t REG_SZ /d "%Windows%" >nul 2>&1
	)
	if %~1 EQU osppsvc.exe (
		reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Office2010" /t REG_SZ /d "%Office2010%" >nul 2>&1
	)
	goto:eof
:RemoveIFEOEntry
	if %~1 NEQ osppsvc.exe (
		reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f >nul 2>&1
	)
	if %~1 EQU osppsvc.exe (
		reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Debugger" >nul 2>&1
		reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "KMS_Emulation" >nul 2>&1
		reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "KMS_ActivationInterval" >nul 2>&1
		reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "KMS_RenewalInterval" >nul 2>&1
		reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Office2010" >nul 2>&1
		reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Office2013" >nul 2>&1
		REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f >nul
		REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" >nul
	)
	goto:eof
:StopService
	sc query %~1 | find /i "STOPPED" >nul 2>&1
	if not "%ERRORLEVEL%"=="0" net stop %~1 /y >nul 2>&1
	sc query %~1 | find /i "STOPPED" >nul 2>&1
	if not "%ERRORLEVEL%"=="0" sc stop %~1 >nul 2>&1
	goto:eof
:StopService2
	sc query %~1 | find /i "RUNNING" >nul 2>&1
	if "%ERRORLEVEL%"=="0" net stop %~1 /y >nul 2>&1
	sc query %~1 | find /i "RUNNING" >nul 2>&1
	if "%ERRORLEVEL%"=="0" sc stop %~1 >nul 2>&1
	goto:eof
:UnsupportedVersion
	echo ==== ERROR ====
	echo Unsupported OS version Detected.
	echo This project is only supported for Windows 7/8/8.1
	call :FOOTER
	timeout /t 5
	goto:MenuH
:end
	echo.
	echo Done.
	call :FOOTER
	timeout /t 5
	goto:MenuH
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CynecxInstall
	if not %win% GEQ 9200 call :NotSupported  
	if not %win% GEQ 9200 goto:MenuH
	pushd "%~dp0"
	cls
	call :HEADER "This option installs the Hook and Server by CyNecx", " "
	echo:
	set KmsName=Seco
	if exist "%SystemRoot%\System32\%KmsName%" goto:FoundCynecx
	echo:
	if /i "%sai%"=="" set sai=120
	if /i "%sri%"=="" set sri=10080
	echo Host
	echo Default: %host%
	echo:
	echo Interval for unactivated Client in Minutes (15 - 43200)
	echo Default: %sai%
	echo:
	echo Interval for Reactivation in Minutes (15 - 43200)
	echo Default: %sri%
	call :FOOTER
	set /p host=Set host ^>
	set /p sai=Set sai ^>
	set /p sri=Set sri ^>
	echo:
	set secohook="HKLM\SOFTWARE\SECOInjector"
	md "%windir%\system32\Seco"
	xcopy "files\hook\seco\*.*" /s /q "%windir%\system32\Seco" /Y >nul
	reg add %secohook% /f /v "KMS_IP" /d %host% /t "REG_SZ" >nul
	reg add %secohook% /f /v "Enabled" /d "1" /t "REG_DWORD" >nul
	reg add %secohook% /f /v "KMS_Emulation" /d "1" /t "REG_DWORD" >nul
	reg add %secohook% /f /v "KMS_RenewaInterval" /d %sri% /t "REG_DWORD" >nul
	reg add %secohook% /f /v "KMS_ActivationInterval" /d %sai% /t "REG_DWORD" >nul
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	call :FOOTER
	CHOICE /C ES /M "Install [E]mulator or [S]ervice ? :"
	if %errorlevel%==1 goto :SecoEmu
	if %errorlevel%==2 goto :SecoSer
:SecoEmu
	"%windir%\system32\Seco\SECOInjector_%vera%.exe" /s %host% /f /l
	call :TITLE
	call :FOOTER
	timeout /t 3 
	goto:MenuH
:SecoSer
	"%windir%\system32\Seco\SECOInjector_%vera%.exe" /c
	call :TITLE
	call :FOOTER
	timeout /t 3 
	goto:MenuH
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CynecxUnInstall
	pushd "%~dp0"
	cls
	call :HEADER "This option uninstalls the Hook and Server by CyNecx", " "
	echo:
	set KmsName=Seco
	if not exist "%SystemRoot%\System32\%KmsName%" goto:NotFoundCynecx
	echo NOTE: If hook uninstall reports error 0x1, uninstall was successful.
	call :FOOTER
	set secohook="HKLM\SOFTWARE\SECOInjector"
	CHOICE /C ES /M "Uninstall [E]mulator or [S]ervice ? :"
	if %errorlevel%==1 goto :SecoEmu1
	if %errorlevel%==2 goto :SecoSer1
:SecoEmu1
	%windir%\system32\Seco\SECOInjector_%vera%.exe /f /u
	call :TITLE
	reg delete %secohook% /f >nul 2>&1
	if exist "%windir%\system32\Seco" rd /s /q "%windir%\system32\Seco" >nul
	call :FOOTER
	timeout /t 3 
	goto:MenuH
:SecoSer1
	"%windir%\system32\Seco\SECOInjector_%vera%.exe" /r
	call :TITLE
	reg delete %secohook% /f >nul 2>&1
	REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f >nul
	REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" >nul
	if exist "%windir%\system32\Seco" rd /s /q "%windir%\system32\Seco" >nul
	call :FOOTER
	timeout /t 3 
	goto:MenuH
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:FoundCynecx
	echo %KmsName% is already installed.
	call :FOOTER
	timeout /t 3
	goto:MenuH
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:NotFoundCynecx
	echo %KmsName% not installed.
	call :FOOTER
	timeout /t 3
	goto:MenuH
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:QADInstall
::	if not %win% GEQ 9200 call :NotSupported  
::	if not %win% GEQ 9200 goto:MenuH
	cls
	call :HEADER "This option installs the Hook and Server by QAD", " "
	echo:
	set Kms1Name=KMS-QADhooker
	if exist "%SystemRoot%\System32\%Kms1Name%.*" goto:FoundH
	call "files\hook\install.cmd"
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	pushd "%~dp0"
	goto:MenuH
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:QADUnInstall
	cls
	call :HEADER "This option uninstalls the Hook and Server by QAD", " "
	echo:
	set Kms1Name=KMS-QADhooker
	if not exist "%SystemRoot%\System32\%Kms1Name1%.*" goto:NotFoundH
	call "files\hook\uninstall.cmd"
	REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f >nul
	REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" >nul
	pushd "%~dp0"
	goto:MenuH
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:FoundH
	echo %Kms1Name% is already installed.
	call :FOOTER
	timeout /t 3
	goto:MenuH
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:NotFoundH
	echo %Kms1Name% not installed.
	call :FOOTER
	timeout /t 3
	goto:MenuH
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::CLIENT EMULATOR SECTION
:CodyInput
	cls
	set k="files\KMS Client %vera%.exe"
	call :SetClientData
	goto:Menu3
:-------------------------------------------------------------------------------------------------------
:HotbirdInput
	cls
	set k="files\KMS-Client.exe"
	call :SetClientData
	goto:Menu3
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::CHECK ACTIVATION STATUS
:CheckActivation
	cls
	set "deleted="	
	call :HEADER "Check Windows License Information", " "
	call :CheckSPPSVC
	call :ID
	call :CheckStatusWindows
	echo =Microsoft^(R^) Windows Software Licensing Version %currentversion%=====================
	echo =Copyright^(C^) Microsoft Corporation. All rights reserved=============================
	echo     Name ^| Arch.: %ver% ^| %vera%
	echo  License Channel: %windescription%
	echo          Edition: %winname%
	echo    Current Build: %currentversion%
	echo       BuildLabEx: %build%.%build1%
	echo           SKU-ID: %ID%
	echo      Product Key: %productkey%
	echo   License Status: %status% = %permanent%%license%
	if "%edition%"=="Core" if "%win%"=="9200" set of=30
	if "%edition%"=="ProfessionalWMC" if "%win%"=="9200" set of=30
	if "%edition%"=="Core" if "%win%"=="9600" set of=45
	if "%edition%"=="ProfessionalWMC" if "%win%"=="9600" set of=45
	if not defined of set of=180
	set /a "grace2=%grace1%/60" >nul 2>&1
	set /a "grace3=%grace1%/60/24" >nul 2>&1
	echo      Graceperiod: %grace1% mins = %grace2% hrs = %grace3% / %of% days 
	echo           Rearms: %r%
	echo    KMS Host ePID: %kmsepid% 
	echo  KMS Host Adress: %kmsIP% Port:%kmsport%
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckOffice16
	call :CheckC2ROx64 16, 3, Common, office
	call :CheckC2RPx64 16, 3, Project, project
	call :CheckC2RVx64 16, 3, Visio, visio
	if "%office16present%"=="positive" goto:CheckOffice16.a
	if "%project16present%"=="positive" goto:CheckOffice16.a
	if "%visio16present%"=="positive" goto:CheckOffice16.a
	if "%O365ProPlusRetail%"=="positive" goto:CheckOffice16.a
	if "%MondoRetail%"=="positive" goto:CheckOffice16.a
	if "%StandardRetail%"=="positive" goto:CheckOffice16.a
	if "%WordRetail%"=="positive" goto:CheckOffice16.a
	if "%ExcelRetail%"=="positive" goto:CheckOffice16.a
	if "%PowerPointRetail%"=="positive" goto:CheckOffice16.a
	if "%AccessRetail%"=="positive" goto:CheckOffice16.a
	if "%OutlookRetail%"=="positive" goto:CheckOffice16.a
	if "%PublisherRetail%"=="positive" goto:CheckOffice16.a
	if "%OneNoteRetail%"=="positive" goto:CheckOffice16.a
	if "%SkypeForBusinessRetail%"=="positive" goto:CheckOffice16.a
	goto:CheckOffice16x86
:CheckOffice16.a
	if "%office16present%"=="positive" if %win% geq 9200 (call :CheckStatusOffice "%slp%", Office16ProPlus, 03) else (call :CheckStatusOffice "%ospp%", Office16ProPlus, 03)
	if defined office16present (
		set "NA=%NA03%"
		set "PaKey=%PaKey03%"
		set "GraPe=%GraPe03%"
		set "HostNa=%HostNa03%"
		set "KIP=%KIP03%"
		set "KP=%KP03%"
		call :Show16 03, Office16ProPlus
	)
	if "%project16present%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Office16ProjectPro, 04) else (call :CheckStatusOthers "%ospp%", Office16ProjectPro, 04)
	if defined project16present (
		set "NA=%NA04%"
		set "PaKey=%PaKey04%"
		set "GraPe=%GraPe04%"
		set "HostNa=%HostNa04%"
		set "KIP=%KIP04%"
		set "KP=%KP04%"
		call :Show16 04, Office16ProPlus
	)
	if "%visio16present%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Office16VisioPro, 05) else (call :CheckStatusOthers "%ospp%", Office16VisioPro, 05)
	if defined visio16present (
		set "NA=%NA05%"
		set "PaKey=%PaKey05%"
		set "GraPe=%GraPe05%"
		set "HostNa=%HostNa05%"
		set "KIP=%KIP05%"
		set "KP=%KP05%"
		call :Show16 05, Office16VisioPro
	)
	if "%O365ProPlusRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", O365ProPlus, 06) else (call :CheckStatusOthers "%ospp%", O365ProPlus, 06)
	if defined O365ProPlusRetail (
		set "NA=%NA06%"
		set "PaKey=%PaKey06%"
		set "GraPe=%GraPe06%"
		set "HostNa=%HostNa06%"
		set "KIP=%KIP06%"
		set "KP=%KP06%"
		call :Show16 06, O365ProPlus
	)
	if "%MondoRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Mondo, 07) else (call :CheckStatusOthers "%ospp%", Mondo, 07)
	if defined MondoRetail (
		set "NA=%NA07%"
		set "PaKey=%PaKey07%"
		set "GraPe=%GraPe07%"
		set "HostNa=%HostNa07%"
		set "KIP=%KIP07%"
		set "KP=%KP07%"
		call :Show16 07, Mondo
	)
	if "%StandardRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Standard, 08) else (call :CheckStatusOthers "%ospp%", Standard, 08)
	if defined StandardRetail (
		set "NA=%NA08%"
		set "PaKey=%PaKey08%"
		set "GraPe=%GraPe08%"
		set "HostNa=%HostNa08%"
		set "KIP=%KIP08%"
		set "KP=%KP08%"
		call :Show16 08, Standard
	)
	if "%WordRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Word, 09) else (call :CheckStatusOthers "%ospp%", Word, 09)
	if defined WordRetail (
		set "NA=%NA09%"
		set "PaKey=%PaKey09%"
		set "GraPe=%GraPe09%"
		set "HostNa=%HostNa09%"
		set "KIP=%KIP09%"
		set "KP=%KP09%"
		call :Show16 09, Word
	)
	if "%ExcelRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Excel, 10) else (call :CheckStatusOthers "%ospp%", Excel, 10)
	if defined ExcelRetail (
		set "NA=%NA10%"
		set "PaKey=%PaKey10%"
		set "GraPe=%GraPe10%"
		set "HostNa=%HostNa10%"
		set "KIP=%KIP10%"
		set "KP=%KP10%"
		call :Show16 10, Excel
	)
	if "%PowerPointRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", PowerPoint, 11) else (call :CheckStatusOthers "%ospp%", PowerPoint, 11)
	if defined PowerPointRetail (
		set "NA=%NA11%"
		set "PaKey=%PaKey11%"
		set "GraPe=%GraPe11%"
		set "HostNa=%HostNa11%"
		set "KIP=%KIP11%"
		set "KP=%KP11%"
		call :Show16 11, PowerPoint
	)
	if "%AccessRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Access, 12) else (call :CheckStatusOthers "%ospp%", Access, 12)
	if defined AccessRetail (
		set "NA=%NA12%"
		set "PaKey=%PaKey12%"
		set "GraPe=%GraPe12%"
		set "HostNa=%HostNa12%"
		set "KIP=%KIP12%"
		set "KP=%KP12%"
		call :Show16 12, Access
	)
	if "%OutlookRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Outlook, 13) else (call :CheckStatusOthers "%ospp%", Outlook, 13)
	if defined OutlookRetail (
		set "NA=%NA13%"
		set "PaKey=%PaKey13%"
		set "GraPe=%GraPe13%"
		set "HostNa=%HostNa13%"
		set "KIP=%KIP13%"
		set "KP=%KP13%"
		call :Show16 13, Outlook
	)
	if "%PublisherRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Publisher, 14) else (call :CheckStatusOthers "%ospp%", Publisher, 14)
	if defined PublisherRetail (
		set "NA=%NA14%"
		set "PaKey=%PaKey14%"
		set "GraPe=%GraPe14%"
		set "HostNa=%HostNa14%"
		set "KIP=%KIP14%"
		set "KP=%KP14%"
		call :Show16 14, Publisher
	)
	if "%OneNoteRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", OneNote, 15) else (call :CheckStatusOthers "%ospp%", OneNote, 15)
	if defined OneNoteRetail (
		set "NA=%NA15%"
		set "PaKey=%PaKey15%"
		set "GraPe=%GraPe15%"
		set "HostNa=%HostNa15%"
		set "KIP=%KIP15%"
		set "KP=%KP15%"
		call :Show16 15, OneNote
	)
	if "%SkypeForBusinessRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", SkypeForBusiness, 16) else (call :CheckStatusOthers "%ospp%", SkypeForBusiness, 16)
	if defined SkypeForBusinessRetail (
		set "NA=%NA16%"
		set "PaKey=%PaKey16%"
		set "GraPe=%GraPe16%"
		set "HostNa=%HostNa16%"
		set "KIP=%KIP16%"
		set "KP=%KP16%"
		call :Show16 16, SkypeForBusiness
	)
:CheckOffice16x86
	call :CheckC2ROx86 16, 3, Common, office
	call :CheckC2RPx86 16, 3, Project, project
	call :CheckC2RVx86 16, 3, Visio, visio
	if "%office16present%"=="positive" goto:CheckOffice16x86.a
	if "%project16present%"=="positive" goto:CheckOffice16x86.a
	if "%visio16present%"=="positive" goto:CheckOffice16x86.a
	if "%O365ProPlusRetail%"=="positive" goto:CheckOffice16x86.a
	if "%MondoRetail%"=="positive" goto:CheckOffice16x86.a
	if "%StandardRetail%"=="positive" goto:CheckOffice16x86.a
	if "%WordRetail%"=="positive" goto:CheckOffice16x86.a
	if "%ExcelRetail%"=="positive" goto:CheckOffice16x86.a
	if "%PowerPointRetail%"=="positive" goto:CheckOffice16x86.a
	if "%AccessRetail%"=="positive" goto:CheckOffice16x86.a
	if "%OutlookRetail%"=="positive" goto:CheckOffice16x86.a
	if "%PublisherRetail%"=="positive" goto:CheckOffice16x86.a
	if "%OneNoteRetail%"=="positive" goto:CheckOffice16x86.a
	if "%SkypeForBusinessRetail%"=="positive" goto:CheckOffice16x86.a
	goto:CheckOffice15
:CheckOffice16x86.a
	if "%office16present%"=="positive" if %win% geq 9200 (call :CheckStatusOffice "%slp%", Office16ProPlus, 03) else (call :CheckStatusOffice "%ospp%", Office16ProPlus, 03)
	if defined office16present (
		set "NA=%NA03%"
		set "PaKey=%PaKey03%"
		set "GraPe=%GraPe03%"
		set "HostNa=%HostNa03%"
		set "KIP=%KIP03%"
		set "KP=%KP03%"
		call :Show16 03, Office16ProPlus
	)
	if "%project16present%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Office16ProjectPro, 04) else (call :CheckStatusOthers "%ospp%", Office16ProjectPro, 04)
	if defined project16present (
		set "NA=%NA04%"
		set "PaKey=%PaKey04%"
		set "GraPe=%GraPe04%"
		set "HostNa=%HostNa04%"
		set "KIP=%KIP04%"
		set "KP=%KP04%"
		call :Show16 04, Office16ProPlus
	)
	if "%visio16present%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Office16VisioPro, 05) else (call :CheckStatusOthers "%ospp%", Office16VisioPro, 05)
	if defined visio16present (
		set "NA=%NA05%"
		set "PaKey=%PaKey05%"
		set "GraPe=%GraPe05%"
		set "HostNa=%HostNa05%"
		set "KIP=%KIP05%"
		set "KP=%KP05%"
		call :Show16 05, Office16VisioPro
	)
	if "%O365ProPlusRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", O365ProPlus, 06) else (call :CheckStatusOthers "%ospp%", O365ProPlus, 06)
	if defined O365ProPlusRetail (
		set "NA=%NA06%"
		set "PaKey=%PaKey06%"
		set "GraPe=%GraPe06%"
		set "HostNa=%HostNa06%"
		set "KIP=%KIP06%"
		set "KP=%KP06%"
		call :Show16 06, O365ProPlus
	)
	if "%MondoRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Mondo, 07) else (call :CheckStatusOthers "%ospp%", Mondo, 07)
	if defined MondoRetail (
		set "NA=%NA07%"
		set "PaKey=%PaKey07%"
		set "GraPe=%GraPe07%"
		set "HostNa=%HostNa07%"
		set "KIP=%KIP07%"
		set "KP=%KP07%"
		call :Show16 07, Mondo
	)
	if "%StandardRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Standard, 08) else (call :CheckStatusOthers "%ospp%", Standard, 08)
	if defined StandardRetail (
		set "NA=%NA08%"
		set "PaKey=%PaKey08%"
		set "GraPe=%GraPe08%"
		set "HostNa=%HostNa08%"
		set "KIP=%KIP08%"
		set "KP=%KP08%"
		call :Show16 08, Standard
	)
	if "%WordRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Word, 09) else (call :CheckStatusOthers "%ospp%", Word, 09)
	if defined WordRetail (
		set "NA=%NA09%"
		set "PaKey=%PaKey09%"
		set "GraPe=%GraPe09%"
		set "HostNa=%HostNa09%"
		set "KIP=%KIP09%"
		set "KP=%KP09%"
		call :Show16 09, Word
	)
	if "%ExcelRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Excel, 10) else (call :CheckStatusOthers "%ospp%", Excel, 10)
	if defined ExcelRetail (
		set "NA=%NA10%"
		set "PaKey=%PaKey10%"
		set "GraPe=%GraPe10%"
		set "HostNa=%HostNa10%"
		set "KIP=%KIP10%"
		set "KP=%KP10%"
		call :Show16 10, Excel
	)
	if "%PowerPointRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", PowerPoint, 11) else (call :CheckStatusOthers "%ospp%", PowerPoint, 11)
	if defined PowerPointRetail (
		set "NA=%NA11%"
		set "PaKey=%PaKey11%"
		set "GraPe=%GraPe11%"
		set "HostNa=%HostNa11%"
		set "KIP=%KIP11%"
		set "KP=%KP11%"
		call :Show16 11, PowerPoint
	)
	if "%AccessRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Access, 12) else (call :CheckStatusOthers "%ospp%", Access, 12)
	if defined AccessRetail (
		set "NA=%NA12%"
		set "PaKey=%PaKey12%"
		set "GraPe=%GraPe12%"
		set "HostNa=%HostNa12%"
		set "KIP=%KIP12%"
		set "KP=%KP12%"
		call :Show16 12, Access
	)
	if "%OutlookRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Outlook, 13) else (call :CheckStatusOthers "%ospp%", Outlook, 13)
	if defined OutlookRetail (
		set "NA=%NA13%"
		set "PaKey=%PaKey13%"
		set "GraPe=%GraPe13%"
		set "HostNa=%HostNa13%"
		set "KIP=%KIP13%"
		set "KP=%KP13%"
		call :Show16 13, Outlook
	)
	if "%PublisherRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", Publisher, 14) else (call :CheckStatusOthers "%ospp%", Publisher, 14)
	if defined PublisherRetail (
		set "NA=%NA14%"
		set "PaKey=%PaKey14%"
		set "GraPe=%GraPe14%"
		set "HostNa=%HostNa14%"
		set "KIP=%KIP14%"
		set "KP=%KP14%"
		call :Show16 14, Publisher
	)
	if "%OneNoteRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", OneNote, 15) else (call :CheckStatusOthers "%ospp%", OneNote, 15)
	if defined OneNoteRetail (
		set "NA=%NA15%"
		set "PaKey=%PaKey15%"
		set "GraPe=%GraPe15%"
		set "HostNa=%HostNa15%"
		set "KIP=%KIP15%"
		set "KP=%KP15%"
		call :Show16 15, OneNote
	)
	if "%SkypeForBusinessRetail%"=="positive" if %win% geq 9200 (call :CheckStatusOthers "%slp%", SkypeForBusiness, 16) else (call :CheckStatusOthers "%ospp%", SkypeForBusiness, 16)
	if defined SkypeForBusinessRetail (
		set "NA=%NA16%"
		set "PaKey=%PaKey16%"
		set "GraPe=%GraPe16%"
		set "HostNa=%HostNa16%"
		set "KIP=%KIP16%"
		set "KP=%KP16%"
		call :Show16 16, SkypeForBusiness
	)
	goto:CheckOffice15
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Show16
	cls
	if %win% geq 9200 (call :OID "%slp%", %~2) else (call :OID "%ospp%", %~2)
	call :HEADER "Check Office 16 License Information", "%prodrelid%"
	echo =Microsoft^(R^) Office 16 Software Licensing Version %currentversion%===================
	echo =Copyright^(C^) Microsoft Corporation. All rights reserved=============================
	echo             Name: %NA%
	echo     ActivationID: %oid%
	echo         Key Part: XXXXX-XXXXX-XXXXX-XXXXX-%PaKey%
	echo     Install Path: %officepath3%
	if "%officestatus%"=="1" set "O16license=[ LICENSED ]"
	if "%officestatus%"=="2" set "O16license=[ OOB GRACE ]"
	if "%officestatus%"=="3" set "O16license=[ OOT GRACE ]"
	if "%officestatus%"=="5" set "O16license=[ NOTIFICATION ]"
	echo   License Status: %officestatus% = %O16license%
	set /a "GraPeO12=%GraPe%/60" >nul 2>&1
	set /a "GraPeO22=%GraPeO12%/24" >nul 2>&1
	set ofo=180
	echo      Graceperiod: %GraPe% mins = %GraPeO12% hrs = %GraPeO22% / %ofo% days
	if defined orearm echo           Rearms: %orearm%
	echo    KMS Host ePID: %HostNa%
	echo  KMS Host Adress: %KIP% Port:%KP%
	call :SHORTFOOTER
	set /p press=PRESS [THE] ANY KEY ^>^>^>
	goto:eof
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckOffice15
	set "officepath2="
	call :Officex64 15, 2
	call :Othersx64 15, 2, Project, project
	call :Othersx64 15, 2, Visio, visio
	if not defined office15present if not defined project15present if not defined visio15present goto:CheckOffice15x86
	if defined office15present if %win% geq 9200 (call :CheckStatusOffice "%slp%", OfficeProPlus, O) else (call :CheckStatusOffice "%ospp%", OfficeProPlus, O)
	if defined project15present if %win% geq 9200 (call :CheckStatusOthers "%slp%", OfficeProjectPro, O4) else (call :CheckStatusOthers "%ospp%", OfficeProjectPro, O4)
	if defined visio15present if %win% geq 9200 (call :CheckStatusOthers "%slp%", OfficeVisioPro, O5) else (call :CheckStatusOthers "%ospp%", OfficeVisioPro, O5)
	goto :showoffice15
:CheckOffice15x86
	call :Officex86 15, 2
	call :Othersx86 15, 2, Project, project
	call :Othersx86 15, 2, Visio, visio
	if not defined office15present if not defined project15present if not defined visio15present goto:CheckOffice14
	if defined office15present if %win% geq 9200 (call :CheckStatusOffice "%slp%", OfficeProPlus, O) else (call :CheckStatusOffice "%ospp%", OfficeProPlus, O)
	if defined project15present if %win% geq 9200 (call :CheckStatusOthers "%slp%", OfficeProjectPro, O4) else (call :CheckStatusOthers "%ospp%", OfficeProjectPro, O4)
	if defined visio15present if %win% geq 9200 (call :CheckStatusOthers "%slp%", OfficeVisioPro, O5) else (call :CheckStatusOthers "%ospp%", OfficeVisioPro, O5)
:showoffice15
	if defined office15present if %win% geq 9200 (call :OID "%slp%", OfficeProPlus) else (call :OID "%ospp%", OfficeProPlus)
	cls
	call :HEADER "Check Office 15 License Information", " "
	if not defined office15present if not defined project15present goto :showVisio15
	if not defined office15present goto :showProject15
	echo =Microsoft Office 15 Software Licensing Version %currentversion%===================
	echo =Copyright Microsoft Corporation. All rights reserved=============================
	echo             Name: %NAO%
	echo     ActivationID: %oid%
	echo         Key Part: XXXXX-XXXXX-XXXXX-XXXXX-%PaKeyO%
	echo     Install Path: %officepath2%
	if "%officestatus%"=="1" set "O15license=[ LICENSED ]"
	if "%officestatus%"=="2" set "O15license=[ OOB GRACE ]"
	if "%officestatus%"=="3" set "O15license=[ OOT GRACE ]"
	if "%officestatus%"=="5" set "O15license=[ NOTIFICATION ]"
	echo   License Status: %officestatus% = %O15license%
	set /a "GraPeO12=%GraPeO%/60" >nul 2>&1
	set /a "GraPeO22=%GraPeO12%/24" >nul 2>&1
	set ofo=180
	echo      Graceperiod: %GraPeO% mins = %GraPeO12% hrs = %GraPeO22% / %ofo% days
	if defined orearm echo           Rearms: %orearm%
	echo    KMS Host ePID: %HostNaO% 
	echo  KMS Host Adress: %KIPO% Port:%KPO%
	call :SHORTFOOTER
	if not defined project15present if not defined visio15present (set /p press=PRESS [THE] ANY KEY ^>^>^>)&&(goto :CheckOffice14)
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:showProject15
	if %win% geq 9200 (call :POID "%slp%", OfficeProjectPro) else (call :POID "%ospp%", OfficeProjectPro)
	echo =Microsoft Office 15 Software Licensing Version %currentversion%===================
	echo =Copyright Microsoft Corporation. All rights reserved=============================
	echo             Name: %NAO4%
	echo     ActivationID: %poid%
	echo         Key Part: XXXXX-XXXXX-XXXXX-XXXXX-%PaKeyO4%
	echo     Install Path: %officepath2%
	if "%otherstatus%"=="1" set "O15license=[ LICENSED ]"
	if "%otherstatus%"=="2" set "O15license=[ OOB GRACE ]"
	if "%otherstatus%"=="3" set "O15license=[ OOT GRACE ]"
	if "%otherstatus%"=="5" set "O15license=[ NOTIFICATION ]"
	echo   License Status: %otherstatus% = %O15license%
	set /a "GraPeO12=%GraPeO4%/60" >nul 2>&1
	set /a "GraPeO22=%GraPeO12%/24" >nul 2>&1
	set ofo=180
	echo      Graceperiod: %GraPeO4% mins = %GraPeO12% hrs = %GraPeO22% / %ofo% days
	if defined orearm echo           Rearms: %orearm%
	echo    KMS Host ePID: %HostNaO4% 
	echo  KMS Host Adress: %KIPO4% Port:%KPO4%
	call :SHORTFOOTER
	if not defined visio15present (set /p press=PRESS [THE] ANY KEY ^>^>^>)&&(goto :CheckOffice14)
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:showVisio15
	if %win% geq 9200 (call :POID "%slp%", OfficeVisioPro) else (call :POID "%ospp%", OfficeVisioPro)
	echo =Microsoft Office 15 Software Licensing Version %currentversion%===================
	echo =Copyright Microsoft Corporation. All rights reserved=============================
	echo             Name: %NAO5%
	echo     ActivationID: %poid%
	echo         Key Part: XXXXX-XXXXX-XXXXX-XXXXX-%PaKeyO5%
	echo     Install Path: %officepath2%
	if "%otherstatus%"=="1" set "O15license=[ LICENSED ]"
	if "%otherstatus%"=="2" set "O15license=[ OOB GRACE ]"
	if "%otherstatus%"=="3" set "O15license=[ OOT GRACE ]"
	if "%otherstatus%"=="5" set "O15license=[ NOTIFICATION ]"
	echo   License Status: %otherstatus% = %O15license%
	set /a "GraPeO12=%GraPeO5%/60" >nul 2>&1
	set /a "GraPeO22=%GraPeO12%/24" >nul 2>&1
	set ofo=180
	echo      Graceperiod: %GraPeO5% mins = %GraPeO12% hrs = %GraPeO22% / %ofo% days
	if defined orearm echo           Rearms: %orearm%
	echo    KMS Host ePID: %HostNaO5% 
	echo  KMS Host Adress: %KIPO5% Port:%KPO5%
	call :SHORTFOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckOffice14
	call :Officex64 14, 1
	call :Othersx64 14, 1, Project, project
	call :Othersx64 14, 1, Visio, visio
	if not defined office14present if not defined project14present if not defined visio14present goto:CheckOffice14x86
	if defined office14present call :CheckStatusOffice "%ospp%", OfficeProPlus, O2
	if defined project14present call :CheckStatusOthers "%ospp%", OfficeProjectPro, O4
	if defined visio14present call :CheckStatusOthers "%ospp%", OfficeVisioPro, O5
	goto :showOffice14
:CheckOffice14x86
	call :Officex86 14, 1
	call :Othersx86 14, 1, Project, project
	call :Othersx86 14, 1, Visio, visio
	if not defined office14present if not defined project14present if not defined visio14present goto:MenuA
	if defined office14present call :CheckStatusOffice "%ospp%", OfficeProPlus, O2
	if defined project14present call :CheckStatusOthers "%ospp%", OfficeVisioPro, O5
	if defined visio14present call :CheckStatusOthers "%ospp%", OfficeVisioPro, O5
:showOffice14
	if defined office14present call :OID "%ospp%", OfficeProPlus
	cls
	call :HEADER "Check Office 14 License Information", " "
	if not defined office14present if not defined project14present goto :showVisio14
	if not defined office14present goto :showProject14
	echo =Microsoft(R) Office 14 Software Licensing Version %currentversion%===================
	echo =Copyright(C) Microsoft Corporation. All rights reserved=============================
	echo             Name: %NAO2%
	echo     ActivationID: %oid%
	echo         Key Part: XXXXX-XXXXX-XXXXX-XXXXX-%PaKeyO2%
	echo     Install Path: %officepath1%
	if "%officestatus%"=="1" set "O14license=[ LICENSED ]"
	if "%officestatus%"=="2" set "O14license=[ OOB GRACE ]"
	if "%officestatus%"=="3" set "O14license=[ OOT GRACE ]"
	if "%officestatus%"=="5" set "O14license=[ NOTIFICATION ]"
	echo   License Status: %officestatus% = %O14license%
	set /a "GraPeO21=%GraPeO2%/60" >nul 2>&1
	set /a "GraPeO22=%GraPeO21%/24" >nul 2>&1
	set ofo=180
	echo      Graceperiod: %GraPeO2% mins = %GraPeO21% hrs = %GraPeO22% / %ofo% days
	if not defined HostNaO2 set "deleted=(empty)"
	echo    KMS Host ePID: %HostNaO2% 
	if not defined KIPO2 set "deleted=(empty)"
	echo  KMS Host Adress: %KIPO2% Port:%KPO2%
	call :SHORTFOOTER
	if not defined project14present if not defined visio14present (set /p press=PRESS [THE] ANY KEY ^>^>^>)&&(goto :MenuA)
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:showProject14
	if %win% geq 9200 (call :POID "%slp%", OfficeProjectPro) else (call :POID "%ospp%", OfficeProjectPro)
	echo =Microsof4(R) Office 14 Software Licensing Version %currentversion%===================
	echo =Copyright(C) Microsoft Corporation. All rights reserved=============================
	echo             Name: %NAO4%
	if not defined KeyPaO4 set "cleared=(cleared)"
	echo     ActivationID: %poid%
	echo         Key Part: XXXXX-XXXXX-XXXXX-XXXXX-%PaKeyO4%
	echo     Install Path: %officepath1%
	if "%othersstatus%"=="1" set "O14license=[ LICENSED ]"
	if "%othersstatus%"=="2" set "O14license=[ OOB GRACE ]"
	if "%othersstatus%"=="3" set "O14license=[ OOT GRACE ]"
	if "%othersstatus%"=="5" set "O14license=[ NOTIFICATION ]"
	echo   License Status: %otherstatus% = %O14license%
	set /a "GraPeO12=%GraPeO4%/60" >nul 2>&1
	set /a "GraPeO22=%GraPeO12%/24" >nul 2>&1
	set ofo=180
	echo      Graceperiod: %GraPeO4% mins = %GraPeO12% hrs = %GraPeO22% / %ofo% days
	if defined orearm echo           Rearms: %orearm%
	if not defined HostNaO4 set "deleted=(empty)"
	echo    KMS Host ePID: %HostNaO4% 
	if not defined KIPO4 set "deleted=(empty)"
	echo  KMS Host Adress: %KIPO4% Port:%KPO4%
	call :SHORTFOOTER
	if not defined visio14present (set /p press=PRESS [THE] ANY KEY ^>^>^>)&&(goto :MenuA)
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:showVisio14
	if %win% geq 9200 (call :POID "%slp%", OfficeVisioPro) else (call :POID "%ospp%", OfficeVisioPro)
	echo =Microsof4^(R^) Office 14 Software Licensing Version %currentversion%===================
	echo =Copyright^(C^) Microsoft Corporation. All rights reserved=============================
	echo             Name: %NAO5%
	echo     ActivationID: %poid%
	echo         Key Part: XXXXX-XXXXX-XXXXX-XXXXX-%PaKeyO5%
	echo     Install Path: %officepath1%
	if "%othersstatus%"=="1" set "O14license=[ LICENSED ]"
	if "%othersstatus%"=="2" set "O14license=[ OOB GRACE ]"
	if "%othersstatus%"=="3" set "O14license=[ OOT GRACE ]"
	if "%othersstatus%"=="5" set "O14license=[ NOTIFICATION ]"
	echo   License Status: %otherstatus% = %O14license%
	set /a "GraPeO12=%GraPeO5%/60" >nul 2>&1
	set /a "GraPeO22=%GraPeO12%/24" >nul 2>&1
	set ofo=180
	echo      Graceperiod: %GraPeO5% mins = %GraPeO12% hrs = %GraPeO22% / %ofo% days
	if defined orearm echo           Rearms: %orearm%
	echo    KMS Host ePID: %HostNaO5% 
	echo  KMS Host Adress: %KIPO5% Port:%KPO5%
	call :SHORTFOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto:MenuA
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckInstall
	cls
	call :HEADER "This option checks if Service is installed", " "
	echo:
	if /i "%name%"=="" set name=KMSServer
	if exist "%windir%\%nam1e%\%name%.exe.config" goto :nextCIE4
	reg query "HKLM\SYSTEM\CurrentControlSet\services\%name%\Parameters" >nul 2>&1
	if "%errorlevel%"=="0" goto :nextCIE1
	reg query "HKLM\SYSTEM\CurrentControlSet\services\KMS\Parameters" >nul 2>&1
	if "%errorlevel%"=="0" goto :nextCIE2
	if "%errorlevel%"=="1" goto :nextCIE3
:nextCIE1
	for /F "tokens=3 delims= " %%A in ('reg query "HKLM\SYSTEM\CurrentControlSet\services\%name%\Parameters" /v *Port ^| findstr "Port"') do set sport=%%A
	goto :nextCIE3
:nextCIE2
	for /F "tokens=3 delims= " %%A in ('reg query "HKLM\SYSTEM\CurrentControlSet\services\KMS\Parameters" /v Port') do set sport=%%A
	echo:
	echo Default: %name%
	echo Values: Servername
	call :FOOTER
	set /p name=Set name ^>
	echo:
	set file=%temp%\h2d.vbs
	echo hexstring = "%sport:~2%" > %file%
	echo myNumber = CInt("&H" ^& hexstring) >> %file%
	echo WScript.StdOut.Write myNumber >> %file%
	FOR /F %%A in ('cscript /nologo %file%') do SET dport=%%A
	del /s /q %file% >nul
	if "%dport:~0,1%"=="-" goto :nextCIE5
	goto :nextCIE6
:nextCIE5
	set file=%temp%\h2d.vbs
	echo hexstring = "%sport:~2%" > %file%
	echo myNumber = CLng("&H" ^& hexstring) >> %file%
	echo WScript.StdOut.Write myNumber >> %file%
	FOR /F %%A in ('cscript /nologo %file%') do SET dport=%%A
	del /s /q %file% >nul
:nextCIE6
	sc query %name% >NUL
	if errorlevel 1 goto :Message
	if errorlevel 0 echo: && echo Service is already installed using port %dport% (%sport%)
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :MenuA
:nextCIE4
	for /f "tokens=3 delims=>/<" %%a in ('type %windir%\%name%\%name%.exe.config ^|find "value"') do (
		set "sport=%%a"
		goto :nextCIE3
	)
:nextCIE3
	echo Default: %name%
	echo Values: Servername
	echo:
	set /p name=Set name ^>
	echo:
	sc query %name% >NUL
	if errorlevel 1 goto :Message
	if errorlevel 0 echo: && echo Service is already installed using port %sport%
	call :FOOTER
	timeout /t 5
	goto:MenuA
:Message
	echo:
	echo ...Service is not installed.
	call :FOOTER
	timeout /t 5
	goto:MenuA
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckEmulator
	color 0F
	cls
	call :HEADER "This option checks for KMS Server Emulator", " "
	echo:
	echo    ...Checking for Server Emulator instances:
	echo:
	wmic process where "name='KMSServer.exe'" | findstr /i /c:"KMSServer.exe" >nul	
	if %errorlevel%==0 goto :ServerRunningCE
	if %errorlevel%==1 goto :ServerNotRunningCE
:ServerRunningCE
	echo:
	echo KMS Emulator is already running...
	call :FOOTER
	timeout /t 5
	goto:MenuA
:ServerNotRunningCE
	echo:
	echo KMS Emulator is not running...
	call :FOOTER
	timeout /t 5
	goto:MenuA
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckRealHost
	cls
	call :HEADER "This option checks a real Windows KMS Host", " "
	echo:
	cscript "%windir%\system32\slmgr.vbs" /dlv
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	cls
	call :HEADER "This option checks a real Office 14 KMS Host", " "
	echo:
	cscript "%windir%\system32\slmgr.vbs" /dlv bfe7a195-4f8f-4f0b-a622-cf13c7d16864
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	cls
	call :HEADER "This option checks a real Office 15 KMS Host", " "
	echo:
	cscript "%windir%\system32\slmgr.vbs" /dlv 2e28138a-847f-42bc-9752-61b03fff33cd
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto:MenuA
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Ipconfig
	cls
	call :HEADER "This option checks IPv4 adress of %computername%", " "
	echo:
	for /f "skip=1 tokens=2 delims=[]" %%i in ('ping %computername% -4 -n 1') do set ip4=%%i
	echo Current IPv4 adress: %ip4%
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto:MenuA
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckPortUsage
	cls
	call :HEADER "This option checks if Port is in use", " "
	echo:
	if /i "%port%"=="" set "port=1688"
	if /i "%name%"=="" set name=KMSServer
	echo Port
	echo Default: %port%
	echo:
	echo Name
	echo Default: %name%
	echo:
	set /p port=Set Port ^>
	set /p name=Set Name ^>
	for /F "tokens=5 delims= " %%P in ('netstat -a -n -o ^| findstr /RC:":%port%"') do set serverPid=%%P
	if "%serverPid%"=="" goto :NotUsedCP
	for /F "tokens=1 delims= " %%A in ('tasklist ^| findstr "%serverPid%"') do set servername=%%~nA
	if not "%serverPid%"=="" goto :UsedCP
:NotUsedCP
	echo:
	echo Port %port% is currently not in use.
	call :FOOTER
	CHOICE /C YN /M "Check for %name% [Y]es or [N]o  : "
	if %errorlevel%==1 (
		call :CheckInstall
		goto:MenuA
	)
	if %errorlevel%==2 goto:MenuA
:UsedCP
	echo:
	echo Port is used by: %servername% with PID: %serverPid%
	if "%servername%"=="%name%" goto :ChoiceCPU
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto:MenuA
:ChoiceCPU
	call :FOOTER
	CHOICE /C YN /M "Uninstall %servername% [Y]es or [N]o  : "
	if %errorlevel%==1 (
		call :Uninstall
		goto:MenuA
	)
	if %errorlevel%==2 goto:MenuA
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:RestartService
	cls
	call :HEADER "This option restarts KMS Server Service", " "
	echo:
	if /i "%name%"=="" set name=KMSServer
	echo Default: %name%
	echo Values: Servername
	call :FOOTER
	set /p name=Set name ^>
	echo:
	sc query %name% >nul
	if errorlevel 1 (
		call :NotInstalled
		goto:MenuA
	)
	pushd "%~dp0"
	net stop %name% >nul
	if %errorlevel% equ 0 echo Successfully started %name%.
	if %errorlevel% neq 0 echo Starting %name% Failed. 
	echo:
	net start %name% >nul
	if %errorlevel% equ 0 echo Successfully started %name%.
	if %errorlevel% neq 0 echo Starting %name% Failed. 
	call :FOOTER
	echo:
	timeout /t 5
	goto:MenuA
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:HaltService
	cls
	call :HEADER "This option halts KMS Server Service", " "
	echo:
	if /i "%name%"=="" set name=KMSServer
	echo Default: %name%
	echo Values: Servername
	call :FOOTER
	set /p name=Set name ^>
	echo:
	sc query %name% >nul
	if errorlevel 1 (
		call :NotInstalled
		goto:MenuA
	)
	net stop %name% >nul
	if %errorlevel% equ 0 echo Successfully started %name%.
	if %errorlevel% neq 0 echo Starting %name% Failed. 
	call :FOOTER
	timeout /t 5
	goto:MenuA
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:StartService
	cls
	call :HEADER "This option starts KMS Server Service ", " "
	echo:
	if /i "%name%"=="" set name=KMSServer
	echo Default: %name%
	echo:
	echo Values: Servername
	call :FOOTER
	set /p name=Set name ^>
	echo:
	sc query %name% >nul
	if errorlevel 1 (
		call :NotInstalled
		goto:MenuA
	)
	echo:
	net start %name% >nul
	if %errorlevel% equ 0 echo Successfully started %name%.
	if %errorlevel% neq 0 echo Starting %name% Failed. 
	call :FOOTER
	timeout /t 5
	goto:Menu2
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ClearLogs
	cls
	call :HEADER "CLEARING LOGS", " "
	echo Clearing all Logs ...
	for /f "delims=," %%i in ( 'wevtutil el' ) do wevtutil cl "%%i"
	wevtutil.exe cl System
	call :FOOTER
	timeout /t 5
	goto:MenuA
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::SYSTEM ACTIVATION SECTION
:Activate
	cls
	call :CheckSPPSVC
	if not "%channel%"=="VOLUME_KMSCLIENT" (
		call :Detected "%channel%"
		goto:Menu5
	)
	call :ID
	call :HEADER "OS-Version: %ver% found %vera%", "ID: %id%"
	echo:
	if %win% lss 9200 set host=127.0.0.2
	if /i "%port%"=="" set "port=1688"
	echo Default: %host%
	echo Value: Host Adress
	echo:
	echo Default: %port%
	echo Value: Host Port
	call :FOOTER
	set /p host=Set host IP ^>
	set /p port=Set port ^>
	call :FOOTER
	pushd "%~dp0"
	wmic path %sls% where version='%version%' call SetKeyManagementServiceMachine MachineName="%host%" >nul
	if %errorlevel% equ 0 echo Successfully changed IP to %host%.
	if %errorlevel% neq 0 echo Setting IP to %host% Failed. 
	wmic path %sls% where version='%version%' call SetKeyManagementServicePort %port% >nul
	if %errorlevel% equ 0 echo Successfully changed Port to %port%. & echo:
	if %errorlevel% neq 0 echo Setting Port to %port% Failed. 
	wmic path %slp% where ID='%id%' call Activate >nul
	if %errorlevel% equ 0 echo: & echo Successfully activated: %ver% %vera% 
	if %errorlevel% neq 0 echo Activation Failed: %errorlevel%
	call :FOOTER
	wmic path %sls% where version='%version%' call ClearKeyManagementServiceMachine >nul
	wmic path %sls% where version='%version%' call ClearKeyManagementServicePort >nul
	wmic path %sls% where version='%version%' call DisableKeyManagementServiceDnsPublishing 1 >nul
	wmic path %sls% where version='%version%' call DisableKeyManagementServiceHostCaching 1 >nul
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Detected
	call :HEADER "%~1 found...", " "
	echo NOTE: For KMS Activation install Volume Key first.
	echo TRY AGAIN AFTERWARDS
	echo:
	CHOICE /C AB /N /M "[A]ctivate Online or [B]ack ?"
	if %errorlevel%==1 (
		call :ActivateOnline
		goto:Menu5
	)
	if %errorlevel%==2 goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ActivateOffice
	call :Office14
:ActivateOffice3
	call :Office1464
:ActivateOffice4
	call :Office15
:ActivateOffice5
	call :Office1564
:ActivateOffice6
	call :Office16
:ActivateOffice7
	call :Office1664
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ConvertOffice
	call :Officex64 15, 2
	call :Othersx64 15, 2, Project, project
	call :Othersx64 15, 2, Visio, visio
	if not defined office15present if not defined project15present if not defined visio15present goto:ConvertOffice2
	call :HEADER "Office 2013 Professional Plus %vera% found", "in path: %officepath2%"
	CHOICE /C PB /M "[P]roceed or [B]ack ? :"
	if %errorlevel%==2 goto:Menu5
	call :Office15ConversionLoop
	timeout /t 5
:ConvertOffice2
	cls
	call :Officex86 15, 2
	call :Othersx86 15, 2, Project, project
	call :Othersx86 15, 2, Visio, visio
	if not defined office15present if not defined project15present if not defined visio15present goto:ConvertOffice3
	call :HEADER "Office 2013 Professional Plus x86 found", "in path: %officepath2%"
	CHOICE /C PB /M "[P]roceed or [B]ack ? :"
	if %errorlevel%==2 goto:Menu5
	call :Office15ConversionLoop
	timeout /t 5
:ConvertOffice3
	cls
	call :CheckC2ROx64 16, 3, Common, office
	call :CheckC2RPx64 16, 3, Project, project
	call :CheckC2RVx64 16, 3, Visio, visio
	if "%office16present%"=="positive" goto:ConvertOffice3.a
	if "%project16present%"=="positive" goto:ConvertOffice3.a
	if "%visio16present%"=="positive" goto:ConvertOffice3.a
	if "%O365ProPlusRetail%"=="positive" goto:ConvertOffice3.a
	if "%MondoRetail%"=="positive" goto:ConvertOffice3.a
	if "%StandardRetail%"=="positive" goto:ConvertOffice3.a
	if "%WordRetail%"=="positive" goto:ConvertOffice3.a
	if "%ExcelRetail%"=="positive" goto:ConvertOffice3.a
	if "%PowerPointRetail%"=="positive" goto:ConvertOffice3.a
	if "%AccessRetail%"=="positive" goto:ConvertOffice3.a
	if "%OutlookRetail%"=="positive" goto:ConvertOffice3.a
	if "%PublisherRetail%"=="positive" goto:ConvertOffice3.a
	if "%OneNoteRetail%"=="positive" goto:ConvertOffice3.a
	if "%SkypeForBusinessRetail%"=="positive" goto:ConvertOffice3.a
	goto:ConvertOffice4
:ConvertOffice3.a
	call :HEADER "Office 2016 %office16version% found", "in path: %officepath3%"
	if "%office16present%"=="positive" echo ProPlusRetail found
	if "%project16present%"=="positive" echo ProjectProRetail found
	if "%visio16present%"=="positive" echo VisioProRetail found
	if "%O365ProPlusRetail%"=="positive" echo O365ProPlusRetail found
	if "%MondoRetail%"=="positive" echo MondoRetail found
	if "%StandardRetail%"=="positive" echo StandardRetail found
	if "%WordRetail%"=="positive" echo WordRetail found
	if "%ExcelRetail%"=="positive" echo ExcelRetail found
	if "%PowerPointRetail%"=="positive" echo PowerPointRetail found
	if "%AccessRetail%"=="positive" echo AccessRetail found
	if "%OutlookRetail%"=="positive" echo OutlookRetail found
	if "%PublisherRetail%"=="positive" echo PublisherRetail found
	if "%OneNoteRetail%"=="positive" echo OneNoteRetail found
	if "%SkypeForBusinessRetail%"=="positive" echo SkypeForBusinessRetail found
	call :FOOTER
	CHOICE /C PB /M "[P]roceed or [B]ack ? :"
	if %errorlevel%==2 goto:Menu5
	call :Office16ConversionLoop
	timeout /t 5
:ConvertOffice4
	cls
	call :CheckC2ROx86 16, 3, Common, office
	call :CheckC2RPx86 16, 3, Project, project
	call :CheckC2RVx86 16, 3, Visio, visio
	if "%office16present%"=="positive" goto:ConvertOffice4.a
	if "%project16present%"=="positive" goto:ConvertOffice4.a
	if "%visio16present%"=="positive" goto:ConvertOffice4.a
	if "%O365ProPlusRetail%"=="positive" goto:ConvertOffice4.a
	if "%MondoRetail%"=="positive" goto:ConvertOffice4.a
	if "%StandardRetail%"=="positive" goto:ConvertOffice4.a
	if "%WordRetail%"=="positive" goto:ConvertOffice4.a
	if "%ExcelRetail%"=="positive" goto:ConvertOffice4.a
	if "%PowerPointRetail%"=="positive" goto:ConvertOffice4.a
	if "%AccessRetail%"=="positive" goto:ConvertOffice4.a
	if "%OutlookRetail%"=="positive" goto:ConvertOffice4.a
	if "%PublisherRetail%"=="positive" goto:ConvertOffice4.a
	if "%OneNoteRetail%"=="positive" goto:ConvertOffice4.a
	if "%SkypeForBusinessRetail%"=="positive" goto:ConvertOffice4.a
	goto:Menu5
:ConvertOffice4.a
	call :HEADER "Office 2016 %office16version% found", "in path: %officepath3%"
	if "%office16present%"=="positive" echo ProPlusRetail found
	if "%project16present%"=="positive" echo ProjectProRetail found
	if "%visio16present%"=="positive" echo VisioProRetail found
	if "%O365ProPlusRetail%"=="positive" echo O365ProPlusRetail found
	if "%MondoRetail%"=="positive" echo MondoRetail found
	if "%StandardRetail%"=="positive" echo StandardRetail found
	if "%WordRetail%"=="positive" echo WordRetail found
	if "%ExcelRetail%"=="positive" echo ExcelRetail found
	if "%PowerPointRetail%"=="positive" echo PowerPointRetail found
	if "%AccessRetail%"=="positive" echo AccessRetail found
	if "%OutlookRetail%"=="positive" echo OutlookRetail found
	if "%PublisherRetail%"=="positive" echo PublisherRetail found
	if "%OneNoteRetail%"=="positive" echo OneNoteRetail found
	if "%SkypeForBusinessRetail%"=="positive" echo SkypeForBusinessRetail found
	call :FOOTER
	CHOICE /C PB /M "[P]roceed or [B]ack ? :"
	if %errorlevel%==2 goto:Menu5
	call :Office16ConversionLoop
	timeout /t 5
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:UninstallOffice
	call :Officex64 14, 1
	call :Othersx64 14, 1, Project, project
	call :Othersx64 14, 1, Visio, visio
	if not defined office14present if not defined project14present if not defined visio14present goto:UninstallOffice2
	call :HEADER "Office 2010 Professional Plus %vera% found", "in path: %officepath1%"
	CHOICE /C PB /M "[P]roceed or [B]ack ? :"
	if %errorlevel%==2 goto:UninstallOffice2
	start cmd /k cscript "%officepath1%\ospp.vbs" /dstatus
	echo Keypart^(s^): 'XXXXX' or 'XXXXX, XXXXX, XXXXX, ...'
	call :FOOTER
	set /p keypart=Set Keypart:
	cls
	call :HEADER "   UNINSTALLING : %keypart%"
	for /d %%a in (%keypart%) do csccript "%officepath1%\ospp.vbs" /unpkey:%%a
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	timeout /t 5
:UninstallOffice2
	cls
	call :Officex86 14, 1
	call :Othersx86 14, 1, Project, project
	call :Othersx86 14, 1, Visio, visio
	if not defined office14present if not defined project14present if not defined visio14present goto:UninstallOffice3
	call :HEADER "Office 2010 Professional Plus x86 found", "in path: %officepath1%"
	CHOICE /C PB /M "[P]roceed or [B]ack ? :"
	if %errorlevel%==2 goto:UninstallOffice3
	start cmd /k cscript "%officepath1%\ospp.vbs" /dstatus
	echo Keypart^(s^): 'XXXXX' or 'XXXXX, XXXXX, XXXXX, ...'
	call :FOOTER
	set /p keypart=Set Keypart:
	cls
	call :HEADER "   UNINSTALLING : %keypart%"
	for /d %%a in (%keypart%) do cscript "%officepath1%\ospp.vbs" /unpkey:%%a
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	timeout /t 5
:UninstallOffice3
	call :Officex64 15, 2
	call :Othersx64 15, 2, Project, project
	call :Othersx64 15, 2, Visio, visio
	if not defined office15present if not defined project15present if not defined visio15present goto:UninstallOffice4
	call :HEADER "Office 2013 Professional Plus %vera% found", "in path: %officepath2%"
	CHOICE /C AMB /M "[A]uto, [M]anual or [B]ack ? :"
	if %errorlevel%==1 (
		call :Uninstall15Auto
		call :FOOTER
		timeout /t 5
		goto:UninstallOffice4
	)
	if %errorlevel%==3 goto:UninstallOffice4
	start cmd /k cscript "%officepath2%\ospp.vbs" /dstatus
	echo Keypart^(s^): 'XXXXX' or 'XXXXX, XXXXX, XXXXX, ...'
	call :FOOTER
	set /p keypart=Set Keypart:
	cls
	call :HEADER "   UNINSTALLING : %keypart%"
	for /d %%a in (%keypart%) do cscript "%officepath2%\ospp.vbs" /unpkey:%%a
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	timeout /t 5
:UninstallOffice4
	cls
	call :Officex86 15, 2
	call :Othersx86 15, 2, Project, project
	call :Othersx86 15, 2, Visio, visio
	if not defined office15present if not defined project15present if not defined visio15present goto:UninstallOffice5
	call :HEADER "Office 2013 Professional Plus x86 found", "in path: %officepath2%"
	CHOICE /C AMB /M "[A]uto, [M]anual or [B]ack ? :"
	if %errorlevel%==1 (
		call :Uninstall15Auto
		call :FOOTER
		timeout /t 5
		goto:UninstallOffice5
	)
	if %errorlevel%==3 goto:UninstallOffice5
	start cmd /k cscript "%officepath2%\ospp.vbs" /dstatus
	echo Keypart^(s^): 'XXXXX' or 'XXXXX, XXXXX, XXXXX, ...'
	call :FOOTER
	set /p keypart=Set Keypart:
	cls
	call :HEADER "   UNINSTALLING : %keypart%"
	for /d %%a in (%keypart%) do cscript "%officepath2%\ospp.vbs" /unpkey:%%a
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	timeout /t 5
:UninstallOffice5
	cls
	call :CheckC2ROx64 16, 3, Common, office
	call :CheckC2RPx64 16, 3, Project, project
	call :CheckC2RVx64 16, 3, Visio, visio
	if not defined office16present if not defined project16present if not defined visio16present goto:UninstallOffice6
	call :HEADER "Office 2016 Professional Plus %vera% found", "in path: %officepath3%"
	if not exist "%officepath3%\ospp.vbs" (
		echo Office 365 Professional detected. Uninstall via Convert Option.
		echo:
		call :FOOTER
		goto :UninstallOffice6
	)
	CHOICE /C AMB /M "[A]uto, [M]anual or [B]ack ? :"
	if %errorlevel%==1 (
		call :Uninstall16Auto
		call :FOOTER
		timeout /t 5
		goto:UninstallOffice6
	)
	if %errorlevel%==3 goto:UninstallOffice6
	if not exist "%officepath3%\ospp.vbs" xcopy "OfficeFixes\ospp\*.*" "%officepath3%" /C /E /I /Q /R /S /Y  >nul 2>&1
	start cmd /k cscript "%officepath3%\ospp.vbs" /dstatus
	echo Keypart^(s^): 'XXXXX' or 'XXXXX, XXXXX, XXXXX, ...'
	call :FOOTER
	set /p keypart=Set Keypart:
	cls
	call :HEADER "   UNINSTALLING : %keypart%"
	for /d %%a in (%keypart%) do cscript "%officepath3%\ospp.vbs" /unpkey:%%a
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	timeout /t 5
:UninstallOffice6
	cls
	call :CheckC2ROx86 16, 3, Common, office
	call :CheckC2RPx86 16, 3, Project, project
	call :CheckC2RVx86 16, 3, Visio, visio
	if not defined office16present if not defined project16present if not defined visio16present goto:Menu5
	call :HEADER "Office 2016 Professional Plus x86 found", "in path: %officepath3%"
	if not exist "%officepath3%\ospp.vbs" (
		echo Office 365 Professional detected. Uninstall via Convert Option.
		echo:
		call :FOOTER
		goto :Menu5
	)
	CHOICE /C AMB /M "[A]uto, [M]anual or [B]ack ? :"
	if %errorlevel%==1 (
		call :Uninstall16Auto
		call :FOOTER
		timeout /t 5
		goto:Menu5
	)
	if %errorlevel%==3 goto:Menu5
	if not exist "%officepath3%\ospp.vbs" xcopy "OfficeFixes\ospp\*.*" "%officepath3%" /C /E /I /Q /R /S /Y  >nul 2>&1
	start cmd /k cscript "%officepath3%\ospp.vbs" /dstatus
	echo Keypart^(s^): 'XXXXX' or 'XXXXX, XXXXX, XXXXX, ...'
	call :FOOTER
	set /p keypart=Set Keypart:
	cls
	call :HEADER "   UNINSTALLING : %keypart%"
	for /d %%a in (%keypart%) do cscript "%officepath3%\ospp.vbs" /unpkey:%%a
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	timeout /t 5
	goto:Menu5
::===============================================================================================================
:: OFFICE DOWNLOAD AND INSTALL
:Office16VnextInstall
    cls
    pushd %~dp0
    call :Header "OFFICE DOWNLOAD AND INSTALL by ratzlefatz"
::===============================================================================================================
:: DEFINE SYSTEM ENVIRONMENT
	for /f "tokens=6 delims=[]. " %%A in ('ver') do set /a win=%%A
	if %win% LSS 7601 ((echo:)&&(echo:)&&(echo Unsupported Windows detected)&&(echo:)&&(echo Office 2016 minimum OS must be Windows 7 SP1 or better)&&(echo:)&&(goto:TheEndIsNear))
	for /f "tokens=2 delims==" %%a in ('wmic path Win32_Processor get AddressWidth /value') do (set winx=win_x%%a)
	set "sls=SoftwareLicensingService"
	set "slp=SoftwareLicensingProduct"
	set "osps=OfficeSoftwareProtectionService"
	set "ospp=OfficeSoftwareProtectionProduct"
	set "slsversion="
	set "ospsversion="
	for /f "tokens=2 delims==" %%A IN ('"wmic path %sls% get version /format:list" 2^>nul') do set slsversion=%%A
	if %win% LSS 9200 (for /f "tokens=2 delims==" %%A IN ('"wmic path %osps% get version /format:list" 2^>nul') do set ospsversion=%%A)
	set "downpath=not set"
    set "o16build=not set"
	set "o16lang=en-US"
    set "o16lcid=1033"
	set "o16updlocid=not set"
::===============================================================================================================
	set "o2016rtoolpath=%cd%\files"
::	set "o2016rtoolpath=%o2016rtoolpath:~0,-1%"
	set "o2016rtoolname=%~n0.cmd"
	set "wget=%o2016rtoolpath%\wget\wget.exe"
::===============================================================================================================
:: Check Microsoft build system for new Office 2016 releases
	set "buildcheck=ok"
	set "o16curbuild=not set"
	set "o16latestcurbuild=not set"
	set "o16frcbuild=not set"
	set "o16latestfrcbuild=not set"
	set "o16infbuild=not set"
	set "o16latestinfbuild=not set"
	set "o16defbuild=not set"
	set "o16latestdefbuild=not set"
	set "o16frdbuild=not set"
	set "o16latestfrdbuild=not set"
	echo Checking all Office 2016 distribution channels for new updates. Please wait....
	echo:
::===============================================================================================================
:: Check "Current Channel" (Retail/RTM)
	set /p "o16curbuild=" <"%o2016rtoolpath%\latest_current_build.txt"
	set o16curbuild=%o16curbuild:~0,-1%
	"%wget%" --tries=20 --output-document="%o2016rtoolpath%\latestbuild.txt" tools.thecollectionbook.info/latest/?guid=492350f6-3a01-4f97-b9c0-c7c6ddf67d60 >nul 2>&1
	if %errorlevel% GEQ 1 (powershell -command "%pswindowtitle%"; Write-Host "*** ERROR checking build: Current channel -Retail-" -foreground "Red")&&(set "buildcheck=not ok")&&(goto:SkipCUR)
	set /p "o16latestcurbuild=" <"%o2016rtoolpath%\latestbuild.txt"
	if "%o16curbuild%" NEQ "%o16latestcurbuild%" (echo %o16latestcurbuild% >"%o2016rtoolpath%\latest_current_build.txt")&&(set o16curbuild=%o16latestcurbuild%)&&(set o16latestcurbuild=changed)
::===============================================================================================================
:SkipCUR
:: Check "First Release for Current Channel" (Insider Slow Ring)
	set /p "o16frcbuild=" <"%o2016rtoolpath%\latest_first_release_for_current_build.txt"
	set o16frcbuild=%o16frcbuild:~0,-1%
	"%wget%" --tries=20 --output-document="%o2016rtoolpath%\latestbuild.txt" tools.thecollectionbook.info/latest/?guid=64256afe-f5d9-4f86-8936-8840a6a4f5be >nul 2>&1
    if %errorlevel% GEQ 1 (powershell -command "%pswindowtitle%"; Write-Host "*** ERROR checking build: First Release for Current channel -Insider Slow-" -foreground "Red")&&(set "buildcheck=not ok")&&(goto:SkipFRC)
	set /p "o16latestfrcbuild=" <"%o2016rtoolpath%\latestbuild.txt"
	if "%o16frcbuild%" NEQ "%o16latestfrcbuild%" (echo %o16latestfrcbuild% >"%o2016rtoolpath%\latest_first_release_for_current_build.txt")&&(set o16frcbuild=%o16latestfrcbuild%)&&(set o16latestfrcbuild=changed)
::===============================================================================================================
:SkipFRC
:: Check "Insider Fast Channel" (Insider Fast Ring)
	set /p "o16infbuild=" <"%o2016rtoolpath%\latest_insider_fast_build.txt"
	set o16infbuild=%o16infbuild:~0,-1%
	"%wget%" --tries=20 --output-document="%o2016rtoolpath%\latestbuild.txt" tools.thecollectionbook.info/latest/?guid=5440fd1f-7ecb-4221-8110-145efaa6372f >nul 2>&1
	if %errorlevel% GEQ 1 (powershell -command "%pswindowtitle%"; Write-Host "*** ERROR checking build: Insider Fast channel -Insider Fast-" -foreground "Red")&&(set "buildcheck=not ok")&&(goto:SkipINF)
	set /p "o16latestinfbuild=" <"%o2016rtoolpath%\latestbuild.txt"
	if "%o16infbuild%" NEQ "%o16latestinfbuild%" (echo %o16latestinfbuild% >"%o2016rtoolpath%\latest_insider_fast_build.txt")&&(set o16infbuild=%o16latestinfbuild%)&&(set o16latestinfbuild=changed)
::===============================================================================================================
:SkipINF
:: Check "Deferred Channel" (Business)
	set /p "o16defbuild=" <"%o2016rtoolpath%\latest_deferred_build.txt"
	set o16defbuild=%o16defbuild:~0,-1%
	"%wget%" --tries=20 --output-document="%o2016rtoolpath%\latestbuild.txt" tools.thecollectionbook.info/latest/?guid=7ffbc6bf-bc32-4f92-8982-f9dd17fd3114 >nul 2>&1
	if %errorlevel% GEQ 1 (powershell -command "%pswindowtitle%"; Write-Host "*** ERROR checking build: Deferred channel -Business-" -foreground "Red")&&(set "buildcheck=not ok")&&(goto:SkipDEF)
	set /p "o16latestdefbuild=" <"%o2016rtoolpath%\latestbuild.txt"
	if "%o16defbuild%" NEQ "%o16latestdefbuild%" (echo %o16latestdefbuild% >"%o2016rtoolpath%\latest_deferred_build.txt")&&(set o16defbuild=%o16latestdefbuild%)&&(set o16latestdefbuild=changed)
::===============================================================================================================
:SkipDEF
:: Check "First Release for Deferred Channel" (Business Insider)
	set /p "o16frdbuild=" <"%o2016rtoolpath%\latest_first_release_for_deferred_build.txt"
	set o16frdbuild=%o16frdbuild:~0,-1%
	"%wget%" --tries=20 --output-document="%o2016rtoolpath%\latestbuild.txt" tools.thecollectionbook.info/latest/?guid=b8f9b850-328d-4355-9145-c59439a0c4cf >nul 2>&1
	if %errorlevel% GEQ 1 (powershell -command "%pswindowtitle%"; Write-Host "*** ERROR checking build: First Release for Deferred channel -Business Insider-" -foreground "Red")&&(set "buildcheck=not ok")&&(goto:SkipFRD)
	set /p "o16latestfrdbuild=" <"%o2016rtoolpath%\latestbuild.txt"
	if "%o16frdbuild%" NEQ "%o16latestfrdbuild%" (echo %o16latestfrdbuild% >"%o2016rtoolpath%\latest_first_release_for_deferred_build.txt")&&(set o16frdbuild=%o16latestfrdbuild%)&&(set o16latestfrdbuild=changed)
::===============================================================================================================
:SkipFRD
	del /f /q "%o2016rtoolpath%\latestbuild.txt" 2>&1
	if "%buildcheck%" EQU "not ok"	(echo:)&&(echo Internet connection not available)&&(echo:)&&(timeout /t 7)
::===============================================================================================================
    cls
	call :TITLE
	mode con cols=87 lines=50
    set "o16arch="
    pushd %~dp0
    call :Header "OFFICE DOWNLOAD AND INSTALL by ratzlefatz"
    if "%o16latestcurbuild%" EQU "changed" (echo __________________________________________________________________)&&(echo.)&&(powershell -command "%pswindowtitle%"; Write-Host "New Current channel build %o16curbuild% available!" -foreground "Red")&&(set "o16latestcurbuild=not set")
	if "%o16latestfrcbuild%" EQU "changed" (echo __________________________________________________________________)&&(echo.)&&(powershell -command "%pswindowtitle%"; Write-Host "New First Release for Current channel build %o16frcbuild% available!" -foreground "Red")&&(set "o16latestfrcbuild=not set")
	if "%o16latestinfbuild%" EQU "changed" (echo __________________________________________________________________)&&(echo.)&&(powershell -command "%pswindowtitle%"; Write-Host "New Insider Fast channel build %o16infbuild% available!" -foreground "Red")&&(set "o16latestinfbuild=not set")
	if "%o16latestdefbuild%" EQU "changed" (echo __________________________________________________________________)&&(echo.)&&(powershell -command "%pswindowtitle%"; Write-Host "New Deferred channel build %o16defbuild% available!" -foreground "Red")&&(set "o16latestdefbuild=not set")
	if "%o16latestfrdbuild%" EQU "changed" (echo __________________________________________________________________)&&(echo.)&&(powershell -command "%pswindowtitle%"; Write-Host "New First Release for Deferred channel build %o16frdbuild% available!" -foreground "Red")&&(set "o16latestfrdbuild=not set")
    call :Footer
	echo [D] DOWNLOAD OFFICE 2016 OFFLINE INSTALL PACKAGE
    echo [I] INSTALL OFFICE 2016 SUITES OR SINGLE APPS
    echo:
    echo [U] CHANGE OFFICE UPDATE-PATH [SWITCH DISTRIBUTION CHANNEL]
    echo:
    echo [O] CREATE OFFICE WEB ONLINE INSTALLER LINK
    echo:
    echo [B] BACK
    call :Footer
    CHOICE /C DIUOB /N /M "YOUR CHOICE ?"
    if %errorlevel%==1 goto :DownloadO16Offline
    if %errorlevel%==2 goto :InstallO16
    if %errorlevel%==3 goto :ChangeUpdPath
    if %errorlevel%==4 goto :DownloadO16Online
    if %errorlevel%==5 goto:Menu5
::===============================================================================================================
:: OFFICE DOWNLOAD
:DownloadO16Offline
	if not defined o16arch set "o16arch=x86"
    set "installtrigger=0"
	set "channeltrigger=0"
	cls
	echo:
    echo ======= DOWNLOAD OFFICE 2016 OFFLINE INSTALL PACKAGE =============
    echo __________________________________________________________________
	echo:
	echo DownloadPath: %downpath%
    echo:
	if "%o16updlocid%" EQU "492350f6-3a01-4f97-b9c0-c7c6ddf67d60" echo Channel-ID:   %o16updlocid% (Current) && goto:DownOfflineContinue
	if "%o16updlocid%" EQU "5440fd1f-7ecb-4221-8110-145efaa6372f" echo Channel-ID:   %o16updlocid% (Insider Fast) && goto:DownOfflineContinue
	if "%o16updlocid%" EQU "64256afe-f5d9-4f86-8936-8840a6a4f5be" echo Channel-ID:   %o16updlocid% (First Release for Current) && goto:DownOfflineContinue
	if "%o16updlocid%" EQU "7ffbc6bf-bc32-4f92-8982-f9dd17fd3114" echo Channel-ID:   %o16updlocid% (Deferred))&&(goto:DownOfflineContinue
	if "%o16updlocid%" EQU "b8f9b850-328d-4355-9145-c59439a0c4cf" echo Channel-ID:   %o16updlocid% (First Release for Deferred) && goto:DownOfflineContinue
	if "%o16updlocid%" EQU "not set" echo Channel-ID:   not set && goto:DownOfflineContinue
	echo Channel-ID:   %o16updlocid% (Manual Override)
::===============================================================================================================
:DownOfflineContinue
	echo:
	echo Office build: %o16build%
	echo:
	echo Language:     %o16lang%
    echo:
	echo Architecture: %o16arch%
    echo __________________________________________________________________
	echo:
	set /p downpath=Set Download Path ^>
	set "downpath=%downpath:"=%"
	if "%downpath%" EQU "x" (set "downpath=not set")&&(goto:Office16VnextInstall)
	if "%downpath%" EQU "X" (set "downpath=not set")&&(goto:Office16VnextInstall)
	set "downdrive=%downpath:~0,2%"
	cd /d %downdrive% >nul 2>&1
	if errorlevel 1 (echo:)&&(echo Unknown Drive "%downdrive%" - Drive not found)&&(echo Enter correct driveletter:\directory or enter "X" to exit)&&(echo:)&&(pause)&&(set "downpath=not set")&&(goto:DownloadO16Offline)
	if "%downpath:~-1%" EQU "\" set "downpath=%downpath:~0,-1%"
::===============================================================================================================
	pushd %o2016rtoolpath%
	echo:
	echo Possible Office 2016 Distribution-Channel ID VALUES:
	echo C = Current Channel (Retail/RTM)
	echo F = Insider Fast Channel (Office Insider Fast Ring)
	echo S = First Release for Current Channel (Office Insider Slow Ring)
	echo D = Deferred Channel (Business)
	echo B = First Release for Deferred Channel (Business Insider)
	echo M = manual override (set identifier for Channel-ID's not yet known)
	echo X = exit to Main Menu
	echo:
	set /p channeltrigger=Set Channel-ID ^>
	if "%channeltrigger%" EQU "C" (set "o16updlocid=492350f6-3a01-4f97-b9c0-c7c6ddf67d60")&&(set "o16build=%o16curbuild%")&&(goto:ChannelSelected)
	if "%channeltrigger%" EQU "c" (set "o16updlocid=492350f6-3a01-4f97-b9c0-c7c6ddf67d60")&&(set "o16build=%o16curbuild%")&&(goto:ChannelSelected)
	if "%channeltrigger%" EQU "F" (set "o16updlocid=5440fd1f-7ecb-4221-8110-145efaa6372f")&&(set "o16build=%o16infbuild%")&&(goto:ChannelSelected)
	if "%channeltrigger%" EQU "f" (set "o16updlocid=5440fd1f-7ecb-4221-8110-145efaa6372f")&&(set "o16build=%o16infbuild%")&&(goto:ChannelSelected)
	if "%channeltrigger%" EQU "S" (set "o16updlocid=64256afe-f5d9-4f86-8936-8840a6a4f5be")&&(set "o16build=%o16frcbuild%")&&(goto:ChannelSelected)
	if "%channeltrigger%" EQU "s" (set "o16updlocid=64256afe-f5d9-4f86-8936-8840a6a4f5be")&&(set "o16build=%o16frcbuild%")&&(goto:ChannelSelected)
	if "%channeltrigger%" EQU "D" (set "o16updlocid=7ffbc6bf-bc32-4f92-8982-f9dd17fd3114")&&(set "o16build=%o16defbuild%")&&(goto:ChannelSelected)
	if "%channeltrigger%" EQU "d" (set "o16updlocid=7ffbc6bf-bc32-4f92-8982-f9dd17fd3114")&&(set "o16build=%o16defbuild%")&&(goto:ChannelSelected)
	if "%channeltrigger%" EQU "B" (set "o16updlocid=b8f9b850-328d-4355-9145-c59439a0c4cf")&&(set "o16build=%o16frdbuild%")&&(goto:ChannelSelected)
	if "%channeltrigger%" EQU "b" (set "o16updlocid=b8f9b850-328d-4355-9145-c59439a0c4cf")&&(set "o16build=%o16frdbuild%")&&(goto:ChannelSelected)
	if "%channeltrigger%" EQU "M" (set "o16updlocid=not set")&&(set "o16build=not set")&&(goto:ManualChannelSelect)
	if "%channeltrigger%" EQU "m" (set "o16updlocid=not set")&&(set "o16build=not set")&&(goto:ManualChannelSelect)
	if "%channeltrigger%" EQU "X" (set "o16updlocid=not set")&&(set "o16build=not set")&&(goto:Office16VnextInstall)
	if "%channeltrigger%" EQU "x" (set "o16updlocid=not set")&&(set "o16build=not set")&&(goto:Office16VnextInstall)
	(set "o16updlocid=not set")&&(set "o16build=not set")&&(goto:DownloadO16Offline)
::===============================================================================================================
:ManualChannelSelect
    echo:
	set /p o16updlocid=Set Channel identifier (manual overrride) ^>
	if "%o16updlocid%" EQU "not set" goto:DownloadO16Offline
	if "%o16updlocid%" EQU "X" (set "o16updlocid=not set")&&(set "o16build=not set")&&(goto:Office16VnextInstall)
	if "%o16updlocid%" EQU "x" (set "o16updlocid=not set")&&(set "o16build=not set")&&(goto:Office16VnextInstall)
::===============================================================================================================
:ChannelSelected
	set "o16downloadloc=officecdn.microsoft.com.edgesuite.net/pr/%o16updlocid%/Office/Data"
	echo:
    set /p o16build=Set Office Build - or press return for %o16build% ^>
	echo:
::===============================================================================================================
	call :SetO16Language
::===============================================================================================================
	echo:
	set /p o16arch=Set architecture to download (x86 or x64) - press return for %o16arch% ^>
	if "%o16arch%" EQU "x86" goto:SkipDownArch
	if "%o16arch%" EQU "X86" (set "o16arch=x86")&&(goto:SkipDownArch)
	if "%o16arch%" EQU "x64" goto:SkipDownArch
	if "%o16arch%" EQU "X64" (set "o16arch=x64")&&(goto:SkipDownArch)
	set "o16arch=x86"
:SkipDownArch
::===============================================================================================================
	echo __________________________________________________________________
    echo:
    echo ======= Pending Download (SUMMARY) ===============================
    echo:
    echo DownloadPath: %downpath%
    echo:
	if "%o16updlocid%" EQU "492350f6-3a01-4f97-b9c0-c7c6ddf67d60" echo Channel-ID:   %o16updlocid% (Current) && goto:PendDownContinue
	if "%o16updlocid%" EQU "64256afe-f5d9-4f86-8936-8840a6a4f5be" echo Channel-ID:   %o16updlocid% (First Release for Current) && goto:PendDownContinue
	if "%o16updlocid%" EQU "5440fd1f-7ecb-4221-8110-145efaa6372f" echo Channel-ID:   %o16updlocid% (Insider Fast) && goto:PendDownContinue
	if "%o16updlocid%" EQU "7ffbc6bf-bc32-4f92-8982-f9dd17fd3114" echo Channel-ID:   %o16updlocid% (Deferred) && goto:PendDownContinue
	if "%o16updlocid%" EQU "b8f9b850-328d-4355-9145-c59439a0c4cf" echo Channel-ID:   %o16updlocid% (First Release for Deferred) && goto:PendDownContinue
	echo Channel-ID:  %o16updlocid% (Unknown/Override)
 ::===============================================================================================================
 :PendDownContinue
	echo Office Build: %o16build%
	echo Language:     %o16lang%
    echo Architecture: %o16arch%
    echo __________________________________________________________________
	echo:
    set /p installtrigger=Start download now? (1/0) ^>
    if "%installtrigger%" EQU "0" goto:DownloadO16Offline
    if "%installtrigger%" EQU "1" goto:Office16VNextDownload
	if "%installtrigger%" EQU "X" (set "o16updlocid=not set")&&(set "o16build=not set")&&(goto:Office16VnextInstall)
	if "%installtrigger%" EQU "x" (set "o16updlocid=not set")&&(set "o16build=not set")&&(goto:Office16VnextInstall)
	goto:DownloadO16Offline
::===============================================================================================================
:Office16VNextDownload
	cls
	echo:
	echo ======= DOWNLOADING OFFICE 16 OFFLINE SETUP PACKAGE ==============
	echo __________________________________________________________________
	if "%o16updlocid%" EQU "492350f6-3a01-4f97-b9c0-c7c6ddf67d60" set "downbranch=Current" && goto:ContVNextDownload
	if "%o16updlocid%" EQU "64256afe-f5d9-4f86-8936-8840a6a4f5be" set "downbranch=FirstReleaseForCurrent" && goto:ContVNextDownload
	if "%o16updlocid%" EQU "5440fd1f-7ecb-4221-8110-145efaa6372f" set "downbranch=InsiderFast" && goto:ContVNextDownload
	if "%o16updlocid%" EQU "7ffbc6bf-bc32-4f92-8982-f9dd17fd3114" set "downbranch=Deferred" && goto:ContVNextDownload
	if "%o16updlocid%" EQU "b8f9b850-328d-4355-9145-c59439a0c4cf" set "downbranch=FirstReleaseForDeferred" && goto:ContVNextDownload
	set "downbranch=ManualOverride"
::===============================================================================================================
:ContVNextDownload
    pushd "%downpath%"
	mode con cols=147
	if "%o16arch%" EQU "x64" goto:X64DOWNLOAD
::===============================================================================================================
::	Download x86/32bit Office setup files
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/v32_%o16build%.cab
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/v32_%o16build%.cab"
	copy %o16build%_%o16lang%_%o16arch%_%downbranch%\Office\Data\v32_%o16build%.cab %o16build%_%o16lang%_%o16arch%_%downbranch%\Office\Data\v32.cab >nul 2>&1
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/stream.x86.%o16lang%.dat
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/stream.x86.%o16lang%.dat"
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/stream.x86.%o16lang%.dat.cobra
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/stream.x86.%o16lang%.dat.cobra"
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/stream.x86.x-none.dat
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/stream.x86.x-none.dat"
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/stream.x86.x-none.dat.cobra
    if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/stream.x86.x-none.dat.cobra"
	goto:GENERALDOWNLOAD
::===============================================================================================================
:X64DOWNLOAD
::	Download x64/64bit Office setup files	
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/v64_%o16build%.cab
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/v64_%o16build%.cab"
	copy %o16build%_%o16lang%_%o16arch%_%downbranch%\Office\Data\v64_%o16build%.cab %o16build%_%o16lang%_%o16arch%_%downbranch%\Office\Data\v64.cab >nul 2>&1
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/stream.x64.%o16lang%.dat
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/stream.x64.%o16lang%.dat"
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/stream.x64.%o16lang%.dat.cobra
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/stream.x64.%o16lang%.dat.cobra"
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/stream.x64.x-none.dat
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/stream.x64.x-none.dat"
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/stream.x64.x-none.dat.cobra
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/stream.x64.x-none.dat.cobra"
::===============================================================================================================	
:: Download setup file(s) used in both x86 and x64 architectures
:GENERALDOWNLOAD
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/i320.cab
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/i320.cab"
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/i32%o16lcid%.cab
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/i32%o16lcid%.cab"
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/s320.cab
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/s320.cab"
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/s32%o16lcid%.cab
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/s32%o16lcid%.cab"
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/i640.cab
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/i640.cab"
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/i64%o16lcid%.cab	
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/i64%o16lcid%.cab"
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/s640.cab
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/s640.cab"
	"%wget%" --progress=bar:force:noscroll --retry-connrefused --continue --tries=20 --force-directories --no-host-directories --cut-dirs=2 --directory-prefix=%o16build%_%o16lang%_%o16arch%_%downbranch% http://%o16downloadloc%/%o16build%/s64%o16lcid%.cab
	if %errorlevel% GEQ 1 call :WgetError "http://%o16downloadloc%/%o16build%/s64%o16lcid%.cab"
	::===============================================================================================================	
	echo __________________________________________________________________
	if "%downbranch%" EQU "Current" echo Current>%o16build%_%o16lang%_%o16arch%_%downbranch%\package.info
	if "%downbranch%" EQU "FirstReleaseForCurrent" echo FirstReleaseCurrent>%o16build%_%o16lang%_%o16arch%_%downbranch%\package.info
	if "%downbranch%" EQU "InsiderFast" echo InsiderFast>%o16build%_%o16lang%_%o16arch%_%downbranch%\package.info
	if "%downbranch%" EQU "Deferred" echo Deferred>%o16build%_%o16lang%_%o16arch%_%downbranch%\package.info
	if "%downbranch%" EQU "FirstReleaseForDeferred" echo FirstReleaseDeferred>>%o16build%_%o16lang%_%o16arch%_%downbranch%\package.info
	if "%downbranch%" EQU "ManualOverride" echo. >%o16build%_%o16lang%_%o16arch%_%downbranch%\package.info
	echo %o16build%>>%o16build%_%o16lang%_%o16arch%_%downbranch%\package.info
	echo %o16lang%>>%o16build%_%o16lang%_%o16arch%_%downbranch%\package.info
	echo %o16arch%>>%o16build%_%o16lang%_%o16arch%_%downbranch%\package.info
	echo %o16updlocid%>>%o16build%_%o16lang%_%o16arch%_%downbranch%\package.info
	echo:
	echo:
    timeout /t 7
    goto:Office16VnextInstall
::===============================================================================================================
:WgetError
	set "errortrigger=0"
	powershell -command "%pswindowtitle%"; Write-Host "*** ERROR downloading: %1" -foreground "Red"
	echo:
	set /p errortrigger=Cancel Download now? (1/0) ^>
	if "%errortrigger%" EQU "1" (
		if exist "%downpath%\%o16build%_%o16lang%_%o16arch%_%downbranch%" rd "%downpath%\%o16build%_%o16lang%_%o16arch%_%downbranch%" /S /Q
		goto:Office16VnextInstall
	)
	echo:
	goto:eof
::===============================================================================================================
:: OFFICE INSTALL
:InstallO16
	set "of16install=0"
	set "of36install=0"
	set "mo16install=0"
	set "wd16disable=0"
	set "ex16disable=0"
	set "pp16disable=0"
	set "ac16disable=0"
	set "ol16disable=0"
	set "pb16disable=0"
	set "on16disable=0"
	set "sk16disable=0"
	set "od16disable=0"
	set "pr16install=0"
	set "vi16install=0"
	set "wd16install=0"
	set "ex16install=0"
	set "pp16install=0"
	set "ac16install=0"
	set "ol16install=0"
	set "pb16install=0"
	set "on16install=0"
	set "sk16install=0"
	set "installtrigger=0"
	set "createpackage=0"
	cls
	echo:
	echo ======= INSTALL OFFICE 2016 FULL SUITE / SINGLE APPS =============
	echo __________________________________________________________________
	echo:
	if "%downpath%" EQU "not set" set /p downpath=Set Office 2016 Download Path ^>
	set "downpath=%downpath:"=%"
	if "%downpath%" EQU "X" (set "downpath=not set")&&(goto:Office16VnextInstall)
	if "%downpath%" EQU "x" (set "downpath=not set")&&(goto:Office16VnextInstall)
	set "downdrive=%downpath:~0,2%"
	cd /d %downdrive% >nul 2>&1
	if errorlevel 1 (echo:)&&(echo Unknown Drive "%downdrive%" - Drive not found)&&(echo Enter correct driveletter:\directory or enter "X" to exit)&&(echo:)&&(pause)&&(set "downpath=not set")&&(set "o16updlocid=not set")&&(set "o16build=not set")&&(goto:InstallO16)
	if "%downpath:~-1%" EQU "\" set "downpath=%downpath:~0,-1%"
::===============================================================================================================
	pushd %o2016rtoolpath%
	set /a countx=0
	echo:
	echo List of available installation packages
	echo:
	echo #   Package
	for /f "tokens=*" %%a in ('dir "%downpath%" /ad /b 2^>nul ^| findstr /i "16.0"') do (
	echo:
	SET /a countx=!countx! + 1
	set packagelist!countx!=%%a
	echo !countx!   %%a
	)
	if %countx% EQU 0 (echo No install packages found in: "%downpath%")&&(echo:)&&(echo Enter correct driveletter:\directory or enter "X" to exit)&&(echo:)&&(pause)&&(set "downpath=not set")&&(set "o16updlocid=not set")&&(set "o16build=not set")&&(goto:InstallO16)
	echo:
	echo:
	set /a packnum=0
	set /p packnum=Enter package number # ^>
	if "%packnum%" EQU "X" goto:Office16VnextInstall
	if "%packnum%" EQU "x" goto:Office16VnextInstall
	if %packnum% EQU 0 goto:InstallO16
	if %packnum% GTR %countx% goto:InstallO16
	echo:
	set "installpath=%downpath%\!packagelist%packnum%!"
	if "%installpath:~-1%" EQU "\" set "installpath=%installpath:~0,-1%"
	set countx=0
	cd /d "%installpath%"
	for /f "tokens=*" %%a in (package.info) do (
    SET /a countx=!countx! + 1
    set var!countx!=%%a
	)
	if %countx% LSS 5 (echo:)&&(echo Download incomplete - Package unusable - Redo download)&&(echo:)&&(pause)&&(goto:Office16VnextInstall)
	set "o16channel=%var1%"
	set "o16build=%var2%"
	set "o16lang=%var3%"
	set "o16arch=%var4%"
	set "o16updlocid=%var5%"
	if "%winx%" EQU "win_x32" if "%o16arch%" EQU "x64" ((echo:)&&(echo ERROR: You can't install x64/64bit Office on x86/32bit Windows)&&(echo:)&&(pause)&&(goto:InstallO16))
::===============================================================================================================
	cd /d "%o2016rtoolpath%"
	cls
	echo:
	echo ======= INSTALL OFFICE 2016 FULL SUITE / SINGLE APPS =============
	echo __________________________________________________________________
	echo:
	echo Using Office 2016 Setup Package found in:
	echo %installpath%
	echo:
	set /p of16install=Set Office 2016 ProfessionalPlus Install (1/0) ^>
	if "%of16install%" EQU "X" goto:Office16VnextInstall
	if "%of16install%" EQU "x" goto:Office16VnextInstall
	if "%of16install%" EQU "1" (goto:InstallExclusions)
	set /p of36install=Set Office 365 ProfessionalPlus Install (1/0) ^>
	if "%of36install%" EQU "X" goto:Office16VnextInstall
	if "%of36install%" EQU "x" goto:Office16VnextInstall
	if "%of36install%" EQU "1" (goto:InstallExclusions)
	set /p mo16install=Set Office 2016 Mondo Install (1/0) ^>
	if "%mo16install%" EQU "X" goto:Office16VnextInstall
	if "%mo16install%" EQU "x" goto:Office16VnextInstall
	if "%mo16install%" EQU "1" (goto:InstallExclusions)
::===============================================================================================================
	echo:
	set /p wd16install=Set Word Single App Install (1/0) ^>
	if "%wd16install%" EQU "X" goto:Office16VnextInstall
	if "%wd16install%" EQU "x" goto:Office16VnextInstall
	set /p ex16install=Set Excel Single App Install (1/0) ^>
	if "%ex16install%" EQU "X" goto:Office16VnextInstall
	if "%ex16install%" EQU "x" goto:Office16VnextInstall
	set /p pp16install=Set Powerpoint Single App Install (1/0) ^>
	if "%pp16install%" EQU "X" goto:Office16VnextInstall
	if "%pp16install%" EQU "x" goto:Office16VnextInstall
	set /p ac16install=Set Access Single App Install (1/0) ^>
	if "%ac16install%" EQU "X" goto:Office16VnextInstall
	if "%ac16install%" EQU "x" goto:Office16VnextInstall
	set /p ol16install=Set Outlook Single App Install (1/0) ^>
	if "%ol16install%" EQU "X" goto:Office16VnextInstall
	if "%ol16install%" EQU "x" goto:Office16VnextInstall
	set /p pb16install=Set Publisher Single App Install (1/0) ^>
	if "%pb16install%" EQU "X" goto:Office16VnextInstall
	if "%pb16install%" EQU "x" goto:Office16VnextInstall
	set /p on16install=Set OneNote Single App Install (1/0) ^>
	if "%on16install%" EQU "X" goto:Office16VnextInstall
	if "%on16install%" EQU "x" goto:Office16VnextInstall
	set /p sk16install=Set Skype For Business Single App Install (1/0) ^>
	if "%sk16install%" EQU "X" goto:Office16VnextInstall
	if "%sk16install%" EQU "x" goto:Office16VnextInstall
	goto:InstallProVis
::===============================================================================================================
:InstallExclusions
	if "%mo16install%" EQU "1" ((set "of16install=0")&&(set "of36install=0"))
	if "%of16install%" EQU "1" ((set "mo16install=0")&&(set "of36install=0"))
	if "%of36install%" EQU "1" ((set "mo16install=0")&&(set "of16install=0"))
	echo:
	echo Full Suite Install Exclusion List - Disable not needed Office Programs
	set /p wd16disable=Disable Word Install  (1/0) ^>
	if "%wd16disable%" EQU "X" goto:Office16VnextInstall
	if "%wd16disable%" EQU "x" goto:Office16VnextInstall
	set /p ex16disable=Disable Excel Install (1/0) ^>
	if "%ex16disable%" EQU "X" goto:Office16VnextInstall
	if "%ex16disable%" EQU "x" goto:Office16VnextInstall
	set /p pp16disable=Disable Powerpoint Install (1/0) ^>
	if "%pp16disable%" EQU "X" goto:Office16VnextInstall
	if "%pp16disable%" EQU "x" goto:Office16VnextInstall
	set /p ac16disable=Disable Access Install (1/0) ^>
	if "%ac16disable%" EQU "X" goto:Office16VnextInstall
	if "%ac16disable%" EQU "x" goto:Office16VnextInstall
	set /p ol16disable=Disable Outlook Install (1/0) ^>
	if "%ol16disable%" EQU "X" goto:Office16VnextInstall
	if "%ol16disable%" EQU "x" goto:Office16VnextInstall
	set /p pb16disable=Disable Publisher Install (1/0) ^>
	if "%pb16disable%" EQU "X" goto:Office16VnextInstall
	if "%pb16disable%" EQU "x" goto:Office16VnextInstall
	set /p on16disable=Disable OneNote Install (1/0) ^>
	if "%on16disable%" EQU "X" goto:Office16VnextInstall
	if "%on16disable%" EQU "x" goto:Office16VnextInstall
	set /p sk16disable=Disable Skype For Business Install (1/0) ^>
	if "%sk16disable%" EQU "X" goto:Office16VnextInstall
	if "%sk16disable%" EQU "x" goto:Office16VnextInstall
	set /p od16disable=Disable OneDrive For Business Install (1/0) ^>
	if "%od16disable%" EQU "X" goto:Office16VnextInstall
	if "%od16disable%" EQU "x" goto:Office16VnextInstall
::===============================================================================================================
:InstallProVis
	echo:
	set /p pr16install=Set Project Install (1/0) ^>
	set /p vi16install=Set Visio Install (1/0) ^>
::===============================================================================================================
:skipinstallprovis
	echo __________________________________________________________________
	echo:
::===============================================================================================================
	if "%o16updlocid%" EQU "492350f6-3a01-4f97-b9c0-c7c6ddf67d60" ((echo == Current Channel %o16build% -Setup SUMMARY- ==)&&(goto:PendSetupContinue))
	if "%o16updlocid%" EQU "64256afe-f5d9-4f86-8936-8840a6a4f5be" ((echo == First Release for Current Channel %o16build% -Setup SUMMARY- ==)&&(goto:PendSetupContinue))
	if "%o16updlocid%" EQU "5440fd1f-7ecb-4221-8110-145efaa6372f" ((echo == Insider Fast Channel %o16build% -Setup SUMMARY- ==)&&(goto:PendSetupContinue))
	if "%o16updlocid%" EQU "7ffbc6bf-bc32-4f92-8982-f9dd17fd3114" ((echo == Deferred Channel %o16build% -Setup SUMMARY- ==)&&(goto:PendSetupContinue))
	if "%o16updlocid%" EQU "b8f9b850-328d-4355-9145-c59439a0c4cf" ((echo == First Release for Deferred Channel %o16build% -Setup SUMMARY- ==)&&(goto:PendSetupContinue))
	echo ==  Unknown %o16updlocid% Channel %o16build% -Setup SUMMARY- ===
::===============================================================================================================
:PendSetupContinue
	echo:
	echo The following programs are selected for install:
	echo:
	if "%wd16install%" EQU "1" goto:PendSetupSingleApp
	if "%ex16install%" EQU "1" goto:PendSetupSingleApp
	if "%pp16install%" EQU "1" goto:PendSetupSingleApp
	if "%ac16install%" EQU "1" goto:PendSetupSingleApp
	if "%ol16install%" EQU "1" goto:PendSetupSingleApp
	if "%pb16install%" EQU "1" goto:PendSetupSingleApp
	if "%on16install%" EQU "1" goto:PendSetupSingleApp
	if "%sk16install%" EQU "1" goto:PendSetupSingleApp
::===============================================================================================================
	if "%of16install%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "Office 2016 ProfessionalPlus" -foreground "Green")&&(goto:PendSetupFullSuite)
	if "%of36install%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "Office 365 ProfessionalPlus" -foreground "Green")&&(goto:PendSetupFullSuite)
	if "%mo16install%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "Mondo 2016 Grande Suite" -foreground "Green")&&(goto:PendSetupFullSuite)
	goto:PendSetupProjectVisio
:PendSetupFullSuite
	if "%wd16disable%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "--> Disabled: Word" -foreground "Red")
	if "%wd16disable%" EQU "0" (echo --^> Enabled:  Word)
	if "%ex16disable%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "--> Disabled: Excel" -foreground "Red")
	if "%ex16disable%" EQU "0" (echo --^> Enabled:  Excel)
	if "%pp16disable%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "--> Disabled: Powerpoint" -foreground "Red")
	if "%pp16disable%" EQU "0" (echo --^> Enabled:  PowerPoint)
	if "%ac16disable%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "--> Disabled: Access" -foreground "Red")
	if "%ac16disable%" EQU "0" (echo --^> Enabled:  Access)
	if "%ol16disable%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "--> Disabled: Outlook" -foreground "Red")
	if "%ol16disable%" EQU "0" (echo --^> Enabled:  Outlook)
	if "%pb16disable%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "--> Disabled: Publisher" -foreground "Red")
	if "%pb16disable%" EQU "0" (echo --^> Enabled:  Publisher)
	if "%on16disable%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "--> Disabled: OneNote" -foreground "Red")
	if "%on16disable%" EQU "0" (echo --^> Enabled:  OneNote)
	if "%sk16disable%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "--> Disabled: Skype For Business" -foreground "Red")
	if "%sk16disable%" EQU "0" (echo --^> Enabled:  Skype For Business)
	if "%od16disable%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "--> Disabled: OneDrive For Business" -foreground "Red")
	if "%od16disable%" EQU "0" (echo --^> Enabled:  OneDrive For Business)
	goto:PendSetupProjectVisio
::===============================================================================================================
:PendSetupSingleApp	
	if "%wd16install%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "Word 2016 Single App" -foreground "Green")
	if "%ex16install%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "Excel 2016 Single App" -foreground "Green")
	if "%pp16install%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "PowerPoint 2016 Single App" -foreground "Green")
	if "%ac16install%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "Access 2016 Single App" -foreground "Green")
	if "%ol16install%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "Outlook 2016 Single App" -foreground "Green")
	if "%pb16install%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "Publisher 2016 Single App" -foreground "Green")
	if "%on16install%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "OneNote 2016 Single App" -foreground "Green")
	if "%sk16install%" EQU "1" (powershell -command "%pswindowtitle%"; Write-Host "Skype For Business 2016 Single App" -foreground "Green")
::===============================================================================================================
:PendSetupProjectVisio
	if "%pr16install%" EQU "1" (echo:)&&(powershell -command "%pswindowtitle%"; Write-Host "Project 2016 Professional" -foreground "Green")
	if "%vi16install%" EQU "1" (echo:)&&(powershell -command "%pswindowtitle%"; Write-Host "Visio 2016 Professional" -foreground "Green")
::===============================================================================================================
	echo:
	echo Language:     %o16lang%   (fixed - matches Office download package)
	echo Architecture: %o16arch%     (fixed - matches Office download package)
	echo __________________________________________________________________
	echo:
	set /p installtrigger=Start local install now (1/0) or Create Install Package (C) ? ^>
	if "%installtrigger%" EQU "0" goto:InstallO16
	if "%installtrigger%" EQU "X" goto:Office16VnextInstall
	if "%installtrigger%" EQU "x" goto:Office16VnextInstall
	if "%installtrigger%" EQU "C" set "createpackage=1"
	if "%installtrigger%" EQU "c" set "createpackage=1"
	if "%installtrigger%" EQU "1" goto:OfficeInstallXML
	if "%createpackage%" EQU "1" goto:OfficeInstallXML
	goto:InstallO16
::===============================================================================================================
:: OFFICE INSTALL XML
:================================================================================================================
::===============================================================================================================
:seto16language
    echo Possible Language VALUES:
    echo ar-SA, cs-CZ, da-DK, de-DE, el-GR, en-US, es-ES, et-EE, fi-FI, fr-FR, he-IL,
    echo hi-IN, hu-HU, it-IT, ja-JP, ko-KR, lt-LT, lv-LV, nb-NO, nl-NL, pl-PL, pt-BR,
    echo pt-PT, ro-RO, ru-RU, sv-SE, th-TH, tr-TR, uk-UA, vi-VN, zh-CN, zh-TW
    echo.
    set "o16lcid="
    set /p o16lang=Set Language ^>
    if "%o16lang%"=="ar-SA" set "o16lcid=1025"
    if "%o16lang%"=="zh-CN" set "o16lcid=2052"
    if "%o16lang%"=="zh-TW" set "o16lcid=1028"
    if "%o16lang%"=="cs-CZ" set "o16lcid=1029"
    if "%o16lang%"=="da-DK" set "o16lcid=1030"
    if "%o16lang%"=="nl-NL" set "o16lcid=1043"
    if "%o16lang%"=="en-US" set "o16lcid=1033"
    if "%o16lang%"=="et-EE" set "o16lcid=1061"
    if "%o16lang%"=="fi-FI" set "o16lcid=1035"
    if "%o16lang%"=="fr-FR" set "o16lcid=1036"
    if "%o16lang%"=="de-DE" set "o16lcid=1031"
    if "%o16lang%"=="el-GR" set "o16lcid=1032"
    if "%o16lang%"=="he-IL" set "o16lcid=1037"
    if "%o16lang%"=="hi-IN" set "o16lcid=1081"
    if "%o16lang%"=="hu-HU" set "o16lcid=1038"
    if "%o16lang%"=="it-IT" set "o16lcid=1040"
    if "%o16lang%"=="ja-JP" set "o16lcid=1041"
    if "%o16lang%"=="ko-KR" set "o16lcid=1042"
    if "%o16lang%"=="lv-LV" set "o16lcid=1062"
    if "%o16lang%"=="lt-LT" set "o16lcid=1063"
    if "%o16lang%"=="nb-NO" set "o16lcid=1044"
    if "%o16lang%"=="pl-PL" set "o16lcid=1045"
    if "%o16lang%"=="pt-BR" set "o16lcid=1046"
    if "%o16lang%"=="pt-PT" set "o16lcid=2070"
    if "%o16lang%"=="ro-RO" set "o16lcid=1048"
    if "%o16lang%"=="ru-RU" set "o16lcid=1049"
    if "%o16lang%"=="es-ES" set "o16lcid=1034"
    if "%o16lang%"=="sv-SE" set "o16lcid=1053"
    if "%o16lang%"=="th-TH" set "o16lcid=1054"
    if "%o16lang%"=="tr-TR" set "o16lcid=1055"
    if "%o16lang%"=="uk-UA" set "o16lcid=1058"
    if "%o16lang%"=="vi-VN" set "o16lcid=1066"
    if "%o16lcid%"=="" (set "o16lang=en-US")&&(set "o16lcid=1033")
    goto:eof
:OfficeInstallXML
	cls
    echo:
	echo ======= INSTALL OFFICE 2016 FULL SUITE / SINGLE APPS =============
	echo __________________________________________________________________
    echo:
    if "%o16arch%" EQU "x64" (set "o16a=64") else (set "o16a=32")
	echo Creating setup files "setup.exe", "configure%o16a%.xml" and "start_setup.cmd"
	echo:
    echo in Installpath "%installpath%"
    echo:
	set "oxml=%installpath%\configure%o16a%.xml"
	set "obat=%installpath%\start_setup.cmd"
	if exist "%installpath%\configure*.xml" del /s /q "%installpath%\configure*.xml" >nul 2>&1
	copy "%o2016rtoolpath%\OfficeFixes\setup.exe" "%installpath%" /Y >nul 2>&1
	copy "%o2016rtoolpath%\OfficeFixes\start_setup.cmd" "%installpath%" /Y >nul 2>&1
::===============================================================================================================
    echo ^<Configuration^> >"%oxml%"
    echo     ^<Add OfficeClientEdition="%o16a%" Version="%o16build%" Channel="%o16channel%"^> >>"%oxml%"
    if "%mo16install%" EQU "1" (
        echo         ^<Product ID="MondoRetail"^> >>"%oxml%"
        echo             ^<Language ID="%o16lang%"/^> >>"%oxml%"
		if "%wd16disable%" EQU "1" echo             ^<ExcludeApp ID="Word"/^> >>"%oxml%"
		if "%ex16disable%" EQU "1" echo             ^<ExcludeApp ID="Excel"/^> >>"%oxml%"
		if "%pp16disable%" EQU "1" echo             ^<ExcludeApp ID="PowerPoint"/^> >>"%oxml%"
		if "%ac16disable%" EQU "1" echo             ^<ExcludeApp ID="Access"/^> >>"%oxml%"
		if "%ol16disable%" EQU "1" echo             ^<ExcludeApp ID="Outlook"/^> >>"%oxml%"
		if "%pb16disable%" EQU "1" echo             ^<ExcludeApp ID="Publisher"/^> >>"%oxml%"
		if "%on16disable%" EQU "1" echo             ^<ExcludeApp ID="OneNote"/^> >>"%oxml%"
		if "%sk16disable%" EQU "1" echo             ^<ExcludeApp ID="Lync"/^> >>"%oxml%"
		if "%od16disable%" EQU "1" echo             ^<ExcludeApp ID="Groove"/^> >>"%oxml%"
        echo         ^</Product^> >>"%oxml%"
	)
    if "%of16install%" EQU "1" (
        echo         ^<Product ID="ProPlusRetail"^> >>"%oxml%"
		echo             ^<Language ID="%o16lang%"/^> >>"%oxml%"
		if "%wd16disable%" EQU "1" echo             ^<ExcludeApp ID="Word"/^> >>"%oxml%"
		if "%ex16disable%" EQU "1" echo             ^<ExcludeApp ID="Excel"/^> >>"%oxml%"
		if "%pp16disable%" EQU "1" echo             ^<ExcludeApp ID="PowerPoint"/^> >>"%oxml%"
		if "%ac16disable%" EQU "1" echo             ^<ExcludeApp ID="Access"/^> >>"%oxml%"
		if "%ol16disable%" EQU "1" echo             ^<ExcludeApp ID="Outlook"/^> >>"%oxml%"
		if "%pb16disable%" EQU "1" echo             ^<ExcludeApp ID="Publisher"/^> >>"%oxml%"
		if "%on16disable%" EQU "1" echo             ^<ExcludeApp ID="OneNote"/^> >>"%oxml%"
		if "%sk16disable%" EQU "1" echo             ^<ExcludeApp ID="Lync"/^> >>"%oxml%"
		if "%od16disable%" EQU "1" echo             ^<ExcludeApp ID="Groove"/^> >>"%oxml%"
        echo         ^</Product^> >>"%oxml%"
	)
    if "%of36install%" EQU "1" (
        echo         ^<Product ID="O365ProPlusRetail"^> >>"%oxml%"
        echo             ^<Language ID="%o16lang%"/^> >>"%oxml%"
		if "%wd16disable%" EQU "1" echo             ^<ExcludeApp ID="Word"/^> >>"%oxml%"
		if "%ex16disable%" EQU "1" echo             ^<ExcludeApp ID="Excel"/^> >>"%oxml%"
		if "%pp16disable%" EQU "1" echo             ^<ExcludeApp ID="PowerPoint"/^> >>"%oxml%"
		if "%ac16disable%" EQU "1" echo             ^<ExcludeApp ID="Access"/^> >>"%oxml%"
		if "%ol16disable%" EQU "1" echo             ^<ExcludeApp ID="Outlook"/^> >>"%oxml%"
		if "%pb16disable%" EQU "1" echo             ^<ExcludeApp ID="Publisher"/^> >>"%oxml%"
		if "%on16disable%" EQU "1" echo             ^<ExcludeApp ID="OneNote"/^> >>"%oxml%"
		if "%sk16disable%" EQU "1" echo             ^<ExcludeApp ID="Lync"/^> >>"%oxml%"
		if "%od16disable%" EQU "1" echo             ^<ExcludeApp ID="Groove"/^> >>"%oxml%"
        echo         ^</Product^> >>"%oxml%"
	)
    if "%pr16install%" EQU "1" (
        echo         ^<Product ID="ProjectProRetail"^> >>"%oxml%"
        echo             ^<Language ID="%o16lang%"/^> >>"%oxml%"
        echo         ^</Product^> >>"%oxml%"
	)
    if "%vi16install%" EQU "1" (
        echo         ^<Product ID="VisioProRetail"^> >>"%oxml%"
        echo             ^<Language ID="%o16lang%"/^> >>"%oxml%"
        echo         ^</Product^> >>"%oxml%"
	)
    if "%wd16install%" EQU "1" (
        echo         ^<Product ID="WordRetail"^> >>"%oxml%"
        echo             ^<Language ID="%o16lang%"/^> >>"%oxml%"
        echo         ^</Product^> >>"%oxml%"
	)
    if "%ex16install%" EQU "1" (
        echo         ^<Product ID="ExcelRetail"^> >>"%oxml%"
        echo             ^<Language ID="%o16lang%"/^> >>"%oxml%"
        echo         ^</Product^> >>"%oxml%"
	)
    if "%pp16install%" EQU "1" (
        echo         ^<Product ID="PowerPointRetail"^> >>"%oxml%"
        echo             ^<Language ID="%o16lang%"/^> >>"%oxml%"
        echo         ^</Product^> >>"%oxml%"
	)
    if "%ac16install%" EQU "1" (
        echo         ^<Product ID="AccessRetail"^> >>"%oxml%"
        echo             ^<Language ID="%o16lang%"/^> >>"%oxml%"
        echo         ^</Product^> >>"%oxml%"
	)
    if "%ol16install%" EQU "1" (
        echo         ^<Product ID="OutlookRetail"^> >>"%oxml%"
        echo             ^<Language ID="%o16lang%"/^> >>"%oxml%"
        echo         ^</Product^> >>"%oxml%"
	)
    if "%pb16install%" EQU "1" (
        echo         ^<Product ID="PublisherRetail"^> >>"%oxml%"
        echo             ^<Language ID="%o16lang%"/^> >>"%oxml%"
        echo         ^</Product^> >>"%oxml%"
	)
    if "%on16install%" EQU "1" (
        echo         ^<Product ID="OneNoteRetail"^> >>"%oxml%"
        echo             ^<Language ID="%o16lang%"/^> >>"%oxml%"
        echo         ^</Product^> >>"%oxml%"
	)
    if "%sk16install%" EQU "1" (
        echo         ^<Product ID="SkypeForBusinessRetail"^> >>"%oxml%"
        echo             ^<Language ID="%o16lang%"/^> >>"%oxml%"
        echo         ^</Product^> >>"%oxml%"
	)
    echo     ^</Add^> >>"%oxml%"
	echo     ^<Property Name="FORCEAPPSHUTDOWN" Value="TRUE" /^> >>"%oxml%"
	echo     ^<Property Name="PinIconsToTaskBar" Value="FALSE" /^> >>"%oxml%"
    echo     ^<Display Level="Full" AcceptEULA="TRUE" /^> >>"%oxml%"
	echo     ^<Updates Enabled="TRUE" UpdatePath="http://officecdn.microsoft.com/pr/%o16updlocid%" Channel="%o16channel%" /^> >>"%oxml%"
	echo ^</Configuration^> >>"%oxml%"
::===============================================================================================================
	echo :: Set Group Policy Office Branch value in registry to "%o16channel%" >>"%obat%"
	if "%o16channel%" NEQ "" echo reg add HKLM\SOFTWARE\Policies\Microsoft\Office\16.0\Common\OfficeUpdate /v UpdateBranch /d %o16channel% /f ^>nul 2^>^&1 >>"%obat%"
	if "%o16channel%" EQU "" echo reg delete HKLM\SOFTWARE\Policies\Microsoft\Office\16.0\Common\OfficeUpdate /v UpdateBranch /f ^>nul 2^>^&1 >>"%obat%"
	echo :: >>"%obat%"
	echo start "" /MIN setup.exe /configure configure%o16a%.xml >>"%obat%"
	echo exit >>"%obat%"
    if "%createpackage%" EQU "1" goto:InstDone
::===============================================================================================================
	if "%o16channel%" NEQ "" reg add HKLM\SOFTWARE\Policies\Microsoft\Office\16.0\Common\OfficeUpdate /v UpdateBranch /d %o16channel% /f >nul 2>&1
	if "%o16channel%" EQU "" reg delete HKLM\SOFTWARE\Policies\Microsoft\Office\16.0\Common\OfficeUpdate /v UpdateBranch /f >nul 2>&1
	start "" /MIN "%installpath%\setup.exe" /configure "%oxml%"
::===============================================================================================================
:InstDone
	echo:
    echo __________________________________________________________________
    echo:
	echo:
	timeout /t 7
    goto:Office16VnextInstall
::===============================================================================================================
:ChangeUpdPath
::===============================================================================================================
	call :CheckOfficeApplications
::===============================================================================================================
	set "CDNBaseUrl=not set"
	set "UpdateUrl=not set"
	set "UpdateBranch=not set"
	set "installtrigger=O"
	set "channeltrigger=O"
	cls
	echo:
	echo ======= CHANGE INSTALLED OFFICE UPDATE-PATH ======================
    echo:__________________________________________________________________
	echo:
	if "%_ProPlusRetail%" EQU "YES" (echo Office 2016 ProfessionalPlus)
	if "%_O365ProPlusRetail%" EQU "YES" (echo Office 365 ProfessionalPlus)
	if "%_MondoRetail%" EQU "YES" (echo Office Mondo Grande Suite)
	if "%_VisioProRetail%" EQU "YES" (echo Visio 2016 Professional)
	if "%_ProjectProRetail%" EQU "YES" (echo Project 2016 Professional)
	if "%_WordRetail%" EQU "YES" (echo Word 2016 SingleApp)
	if "%_ExcelRetail%" EQU "YES" (echo Excel 2016 SingleApp)
	if "%_PowerPointRetail%" EQU "YES" (echo PowerPoint 2016 SingleApp)
	if "%_AccessRetail%" EQU "YES" (echo Access 2016 SingleApp)
	if "%_OutlookRetail%" EQU "YES" (echo Outlook 2016 SingleApp)
	if "%_PublisherRetail%" EQU "YES" (echo Publisher 2016 Single App)
	if "%_OneNoteRetail%" EQU "YES" (echo OneNote 2016 SingleApp)
	if "%_SkypeForBusinessRetail%" EQU "YES" (echo Skype For Business 2016 SingleApp)
	echo:__________________________________________________________________
	echo:
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "CDNBaseUrl" 2^>nul') DO (Set "CDNBaseUrl=%%B")
	call:DistributionChannel %CDNBaseUrl%
	echo %DistributionChannel% - CDNBaseUrl:
	echo "%CDNBaseUrl%"
	echo:
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "UpdateUrl" 2^>nul') DO (Set "UpdateUrl=%%B")
	call:DistributionChannel %UpdateUrl%
	echo %DistributionChannel% - Update-Path:
	echo "%UpdateUrl%"
	echo:
	echo Group-Policy defined UpdateBranch:
	for /F "tokens=2,*" %%A IN ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Office\16.0\Common\OfficeUpdate" /v "UpdateBranch" 2^>nul') DO (Set "UpdateBranch=%%B")
	echo "%UpdateBranch%"
	echo __________________________________________________________________
	echo:
	echo Possible Office 2016 Update-Channel ID VALUES:
	echo C = Current Channel (Retail/RTM)
	echo F = Insider Fast Channel (Office Insider Fast Ring)
	echo S = First Release for Current Channel (Office Insider Slow Ring)
	echo D = Deferred Channel (Business)
	echo B = First Release for Deferred Channel (Business Insider)
	echo X = exit to Main Menu
	echo:
	set /p channeltrigger=Set New Update-Channel-ID (C F S D B) or X ^>
	if "%channeltrigger%" EQU "C" (set "UpdateUrl=http://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60")&&(set "UpdateBranch=Current")&&(goto:UpdateChannelSel)
	if "%channeltrigger%" EQU "c" (set "UpdateUrl=http://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60")&&(set "UpdateBranch=Current")&&(goto:UpdateChannelSel)
	if "%channeltrigger%" EQU "F" (set "UpdateUrl=http://officecdn.microsoft.com/pr/5440fd1f-7ecb-4221-8110-145efaa6372f")&&(set "UpdateBranch=InsiderFast")&&(goto:UpdateChannelSel)
	if "%channeltrigger%" EQU "f" (set "UpdateUrl=http://officecdn.microsoft.com/pr/5440fd1f-7ecb-4221-8110-145efaa6372f")&&(set "UpdateBranch=InsiderFast")&&(goto:UpdateChannelSel)
	if "%channeltrigger%" EQU "S" (set "UpdateUrl=http://officecdn.microsoft.com/pr/64256afe-f5d9-4f86-8936-8840a6a4f5be")&&(set "UpdateBranch=FirstReleaseCurrent")&&(goto:UpdateChannelSel)
	if "%channeltrigger%" EQU "s" (set "UpdateUrl=http://officecdn.microsoft.com/pr/64256afe-f5d9-4f86-8936-8840a6a4f5be")&&(set "UpdateBranch=FirstReleaseCurrent")&&(goto:UpdateChannelSel)
	if "%channeltrigger%" EQU "D" (set "UpdateUrl=http://officecdn.microsoft.com/pr/7ffbc6bf-bc32-4f92-8982-f9dd17fd3114")&&(set "UpdateBranch=Deferred")&&(goto:UpdateChannelSel)
	if "%channeltrigger%" EQU "d" (set "UpdateUrl=http://officecdn.microsoft.com/pr/7ffbc6bf-bc32-4f92-8982-f9dd17fd3114")&&(set "UpdateBranch=Deferred")&&(goto:UpdateChannelSel)
	if "%channeltrigger%" EQU "B" (set "UpdateUrl=http://officecdn.microsoft.com/pr/b8f9b850-328d-4355-9145-c59439a0c4cf")&&(set "UpdateBranch=FirstReleaseDeferred")&&(goto:UpdateChannelSel)
	if "%channeltrigger%" EQU "b" (set "UpdateUrl=http://officecdn.microsoft.com/pr/b8f9b850-328d-4355-9145-c59439a0c4cf")&&(set "UpdateBranch=FirstReleaseDeferred")&&(goto:UpdateChannelSel)
	if "%channeltrigger%" EQU "X" (goto:Office16VnextInstall)
	if "%channeltrigger%" EQU "x" (goto:Office16VnextInstall)
	goto:ChangeUpdPath
	echo __________________________________________________________________
:UpdateChannelSel
	echo __________________________________________________________________
	echo:
	echo New Update-Configuration will be set to:
	echo:
	echo UpdateUrl=%UpdateUrl%
	echo:
	echo UpdateBranch=%UpdateBranch%
	echo:
	echo:
	set /p installtrigger=Change Update-Configuration and start download of new Office version (1/0)? ^>
    if "%installtrigger%" EQU "0" goto:ChangeUpdPath
    if "%installtrigger%" EQU "1" goto:ChangeUpdateConf
	if "%installtrigger%" EQU "x" goto:Office16VnextInstall
	if "%installtrigger%" EQU "X" goto:Office16VnextInstall
    goto:ChangeUpdPath
:ChangeUpdateConf
	reg add HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration /v CDNBaseUrl /d %UpdateUrl% /f >nul 2>&1
	reg add HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration /v UpdateUrl /d %UpdateUrl% /f >nul 2>&1
	reg add HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration /v UpdateChannelChanged /d True /f >nul 2>&1
	reg add HKLM\SOFTWARE\Policies\Microsoft\Office\16.0\Common\OfficeUpdate /v UpdateBranch /d %UpdateBranch% /f >nul 2>&1
	reg delete HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration /v UpdateToVersion /f >nul 2>&1
	reg delete HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Updates /v UpdateToVersion /f >nul 2>&1
	"%CommonProgramFiles%\microsoft shared\ClickToRun\OfficeC2RClient.exe" /update user updatepromptuser=True displaylevel=True >nul 2>&1
	goto:Office16VnextInstall
::===============================================================================================================
:DistributionChannel
::===============================================================================================================
	set "DistributionChannel=%1"
	set "DistributionChannel=%DistributionChannel:~-36%"
	if "%DistributionChannel%" EQU "492350f6-3a01-4f97-b9c0-c7c6ddf67d60" set "DistributionChannel=Current Channel (Retail/RTM)"
	if "%DistributionChannel%" EQU "5440fd1f-7ecb-4221-8110-145efaa6372f" set "DistributionChannel=Insider Fast Channel (Office Insider Fast Ring)"
	if "%DistributionChannel%" EQU "64256afe-f5d9-4f86-8936-8840a6a4f5be" set "DistributionChannel=First Release for Current Channel (Office Insider Slow Ring)"
	if "%DistributionChannel%" EQU "7ffbc6bf-bc32-4f92-8982-f9dd17fd3114" set "DistributionChannel=Deferred Channel (Business)"
	if "%DistributionChannel%" EQU "b8f9b850-328d-4355-9145-c59439a0c4cf" set "DistributionChannel=First Release for Deferred Channel (Business Insider)"
	goto:eof
::===============================================================================================================
:CheckOfficeApplications
	set "_ProPlusRetail=NO"
	set "_O365ProPlusRetail=NO"
	set "_MondoRetail=NO"
	set "_StandardRetail=NO"
	set "_ProjectProRetail=NO"
	set "_VisioProRetail=NO"
	set "_WordRetail=NO"
	set "_ExcelRetail=NO"
	set "_PowerPointRetail=NO"
	set "_AccessRetail=NO"
	set "_OutlookRetail=NO"
	set "_PublisherRetail=NO"
	set "_OneNoteRetail=NO"
	set "_SkypeForBusinessRetail=NO"
	set "ProPlusVLFound=NO"
	set "StandardVLFound=NO"
	set "ProjectProVLFound=NO"
	set "VisioProVLFound=NO"
	set "installpath16=not set"
	set "officepath3=not set"
	set "o16arch=not set"
	reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "InstallationPath" >nul 2>&1
	if %errorlevel% EQU 0 goto:CheckOffice16C2R
	reg query "HKLM\SOFTWARE\WOW6432Node\Microsoft\Office\16.0\Common\InstallRoot" /v "Path" >nul 2>&1
	if %errorlevel% EQU 0 goto:CheckOfficeVL32onW64
	reg query "HKLM\SOFTWARE\Microsoft\Office\16.0\Common\InstallRoot" /v "Path" >nul 2>&1
	if %errorlevel% EQU 0 goto:CheckOfficeVL32W32orVL64W64
	goto:Office16VnextInstall
::===============================================================================================================
:CheckOffice16C2R
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "Platform" 2^>nul') DO (set "o16arch=%%B")
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "InstallationPath" 2^>nul') DO (Set "installpath16=%%B")
	set "officepath3=%installpath16%\Office16"
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "ProductReleaseIds" 2^>nul') DO (Set "Office16AppsInstalled=%%B")
	for /F "tokens=1,2,3,4,5,6,7,8,9,10,11,12,13 delims=," %%A IN ("%Office16AppsInstalled%") DO (
	set "_%%A=YES"
	set "_%%B=YES"
	set "_%%C=YES"
	set "_%%D=YES"
	set "_%%E=YES"
	set "_%%F=YES"
	set "_%%G=YES"
	set "_%%H=YES"
	set "_%%I=YES"
	set "_%%J=YES"
	set "_%%K=YES"
	set "_%%L=YES"
	set "_%%M=YES"
	)
	goto:eof
::===============================================================================================================
:CheckOfficeVL32onW64
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\Software\Wow6432Node\Microsoft\Office\16.0\Common\InstalledPackages\90160000-0011-0000-0000-0000000FF1CE" /ve 2^>nul') DO (Set "ProPlusVLFound=%%B") >nul 2>&1
	if "%ProPlusVLFound%" EQU "Microsoft Office Professional Plus 2016" set "_ProPlusRetail=YES"
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\Software\Wow6432Node\Microsoft\Office\16.0\Common\InstalledPackages\90160000-0012-0000-0000-0000000FF1CE" /ve 2^>nul') DO (Set "StandardVLFound=%%B") >nul 2>&1
	if "%StandardVLFound%" EQU "Microsoft Office Standard 2016" set "_StandardRetail=YES"
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\Software\Wow6432Node\Microsoft\Office\16.0\Common\InstalledPackages\90160000-003B-0000-0000-0000000FF1CE" /ve 2^>nul') DO (Set "ProjectProVLFound=%%B") >nul 2>&1
	if "%ProjectProVLFound%" EQU "Microsoft Project Professional 2016" set "_ProjectProRetail=YES"
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\Software\Wow6432Node\Microsoft\Office\16.0\Common\InstalledPackages\90160000-0051-0000-0000-0000000FF1CE" /ve 2^>nul') DO (Set "VisioProVLFound=%%B") >nul 2>&1
	if "%VisioProVLFound%" EQU "Microsoft Visio Professional 2016" set "_VisioProRetail=YES"
	if "%_ProPlusRetail%" EQU "YES" goto:OfficeVL32onW64Path
	if "%_StandardRetail%" EQU "YES" goto:OfficeVL32onW64Path
	if "%_ProjectProRetail%" EQU "YES" goto:OfficeVL32onW64Path
	if "%_VisioProRetail%" EQU "YES" goto:OfficeVL32onW64Path
	goto:Office16VnextInstall
:OfficeVL32onW64Path
	set "o16arch=x86"
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\Software\Wow6432Node\Microsoft\Office\16.0\Common\InstallRoot" /v "Path" 2^>nul') DO (Set "installpath16=%%B") >nul 2>&1
	set "officepath3=%installpath16%"
	goto:eof
:CheckOfficeVL32W32orVL64W64
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\16.0\Common\InstalledPackages\90160000-0011-0000-0000-0000000FF1CE" /ve 2^>nul') DO (Set "ProPlusVLFound=%%B") >nul 2>&1
	if "%ProPlusVLFound%" EQU "Microsoft Office Professional Plus 2016" set "_ProPlusRetail=YES"
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\16.0\Common\InstalledPackages\90160000-0012-0000-0000-0000000FF1CE" /ve 2^>nul') DO (Set "StandardVLFound=%%B") >nul 2>&1
	if "%StandardVLFound%" EQU "Microsoft Office Standard 2016" set "_StandardRetail=YES"
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\Software\Wow6432Node\Microsoft\Office\16.0\Common\InstalledPackages\90160000-003B-0000-0000-0000000FF1CE" /ve 2^>nul') DO (Set "ProjectProVLFound=%%B") >nul 2>&1
	if "%ProjectProVLFound%" EQU "Microsoft Project Professional 2016" set "_ProjectProRetail=YES"
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\Software\Wow6432Node\Microsoft\Office\16.0\Common\InstalledPackages\90160000-0051-0000-0000-0000000FF1CE" /ve 2^>nul') DO (Set "VisioProVLFound=%%B") >nul 2>&1
	if "%VisioProVLFound%" EQU "Microsoft Visio Professional 2016" set "_VisioProRetail=YES"
	if "%_ProPlusRetail%" EQU "YES" (set "o16arch=x86")&&(goto:OfficeVL32V64Path)
	if "%_StandardRetail%" EQU "YES" (set "o16arch=x86")&&(goto:OfficeVL32V64Path)
	if "%_ProjectProRetail%" EQU "YES" (set "o16arch=x86")&&(goto:OfficeVL32VL64Path)
	if "%_VisioProRetail%" EQU "YES" (set "o16arch=x86")&&(goto:OfficeVL32VL64Path)
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\16.0\Common\InstalledPackages\90160000-0011-0000-1000-0000000FF1CE" /ve 2^>nul') DO (Set "ProPlusVLFound=%%B") >nul 2>&1
	if "%ProPlusVLFound%" EQU "Microsoft Office Professional Plus 2016" set "_ProPlusRetail=YES"
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\16.0\Common\InstalledPackages\90160000-0012-0000-1000-0000000FF1CE" /ve 2^>nul') DO (Set "StandardVLFound=%%B") >nul 2>&1
	if "%StandardVLFound%" EQU "Microsoft Office Standard 2016" set "_StandardRetail=YES"
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\Software\Wow6432Node\Microsoft\Office\16.0\Common\InstalledPackages\90160000-003B-0000-1000-0000000FF1CE" /ve 2^>nul') DO (Set "ProjectProVLFound=%%B") >nul 2>&1
	if "%ProjectProVLFound%" EQU "Microsoft Project Professional 2016" set "_ProjectProRetail=YES"
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\Software\Wow6432Node\Microsoft\Office\16.0\Common\InstalledPackages\90160000-0051-0000-1000-0000000FF1CE" /ve 2^>nul') DO (Set "VisioProVLFound=%%B") >nul 2>&1
	if "%VisioProVLFound%" EQU "Microsoft Visio Professional 2016" set "_VisioProRetail=YES"
	if "%_ProPlusRetail%" EQU "YES" (set "o16arch=x64")&&(goto:OfficeVL32V64Path)
	if "%_StandardRetail%" EQU "YES" (set "o16arch=x64")&&(goto:OfficeVL32V64Path)
	if "%_ProjectProRetail%" EQU "YES" (set "o16arch=x64")&&(goto:OfficeVL32V64Path)
	if "%_VisioProRetail%" EQU "YES" (set "o16arch=x64")&&(goto:OfficeVL32V64Path)
	goto:Office16VnextInstall
:OfficeVL32VL64Path
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\16.0\Common\InstallRoot" /v "Path" 2^>nul') DO (Set "installpath16=%%B") >nul 2>&1
	set "officepath3=%installpath16%"
	goto:eof
::===============================================================================================================
:DownloadO16Online
    pushd "%o2016rtoolpath%"
    cls
	echo:
	echo ======= DOWNLOAD OFFICE 2016 ONLINE WEB INSTALLER ================
	echo __________________________________________________________________
    set "o16version=not set"
    set "o16arch=x86"
    set "o16lang=en-us"
    set "of16install=0"
    set "pr16install=0"
    set "vi16install=0"
    set "installtrigger=O"
	echo:
    set /p of16install=Set Office 2016 ProfessionalPlus Install (1/0) ^>
	if "%of16install%" EQU "1" (set "o16version=ProPlusRetail")&&(goto:WebArchSelect)
    echo:
    set /p pr16install=Set Project 2016 Professional Install (1/0) ^>
	if "%pr16install%" EQU "1" (set "o16version=ProjectProRetail")&&(goto:WebArchSelect)
    echo:
    set /p vi16install=Set Visio 2016 Professional Install (1/0) ^>
	if "%vi16install%" EQU "1" (set "o16version=VisioProRetail")&&(goto:WebArchSelect)
	echo:
	echo __________________________________________________________________
	echo:
	echo Nothing selected - Returning to Main Menu now
	echo:
	pause
	goto:Office16VnextInstall
::===============================================================================================================
:WebArchSelect
    echo __________________________________________________________________
    if "%winx%" EQU "win_x32" ((set "o16arch=x86")&&(goto:WebLangSelect))
	echo:
    set /p o16arch=Set architecture to install (enter x86 or x64) - press return for %o16arch% ^>
	echo __________________________________________________________________
	
::===============================================================================================================
:WebLangSelect
	echo:
    call :SetO16Language
::===============================================================================================================
    echo:
    echo __________________________________________________________________
	echo:
    echo Pending Online WEB Install (SUMMARY)
    echo:
    if "%of16install%" EQU "1" echo Install Office ?      : %of16install% = YES
    if "%pr16install%" EQU "1" echo Install Project ?     : %pr16install% = YES
    if "%vi16install%" EQU "1" echo Install Visio ?       : %vi16install% = YES
    echo:
    echo Install Architecture ?: %o16arch%
    echo Install Language ?    : %o16lang%
    echo __________________________________________________________________
	echo:
    set /p installtrigger=Start Online WEB Install now (1/0)? ^>
    if "%installtrigger%" EQU "0" goto:DownloadO16Online
    if "%installtrigger%" EQU "1" goto:OfficeWebInstall
	if "%installtrigger%" EQU "x" goto:Office16VnextInstall
	if "%installtrigger%" EQU "X" goto:Office16VnextInstall
    goto:DownloadO16Online
::===============================================================================================================
:OfficeWebInstall
    if "%o16version%" EQU "ProPlusRetail" set "o16gvlk=XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99"
    if "%o16version%" EQU "ProjectProRetail" set "o16gvlk=YG9NW-3K39V-2T3HJ-93F3Q-G83KT"
    if "%o16version%" EQU "VisioProRetail" set "o16gvlk=PD3PC-RHNGV-FXJ29-8JK7D-RJRJK"
    cls
	echo:
    echo ============ DOWNLOAD OFFICE 2016 ONLINE INSTALLER ===============
	echo __________________________________________________________________
	echo:
    echo Sending generated link to your browser.
    echo:
    echo Save the offered Setup.exe and run it to start Online WEB Install
    start "" "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=%o16version%&language=%o16lang%&platform=%o16arch%&token=%o16gvlk%&version=O16GA&act=1"
    echo __________________________________________________________________
	echo:
    echo:
	timeout /t 7
    goto:Office16VnextInstall
:================================================================================================================
::===============================================================================================================
:: OFFICE FIXITs
:OfficeFixit
	cls
	pushd %~dp0
	call :Header "UNINSTALL OFFICE"
	echo [4] OFFICE 14
	echo:
	echo [5] OFFICE 15
	echo:
	echo [6] OFFICE 16
	echo:
	echo [B] BACK
	call :Footer
	CHOICE /C 456B /N /M "YOUR CHOICE ?"
	if %errorlevel%==1 goto :Fixit14
	if %errorlevel%==2 goto :Fixit15
	if %errorlevel%==3 goto :Fixit16
	if %errorlevel%==4 goto:Menu5
::===============================================================================================================
:: OFFICE FIXITs
:Fixit16
	cls
	pushd %~dp0
	call :Header "UNINSTALL OFFICE 16"
	CHOICE /C NF /N /M "[N]ormal or [F]orced ?"
	if %errorlevel%==1 goto :Fixit16Normal
	if %errorlevel%==2 goto :Fixit16Forced
:Fixit16Forced
	start files\officefixes\16\Uninstall\Troubleshoot\OffScrubC2R.vbs
	goto:Menu5
:Fixit16Normal
	start files\officefixes\16\setup.exe /configure "%cd%\files\fixit\16\Uninstall\RemoveAll.xml"
	goto:Menu5
:================================================================================================================
::===============================================================================================================
:Fixit14
	pushd %~dp0
	start files\officefixes\MicrosoftFixit50450.msi
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Fixit15
	pushd %~dp0
	start files\officefixes\O15CTRRemove.diagcab
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:QuickAndDirtyQAD
	cls
	pushd "%~dp0"
	call :HEADER "QUICK AND DIRTY I", " "
	echo:
	echo CAUTION: THIS WILL ACTIVATE WINDOWS IN BRUTE FORCE MODE ^!
	echo:
	call :FOOTER
	CHOICE /C PB /M "[P]roceed now or [B]ack ? :"
	if %errorlevel%==1 goto :DoIT
	if %errorlevel%==2 goto:Menu5
:DoIT
	if %win% GEQ 9200 ( goto :qd1 ) else ( goto :qd2 )
:qd1
	echo:
	call :QADAutoInstall
	goto :DoIT1
:qd2
	call :CodyInstallAuto
:DoIT1
	if not "%channel%"=="VOLUME_KMSCLIENT" (
		if "%status%"=="1" (
			call :HEADER "QUICK AND DIRTY I", " "
			echo Licensed %channel% version found.
			call :FOOTER
			CHOICE /C AS /N /M "[A]ctivate or [S]ip ?"
			if !errorlevel!==2 goto:ActivationCommandQD
	))
	call :AutoKeyInstall
	call :AutoActivate
:ActivationCommandQD
	call :AutoactivateOffice14
	call :AutoactivateOffice1464
	call :AutoactivateOffice15
	call :AutoactivateOffice1564
	call :AutoactivateOffice16
	call :AutoactivateOffice1664
:goIT2
	if %win% GEQ 9200 (goto :DoIT4) else (goto :goIT5)
:DoIT4
	call :QADAutoUnInstall
	goto:Menu5
:goIT5
	echo:
	call :CodyUnInstallAuto
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:InstantActivation
	set "hSpp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
	set "hOspp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform"
	cls
	CD /D "%~dp0"
	set Directory=%~dp0
	if %win% lss 9200 set host=127.0.0.2
	set "port=1688"
	set pid=RandomKMSPID
	set sai=120
	set sri=10080
	echo:
:ServerInstall
	if %win% GEQ 9200 (goto :ia1) else (goto :ia2)
:ia2
	call :CodyInstallAuto
	goto :ActivateWindows
:ia1
	call :QADAutoInstall
:ActivateWindows
	cls
	pushd "%~dp0"
	call :HEADER "INSTANT ACTIVATION I", "OS-Version: %ver% found %vera%"
	echo:
	CHOICE /C AS /M "[A]ctivate %ver% or [S]kip ? :"
	if %errorlevel%==1 goto :ActivateWindowsIA1
	if %errorlevel%==2 goto :ActivateOfficeIA1
:ActivateWindowsIA1
	if not "%channel%"=="VOLUME_KMSCLIENT" (
		if "%status%"=="1" (
			call :HEADER "QUICK AND DIRTY I", " "
			echo Licensed %channel% version found.
			call :FOOTER
			CHOICE /C AS /N /M "[A]ctivate or [S]ip ?"
			if !errorlevel!==2 goto:ActivateOfficeIA1
	))
	call :AutoKeyInstall
	call :AutoActivate
:ActivateOfficeIA1
	call :Office14
	call :Office1464
	call :Office15
	call :Office1564
	call :Office16
	call :Office1664
:ServerUninstall
	if %win% GEQ 9200 (goto :ui1) else (goto :ui2)
:ui1
	call :QADAutoUnInstall
	goto:Menu5
:ui2
	call :CodyUnInstallAuto
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ReactivationTasks
	cls
	schtasks /query /TN "Reactivate Service DAILY" >nul 2>&1
	if %errorlevel%==0 goto :TaskDeleteRT
	if %win% lss 9200 set host=127.0.0.2
	set name=KMSServer
	set "port=1688"
	set pid=RandomKMSPID
	set sai=120
	set sri=10080
	call :HEADER "RE-ACTIVATION TASK", ""
:ServerInstall
	if %win% GEQ 9200 (goto :Task8) else (goto :Task7)
:Task7
	CHOICE /C IB /M "[I]nstall or [B]ack ? :"
	if %errorlevel%==2 goto :Menu5
	call :CodyEmuAutoInstall
	set "trigger=1"
	goto :TaskActivateWindows
:Task8
	echo Windows 8 and above use [H]
	echo Windows 7 use [E]
	call :FOOTER
	CHOICE /C HEB /M "[H]ooked, [E]mulator and Hook or [B]ack ? :"
	if %errorlevel%==1 goto :HookedTask
	if %errorlevel%==2 goto :EmuAndHookTask
	if %errorlevel%==3 goto :Menu5
:HookedTask
	call :QADAutoInstall
	set "trigger="
	goto :TaskActivateWindows
:EmuAndHookTask
	call :CodyEmuAutoInstall
	call :AutoSppExtComObjPatch
	set "trigger=1"
:TaskActivateWindows
	cls
	pushd "%~dp0"
	call :HEADER "ACTIVATION", "OS-Version: %ver% found %vera%"
	echo:
	CHOICE /C AS /M "[A]ctivate %ver% or [S]kip ? :"
	if %errorlevel%==1 goto :TaskActivateWindows1
	if %errorlevel%==2 goto :TaskActivateOffice1
:TaskActivateWindows1
	for /d %%a in (RETAIL, OEM, OEM_SLP, OEM_NONSLP, OEM_COA, OEM_DM, VOLUME_MAK, VOLUME_KMS) do if "%channel%"=="%%a" (
		if "%status%"=="1" (
			call :HEADER "QUICK AND DIRTY I", " "
			echo Licensed %channel% version found.
			call :FOOTER
			CHOICE /C AS /N /M "[A]ctivate or [S]ip ?"
			if !errorlevel!==2 goto:TaskActivateOffice1
	))
	call :AutoKeyInstall
	call :AutoActivate
:TaskActivateOffice1
	call :Office14
	call :Office1464
	call :Office15
	call :Office1564
	call :Office16
	call :Office1664
	cls
	pushd "%~dp0"
	call :HEADER "TASK CREATION", ""
	echo:
	if not exist "%windir%\%name%" md "%windir%\%name%"
	call :TaskCreate
	call :WriteA
	call :FOOTER
	CHOICE /C CS /M "[C]reate %ver% or [S]kip ? :"
	if !errorlevel!==1 call :WriteWindows
	call :FOOTER
	call :Officex64 14, 1
	call :Othersx64 14, 1, Project, project
	call :Othersx64 14, 1, Visio, visio
	if defined officepath1 (
		CHOICE /C CS /M "[C]reate Office 14 or [S]kip ? :"
		if !errorlevel!==1 call :WriteOffice14
		call :FOOTER
	)
	call :Officex86 14, 1
	call :Othersx86 14, 1, Project, project
	call :Othersx86 14, 1, Visio, visio
	if defined officepath1 (
		CHOICE /C CS /M "[C]reate Office 14 or [S]kip ? :"
		if !errorlevel!==1 call :WriteOffice14
		call :FOOTER
	)
	call :Officex64 15, 2
	call :Othersx64 15, 2, Project, project
	call :Othersx64 15, 2, Visio, visio
	if defined officepath2 (
		CHOICE /C CS /M "[C]reate Office 15 or [S]kip ? :"
		if !errorlevel!==1 call :WriteOffice15
		call :FOOTER
	)
	call :Officex86 15, 2
	call :Othersx86 15, 2, Project, project
	call :Othersx86 15, 2, Visio, visio
	if defined officepath2 (
		CHOICE /C CS /M "[C]reate Office 15 or [S]kip ? :"
		if !errorlevel!==1 call :WriteOffice15
		call :FOOTER
	)
	call :CheckC2ROx64 16, 3, Common, office
	call :CheckC2RPx64 16, 3, Project, project
	call :CheckC2RVx64 16, 3, Visio, visio
	if defined officepath3 (
		CHOICE /C CS /M "[C]reate Office 16 or [S]kip ? :"
		if !errorlevel!==1 call :WriteOffice16
		call :FOOTER
	)
	call :CheckC2ROx86 16, 3, Common, office
	call :CheckC2RPx86 16, 3, Project, project
	call :CheckC2RVx86 16, 3, Visio, visio
	if defined officepath3 (
		CHOICE /C CS /M "[C]reate Office 16 or [S]kip ? :"
		if !errorlevel!==1 call :WriteOffice16
		call :FOOTER
	)
	call :WriteOthersCleanup
	call :WriteZ
	tasklist /FI "IMAGENAME eq KMSServer.exe" 2>NUL | find /I /N "KMSServer.exe">NUL
	if "%ERRORLEVEL%"=="0" TASKKILL /F /IM "KMSServer.exe" >nul
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:TaskDeleteRT
	cls
	set name=KMSServer
	call :HEADER "TASK DELETION", ""
	SchTasks /Delete /TN "Reactivate Service DAILY" /F
	SchTasks /Delete /TN "Reactivate Service ONLOGON" /F
	SchTasks /Delete /TN "Reactivate Service ONSTART" /F
	call :FOOTER
	timeout /t 5
	if exist "%SystemRoot%\System32\KMS-QADhooker.*" call :QADAutoUnInstall
	if exist "%windir%\%name%\%name%.exe" call :CodyEmuAutoUninstall
	if exist "%SystemRoot%\System32\SppExtComObjPatcher.*" call :AutoSppExtComObjPatch
	if exist "%windir%\%name%" rd /s /q "%windir%\%name%" >nul
	call :FOOTER
	timeout /t 5
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:RearmOffice
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\15.0\Common\InstallRoot" >nul 2>&1
	if errorlevel 1 goto :RearmOffice1532
	FOR /F "tokens=2*" %%a IN ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\15.0\Common\InstallRoot" /v "Path"') do (SET officepath=%%b) >nul 2>&1
	cls
	call :HEADER "Office 2013 Professional Plus %vera% found", "in path: %officepath%"
	echo:
	CHOICE /C RS /M " [R]earm or [S]kip ?  : "
	if %errorlevel%==1 goto :RO3
	if %errorlevel%==2 goto :Menu5
:RO3
	echo:
	"%officepath%\ospprearm.exe"
	call :FOOTER
	timeout /t 5
	goto:Menu5
:RearmOffice1532
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\15.0\Common\InstallRoot" >nul 2>&1
	if errorlevel 1 goto:Menu5
	FOR /F "tokens=2*" %%a IN ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\15.0\Common\InstallRoot" /v "Path"') do (SET officepath=%%b) >nul 2>&1
	cls
	call :HEADER "Office 2013 Professional Plus x86 found", "in path: %officepath%"
	echo:
	CHOICE /C RS /M " [R]earm or [S]kip ?  : "
	if %errorlevel%==1 goto :RO4
	if %errorlevel%==2 goto:Menu5
:RO4
	echo:
	"%officepath%\ospprearm.exe"
	call :FOOTER
	timeout /t 5
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:KeyInstall
	pushd "%~dp0"
	cls
	call :HEADER "OS-Version: %ver% found %vera%", " "
	if %win% geq 10240 (
		echo Windows 10 %edition% detected. Install generic Retail Key?
		call :FOOTER
		CHOICE /C IS /M " [I]nstall or [S]kip ?  : "
		if !errorlevel!==1 (if "%edition%"=="Professional" set "key=VK7JG-NPHTM-C97JM-9MPGT-3V66T")&&(if "%edition%"=="Core" set "key=YTMG3-N6DKC-DKB77-7M9GH-8HVX7")&&(if "%edition%"=="CoreCountrySpecific" set "key=N2434-X9D7W-8PF6X-8DV9T-8TYMD")&&(if "%edition%"=="CoreSingleLanguage" set "key=BT79Q-G7N6G-PGBYW-4YWX6-6F4BT")&&(if "%edition%"=="Education" set "key=YNMGQ-8RYV3-4PGQ3-C8XTP-7CFBY")&&(if "%edition%"=="ProfessionalEducation" set "key=8PTT6-RNW4C-6V7J2-C2D3X-MHBPB")&&(if "%edition%"=="Enterprise" set "key=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99")&&(goto :InstallOrder)
	)
	call :KeyCheck
	echo (Value: XXXXX-XXXXX-XXXXX-XXXXX-XXXXX)
	echo:
	echo:
	echo Version: %ver% ^| %vera%
	echo Default GVLK: %key% %comment%
	echo:
	echo:
	echo If key is shown, simply hit ENTER.
	call :FOOTER
	set /p key=Set key ^>
:InstallOrder
	call :FOOTER
	wmic path %sls% where version='%version%' call InstallProductKey ProductKey="%key%" >nul 
	if %errorlevel% equ 0 echo Successfully installed Product Key & echo: & echo For: %ver% %vera% & echo: & echo KEY: %key%
	if %errorlevel% neq 0 echo Installing Product Key Failed: %errorlevel% 
	call :FOOTER
	timeout /t 5
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CallMS
	start cmd /c "%windir%\system32\slui.exe 4"
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Validate
	if %win% NEQ 7601 call :NotSupported
	if %win% NEQ 7601 goto:Menu5
	cls
	echo:
	set url=https://www.microsoft.com/genuine/downloads/FailureScenarios.aspx
	call :HEADER " This will open Internet Explorer to Validate the System", " "
	echo:
	start "%ProgramFiles%\Internet Explorer\iexplore.exe" "%url%"
	call :FOOTER
	timeout /t 5
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:BlockCheck
	cls
	call :HEADER "This Blocks the MS KMS-Check", " "
	echo:
	netsh advfirewall firewall add rule name="Key Management Services 1" protocol=TCP dir=out localport=443 remoteip=65.52.98.231 action=block >nul
	if %errorlevel%==0 echo Successfully blocked Key Management Services 1. & echo:
	if %errorlevel%==1 echo Blocking Key Management Services 1 failed. & echo:
	netsh advfirewall firewall add rule name="Key Management Services 2" protocol=TCP dir=out localport=443 remoteip=65.52.98.232 action=block >nul
	if %errorlevel%==0 echo Successfully blocked Key Management Services 2. & echo:
	if %errorlevel%==1 echo Blocking Key Management Services 2 failed. & echo:
	netsh advfirewall firewall add rule name="Key Management Services 3" protocol=TCP dir=out localport=443 remoteip=65.52.98.233 action=block >nul	
	if %errorlevel%==0 echo Successfully blocked Key Management Services 3. & echo:
	if %errorlevel%==1 echo Blocking Key Management Services 3 failed. & echo:
	call :FOOTER
	timeout /t 5
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:UnBlockCheck
	cls
	call :HEADER "This Unblocks the MS KMS-Check", " "
	echo:
	netsh advfirewall firewall add rule name="Key Management Services 1" protocol=TCP dir=out localport=443 remoteip=65.52.98.231 action=allow >nul
	if %errorlevel%==0 echo Successfully unblocked Key Management Services 1. & echo:
	if %errorlevel%==1 echo Unblocking Key Management Services 1 failed. & echo:
	netsh advfirewall firewall add rule name="Key Management Services 2" protocol=TCP dir=out localport=443 remoteip=65.52.98.232 action=allow >nul
	if %errorlevel%==0 echo Successfully unblocked Key Management Services 2. & echo:
	if %errorlevel%==1 echo Unblocking Key Management Services 2 failed. & echo:
	netsh advfirewall firewall add rule name="Key Management Services 3" protocol=TCP dir=out localport=443 remoteip=65.52.98.233 action=allow >nul	
	if %errorlevel%==0 echo Successfully unblocked Key Management Services 3. & echo:
	if %errorlevel%==1 echo Unblocking Key Management Services 3 failed. & echo:
	call :FOOTER
	timeout /t 5
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ExportTokens
	cls
	echo:
	set "tokenpath=%userprofile%\desktop"
	call :HEADER "This will export Activation Tokens to a folder.", " "
	echo:
	echo Standard Path: %tokenpath%
	echo:
	set /p tokenpath=Set Path : ^>
	echo:
	Licensingdiag -report %tokenpath%\Licensingdiag.xml -log %tokenpath%\Licensingdiag.cab
	call :FOOTER
	timeout /t 5
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:RebuildLicense
	cls
	call :HEADER "Restoring License", " "
	echo:
	cscript %windir%\system32\slmgr.vbs /rilc
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto:Menu5
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::SYSTEM TOOLS SECTION
:CommandPrompt
	cls
	set "nsudoc=files\nsudo\%vera%\nsudo.exe"
	call :HEADER "COMMAND PROMPT", " "
	echo [E] ELEVATED CMD
	echo [T] TRUSTED INSTALLER CMD
	echo:
	echo [S] START CUSTOM TOOL/SCRIPT
	echo:
	echo [B] BACK
	call :Footer
	CHOICE /C ETSB /N /M "YOUR CHOICE ? :"
	if %errorlevel%==1 goto:ElevatedPrompt
	if %errorlevel%==2 goto:TrustedInstaller
	if %errorlevel%==3 goto:TrustedInstallerCustom
	if %errorlevel%==4 goto:Menu1
	goto:CommandPrompt
:ElevatedPrompt
	pushd "%windir%\system32"
	start "Elevated CMD" cmd /k "%windir%\system32\cmd.exe"
	goto:Menu1
:TrustedInstallerCustom
	call :Footer
	echo Enter tool/script path.
	call :Footer
	set /p toolstart=Path to Tool:
	@start /b "NSudo - TrustedInstaller" "%nsudoc%" -U:T "%toolstart%"
	cls
	goto:Menu1
:TrustedInstaller
	@start /b "NSudo - TrustedInstaller" "%nsudoc%" -U:T "%windir%\system32\cmd.exe"
	cls
	goto:Menu1
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:SmrtDisable
	start cmd /c files\S-M-R-T.SECURITY.cmd
	goto:Security
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:SmrtWU
	pushd "%~dp0"
	cd %~dp0
	cls
	call :HEADER "SET UPDATE WORKFOLDER", " "
	echo Work Folder____: %workpath%
	echo Enter '0' to clear path
	call :Footer
	set /p workpath=Path Work Folder:
	if "%workpath%"=="0" set "workpath="
	start cmd /c call files\S-M-R-T.WU.TOOL.cmd "%workpath%"
	goto:Security
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:StartSysInternal
	files\sysinternal.cmd
	goto:Menu1
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:StartTools
	files\tools.cmd
	goto:Menu1
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:StartSystemTools
	files\systemtools.cmd
	goto:Menu1
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Reboot
	start shutdown.exe /r /t 0	
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::EMULATOR CHECK LOOPS
:SetEmulatorData
	set "hSpp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
	set "hOspp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform"
	echo:
	echo ...Checking for Server Emulator instances:
	echo:
	wmic process where "name='KMSServer.exe'" | findstr /i /c:"KMSServer.exe" >nul	
	if %errorlevel%==0 (
		call :ServerRunning
		goto:MenuC
	)
	set "port=1688"
	set pid=RandomKMSPID
	set sai=43200
	set sri=43200
	if /i "%hwid%"=="" set hwid=364F463A8863D35F
	if /i "%kpop%"=="" set kpop=1
	if /i "%loglevel%"=="" set loglevel=1
	call :FOOTER
	echo Port
	echo Default: %port%
	echo:
	echo Interval for unactivated Client in Minutes (15 - 43200)
	echo Default: %sai%
	echo:
	echo Interval for Reactivation in Minutes (15 - 43200)
	echo Default: %sri%
	echo:
	echo Hardware ID
	echo Default: %hwid%
	echo Values: KMS Server Hardware ID
	echo:
	echo LogLevel
	echo Default: %loglevel%
	echo Values: KMS Server Loglevel 1 / 2
	echo:
	echo Kill Process On Port
	echo Default: %kpop%
	echo Values: 0 = Off / 1 = On
	call :FOOTER
	set /p port=Set port ^>
	set /p sai=Set sai ^>
	set /p sri=Set sri ^>
	set /p hwid=Set Hardware ID ^>
	set /p loglevel=Set LogLevel ^>
	set /p kpop=Set Kill process On Start ^>
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ServerRunning
	echo:
	echo ...Server is already running.
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CodyPID
	cls
	call :FOOTER
	echo [A] Enter specific ePID for each product separately
	echo:
	echo [B] Server 2008 R2 KMS_C (kms.creighton.edu)
	echo     55041-00206-152-174451-03-1033-7601.0000-2442012
	echo [C] Server 2008 R2 KMS_C (kms.cc.columbia.edu)
	echo     05426-00206-152-103094-03-1033-9200.0000-2842012
	echo:
	echo [D] DefaultKMSPID by MTK
	echo     55041-00168-305-246209-03-1033-7600.0000-0522010
	echo:
	echo [E] RandomKMSPID
	echo:
	echo [F] 55041-00172-037-340769-03-1049-7601.0000-3532012
	echo [G] 55041-00096-199-128989-03-1033-7601.0000-3502012
	echo [H] 55041-00172-037-340769-03-1049-7601.0000-3532012
	echo:
	echo [K] Enter Custom KMS Extended PID
	call :FOOTER
	CHOICE /C ABCDEFGHK /M "Choose ePID :"
	if %errorlevel%==1 set pid=" " & goto :InputPID
	if %errorlevel%==2 set pid=55041-00206-152-174451-03-1033-7601.0000-2442012 & goto :eof
	if %errorlevel%==3 set pid=05426-00206-152-103094-03-1033-9200.0000-2842012 & goto :eof
	if %errorlevel%==4 set pid=DefaultKMSPID & goto :eof
	if %errorlevel%==5 set pid=RandomKMSPID & goto :eof
	if %errorlevel%==6 set pid=55041-00172-037-340769-03-1049-7601.0000-3532012 & goto :eof
	if %errorlevel%==7 set pid=55041-00096-199-128989-03-1033-7601.0000-3502012 & goto :eof
	if %errorlevel%==8 set pid=55041-00172-037-340769-03-1049-7601.0000-3532012 & goto :eof
	if %errorlevel%==9 set /p "pid=Set Custom ePID: ^>" & goto :eof
:InputPID
	set WindowsPid="05426-00206-152-251264-03-1031-9200.0000-0902013"
	set Office2010Pid="05426-00206-234-251264-03-1031-9200.0000-0902013"
	set Office2013Pid="55041-00096-199-251264-03-1031-9200.0000-0902013"
	echo:
	echo Windows ePID %WindowsPid%
	echo Office 2010 ePID %Office2010Pid%
	echo Office 2013 ePID %Office2013Pid%
	call :FOOTER
	set /p WindowsPid=Set WindowsPid ^>
	set /p Office2010Pid=Set Office2010Pid ^>
	set /p Office2013Pid=Set Office2013Pid ^>
	call :RegCODYS
	echo:
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:UnRegOffice
	set "hSpp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
	set "hOspp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform"
	reg delete "%hSpp%" /f /v "KeyManagementServiceName" >nul 2>&1
	reg delete "%hSpp%" /f /v "KeyManagementServicePort" >nul 2>&1
	reg delete "%hSpp%" /f /v "VLActivationType" >nul 2>&1
	reg delete "%hSpp%" /f /v "UserOperations" >nul 2>&1
	reg delete "%hOspp%" /f /v "KeyManagementServiceName" >nul 2>&1
	reg delete "%hOspp%" /f /v "KeyManagementServicePort" >nul 2>&1
	reg delete "%hOspp%" /f /v "VLActivationType" >nul 2>&1
	reg delete "%hOspp%" /f /v "UserOperations" >nul 2>&1
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:RegOffice
	set "hSpp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
	set "hOspp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform"
	reg delete %hOspp%\59A52881-A989-479D-AF46-F275C6370663 /f >nul 2>&1
	reg delete %hSpp%\0ff1ce15-a989-479d-af46-f275c6370663 /f >nul 2>&1
	reg add "%hSpp%" /f /v "KeyManagementServiceName" /d %host% /t "REG_SZ" >nul
	reg add "%hSpp%" /f /v "KeyManagementServicePort" /d %port% /t "REG_SZ" >nul
	reg add "%hSpp%" /f /v "VLActivationType" /d "2" /t "REG_DWORD" >nul
	reg add "%hSpp%" /f /v "UserOperations" /d "1" /t "REG_DWORD" >nul
	reg delete %hSpp%\55C92734-D682-4D71-983E-D6EC3F16059F /f >nul 2>&1
	reg delete %hOspp%\0ff1ce15-a989-479d-af46-f275c6370663 /f >nul 2>&1
	reg add "%hOspp%" /f /v "KeyManagementServiceName" /d %host% /t "REG_SZ" >nul
	reg add "%hOspp%" /f /v "KeyManagementServicePort" /d %port% /t "REG_SZ" >nul
	reg add "%hOspp%" /f /v "VLActivationType" /d "2" /t "REG_DWORD" >nul
	reg add "%hOspp%" /f /v "UserOperations" /d "1" /t "REG_DWORD" >nul
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:RegCODY
	REG ADD "HKLM\SYSTEM\CurrentControlSet\services\KMSServer" /v Description /t REG_SZ /d "Windows Service that emulates a Key Management Service (KMS) Server" /f >nul
	REG ADD "HKLM\SYSTEM\CurrentControlSet\services\KMSServer\Parameters" /f /v "KMSPort" /d %port% /t "REG_SZ" >nul
	REG ADD "HKLM\SYSTEM\CurrentControlSet\services\KMSServer\Parameters" /f /v "KMSPID" /d %pid% /t "REG_SZ" >nul
	REG ADD "HKLM\SYSTEM\CurrentControlSet\services\KMSServer\Parameters" /f /v "KMSHWID" /d %hwid% /t "REG_SZ" >nul
	REG ADD "HKLM\SYSTEM\CurrentControlSet\services\KMSServer\Parameters" /f /v "VLActivationInterval" /d %sai% /t "REG_DWORD" >nul
	REG ADD "HKLM\SYSTEM\CurrentControlSet\services\KMSServer\Parameters" /f /v "VLRenewalInterval" /d %sri% /t "REG_DWORD" >nul
	REG ADD "HKLM\SYSTEM\CurrentControlSet\services\KMSServer\Parameters" /f /v "KillProcessOnPort" /d %kpop% /t "REG_DWORD" >nul
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:RegCODYS
	REG ADD "HKLM\SYSTEM\CurrentControlSet\services\KMSServer\Parameters\KMSPID" /f /v "55c92734-d682-4d71-983e-d6ec3f16059f" /d %WindowsPid% /t "REG_SZ" >nul
	REG ADD "HKLM\SYSTEM\CurrentControlSet\services\KMSServer\Parameters\KMSPID" /f /v "59a52881-a989-479d-af46-f275c6370663" /d %Office2010Pid% /t "REG_SZ" >nul
	REG ADD "HKLM\SYSTEM\CurrentControlSet\services\KMSServer\Parameters\KMSPID" /f /v "0ff1ce15-a989-479d-af46-f275c6370663" /d %Office2013Pid% /t "REG_SZ" >nul
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:UnRegCODY
	REG DELETE "HKLM\SYSTEM\CurrentControlSet\services\KMSServer" /f >nul
	REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f >nul
	REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" >nul
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:RegDH
	set hService="HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\KMSServerService\Parameters"
	REG ADD HKLM\SYSTEM\CurrentControlSet\services\%name% /v Description /t REG_SZ /d "Windows Service that emulates a Key Management Service (KMS) Server" /f >nul
	reg add "%hService%" /f /v "Windows" /d %WindowsPid% /t "REG_SZ" >nul
	reg add "%hService%" /f /v "Office2010" /d %Office2010Pid% /t "REG_SZ" >nul
	reg add "%hService%" /f /v "Office2013" /d %Office2013Pid% /t "REG_SZ" >nul
	reg add "%hService%" /f /v "Port" /d %port% /t "REG_SZ" >nul
	reg add "%hService%" /f /v "ActivatedMachines" /d "50" /t "REG_DWORD" >nul
	reg add "%hService%" /f /v "KMSHWID" /d %hwid% /t "REG_SZ" >nul
	reg add "%hService%" /f /v "LogLevel" /d %loglevel% /t "REG_DWORD" >nul
	reg add "%hService%" /f /v "KillProcessOnPort" /d %kpop% /t "REG_DWORD" >nul
	reg add "%hService%" /f /v "ActivationInterval" /d %sai% /t "REG_DWORD" >nul
	reg add "%hService%" /f /v "RenewalInterval" /d %sri% /t "REG_DWORD" >nul
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Initiate
	pushd %~dp0
	set "port=1688"
	if exist "%windir%\%name%\%name% %vera%.exe" del /s /q "%windir%\%name%\%name% %vera%.exe" >nul
	xcopy "files\KMS Server Service %vera%.exe" "%windir%\%name%\" /Q /Y >nul
	ren "%windir%\%name%\KMS Server Service %vera%.exe" %name%.exe
	netsh advfirewall firewall add rule name="%name% %port%" dir=in  program="%windir%\%name%\%name%.exe" localport=%port% protocol=TCP action=allow remoteip=any
	netsh advfirewall firewall add rule name="%name% %port%" dir=in  program="%windir%\%name%\%name%.exe" localport=%port% protocol=TCP action=allow remoteip=localsubnet
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:FirewallInstall2
	cls
	call :HEADER "This option opens Firewall for KMS Server Emulator", " "
	echo:
	echo Checking for Server Emulator instances:
	echo:
	wmic process where "name='KMSServer.exe'" | findstr /i /c:"KMSServer.exe" >nul	
	if %errorlevel%==1 call :ServerNotRunning
	if %errorlevel%==1 goto:MenuC
	echo:
	netsh advfirewall firewall add rule name="KMS Server Emulator" dir=in  program="%windir%\KMSServer\KMSServer.exe" localport=%port% protocol=TCP action=allow remoteip=any
	netsh advfirewall firewall add rule name="KMS Server Emulator" dir=in  program="%windir%\KMSServer\KMSServer.exe" localport=%port% protocol=TCP action=allow remoteip=localsubnet
	call :FOOTER
	timeout /t 5
	goto:MenuC
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:FirewallDelete2
	cls
	call :HEADER "This option deletes Rule for KMS Server Emulator", " "
	echo:
	echo Checking for Server Emulator instances:
	echo:
	wmic process where "name='KMSServer.exe'" | findstr /i /c:"KMSServer.exe" >nul	
	if %errorlevel%==1 call :ServerNotRunning
	if %errorlevel%==1 goto:MenuC
	echo:
	netsh advfirewall firewall delete rule name="KMS Server Emulator"
	call :FOOTER
	timeout /t 5
	goto:MenuC
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::SERVICES INSTALL LOOPS
:SetServiceData
	pushd "%~dp0"
	if /i "%name%"=="" set name=KMSServer
	echo Default: %name%
	echo Values: Servername      
	echo:
	set /p name=Set name ^>
	echo:
	if "%triggerS%"=="4" goto :furtherSSD5
	sc query %name% >NUL
	if errorlevel 1 goto :furtherSSD5
	if errorlevel 0 echo ..Service is already installed.
	timeout /t 5
	goto :Menu2
:furtherSSD5
	if /i "%host%"=="" set host=127.0.0.2
	if /i "%port%"=="" set "port=1688"
	if /i "%sai%"=="" set sai=43200
	if /i "%sri%"=="" set sri=43200
	if /i "%start%"=="" set start=auto
	if /i "%hwid%"=="" set hwid=364F463A8863D35F
	if /i "%kpop%"=="" set kpop=1
	if /i "%loglevel%"=="" set loglevel=1
	call :FOOTER
	echo Port
	echo Default: %port%
	echo:
	echo Interval for unactivated Client in Minutes (15 - 43200)
	echo Default: %sai%
	echo:
	echo  Interval for Reactivation in Minutes (15 - 43200)
	echo  Default: %sri%
	echo:
	echo Service Start Type
	echo Default: %start%
	echo Values: boot, system, auto, demand, disabled, delayed-auto
	echo:
	echo Hardware ID
	echo Default: %hwid%
	echo Values: KMS Server Hardware ID
	echo:
	echo Kill Process On Port
	echo Default: %kpop%
	echo Values: 0 = Off / 1 = On
	echo:
	echo LogLevel
	echo Default: %loglevel%
	echo Values: KMS Server Loglevel 1 / 2
	call :FOOTER
	set /p port= Set port ^>
	set /p sai= Set sai ^>
	set /p sri=Set sri ^>
	set /p start=Set start type ^>
	set /p hwid=Set Hardware ID ^>
	set /p kpop=Set Kill Process Status ^>
	set /p loglevel=Set LogLevel ^>
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::CLIENT EMULATOR LOOPS
:SetClientData
	cls
	set ver2=Office2010
	call :HEADER "This option sets the adress and port on which the Client searches for response", " "
	echo:
	if /i "%port%"=="" set "port=1688"
	if /i "%ver1%"=="" set "ver1=Windows10"
	if /i "%ver3%"=="" set "ver3=Office2016V5"
	echo Mode to run Client Emulator:
	call :FOOTER
	CHOICE /C AM /M "[A]uto or [M]anual  : "
	if %errorlevel%==1 goto :Repeat
	if %errorlevel%==2 goto :Manual
:Manual
	call :FOOTER
	echo Default: %host%
	echo Values: IP Adress or Hostname
	echo:
	echo Default: %port%
	echo Values: Host Port
	echo:
	echo Default: %ver1%
	echo Values: WindowsVista, Windows7, Windows8/81 and Windows10
	echo:
	echo Default: %ver3%
	echo Values: Office2013V4, Office2013V5/V6 and Office2016V5/V6
	call :FOOTER
	set /p host=Set host ^>
	set /p port=Set port ^>
	set /p ver1=Set Windows version ^>
	set /p ver3=Set Office 2013 version ^>
:Repeat
	cls
	call :HEADER "KMS Client Emulator at: [%host%] : [%port%]", " "
	echo Starting online test: %date% at: %time%
	echo:
	echo ---- KMS Host for:  %ver1% ----------------
	echo:
	%k% %port% %host% %ver1%
	echo:
	echo ---- KMS Host for:  %ver2% --------------
	echo:
	%k% %port% %host% %ver2%
	echo:
	echo ---- KMS Host for:  %ver3% ------------
	echo:
	%k% %port% %host% %ver3%
	call :FOOTER
	CHOICE /C ARB /M " [A]gain, [R]epeat or [B]ack  : "
	if %errorlevel%==1 goto :Repeat
	if %errorlevel%==2 goto :SetClientData
	if %errorlevel%==3 goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::STATUS CHECK LOOPS
:CheckStatusWindows
	set "slp=SoftwareLicensingProduct"
	if %win% GEQ 9200 for /f %%A in ('cscript files\PID8.vbs') do set "productkey=%%A"
	if %win% LSS 9200 for /f %%A in ('cscript files\PID7.vbs') do set "productkey=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %slp% where (Description LIKE '%%Windows%%') get KeyManagementServiceProductKeyID /format:list" ^| findstr /i 0000') do set "kmsepid=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %slp% where LicenseStatus='%status%' get Description /format:list /translate:NoComma" ^| findstr /i Windows') do set "windescription=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %slp% where LicenseStatus='%status%' get Name /format:list /translate:NoComma" ^| findstr /i Windows') do set "winname=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %slp% where (Description LIKE '%%Windows%%') get KeyManagementServicePort /format:list"') do if %%A geq 1 set "kmsport=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %slp% where (Description LIKE '%%Windows%%') get KeyManagementServiceMachine /format:list"') do if %%A geq 1 set "kmsIP=%%A"
	for /f "tokens=2 delims== " %%A in ('"wmic path %slp% where (Name LIKE '%%Windows%%') get GracePeriodRemaining /format:list"') do (set "grace1=%%A")&&(if %%A geq 1 goto:CheckNext)
:CheckNext
	for /f "tokens=3 delims==: " %%G in ('"DISM /online /english /Get-CurrentEdition" ^| findstr /i Version') do set currentversion=%%G
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckStatusOffice
	set "slp=SoftwareLicensingProduct"
	set "sls=SoftwareLicensingService"
	set "spp=SoftwareProtectionProduct"
	set "ospp=OfficeSoftwareProtectionProduct"
	set "osps=OfficeSoftwareProtectionService"
	for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where (Name LIKE '%%%~2%%') get LicenseStatus /format:list"') do if %%A geq 1 set "officestatus=%%A"
	if %win% GEQ 9200 if %~2 equ 15 for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where (Description LIKE '%%%~2%%') get RemainingAppReArmCount /format:list"') do set "orearm=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where (Name LIKE '%%%~2%%') get KeyManagementServiceProductKeyID /format:list" ^| findstr /i 0000') do if %%A geq 0 set "HostNa%~3=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where LicenseStatus='%officestatus%' get Name /format:list /translate:NoComma" ^| findstr /i %~2') do set "NA%~3=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where (Name LIKE '%%%~2%%') get KeyManagementServicePort /format:list"') do if %%A geq 1 set "KP%~3=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where (Name LIKE '%%%~2%%') get KeyManagementServiceMachine /format:list"') do if %%A geq 1 set "KIP%~3=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where (Name LIKE '%%%~2%%') get GracePeriodRemaining /format:list"') do if %%A geq 1 set "GraPe%~3=%%A"
	for /f "tokens=2 delims== " %%A in ('"wmic path %~1 where (Name LIKE '%%%~2%%') get PartialProductKey /format:list"') do if %%A geq 1 set "PaKey%~3=%%A"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckStatusOthers
	set "slp=SoftwareLicensingProduct"
	set "sls=SoftwareLicensingService"
	set "spp=SoftwareProtectionProduct"
	set "ospp=OfficeSoftwareProtectionProduct"
	set "osps=OfficeSoftwareProtectionService"
	for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where (Name LIKE '%%%~2%%') get LicenseStatus /format:list"') do if %%A geq 1 set "otherstatus=%%A"
	if %win% GEQ 9200 if %~2 equ 15 for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where (Name LIKE '%%%~2%%') get RemainingAppReArmCount /format:list"') do set "orearm=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where (Name LIKE '%%%~2%%') get KeyManagementServiceProductKeyID /format:list" ^| findstr /i 0000') do if %%A geq 0 set "HostNa%~3=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where LicenseStatus='%otherstatus%' get Name /format:list /translate:NoComma" ^| findstr /i %~2*') do set "NA%~3=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where (Name LIKE '%%%~2%%') get KeyManagementServicePort /format:list"') do if %%A geq 1 set "KP%~3=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where (Name LIKE '%%%~2%%') get KeyManagementServiceMachine /format:list"') do if %%A geq 1 set "KIP%~3=%%A"
	for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where (Name LIKE '%%%~2%%') get GracePeriodRemaining /format:list"') do if %%A geq 1 set "GraPe%~3=%%A"
	for /f "tokens=2 delims== " %%A in ('"wmic path %~1 where (Name LIKE '%%%~2%%') get PartialProductKey /format:list"') do if %%A geq 1 set "PaKey%~3=%%A"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::ACTIVATION LOOPS
:AutoActivate
	cls
	call :CheckSPPSVC
	call :ID
	if %win% lss 9200 set host=127.0.0.2
	set "port=1688"
	call :HEADER "OS-Version: %ver% found %vera%", "ID: %id%"
	wmic path %sls% where version='%version%' call SetKeyManagementServiceMachine MachineName="%host%" >nul
	if %errorlevel% equ 0 echo Successfully changed IP to %host%.
	if %errorlevel% neq 0 echo Setting IP to %host% Failed. 
	wmic path %sls% where version='%version%' call SetKeyManagementServicePort %port% >nul
	if %errorlevel% equ 0 echo Successfully changed Port to %port%. & echo:
	if %errorlevel% neq 0 echo Setting Port to %port% Failed. 
	wmic path %slp% where ID='%id%' call Activate >nul
	if %errorlevel% equ 0 echo: & echo Successfully activated: %ver% %vera% 
	if %errorlevel% neq 0 echo Activation Failed: %errorlevel%
	call :FOOTER
	wmic path %sls% where version='%version%' call ClearKeyManagementServiceMachine >nul
	wmic path %sls% where version='%version%' call ClearKeyManagementServicePort >nul
	wmic path %sls% where version='%version%' call DisableKeyManagementServiceDnsPublishing 1 >nul
	wmic path %sls% where version='%version%' call DisableKeyManagementServiceHostCaching 1 >nul
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:AutoKeyInstall
	pushd "%~dp0"
	cls
	call :HEADER "OS-Version: %ver% found %vera%", " "
	echo:
	call :KeyCheck
	wmic path %sls% where version='%version%' call InstallProductKey ProductKey="%key%" >nul
	if %errorlevel% equ 0 echo Successfully installed Product Key & echo: & echo For: %ver% %vera% & echo: & echo KEY: %key% 
	if %errorlevel% neq 0 echo Installing Product Key Failed. 
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ActivateOnline
	cls
	call :ID
	call :HEADER "OS-Version: %ver% found %vera%", "Activation-ID: %id%"
	echo:
	wmic path %slp% where ID='%id%' call Activate >nul
	if %errorlevel% equ 0 echo: & echo Successfully activated: %ver% %vera% 
	if %errorlevel% neq 0 echo Activation Failed: %errorlevel%
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::OFFICE AUTO
:AutoactivateOffice14
	call :Officex64 14, 1
	call :Othersx64 14, 1, Project, project
	call :Othersx64 14, 1, Visio, visio
	if not defined office14present if not defined project14present if not defined visio14present goto:eof
	cls
	call :HEADER "Office 2010 Professional Plus %vera% found", "in path: %officepath1%"
	echo:
	set "port=1688"
	call :Office14Activate
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:AutoactivateOffice1464
	call :Officex86 14, 1
	call :Othersx86 14, 1, Project, project
	call :Othersx86 14, 1, Visio, visio
	if not defined office14present if not defined project14present if not defined visio14present goto:eof
	cls
	call :HEADER "Office 2010 Professional Plus x86 found", "in path: %officepath1%"
	echo:
	set "port=1688"
	call :Office14Activate
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:AutoactivateOffice15
	call :Officex64 15, 2
	call :Othersx64 15, 2, Project, project
	call :Othersx64 15, 2, Visio, visio
	if not defined office15present if not defined project15present if not defined visio15present goto:eof
	cls
	call :HEADER "Office 2013 Professional Plus %vera% found", "in path: %officepath2%"
	echo:
	set "port=1688"
	call :Office15Activate "YC7DK-G2NP3-2QQC3-J6H88-GVGXT", 2013, 15
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:AutoactivateOffice1564
	call :Officex86 15, 2
	call :Othersx86 15, 2, Project, project
	call :Othersx86 15, 2, Visio, visio
	if not defined office15present if not defined project15present if not defined visio15present goto:eof
	cls
	call :HEADER "Office 2013 Professional Plus x86 found", "in path: %officepath2%"
	echo:
	set "port=1688"
	call :Office15Activate "YC7DK-G2NP3-2QQC3-J6H88-GVGXT", 2013, 15
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:AutoactivateOffice16
	call :CheckC2ROx64 16, 3, Common, office
	call :CheckC2RPx64 16, 3, Project, project
	call :CheckC2RVx64 16, 3, Visio, visio
	if "%office16present%"=="positive" goto:AutoactivateOffice16.a
	if "%project16present%"=="positive" goto:AutoactivateOffice16.a
	if "%visio16present%"=="positive" goto:AutoactivateOffice16.a
	if "%O365ProPlusRetail%"=="positive" goto:AutoactivateOffice16.a
	if "%MondoRetail%"=="positive" goto:AutoactivateOffice16.a
	if "%StandardRetail%"=="positive" goto:AutoactivateOffice16.a
	if "%WordRetail%"=="positive" goto:AutoactivateOffice16.a
	if "%ExcelRetail%"=="positive" goto:AutoactivateOffice16.a
	if "%PowerPointRetail%"=="positive" goto:AutoactivateOffice16.a
	if "%AccessRetail%"=="positive" goto:AutoactivateOffice16.a
	if "%OutlookRetail%"=="positive" goto:AutoactivateOffice16.a
	if "%PublisherRetail%"=="positive" goto:AutoactivateOffice16.a
	if "%OneNoteRetail%"=="positive" goto:AutoactivateOffice16.a
	if "%SkypeForBusinessRetail%"=="positive" goto:AutoactivateOffice16.a
	goto:eof
:AutoactivateOffice16.a
	cls
	call :HEADER "Office 2016 %office16version% found", "in path: %officepath3%"
	if "%office16present%"=="positive" echo ProPlusRetail found
	if "%project16present%"=="positive" echo ProjectProRetail found
	if "%visio16present%"=="positive" echo VisioProRetail found
	if "%O365ProPlusRetail%"=="positive" echo O365ProPlusRetail found
	if "%MondoRetail%"=="positive" echo MondoRetail found
	if "%StandardRetail%"=="positive" echo StandardRetail found
	if "%WordRetail%"=="positive" echo WordRetail found
	if "%ExcelRetail%"=="positive" echo ExcelRetail found
	if "%PowerPointRetail%"=="positive" echo PowerPointRetail found
	if "%AccessRetail%"=="positive" echo AccessRetail found
	if "%OutlookRetail%"=="positive" echo OutlookRetail found
	if "%PublisherRetail%"=="positive" echo PublisherRetail found
	if "%OneNoteRetail%"=="positive" echo OneNoteRetail foundu
	if "%SkypeForBusinessRetail%"=="positive" echo SkypeForBusinessRetail found
	call :FOOTER
	set "port=1688"
	call :Office15Activate "XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99", 2016, 16
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:AutoactivateOffice1664
	call :CheckC2ROx86 16, 3, Common, office
	call :CheckC2RPx86 16, 3, Project, project
	call :CheckC2RVx86 16, 3, Visio, visio
	if "%office16present%"=="positive" goto:AutoactivateOffice1664.a
	if "%project16present%"=="positive" goto:AutoactivateOffice1664.a
	if "%visio16present%"=="positive" goto:AutoactivateOffice1664.a
	if "%O365ProPlusRetail%"=="positive" goto:AutoactivateOffice1664.a
	if "%MondoRetail%"=="positive" goto:AutoactivateOffice1664.a
	if "%StandardRetail%"=="positive" goto:AutoactivateOffice1664.a
	if "%WordRetail%"=="positive" goto:AutoactivateOffice1664.a
	if "%ExcelRetail%"=="positive" goto:AutoactivateOffice1664.a
	if "%PowerPointRetail%"=="positive" goto:AutoactivateOffice1664.a
	if "%AccessRetail%"=="positive" goto:AutoactivateOffice1664.a
	if "%OutlookRetail%"=="positive" goto:AutoactivateOffice1664.a
	if "%PublisherRetail%"=="positive" goto:AutoactivateOffice1664.a
	if "%OneNoteRetail%"=="positive" goto:AutoactivateOffice1664.a
	if "%SkypeForBusinessRetail%"=="positive" goto:AutoactivateOffice1664.a
	goto:eof
:AutoactivateOffice1664.a
	cls
	call :HEADER "Office 2016 %office16version% found", "in path: %officepath3%"
	if "%office16present%"=="positive" echo ProPlusRetail found
	if "%project16present%"=="positive" echo ProjectProRetail found
	if "%visio16present%"=="positive" echo VisioProRetail found
	if "%O365ProPlusRetail%"=="positive" echo O365ProPlusRetail found
	if "%MondoRetail%"=="positive" echo MondoRetail found
	if "%StandardRetail%"=="positive" echo StandardRetail found
	if "%WordRetail%"=="positive" echo WordRetail found
	if "%ExcelRetail%"=="positive" echo ExcelRetail found
	if "%PowerPointRetail%"=="positive" echo PowerPointRetail found
	if "%AccessRetail%"=="positive" echo AccessRetail found
	if "%OutlookRetail%"=="positive" echo OutlookRetail found
	if "%PublisherRetail%"=="positive" echo PublisherRetail found
	if "%OneNoteRetail%"=="positive" echo OneNoteRetail found
	if "%SkypeForBusinessRetail%"=="positive" echo SkypeForBusinessRetail found
	call :FOOTER
	set "port=1688"
	call :Office15Activate "XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99", 2016, 16
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::OFFICE MANUAL
:Office14
	call :Officex64 14, 1
	call :Othersx64 14, 1, Project, project
	call :Othersx64 14, 1, Visio, visio
	if not defined office14present if not defined project14present if not defined visio14present goto:eof
	cls
	call :HEADER "Office 2010 Professional Plus %vera% found", "in path: %officepath1%"
	call :OfficeInputMask
	if "%trigger%"=="2" goto:eof
	call :Office14Activate
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Office1464
	call :Officex86 14, 1
	call :Othersx86 14, 1, Project, project
	call :Othersx86 14, 1, Visio, visio
	if not defined office14present if not defined project14present if not defined visio14present goto:eof
	cls
	call :HEADER "Office 2010 Professional Plus x86 found", "in path: %officepath1%"
	call :OfficeInputMask
	if "%trigger%"=="2" goto:eof
	call :Office14Activate
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Office15
	call :Officex64 15, 2
	call :Othersx64 15, 2, Project, project
	call :Othersx64 15, 2, Visio, visio
	if not defined office15present if not defined project15present if not defined visio15present goto:eof
	cls
	call :HEADER "Office 2013 Professional Plus %vera% found", "in path: %officepath2%"
	call :OfficeInputMask
	if "%trigger%"=="2" goto:eof
	call :Office15Activate "YC7DK-G2NP3-2QQC3-J6H88-GVGXT", 2013, 15
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Office1564
	call :Officex86 15, 2
	call :Othersx86 15, 2, Project, project
	call :Othersx86 15, 2, Visio, visio
	if not defined office15present if not defined project15present if not defined visio15present goto:eof
	cls
	call :HEADER "Office 2013 Professional Plus x86 found", "in path: %officepath2%"
	call :OfficeInputMask
	if "%trigger%"=="2" goto:eof
	call :Office15Activate "YC7DK-G2NP3-2QQC3-J6H88-GVGXT", 2013, 15
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Office16
	call :CheckC2ROx64 16, 3, Common, office
	call :CheckC2RPx64 16, 3, Project, project
	call :CheckC2RVx64 16, 3, Visio, visio
	if "%office16present%"=="positive" goto:Office16.a
	if "%project16present%"=="positive" goto:Office16.a
	if "%visio16present%"=="positive" goto:Office16.a
	if "%O365ProPlusRetail%"=="positive" goto:Office16.a
	if "%MondoRetail%"=="positive" goto:Office16.a
	if "%StandardRetail%"=="positive" goto:Office16.a
	if "%WordRetail%"=="positive" goto:Office16.a
	if "%ExcelRetail%"=="positive" goto:Office16.a
	if "%PowerPointRetail%"=="positive" goto:Office16.a
	if "%AccessRetail%"=="positive" goto:Office16.a
	if "%OutlookRetail%"=="positive" goto:Office16.a
	if "%PublisherRetail%"=="positive" goto:Office16.a
	if "%OneNoteRetail%"=="positive" goto:Office16.a
	if "%SkypeForBusinessRetail%"=="positive" goto:Office16.a
	goto:eof
:Office16.a
	cls
	call :HEADER "Office 2016 %office16version% found", "in path: %officepath3%"
	if "%office16present%"=="positive" echo ProPlusRetail found
	if "%project16present%"=="positive" echo ProjectProRetail found
	if "%visio16present%"=="positive" echo VisioProRetail found
	if "%O365ProPlusRetail%"=="positive" echo O365ProPlusRetail found
	if "%MondoRetail%"=="positive" echo MondoRetail found
	if "%StandardRetail%"=="positive" echo StandardRetail found
	if "%WordRetail%"=="positive" echo WordRetail found
	if "%ExcelRetail%"=="positive" echo ExcelRetail found
	if "%PowerPointRetail%"=="positive" echo PowerPointRetail found
	if "%AccessRetail%"=="positive" echo AccessRetail found
	if "%OutlookRetail%"=="positive" echo OutlookRetail found
	if "%PublisherRetail%"=="positive" echo PublisherRetail found
	if "%OneNoteRetail%"=="positive" echo OneNoteRetail found
	if "%SkypeForBusinessRetail%"=="positive" echo SkypeForBusinessRetail found
	call :FOOTER
	call :OfficeInputMask
	if "%trigger%"=="2" goto:eof
	call :Office15Activate "XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99", 2016, 16
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Office1664
	call :CheckC2ROx86 16, 3, Common, office
	call :CheckC2RPx86 16, 3, Project, project
	call :CheckC2RVx86 16, 3, Visio, visio
	if "%office16present%"=="positive" goto:Office1664.a
	if "%project16present%"=="positive" goto:Office1664.a
	if "%visio16present%"=="positive" goto:Office1664.a
	if "%O365ProPlusRetail%"=="positive" goto:Office1664.a
	if "%MondoRetail%"=="positive" goto:Office1664.a
	if "%StandardRetail%"=="positive" goto:Office1664.a
	if "%WordRetail%"=="positive" goto:Office1664.a
	if "%ExcelRetail%"=="positive" goto:Office1664.a
	if "%PowerPointRetail%"=="positive" goto:Office1664.a
	if "%AccessRetail%"=="positive" goto:Office1664.a
	if "%OutlookRetail%"=="positive" goto:Office1664.a
	if "%PublisherRetail%"=="positive" goto:Office1664.a
	if "%OneNoteRetail%"=="positive" goto:Office1664.a
	if "%SkypeForBusinessRetail%"=="positive" goto:Office1664.a
	goto:eof
:Office1664.a
	cls
	call :HEADER "Office 2016 %office16version% found", "in path: %officepath3%"
	if "%office16present%"=="positive" echo ProPlusRetail found
	if "%project16present%"=="positive" echo ProjectProRetail found
	if "%visio16present%"=="positive" echo VisioProRetail found
	if "%O365ProPlusRetail%"=="positive" echo O365ProPlusRetail found
	if "%MondoRetail%"=="positive" echo MondoRetail found
	if "%StandardRetail%"=="positive" echo StandardRetail found
	if "%WordRetail%"=="positive" echo WordRetail found
	if "%ExcelRetail%"=="positive" echo ExcelRetail found
	if "%PowerPointRetail%"=="positive" echo PowerPointRetail found
	if "%AccessRetail%"=="positive" echo AccessRetail found
	if "%OutlookRetail%"=="positive" echo OutlookRetail found
	if "%PublisherRetail%"=="positive" echo PublisherRetail found
	if "%OneNoteRetail%"=="positive" echo OneNoteRetail found
	if "%SkypeForBusinessRetail%"=="positive" echo SkypeForBusinessRetail found
	call :FOOTER
	call :OfficeInputMask
	if "%trigger%"=="2" goto:eof
	call :Office15Activate "XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99", 2016, 16
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::===============================================================================================================
::C2R CHECK
:CheckC2ROx64
	set "officepath%~2="
	set "office16arch="
	set "office16present="
	set "ProPlusRetail="
	set "O365ProPlusRetail="
	set "MondoRetail="
	set "StandardRetail="
	set "ProjectProRetail="
	set "VisioProRetail="
	set "WordRetail="
	set "ExcelRetail="
	set "PowerPointRetail="
	set "AccessRetail="
	set "OutlookRetail="
	set "PublisherRetail="
	set "OneNoteRetail="
	set "SkypeForBusinessRetail="
	reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "InstallationPath" >nul 2>&1
	if errorlevel 1 goto:eof
	FOR /F "tokens=2*" %%a IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "Platform"') do set "office16arch=%%b" >nul 2>&1
	if "%office16arch%"=="x86" goto:eof
	FOR /F "tokens=2*" %%a IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "InstallationPath"') do set "officepathshort=%%b" >nul 2>&1
	set "officepath%~2=%officepathshort%\Office%~1"
	FOR /F "tokens=2*" %%a IN ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\ProductReleaseIDs" /v "ActiveConfiguration"') do set "prodrelid=%%b" >nul 2>&1
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\ProductReleaseIDs\%prodrelid%\ProplusRetail.16" >nul 2>&1
	if "%errorlevel%"=="0" set "office16present=positive"
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\ProductReleaseIDs\%prodrelid%\ProfessionalRetail.16" >nul 2>&1
	if "%errorlevel%"=="0" set "office16present=positive"
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "ProductReleaseIds" 2^>nul') DO (Set "Office16AppsInstalled=%%B")
	for /F "tokens=1,2,3,4,5,6,7,8,9,10,11,12,13 delims=," %%A IN ("%Office16AppsInstalled%") DO (
		set "%%A=positive" >nul 2>&1
		set "%%B=positive" >nul 2>&1
		set "%%C=positive" >nul 2>&1
		set "%%D=positive" >nul 2>&1
		set "%%E=positive" >nul 2>&1
		set "%%F=positive" >nul 2>&1
		set "%%G=positive" >nul 2>&1
		set "%%H=positive" >nul 2>&1
		set "%%I=positive" >nul 2>&1
		set "%%J=positive" >nul 2>&1
		set "%%K=positive" >nul 2>&1
		set "%%L=positive" >nul 2>&1
		set "%%M=positive" >nul 2>&1
	)
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckC2RPx64
	set "project16arch="
	set "project16present="
	reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "InstallationPath" >nul 2>&1
	if errorlevel 1 goto:eof
	FOR /F "tokens=2*" %%a IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "Platform"') do set "project16arch=%%b" >nul 2>&1
	if "%project16arch%"=="x86" goto:eof
	FOR /F "tokens=2*" %%a IN ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\ProductReleaseIDs" /v "ActiveConfiguration"') do set "prodrelid=%%b" >nul 2>&1
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\ProductReleaseIDs\%prodrelid%\ProjectProRetail.16" >nul 2>&1
	if "%errorlevel%"=="0" set "project16present=positive"
	FOR /F "tokens=2*" %%a IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun" /v "InstallPath"') do set "officepathshort=%%b" >nul 2>&1
	set "officepath%~2=%officepathshort%\Office%~1"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckC2RVx64
	set "visio16arch="
	set "visio16present="
	reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "InstallationPath" >nul 2>&1
	if errorlevel 1 goto:eof
	FOR /F "tokens=2*" %%a IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "Platform"') do set "visio16arch=%%b" >nul 2>&1
	if "%visio16arch%"=="x86" goto:eof
	FOR /F "tokens=2*" %%a IN ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\ProductReleaseIDs" /v "ActiveConfiguration"') do set "prodrelid=%%b" >nul 2>&1
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\ProductReleaseIDs\%prodrelid%\VisioProRetail.16" >nul 2>&1
	if "%errorlevel%"=="0" set "visio16present=positive"
	FOR /F "tokens=2*" %%a IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun" /v "InstallPath"') do set "officepathshort=%%b" >nul 2>&1
	set "officepath%~2=%officepathshort%\Office%~1"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckC2ROx86
	set "officepath%~2="
	set "office16arch="
	set "office16present="
	set "ProPlusRetail="
	set "O365ProPlusRetail="
	set "MondoRetail="
	set "StandardRetail="
	set "ProjectProRetail="
	set "VisioProRetail="
	set "WordRetail="
	set "ExcelRetail="
	set "PowerPointRetail="
	set "AccessRetail="
	set "OutlookRetail="
	set "PublisherRetail="
	set "OneNoteRetail="
	set "SkypeForBusinessRetail="
	reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "InstallationPath" >nul 2>&1
	if errorlevel 1 goto:eof
	FOR /F "tokens=2*" %%a IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "Platform"') do set "office16arch=%%b" >nul 2>&1
	if "%office16arch%"=="x64" goto:eof
	FOR /F "tokens=2*" %%a IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "InstallationPath"') do set "officepathshort=%%b" >nul 2>&1
	set "officepath%~2=%officepathshort%\Office%~1"
	FOR /F "tokens=2*" %%a IN ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\ProductReleaseIDs" /v "ActiveConfiguration"') do set "prodrelid=%%b" >nul 2>&1
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\ProductReleaseIDs\%prodrelid%\ProplusRetail.16" >nul 2>&1
	if "%errorlevel%"=="0" set "office16present=positive"
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\ProductReleaseIDs\%prodrelid%\ProfessionalRetail.16" >nul 2>&1
	if "%errorlevel%"=="0" set "office16present=positive"
	for /F "tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "ProductReleaseIds" 2^>nul') DO (Set "Office16AppsInstalled=%%B")
	for /F "tokens=1,2,3,4,5,6,7,8,9,10,11,12,13 delims=," %%A IN ("%Office16AppsInstalled%") DO (
		set "%%A=positive" >nul 2>&1
		set "%%B=positive" >nul 2>&1
		set "%%C=positive" >nul 2>&1
		set "%%D=positive" >nul 2>&1
		set "%%E=positive" >nul 2>&1
		set "%%F=positive" >nul 2>&1
		set "%%G=positive" >nul 2>&1
		set "%%H=positive" >nul 2>&1
		set "%%I=positive" >nul 2>&1
		set "%%J=positive" >nul 2>&1
		set "%%K=positive" >nul 2>&1
		set "%%L=positive" >nul 2>&1
		set "%%M=positive" >nul 2>&1
	)
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckC2RPx86
	set "project16arch="
	set "project16present="
	reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "InstallationPath" >nul 2>&1
	if errorlevel 1 goto:eof
	FOR /F "tokens=2*" %%a IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "Platform"') do set "project16arch=%%b" >nul 2>&1
	if "%project16arch%"=="x64" goto:eof
	FOR /F "tokens=2*" %%a IN ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\ProductReleaseIDs" /v "ActiveConfiguration"') do set "prodrelid=%%b" >nul 2>&1
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\ProductReleaseIDs\%prodrelid%\ProjectProRetail.16" >nul 2>&1
	if "%errorlevel%"=="0" set "project16present=positive"
	FOR /F "tokens=2*" %%a IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun" /v "InstallPath"') do set "officepathshort=%%b" >nul 2>&1
	set "officepath%~2=%officepathshort%\Office%~1"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckC2RVx86
	set "visio16arch="
	set "visio16present="
	reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "InstallationPath" >nul 2>&1
	if errorlevel 1 goto:eof
	FOR /F "tokens=2*" %%a IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v "Platform"') do set "visio16arch=%%b" >nul 2>&1
	if "%visio16arch%"=="x64" goto:eof
	FOR /F "tokens=2*" %%a IN ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\ProductReleaseIDs" /v "ActiveConfiguration"') do set "prodrelid=%%b" >nul 2>&1
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\ProductReleaseIDs\%prodrelid%\VisioProRetail.16" >nul 2>&1
	if "%errorlevel%"=="0" set "visio16present=positive"
	FOR /F "tokens=2*" %%a IN ('reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun" /v "InstallPath"') do set "officepathshort=%%b" >nul 2>&1
	set "officepath%~2=%officepathshort%\Office%~1"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Officex64
	set "officepath%~2="
	set "office%~1present="
	set "visio%~1present="
	set "project%~1present="
	if %~1 equ 14 if "%vera%"=="x64" set "ostring=90140000-0011-0000-1000-0000000FF1CE"
	if %~1 equ 14 if "%vera%"=="x86" set "ostring=90140000-0011-0000-0000-0000000FF1CE"
	if %~1 equ 14 if "%vera%"=="x64" set "pstring=90140000-003B-0000-1000-0000000FF1CE"
	if %~1 equ 14 if "%vera%"=="x86" set "pstring=90140000-003B-0000-0000-0000000FF1CE"
	if %~1 equ 14 if "%vera%"=="x64" set "vstring=90140000-0057-0000-1000-0000000FF1CE"
	if %~1 equ 14 if "%vera%"=="x86" set "vstring=90140000-0057-0000-0000-0000000FF1CE"
	if %~1 equ 15 if "%vera%"=="x64" set "ostring=90150000-0011-0000-1000-0000000FF1CE"
	if %~1 equ 15 if "%vera%"=="x86" set "ostring=90150000-0011-0000-0000-0000000FF1CE"
	if %~1 equ 15 if "%vera%"=="x64" set "pstring=91150000-003B-0000-1000-0000000FF1CE"
	if %~1 equ 15 if "%vera%"=="x86" set "pstring=91150000-003B-0000-0000-0000000FF1CE"
	if %~1 equ 15 if "%vera%"=="x64" set "vstring=91150000-0051-0000-1000-0000000FF1CE"
	if %~1 equ 15 if "%vera%"=="x86" set "vstring=91150000-0051-0000-0000-0000000FF1CE"
	set "vstring=91150000-0051-0000-0000-0000000FF1CE"
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\%~1.0\Common\InstallRoot" >nul 2>&1
	if errorlevel 1 goto:eof
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\%~1.0\Common\Config\{%ostring%}" >nul 2>&1
	if "%errorlevel%"=="0" set "office%~1present=positive"
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\%~1.0\Common\Config\{%pstring%}" >nul 2>&1
	if "%errorlevel%"=="0" set "project%~1present=positive"
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\%~1.0\Common\Config\{%vstring%}" >nul 2>&1
	if "%errorlevel%"=="0" set "visio%~1present=positive"
	FOR /F "tokens=2*" %%a IN ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\%~1.0\Common\InstallRoot" /v "Path"') do (SET officepath%~2=%%b) >nul 2>&1
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Officex86
	set "officepath%~2="
	set "office%~1present="
	set "visio%~1present="
	set "project%~1present="
	if %~1 equ 14 set "ostring=90140000-0011-0000-0000-0000000FF1CE"
	if %~1 equ 14 set "pstring=90140000-003B-0000-0000-0000000FF1CE"
	if %~1 equ 14 set "vstring=90140000-0057-0000-0000-0000000FF1CE"
	if %~1 equ 15 set "ostring=90150000-0011-0000-0000-0000000FF1CE"
	if %~1 equ 15 set "pstring=91150000-003B-0000-0000-0000000FF1CE"
	if %~1 equ 15 set "vstring=91150000-0051-0000-0000-0000000FF1CE"
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\%~1.0\Common\InstallRoot" >nul 2>&1
	if errorlevel 1 goto:eof
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\%~1.0\Common\Config\{%ostring%}" >nul 2>&1
	if "%errorlevel%"=="0" set "office%~1present=positive"
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\%~1.0\Common\Config\{%pstring%}" >nul 2>&1
	if "%errorlevel%"=="0" set "project%~1present=positive"
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\%~1.0\Common\Config\{%vstring%}" >nul 2>&1
	if "%errorlevel%"=="0" set "visio%~1present=positive"
	FOR /F "tokens=2*" %%a IN ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\%~1.0\Common\InstallRoot" /v "Path"') do (SET officepath%~2=%%b) >nul 2>&1
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Othersx86
	set "%~4%~1path="
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\%~1.0\%~3\InstallRoot" >nul 2>&1
	if errorlevel 1 goto:eof
	FOR /F "tokens=2*" %%a IN ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\%~1.0\%~3\InstallRoot" /v "Path"') do (SET %~4%~1path=%%b) >nul 2>&1
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Othersx64
	set "%~4%~1path="
	reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\%~1.0\%~3\InstallRoot" >nul 2>&1
	if errorlevel 1 goto:eof
	FOR /F "tokens=2*" %%a IN ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\%~1.0\%~3\InstallRoot" /v "Path"') do (SET %~4%~1path=%%b) >nul 2>&1
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:OfficeInputMask
	echo:
	CHOICE /C AS /M " [A]ctivate or [S]kip ?  : "
	if %errorlevel%==1 (set trigger=1)&&(goto :AOfurther)
	if %errorlevel%==2 (set trigger=2)&&(goto :eof)
:AOfurther
	call :FOOTER
	if %win% lss 9200 if /i "%host%"=="" set "host=127.0.0.2"
	set "port=1688"
	echo Default: %host%
	echo Default: %port%
	call :FOOTER
	set /p host=Set host ^>
	set /p port=Set port ^>
	cls
	call :HEADER "ACTIVATING ...", ""
:AOInputEnd
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Office15Activate
	set ospp=OfficeSoftwareProtectionProduct
	set osps=OfficeSoftwareProtectionService
	set slp=SoftwareLicensingProduct
	set sls=SoftwareLicensingService
	set spp=SoftwareProtectionProduct
	if %win% geq 9200 (call :OID "%slp%", %~3) else (call :OID "%ospp%", %~3)
	if %win% GEQ 9200 if defined office%~3present (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "%~1")
	if %win% lss 9200 if defined office%~3present (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%osps%", "%~1")
	if %win% GEQ 9200 if defined visio15present (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "C2FG9-N6J68-H8BTJ-BW3QX-RM3B3")
	if %win% lss 9200 if defined visio15present (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%osps%", "C2FG9-N6J68-H8BTJ-BW3QX-RM3B3")
	if %win% GEQ 9200 if defined project15present (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "FN8TT-7WMH6-2D4X9-M337T-2342K")
	if %win% lss 9200 if defined project15present (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%osps%", "FN8TT-7WMH6-2D4X9-M337T-2342K")
	if %win% GEQ 9200 if defined visio16present (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "PD3PC-RHNGV-FXJ29-8JK7D-RJRJK")
	if %win% lss 9200 if defined visio16present (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%osps%", "PD3PC-RHNGV-FXJ29-8JK7D-RJRJK")
	if %win% GEQ 9200 if defined project16present (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "YG9NW-3K39V-2T3HJ-93F3Q-G83KT")
	if %win% lss 9200 if defined project16present (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%osps%", "YG9NW-3K39V-2T3HJ-93F3Q-G83KT")
    if %win% GEQ 9200 if defined O365ProPlusRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99")
    if %win% LSS 9200 if defined O365ProPlusRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99")
    if %win% GEQ 9200 if defined MondoRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "HFTND-W9MK4-8B7MJ-B6C4G-XQBR2")
    if %win% LSS 9200 if defined MondoRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "HFTND-W9MK4-8B7MJ-B6C4G-XQBR2")
    if %win% GEQ 9200 if defined StandardRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "JNRGM-WHDWX-FJJG3-K47QV-DRTFM")
    if %win% LSS 9200 if defined StandardRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "JNRGM-WHDWX-FJJG3-K47QV-DRTFM")
    if %win% GEQ 9200 if defined WordRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "WXY84-JN2Q9-RBCCQ-3Q3J3-3PFJ6")
    if %win% LSS 9200 if defined WordRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "WXY84-JN2Q9-RBCCQ-3Q3J3-3PFJ6")
    if %win% GEQ 9200 if defined ExcelRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "9C2PK-NWTVB-JMPW8-BFT28-7FTBF")
    if %win% LSS 9200 if defined ExcelRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "9C2PK-NWTVB-JMPW8-BFT28-7FTBF")
    if %win% GEQ 9200 if defined PowerPointRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "J7MQP-HNJ4Y-WJ7YM-PFYGF-BY6C6")
    if %win% LSS 9200 if defined PowerPointRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "J7MQP-HNJ4Y-WJ7YM-PFYGF-BY6C6")
    if %win% GEQ 9200 if defined AccessRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "GNH9Y-D2J4T-FJHGG-QRVH7-QPFDW")
    if %win% LSS 9200 if defined AccessRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "GNH9Y-D2J4T-FJHGG-QRVH7-QPFDW")
    if %win% GEQ 9200 if defined OutlookRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "R69KK-NTPKF-7M3Q4-QYBHW-6MT9B")
    if %win% LSS 9200 if defined OutlookRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "R69KK-NTPKF-7M3Q4-QYBHW-6MT9B")
    if %win% GEQ 9200 if defined PublisherRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "F47MM-N3XJP-TQXJ9-BP99D-8K837")
    if %win% LSS 9200 if defined PublisherRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "F47MM-N3XJP-TQXJ9-BP99D-8K837")
    if %win% GEQ 9200 if defined OneNoteRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "DR92N-9HTF2-97XKM-XW2WJ-XW3J6")
    if %win% LSS 9200 if defined OneNoteRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "DR92N-9HTF2-97XKM-XW2WJ-XW3J6")
    if %win% GEQ 9200 if defined SkypeForBusinessRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "869NQ-FJ69K-466HW-QYCP2-DDBV6")
    if %win% LSS 9200 if defined SkypeForBusinessRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "869NQ-FJ69K-466HW-QYCP2-DDBV6")
	call :FOOTER
	if %win% GEQ 9200 call :OfficeHostAndPort "%sls%"
	if %win% lss 9200 call :OfficeHostAndPort "%osps%"
	call :FOOTER
	if %win% GEQ 9200 if defined office%~3present call :OfficeActLoop "%slp%", %~2
	if %win% LSS 9200 if defined office%~3present call :OfficeActLoop "%ospp%", %~2
	if %win% GEQ 9200 if defined visio15present call :OthersActLoop "%slp%", "e13ac10e-75d0-4aff-a0cd-764982cf541c", Visio, 20%~3
	if %win% LSS 9200 if defined visio15present call :OthersActLoop "%ospp%", "e13ac10e-75d0-4aff-a0cd-764982cf541c", Visio, 20%~3
	if %win% GEQ 9200 if defined project15present call :OthersActLoop "%slp%", "4a5d124a-e620-44ba-b6ff-658961b33b9a", Project, 20%~3
	if %win% LSS 9200 if defined project15present call :OthersActLoop "%ospp%", "4a5d124a-e620-44ba-b6ff-658961b33b9a", Project, 20%~3
	if %win% GEQ 9200 if defined visio16present call :OthersActLoop "%slp%", "6bf301c1-b94a-43e9-ba31-d494598c47fb", Visio, 20%~3
	if %win% LSS 9200 if defined visio16present call :OthersActLoop "%ospp%", "6bf301c1-b94a-43e9-ba31-d494598c47fb", Visio, 20%~3
	if %win% GEQ 9200 if defined project16present call :OthersActLoop "%slp%", "4f414197-0fc2-4c01-b68a-86cbb9ac254c", Project, 20%~3
	if %win% LSS 9200 if defined project16present call :OthersActLoop "%ospp%", "4f414197-0fc2-4c01-b68a-86cbb9ac254c", Project, 20%~3
	if %win% GEQ 9200 if defined O365ProPlusRetail call :OthersActLoop "%slp%", "d450596f-894d-49e0-966a-fd39ed4c4c64", ProPlus, 20%~3
	if %win% LSS 9200 if defined O365ProPlusRetail call :OthersActLoop "%ospp%", "d450596f-894d-49e0-966a-fd39ed4c4c64", ProPlus, 20%~3
	if %win% GEQ 9200 if defined MondoRetail call :OthersActLoop "%slp%", "9caabccb-61b1-4b4b-8bec-d10a3c3ac2ce", Mondo, 20%~3
	if %win% LSS 9200 if defined MondoRetail call :OthersActLoop "%ospp%", "9caabccb-61b1-4b4b-8bec-d10a3c3ac2ce", Mondo, 20%~3
	if %win% GEQ 9200 if defined StandardRetail call :OthersActLoop "%slp%", "dedfa23d-6ed1-45a6-85dc-63cae0546de6", Standard, 20%~3
	if %win% LSS 9200 if defined StandardRetail call :OthersActLoop "%ospp%", "dedfa23d-6ed1-45a6-85dc-63cae0546de6", Standard, 20%~3
	if %win% GEQ 9200 if defined WordRetail call :OthersActLoop "%slp%", "bb11badf-d8aa-470e-9311-20eaf80fe5cc", Word, 20%~3
	if %win% LSS 9200 if defined WordRetail call :OthersActLoop "%ospp%", "bb11badf-d8aa-470e-9311-20eaf80fe5cc", Word, 20%~3
	if %win% GEQ 9200 if defined ExcelRetail call :OthersActLoop "%slp%", "c3e65d36-141f-4d2f-a303-a842ee756a29", Excel, 20%~3
	if %win% LSS 9200 if defined ExcelRetail call :OthersActLoop "%ospp%", "c3e65d36-141f-4d2f-a303-a842ee756a29", Excel, 20%~3
	if %win% GEQ 9200 if defined PowerPointRetail call :OthersActLoop "%slp%", "d70b1bba-b893-4544-96e2-b7a318091c33", PowerPoint, 20%~3
	if %win% LSS 9200 if defined PowerPointRetail call :OthersActLoop "%ospp%", "d70b1bba-b893-4544-96e2-b7a318091c33", PowerPoint, 20%~3
	if %win% GEQ 9200 if defined AccessRetail call :OthersActLoop "%slp%", "67c0fc0c-deba-401b-bf8b-9c8ad8395804", Access, 20%~3
	if %win% LSS 9200 if defined AccessRetail call :OthersActLoop "%ospp%", "67c0fc0c-deba-401b-bf8b-9c8ad8395804", Access, 20%~3
	if %win% GEQ 9200 if defined OutlookRetail call :OthersActLoop "%slp%", "ec9d9265-9d1e-4ed0-838a-cdc20f2551a1", Outlook, 20%~3
	if %win% LSS 9200 if defined OutlookRetail call :OthersActLoop "%ospp%", "ec9d9265-9d1e-4ed0-838a-cdc20f2551a1", Outlook, 20%~3
	if %win% GEQ 9200 if defined PublisherRetail call :OthersActLoop "%slp%", "041a06cb-c5b8-4772-809f-416d03d16654", Publisher, 20%~3
	if %win% LSS 9200 if defined PublisherRetail call :OthersActLoop "%ospp%", "041a06cb-c5b8-4772-809f-416d03d16654", Publisher, 20%~3
	if %win% GEQ 9200 if defined OneNoteRetail call :OthersActLoop "%slp%", "d8cace59-33d2-4ac7-9b1b-9b72339c51c8", OneNote, 20%~3
	if %win% LSS 9200 if defined OneNoteRetail call :OthersActLoop "%ospp%", "d8cace59-33d2-4ac7-9b1b-9b72339c51c8", OneNote, 20%~3
	if %win% GEQ 9200 if defined SkypeForBusinessRetail call :OthersActLoop "%slp%", "83e04ee1-fa8d-436d-8994-d31a862cab77", SkypeForBusiness, 20%~3
	if %win% LSS 9200 if defined SkypeForBusinessRetail call :OthersActLoop "%ospp%", "83e04ee1-fa8d-436d-8994-d31a862cab77", SkypeForBusiness, 20%~3
	if %win% GEQ 9200 call :OfficeActivateCleanup "%sls%", "%oid2%"
	if %win% LSS 9200 call :OfficeActivateCleanup "%osps%", "%oid2%"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Office14Activate
	set ospp=OfficeSoftwareProtectionProduct
	set osps=OfficeSoftwareProtectionService
	call :OID "%ospp%", OfficeProPlus
	call :OfficeGVLKInstall "%osps%", "VYBBJ-TRJPB-QFQRF-QFT4D-H3GVB"
	if defined project14present call :OfficeGVLKInstall "%osps%", "GX6F-PGV49-PGW3J-9BTGG-VHKC6"
	if defined visio14present call :OfficeGVLKInstall "%osps%", "7MCW8-VRQVK-G677T-PDJCM-Q8TCP"
	call :FOOTER
	call :OfficeHostAndPort "%osps%"
	call :OfficeActLoop "%ospp%", 2010
	call :FOOTER
	if defined project14present call :OthersActLoop "%ospp%", "df133ff7-bf14-4f95-afe3-7b48e7e331ef", Project, 2010
	if defined visio14present call :OthersActLoop "%ospp%", "e558389c-83c3-4b29-adfe-5e4d7f46c358", Visio, 2010
	call :OfficeActivateCleanup "%osps%", "%oid1%"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:OfficeGVLKInstall
    if %win% GEQ 9200    (
    wmic path %~1 where version='%version%' call InstallProductKey ProductKey="%~2" >nul 2>&1
    if %errorlevel% equ 0 echo: & echo Successfully installed %~2. & echo:
    if %errorlevel% neq 0 echo: & echo Installing %~2 Failed. & echo:
    )
    if %win% LSS 9200    (
    cscript "%officepath3%\ospp.vbs" /inpkey:%~2
    if %errorlevel% equ 0 echo: & echo Successfully installed %~2. & echo:
    if %errorlevel% neq 0 echo: & echo Installing %~2 Failed. & echo:
    )
    goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:OfficeHostAndPort
	wmic path %~1 where version='%version%' call SetKeyManagementServiceMachine MachineName="%host%" >nul 2>&1
	if %errorlevel% equ 0 echo: & echo Successfully changed IP to %host%. & echo:
	if %errorlevel% neq 0 echo: & echo Setting IP to %host% Failed. 
	wmic path %~1 where version='%version%' call SetKeyManagementServicePort %port% >nul 2>&1
	if %errorlevel% equ 0 echo: & echo Successfully changed Port to %port%. & echo:
	if %errorlevel% neq 0 echo: & echo Setting Port to %port% Failed. & echo:
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:OfficeActLoop
	wmic path %~1 where ID='%oid%' call Activate >nul 2>&1
	if %errorlevel% equ 0 echo: & echo Successfully activated: Office %~2 Professional Plus.
	if %errorlevel% neq 0 echo: & echo Activation Failed. 
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:OthersActLoop
	wmic path %~1 where ID='%~2' call Activate >nul 2>&1
	if %errorlevel% equ 0 echo: & echo Successfully activated: %~3 %~4 Professional Plus.
	if %errorlevel% neq 0 echo: & echo Activation Failed: %errorlevel%
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:OfficeActivateCleanup
	wmic path %~1 where ID='%~2' call ClearKeyManagementServiceMachine >nul 2>&1
	wmic path %~1 where ID='%~2' call ClearKeyManagementServicePort >nul 2>&1
	wmic path %~1 where ID='%~2' call DisableKeyManagementServiceDnsPublishing 1 >nul 2>&1
	wmic path %~1 where ID='%~2 call DisableKeyManagementServiceHostCaching 1 >nul 2>&1
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Office15ConversionLoop
	pushd %~dp0
	set ospp=OfficeSoftwareProtectionProduct
	set osps=OfficeSoftwareProtectionService
	set slp=SoftwareLicensingProduct
	set sls=SoftwareLicensingService
	set spp=SoftwareProtectionProduct
	set "ocert=files\officefixes\15\ProPlus"
	set "ocert2=files\officefixes\15\UNVS"
	set "pcert=files\officefixes\15\ProjectPro"
	set "vcert=files\officefixes\15\VisioPro"
	if %win% GEQ 9200 if defined office15present call :OLDConvertOfficeLoop "%sls%", "%ocert%"
	if %win% GEQ 9200 if defined office15present call :OLDConvertOfficeLoop "%sls%", "%ocert2%"
	if %win% LSS 9200 if defined office15present call :OLDConvertOfficeLoop "%osps%", "%ocert%"
	if %win% LSS 9200 if defined office15present call :OLDConvertOfficeLoop "%osps%", "%ocert2%"
	if %win% GEQ 9200 if defined project15present call :OLDConvertOfficeLoop "%sls%", "%pcert%"
	if %win% LSS 9200 if defined project15present call :OLDConvertOfficeLoop "%osps%", "%pcert%"
	if %win% GEQ 9200 if defined visio15present call :OLDConvertOfficeLoop "%sls%", "%vcert%"
	if %win% LSS 9200 if defined visio15present call :OLDConvertOfficeLoop "%osps%", "%vcert%"
	cls
	call :HEADER "   INSTALLING GVLK"
	if %win% GEQ 9200 if defined office15present call :OfficeGVLKInstall "%sls%", "YC7DK-G2NP3-2QQC3-J6H88-GVGXT"
	if %win% LSS 9200 if defined office15present call :OfficeGVLKInstall "%osps%", "YC7DK-G2NP3-2QQC3-J6H88-GVGXT"
	if %win% GEQ 9200 if defined project15present call :OfficeGVLKInstall "%sls%", "FN8TT-7WMH6-2D4X9-M337T-2342K"
	if %win% LSS 9200 if defined project15present call :OfficeGVLKInstall "%osps%", "FN8TT-7WMH6-2D4X9-M337T-2342K"
	if %win% GEQ 9200 if defined visio15present call :OfficeGVLKInstall "%sls%", "C2FG9-N6J68-H8BTJ-BW3QX-RM3B3"
	if %win% LSS 9200 if defined visio15present call :OfficeGVLKInstall "%osps%", "C2FG9-N6J68-H8BTJ-BW3QX-RM3B3"
	call :FOOTER
	timeout /t 5
	if %win% geq 9200 call :Uninstall15Auto "%slp%"
	if %win% lss 9200 call :Uninstall15Auto "%ospp%"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Office16ConversionLoop
	pushd %~dp0
	set ospp=OfficeSoftwareProtectionProduct
	set osps=OfficeSoftwareProtectionService
	set slp=SoftwareLicensingProduct
	set sls=SoftwareLicensingService
	set spp=SoftwareProtectionProduct
	for /f "tokens=2 delims==" %%a in ('"wmic path %osps% get Version /value"') do set ospsversion=%%a
	for /f "tokens=2 delims==" %%a in ('"wmic path %sls% get Version /value"') do set slsversion=%%a
    call :Uninstall16Auto
    call :ConvertOfficeGeneralLoop "%sls%"
	if defined office16present call :ConvertOfficeLoop "%sls%", "ProPlus"
    if defined project16present call :ConvertOfficeLoop "%sls%", "ProjectPro"
    if defined visio16present call :ConvertOfficeLoop "%sls%", "VisioPro"
    if defined O365ProPlusRetail call :ConvertOfficeLoop "%sls%", "ProPlus"
    if defined MondoRetail call :ConvertOfficeLoop "%sls%", "Mondo"
    if defined StandardRetail call :ConvertOfficeLoop "%sls%", "Standard"
    if defined WordRetail call :ConvertOfficeLoop "%sls%", "Word"
    if defined ExcelRetail call :ConvertOfficeLoop "%sls%", "Excel"
    if defined PowerPointRetail call :ConvertOfficeLoop "%sls%", "PowerPoint"
    if defined AccessRetail call :ConvertOfficeLoop "%sls%", "Access"
    if defined OutlookRetail call :ConvertOfficeLoop "%sls%", "Outlook"
    if defined PublisherRetail call :ConvertOfficeLoop "%sls%", "Publisher"
    if defined OneNoteRetail call :ConvertOfficeLoop "%sls%", "OneNote"
    if defined SkypeForBusinessRetail call :ConvertOfficeLoop "%sls%", "SkypeForBusiness"
    cls
    call :HEADER "INSTALLING GVLK"
    if %win% GEQ 9200 if defined office16present (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99")
    if %win% LSS 9200 if defined office16present (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99")
    if %win% GEQ 9200 if defined project16present (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "YG9NW-3K39V-2T3HJ-93F3Q-G83KT")
    if %win% LSS 9200 if defined project16present (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "YG9NW-3K39V-2T3HJ-93F3Q-G83KT")
    if %win% GEQ 9200 if defined visio16present (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "PD3PC-RHNGV-FXJ29-8JK7D-RJRJK")
    if %win% LSS 9200 if defined visio16present (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "PD3PC-RHNGV-FXJ29-8JK7D-RJRJK")
    if %win% GEQ 9200 if defined O365ProPlusRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99")
    if %win% LSS 9200 if defined O365ProPlusRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99")
    if %win% GEQ 9200 if defined MondoRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "HFTND-W9MK4-8B7MJ-B6C4G-XQBR2")
    if %win% LSS 9200 if defined MondoRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "HFTND-W9MK4-8B7MJ-B6C4G-XQBR2")
    if %win% GEQ 9200 if defined StandardRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "JNRGM-WHDWX-FJJG3-K47QV-DRTFM")
    if %win% LSS 9200 if defined StandardRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "JNRGM-WHDWX-FJJG3-K47QV-DRTFM")
    if %win% GEQ 9200 if defined WordRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "WXY84-JN2Q9-RBCCQ-3Q3J3-3PFJ6")
    if %win% LSS 9200 if defined WordRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "WXY84-JN2Q9-RBCCQ-3Q3J3-3PFJ6")
    if %win% GEQ 9200 if defined ExcelRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "9C2PK-NWTVB-JMPW8-BFT28-7FTBF")
    if %win% LSS 9200 if defined ExcelRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "9C2PK-NWTVB-JMPW8-BFT28-7FTBF")
    if %win% GEQ 9200 if defined PowerPointRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "J7MQP-HNJ4Y-WJ7YM-PFYGF-BY6C6")
    if %win% LSS 9200 if defined PowerPointRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "J7MQP-HNJ4Y-WJ7YM-PFYGF-BY6C6")
    if %win% GEQ 9200 if defined AccessRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "GNH9Y-D2J4T-FJHGG-QRVH7-QPFDW")
    if %win% LSS 9200 if defined AccessRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "GNH9Y-D2J4T-FJHGG-QRVH7-QPFDW")
    if %win% GEQ 9200 if defined OutlookRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "R69KK-NTPKF-7M3Q4-QYBHW-6MT9B")
    if %win% LSS 9200 if defined OutlookRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "R69KK-NTPKF-7M3Q4-QYBHW-6MT9B")
    if %win% GEQ 9200 if defined PublisherRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "F47MM-N3XJP-TQXJ9-BP99D-8K837")
    if %win% LSS 9200 if defined PublisherRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "F47MM-N3XJP-TQXJ9-BP99D-8K837")
    if %win% GEQ 9200 if defined OneNoteRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "DR92N-9HTF2-97XKM-XW2WJ-XW3J6")
    if %win% LSS 9200 if defined OneNoteRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "DR92N-9HTF2-97XKM-XW2WJ-XW3J6")
    if %win% GEQ 9200 if defined SkypeForBusinessRetail (set "version=%slsversion%")&&(call :OfficeGVLKInstall "%sls%", "869NQ-FJ69K-466HW-QYCP2-DDBV6")
    if %win% LSS 9200 if defined SkypeForBusinessRetail (set "version=%ospsversion%")&&(call :OfficeGVLKInstall "%osps%", "869NQ-FJ69K-466HW-QYCP2-DDBV6")
    call :FOOTER
    timeout /t 5
    goto:eof
:================================================================================================================
::===============================================================================================================
::CONVERT
:OLDConvertOfficeGeneralLoop
    cls
	pushd %~dp0
    call :HEADER "INSTALLING VOLUME LICENSE CERTS", ""
	set "certs=files\officefixes\16\general"
	for /r "%certs%" %%a in (pkeyconfig*.xrm-ms) do (wmic path %~1 where version='%version%' call InstallLicense License="%%a")
	for /r "%certs%" %%a in (client-issuance*.xrm-ms) do (wmic path %~1 where version='%version%' call InstallLicense License="%%a")
	goto:eof
:ConvertOfficeGeneralLoop
    cls
    call :HEADER "INSTALLING VOLUME LICENSE CERTS", ""
	if %win% GEQ 9200 (    
	cscript "%windir%\system32\slmgr.vbs" /ilc "files\officefixes\16\pkeyconfig-office.xrm-ms"
	cscript "%windir%\system32\slmgr.vbs" /ilc "files\officefixes\16\client-issuance-root.xrm-ms"
	cscript "%windir%\system32\slmgr.vbs" /ilc "files\officefixes\16\client-issuance-stil.xrm-ms"
	cscript "%windir%\system32\slmgr.vbs" /ilc "files\officefixes\16\client-issuance-ul.xrm-ms"
	cscript "%windir%\system32\slmgr.vbs" /ilc "files\officefixes\16\client-issuance-ul-oob.xrm-ms"
	cscript "%windir%\system32\slmgr.vbs" /ilc "files\officefixes\16\client-issuance-root-bridge-test.xrm-ms"
	cscript "%windir%\system32\slmgr.vbs" /ilc "files\officefixes\16\client-issuance-bridge-office.xrm-ms"
	timeout /t 5
	)
	if %win% LSS 9200 (    
	cscript "%officepath3%\ospp.vbs" /inslic:"files\officefixes\16\pkeyconfig-office.xrm-ms"
	cscript "%officepath3%\ospp.vbs" /inslic:"files\officefixes\16\client-issuance-root.xrm-ms"
	cscript "%officepath3%\ospp.vbs" /inslic:"files\officefixes\16\client-issuance-stil.xrm-ms"
	cscript "%officepath3%\ospp.vbs" /inslic:"files\officefixes\16\client-issuance-ul.xrm-ms"
	cscript "%officepath3%\ospp.vbs" /inslic:"files\officefixes\16\client-issuance-ul-oob.xrm-ms"
	cscript "%officepath3%\ospp.vbs" /inslic:"files\officefixes\16\client-issuance-root-bridge-test.xrm-ms"
	cscript "%officepath3%\ospp.vbs" /inslic:"files\officefixes\16\client-issuance-bridge-office.xrm-ms"
	timeout /t 5
	)
	goto:eof
::===============================================================================================================
::CONVERT
:OLDConvertOfficeLoop
    cls
	set "certs=files\officefixes\16"
    call :HEADER "INSTALLING VOLUME LICENSE CERTS", ""
	for /r "%certs%" %%a in (%~2*.xrm-ms) do wmic path %~1 where version='%version%' call InstallLicense License="%%a"
	wmic path %~1 where version='%version%' call RefreshLicenseStatus >nul 2>&1
	echo Error: !errorlevel!
	goto:eof
:ConvertOfficeLoop
    cls
    call :HEADER "INSTALLING VOLUME LICENSE CERTS", ""
	if %win% GEQ 9200    (    
	cscript "%windir%\system32\slmgr.vbs" /ilc "files\officefixes\16\%2VL_KMS_Client-ul.xrm-ms"
	cscript "%windir%\system32\slmgr.vbs" /ilc "files\officefixes\16\%2VL_KMS_Client-ul-oob.xrm-ms"
	cscript "%windir%\system32\slmgr.vbs" /ilc "files\officefixes\16\%2VL_KMS_Client-ppd.xrm-ms"
	cscript "%windir%\system32\slmgr.vbs" /ilc "files\officefixes\16\%2VL_MAK-pl.xrm-ms"
	cscript "%windir%\system32\slmgr.vbs" /ilc "files\officefixes\16\%2VL_MAK-ul-phn.xrm-ms"
	cscript "%windir%\system32\slmgr.vbs" /ilc "files\officefixes\16\%2VL_MAK-ul-oob.xrm-ms"
	cscript "%windir%\system32\slmgr.vbs" /ilc "files\officefixes\16\%2VL_MAK-ppd.xrm-ms"
	timeout /t 5
	)
	if %win% LSS 9200    (    
    cscript "%officepath3%\ospp.vbs" /inslic:"files\officefixes\16\%2VL_KMS_Client-ul.xrm-ms"
    cscript "%officepath3%\ospp.vbs" /inslic:"files\officefixes\16\%2VL_KMS_Client-ul-oob.xrm-ms"
    cscript "%officepath3%\ospp.vbs" /inslic:"files\officefixes\16\%2VL_KMS_Client-ppd.xrm-ms"
    cscript "%officepath3%\ospp.vbs" /inslic:"files\officefixes\16\%2VL_MAK-pl.xrm-ms"
	cscript "%officepath3%\ospp.vbs" /inslic:"files\officefixes\16\%2VL_MAK-ul-phn.xrm-ms"
	cscript "%officepath3%\ospp.vbs" /inslic:"files\officefixes\16\%2VL_MAK-ul-oob.xrm-ms"
	cscript "%officepath3%\ospp.vbs" /inslic:"files\officefixes\16\%2VL_MAK-ppd.xrm-ms"
	timeout /t 5
	)
	goto:eof
:================================================================================================================
::===============================================================================================================
::CONVERT 15
:Uninstall15Auto
	cls
	call :HEADER "UNINSTALLING RETAIL LICENSES"
	if defined office15present wmic path %~1 where ID='1b686580-9fb1-4b88-bfba-eae7c0da31ad' call UninstallProductKey >nul 2>&1
	if "%errorlevel%"=="0" (echo Successfully uninstalled OfficeProPlusR_Grace)&&(echo:)
	if defined office15present wmic path %~1 where ID='db56dec3-34f2-4bc5-a7b9-ecc3cc51c12a' call UninstallProductKey >nul 2>&1
	if "%errorlevel%"=="0" (echo Successfully uninstalled OfficeProPlusR_Trial)&&(echo:)
	if defined project15present wmic path %~1 where ID='41937580-5ddd-4806-9089-5266d567219f' call UninstallProductKey >nul 2>&1
	if "%errorlevel%"=="0" (echo Successfully uninstalled OfficeProjectProR_Trial)&&(echo:)
	if defined project15present wmic path %~1 where ID='ae7b1e26-3aee-4fe3-9c5b-88f05e36cd34' call UninstallProductKey >nul 2>&1
	if "%errorlevel%"=="0" (echo Successfully uninstalled OfficeProjectProR_Grace)&&(echo:)
	if defined visio15present wmic path %~1 where ID='024ea285-2685-48bc-87ef-79b48cc8c027' call UninstallProductKey >nul 2>&1
	if "%errorlevel%"=="0" (echo Successfully uninstalled OfficeVisioProR_Grace)&&(echo:)
	if defined visio15present wmic path %~1 where ID='f35e39c1-a41f-47c9-a204-2ca3c4b13548' call UninstallProductKey >nul 2>&1
	if "%errorlevel%"=="0" (echo Successfully uninstalled OfficeVisioProR_Trial)&&(echo:)
	call :FOOTER
	goto:eof
:================================================================================================================
::===============================================================================================================
::CONVERT 16
:Uninstall16Auto
	cls
	call :HEADER "UNINSTALLING RETAIL LICENSES"
::===============================================================================================================
::	Change (if installed) Office 365 client name from "Office 2016 ProfessionalPlus" back to "Office 365 ProPlus"
	if "%O365ProPlusRetail%" EQU "YES" if "%vera%" EQU "x86" (reg export HKLM\SOFTWARE\Microsoft\Office\ClickToRun\REGISTRY\MACHINE\Software\Microsoft\Office\16.0\Registration\{3AD61E22-E4FE-497F-BDB1-3E51BD872173} "%TEMP%\O365_CHANGE1.REG" /Y) >nul 2>&1
	if "%O365ProPlusRetail%" EQU "YES" if "%vera%" EQU "x64" if "%o16arch%" EQU "x86" (reg export HKLM\SOFTWARE\Microsoft\Office\ClickToRun\REGISTRY\MACHINE\Software\Wow6432Node\Microsoft\Office\16.0\Registration\{3AD61E22-E4FE-497F-BDB1-3E51BD872173} "%TEMP%\O365_CHANGE1.REG" /Y) >nul 2>&1
	if "%O365ProPlusRetail%" EQU "YES" if "%vera%" EQU "x64" if "%o16arch%" EQU "x64" (reg export HKLM\SOFTWARE\Microsoft\Office\ClickToRun\REGISTRY\MACHINE\Software\Microsoft\Office\16.0\Registration\{3AD61E22-E4FE-497F-BDB1-3E51BD872173} "%TEMP%\O365_CHANGE1.REG" /Y) >nul 2>&1
	if exist "%TEMP%\O365_CHANGE1.REG"	(
	powershell -command "& {Get-Content -Encoding Unicode "%TEMP%\O365_CHANGE1.REG" | ForEach-Object { $_ -replace '3AD61E22-E4FE-497F-BDB1-3E51BD872173', 'D450596F-894D-49E0-966A-FD39ED4C4C64' } | Set-Content -Encoding Unicode "%TEMP%\O365_CHANGE2.REG"}" >nul 2>&1
	reg import "%TEMP%\O365_CHANGE2.REG" >nul 2>&1
	del "%TEMP%\O365_CHANGE*.REG" >nul 2>&1
	)
::===============================================================================================================
	cls
	call :HEADER "UNINSTALLING RETAIL LICENSES"
	set "VolumeMode=0"
	set "CleanupMode=0"
	echo:
	echo CHECKING OFFICE 2016 LICENSES
	echo:
	if %win% GEQ 9200 wmic path %slp% where (Description like '%%KMSCLIENT%%') get Name /format:list 2>nul | findstr /i /C:"Office 16" 1>nul && set "VolumeMode=1"
	if %win% GEQ 9200 wmic path %slp% where (Description like '%%TIMEBASED%%') get Name /format:list 2>nul | findstr /i /C:"Office 16" 1>nul && set "CleanupMode=1"
	if %win% GEQ 9200 wmic path %slp% where (Description like '%%Grace%%') get Name /format:list 2>nul | findstr /i /C:"Office 16" 1>nul && set "CleanupMode=1"
	if "%CleanupMode%" EQU "0" if "%VolumeMode%" EQU "1" call:Skip_Cleanup
	if "%CleanupMode%" EQU "0" if "%VolumeMode%" EQU "1" goto:eof
	if %win% LSS 9200 wmic path %ospp% where (Description like '%%KMSCLIENT%%') get Name /format:list 2>nul | findstr /i /C:"Office 16" 1>nul && set "VolumeMode=1"
	if %win% LSS 9200 wmic path %ospp% where (Description like '%%TIMEBASED%%') get Name /format:list 2>nul | findstr /i /C:"Office 16" 1>nul && set "CleanupMode=1"
	if %win% LSS 9200 wmic path %ospp% where (Description like '%%Grace%%') get Name /format:list 2>nul | findstr /i /C:"Office 16" 1>nul && set "CleanupMode=1"
	if "%CleanupMode%" EQU "0" if "%VolumeMode%" EQU "1" call:Skip_Cleanup
	if "%CleanupMode%" EQU "0" if "%VolumeMode%" EQU "1" goto:eof
::===============================================================================================================
	echo:
	echo Cleanup - Removing Current Office 2016 - Trial-/Grace-Keys and -Licenses
	echo:
	"files\officefixes\%vera%\cleanospp.exe" -PKey
::	echo __________________________________________________________________
::	echo:
	"files\officefixes\%vera%\cleanospp.exe" -Licenses
    call :FOOTER
	timeout /t 7
	if not exist "%officepath3%\ospp.vbs" xcopy "files\officefixes\ospp\*.*" "%officepath3%" /C /E /I /Q /R /S /Y  >nul 2>&1
	cls
	call :HEADER "UNINSTALLING RETAIL LICENSES"
	if defined office16present cscript "%windir%\system32\slmgr.vbs" /upk 7a0560c5-21ed-4518-ad41-b7f870b9fd1a | findstr /i /c:":" >nul 2>&1
	if "%errorlevel%"=="0" (echo Successfully uninstalled Office16ProfessionalR_Grace)&&(echo:)
	if defined office16present cscript "%windir%\system32\slmgr.vbs" /upk 39a1be8c-9e7f-4a75-81f4-21cfac7cbecb | findstr /i /c:":" >nul 2>&1
	if "%errorlevel%"=="0" (echo Successfully uninstalled Office16ProfessionalR_Trial)&&(echo:)
	if defined office16present cscript "%windir%\system32\slmgr.vbs" /upk 70d9ceb6-6dfa-4da4-b413-18c1c3c76e2e | findstr /i /c:":" >nul 2>&1
	if "%errorlevel%"=="0" (echo Successfully uninstalled Office16ProPlusR_Grace)&&(echo:)
    if defined office16present cscript "%windir%\system32\slmgr.vbs" /upk c8ce6adc-ede7-4ce2-8e7b-c49f462ab8c3 | findstr /i /c:":" >nul 2>&1
	if "%errorlevel%"=="0" (echo Successfully uninstalled Office16ProPlusR_Trial)&&(echo:)
	if defined project16present cscript "%windir%\system32\slmgr.vbs" /upk aeedf8f7-8832-41b1-a9c8-13f2991a371c | findstr /i /c:":" >nul 2>&1
	if "%errorlevel%"=="0" (echo Successfully uninstalled Office16ProjectProR_Trial)&&(echo:)
	if defined project16present cscript "%windir%\system32\slmgr.vbs" /upk ca5b3eea-c055-4acf-bc78-187db21c7db5 | findstr /i /c:":" >nul 2>&1
	if "%errorlevel%"=="0" (echo Successfully uninstalled Office16ProjectProR_Grace)&&(echo:)
	if defined visio16present cscript "%windir%\system32\slmgr.vbs" /upk 5821ec16-77a9-4404-99c8-2756dc6d4c3c | findstr /i /c:":" >nul 2>&1
	if "%errorlevel%"=="0" (echo Successfully uninstalled Office16VisioProR_Grace)&&(echo:)
	if defined visio16present cscript "%windir%\system32\slmgr.vbs" /upk a17f9ed0-c3d4-4873-b3b8-d7e049b459ec | findstr /i /c:":" >nul 2>&1
	if "%errorlevel%"=="0" (echo Successfully uninstalled Office16VisioProR_Trial)&&(echo:)
	call :FOOTER
	goto:eof
::===============================================================================================================
:Skip_Cleanup
	echo:
	echo All OK. No Conversion or Cleanup required.
    call :FOOTER
	timeout /t 7
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:TaskCreate
	SCHTASKS /Create /TN "Reactivate Service DAILY" /TR "%windir%\%name%\reactivate.cmd" /SC DAILY /MO 1 /RU SYSTEM /RL Highest /F
	SCHTASKS /Create /TN "Reactivate Service ONLOGON" /TR "%windir%\%name%\reactivate.cmd" /SC ONLOGON /RU SYSTEM /RL Highest /F
	SCHTASKS /Create /TN "Reactivate Service ONSTART" /TR "%windir%\%name%\reactivate.cmd" /SC ONSTART /RU SYSTEM /RL Highest /F
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:WriteA
	set ospp=OfficeSoftwareProtectionProduct
	set osps=OfficeSoftwareProtectionService
	set slp=SoftwareLicensingProduct
	set sls=SoftwareLicensingService
	>%windir%\%name%\reactivate.cmd (
		echo @echo off
		echo ::-------------------------------------------------------------------------------
		echo :: Code by s1ave77
		echo :: Re-activation Task script created: %date% at %time%
		echo ::-------------------------------------------------------------------------------
		echo ::HOST AND PORT SET
		if exist "%SystemRoot%\%name%\%name%.exe" echo start /min cmd /c "%windir%\KMSServer\KMSServer.exe"
		echo wmic path %sls% where version='%version%' call SetKeyManagementServiceMachine MachineName="%host%" ^>nul
		echo wmic path %sls% where version='%version%' call SetKeyManagementServicePort %port% ^>nul
	)
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:WriteWindows
	call :ID
	>>%windir%\%name%\reactivate.cmd (
		echo ::-------------------------------------------------------------------------------
		echo ::WINDOWS ACTIVATION
		echo wmic path %slp% where ID='%id%' call Activate ^>nul
	)
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:WriteOffice14
	if defined office14present call :OID "%ospp%", OfficeProPlus
	>>"%windir%\%name%\reactivate.cmd" (
		echo ::-------------------------------------------------------------------------------
		echo ::OFFICE 14 ACTIVATION
		if defined office14present echo wmic path %ospp% where ID='%oid%' call Activate ^>nul
	)
	goto:WriteOthers
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:WriteOffice15
	if %win% GEQ 9200 if defined office15present call :OID "%slp%", OfficeProPlus
	if %win% LSS 9200 if defined office15present call :OID "%ospp%", OfficeProPlus
	>>"%windir%\%name%\reactivate.cmd" (
		echo ::-------------------------------------------------------------------------------
		echo ::OFFICE 15 ACTIVATION
		if defined office15present if %win% GEQ 9200 echo wmic path %slp% where ID='%oid%' call Activate ^>nul
		if defined office15present if %win% LSS 9200 echo wmic path %ospp% where ID='%oid%' call Activate ^>nul
	)
	goto:WriteOthers
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:WriteOffice16
	if defined office16present if %win% GEQ 9200 call :OID "%slp%", Office16ProPlus
	if defined office16present if %win% LSS 9200 call :OID "%ospp%", Office16ProPlus
	>>"%windir%\%name%\reactivate.cmd" (
		echo ::-------------------------------------------------------------------------------
		echo ::OFFICE 16 ACTIVATION
		if defined office16present if %win% GEQ 9200 echo wmic path %slp% where ID='%oid%' call Activate ^>nul
		if defined office16present if %win% LSS 9200 echo wmic path %ospp% where ID='%oid%' call Activate ^>nul
	)
	goto:WriteOthers
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:WriteOthers
	set "p14=df133ff7-bf14-4f95-afe3-7b48e7e331ef"
	set "v14=e558389c-83c3-4b29-adfe-5e4d7f46c358"
	set "p15=4a5d124a-e620-44ba-b6ff-658961b33b9a"
	set "v15=e13ac10e-75d0-4aff-a0cd-764982cf541c"
	set "p16=4f414197-0fc2-4c01-b68a-86cbb9ac254c"
	set "v16=6bf301c1-b94a-43e9-ba31-d494598c47fb"
	>>"%windir%\%name%\reactivate.cmd" (
		echo ::-------------------------------------------------------------------------------
		echo ::PROJECT AND VISIO ACTIVATION
		if %win% GEQ 9200 if defined project14present echo wmic path %slp% where ID='%p14%' call Activate ^>nul
		if %win% LSS 9200 if defined project14present echo wmic path %ospp% where ID='%p14%' call Activate ^>nul
		if %win% GEQ 9200 if defined project15present echo wmic path %slp% where ID='%p15%' call Activate ^>nul
		if %win% LSS 9200 if defined project15present echo wmic path %ospp% where ID='%p15%' call Activate ^>nul
		if %win% GEQ 9200 if defined project16present echo wmic path %slp% where ID='%p16%' call Activate ^>nul
		if %win% LSS 9200 if defined project16present echo wmic path %ospp% where ID='%p16%' call Activate ^>nul
		if %win% GEQ 9200 if defined visio14present echo wmic path %slp% where ID='%v14%' call Activate ^>nul
		if %win% LSS 9200 if defined visio14present echo wmic path %ospp% where ID='%v14%' call Activate ^>nul
		if %win% GEQ 9200 if defined visio15present echo wmic path %slp% where ID='%v15%' call Activate ^>nul
		if %win% LSS 9200 if defined visio15present echo wmic path %ospp% where ID='%v15%' call Activate ^>nul
		if %win% GEQ 9200 if defined visio16present echo wmic path %slp% where ID='%v16%' call Activate ^>nul
		if %win% LSS 9200 if defined visio16present echo wmic path %ospp% where ID='%v16%' call Activate ^>nul
		if %win% GEQ 9200 if defined O365ProPlusRetail echo wmic path %slp% where ID='d450596f-894d-49e0-966a-fd39ed4c4c64' call Activate ^>nul
		if %win% LSS 9200 if defined O365ProPlusRetail echo wmic path %ospp% where ID='d450596f-894d-49e0-966a-fd39ed4c4c64' call Activate ^>nul
		if %win% GEQ 9200 if defined MondoRetail echo wmic path %slp% where ID='9caabccb-61b1-4b4b-8bec-d10a3c3ac2ce' call Activate ^>nul
		if %win% LSS 9200 if defined MondoRetail echo wmic path %ospp% where ID='9caabccb-61b1-4b4b-8bec-d10a3c3ac2ce' call Activate ^>nul
		if %win% GEQ 9200 if defined StandardRetail echo wmic path %slp% where ID='dedfa23d-6ed1-45a6-85dc-63cae0546de6' call Activate ^>nul
		if %win% LSS 9200 if defined StandardRetail echo wmic path %ospp% where ID='dedfa23d-6ed1-45a6-85dc-63cae0546de6' call Activate ^>nul
		if %win% GEQ 9200 if defined WordRetail echo wmic path %slp% where ID='bb11badf-d8aa-470e-9311-20eaf80fe5cc' call Activate ^>nul
		if %win% LSS 9200 if defined WordRetail echo wmic path %ospp% where ID='bb11badf-d8aa-470e-9311-20eaf80fe5cc' call Activate ^>nul
		if %win% GEQ 9200 if defined ExcelRetail echo wmic path %slp% where ID='c3e65d36-141f-4d2f-a303-a842ee756a29' call Activate ^>nul
		if %win% LSS 9200 if defined ExcelRetail echo wmic path %ospp% where ID='c3e65d36-141f-4d2f-a303-a842ee756a29' call Activate ^>nul
		if %win% GEQ 9200 if defined PowerPointRetail echo wmic path %slp% where ID='d70b1bba-b893-4544-96e2-b7a318091c33' call Activate ^>nul
		if %win% LSS 9200 if defined PowerPointRetail echo wmic path %ospp% where ID='d70b1bba-b893-4544-96e2-b7a318091c33' call Activate ^>nul
		if %win% GEQ 9200 if defined AccessRetail echo wmic path %slp% where ID='67c0fc0c-deba-401b-bf8b-9c8ad8395804' call Activate ^>nul
		if %win% LSS 9200 if defined AccessRetail echo wmic path %ospp% where ID='67c0fc0c-deba-401b-bf8b-9c8ad8395804' call Activate ^>nul
		if %win% GEQ 9200 if defined OutlookRetail echo wmic path %slp% where ID='ec9d9265-9d1e-4ed0-838a-cdc20f2551a1' call Activate ^>nul
		if %win% LSS 9200 if defined OutlookRetail echo wmic path %ospp% where ID='ec9d9265-9d1e-4ed0-838a-cdc20f2551a1' call Activate ^>nul
		if %win% GEQ 9200 if defined PublisherRetail echo wmic path %slp% where ID='041a06cb-c5b8-4772-809f-416d03d16654' call Activate ^>nul
		if %win% LSS 9200 if defined PublisherRetail echo wmic path %ospp% where ID='041a06cb-c5b8-4772-809f-416d03d16654' call Activate ^>nul
		if %win% GEQ 9200 if defined OneNoteRetail echo wmic path %slp% where ID='d8cace59-33d2-4ac7-9b1b-9b72339c51c8' call Activate ^>nul
		if %win% LSS 9200 if defined OneNoteRetail echo wmic path %ospp% where ID='d8cace59-33d2-4ac7-9b1b-9b72339c51c8' call Activate ^>nul
		if %win% GEQ 9200 if defined SkypeForBusinessRetail echo wmic path %slp% where ID='83e04ee1-fa8d-436d-8994-d31a862cab77' call Activate ^>nul
		if %win% LSS 9200 if defined SkypeForBusinessRetail echo wmic path %ospp% where ID='83e04ee1-fa8d-436d-8994-d31a862cab77' call Activate ^>nul
	)
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:WriteOthersCleanup
	>>"%windir%\%name%\reactivate.cmd" (
		echo ::-------------------------------------------------------------------------------
		echo ::HOST AND PORT CLEANSING
		echo wmic path %sls% where version='%version%' call ClearKeyManagementServiceMachine ^>nul 2^>^&1
		echo wmic path %sls% where version='%version%' call ClearKeyManagementServicePort ^>nul 2^>^&1
		echo wmic path %sls% where version='%version%' call DisableKeyManagementServiceDnsPublishing 1 ^>nul 2^>^&1
		echo wmic path %sls% where version='%version%' call DisableKeyManagementServiceHostCaching 1 ^>nul 2^>^&1
	)
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:WriteZ
	>>"%windir%\%name%\reactivate.cmd" (
		echo ::-------------------------------------------------------------------------------
	    if exist "%SystemRoot%\%name%\%name%.exe" echo TASKKILL /F /IM "%name%.exe" ^>nul
		echo exit
	)
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::SERVICE AUTO INSTALLS
:QADAutoInstall
	if not %win% GEQ 9200 call :NotSupported 
	if not %win% GEQ 9200 goto:eof
	cls
	call :HEADER "This option installs the Hook and Server by QAD", " "
	echo:
	set Kms1Name=KMS-QADhooker
	if exist "%SystemRoot%\System32\%Kms1Name%.*" call :FoundHAuto
	if exist "%SystemRoot%\System32\%Kms1Name%.*" goto:eof
	call "files\hook\install.cmd"
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	pushd "%~dp0"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:QADAutoUnInstall
	cls
	call :HEADER "This option uninstalls the Hook and Server by QAD", " "
	echo:
	set Kms1Name=KMS-QADhooker
	if not exist "%SystemRoot%\System32\%Kms1Name1%.*" call :NotFoundHAuto
	if not exist "%SystemRoot%\System32\%Kms1Name%.*" goto:eof
	call "files\hook\uninstall.cmd"
	REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f >nul
	REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" >nul
	pushd "%~dp0"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:FoundHAuto
	echo %Kms1Name% is already installed.
	call :FOOTER
	timeout /t 3
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:NotFoundHAuto
	echo %Kms1Name% not installed.
	call :FOOTER
	timeout /t 3
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:AutoSppExtComObjPatch
	cls
	call :HEADER "This option installs the SppExtComObjPatcher Hook", " "
	echo:
	wmic path OfficeSoftwareProtectionService get version >nul 2>&1 || set OsppHook=0

	if %win% GEQ 9200 (
		set OSType=Win8
	) else if %win% GEQ 7600 (
		set OSType=Win7
	) else (
		goto :UnsupportedVersion
	)
	echo.
	echo Microsoft (R) Windows Software Licensing.
	echo Copyright (C) Microsoft Corporation. All rights reserved.
	call :FOOTER
	IF EXIST "%SystemRoot%\system32\SppExtComObjPatcher.exe" goto :uninst
:inst
	echo SppExtComObjPatcher will be installed on your computer.
	call :FOOTER
:run1
	call :StopService sppsvc
	if not "%OsppHook%"=="0" call :StopService osppsvc
	IF ERRORLEVEL 1 echo status: Error
	echo.
	echo Copying Files... 
	copy /y "files\SppExtComObjPatcher\%vera%\SppExtComObjPatcher.exe" "%SystemRoot%\system32" >nul
	echo status: OK 
	IF ERRORLEVEL 1 echo status: Error
	copy /y "files\SppExtComObjPatcher\%vera%\SppExtComObjHook.dll" "%SystemRoot%\system32" >nul
	echo status: OK 
	IF ERRORLEVEL 1 echo status: Error
	echo Creating Registry Entries...
	if %OSType% EQU Win8 (
		echo Creating Registry Entry for SppExtComObj.exe of Windows 8/8.1
		call :CreateIFEOEntry "SppExtComObj.exe"
	)
	if %OSType% EQU Win7 (
		echo Creating Registry Entry for sppsvc.exe of Windows 7
		call :CreateIFEOEntry "sppsvc.exe"
	)
	if not "%OsppHook%"=="0" (
		echo Creating Registry Entry for osppsvc.exe of Office 2010/2013
		call :CreateIFEOEntry "osppsvc.exe"
	)
	goto :end
:uninst
	echo SppExtComObjPatcher will be removed from your computer.
	call :FOOTER
:run2
	call :StopService2 sppsvc
	if not "%OsppHook%"=="0" call :StopService2 osppsvc
	echo Removing Installed Files... 
	if exist "%SystemRoot%\system32\SppExtComObjPatcher.exe" (
		echo SppExtComObjPatcher.exe Found. Removing... 
		del /f /q "%SystemRoot%\system32\SppExtComObjPatcher.exe"
	)
	if exist "%SystemRoot%\system32\SppExtComObjHook.dll" (
		echo SppExtComObjHook.dll Found. Removing... 
		del /f /q "%SystemRoot%\system32\SppExtComObjHook.dll"
	)
	echo Removing Registry Entries...
	if %OSType% EQU Win8 (
		echo Removing Registry Entry for SppExtComObj.exe of Windows 8/8.1
		call :RemoveIFEOEntry "SppExtComObj.exe"
	)
	if %OSType% EQU Win7 (
		echo Removing Registry Entry for sppsvc.exe of Windows 7
		call :RemoveIFEOEntry "sppsvc.exe"
	)
	if not "%OsppHook%"=="0" (
		echo Removing Registry Entry for osppsvc.exe of Office 2010/2013
		call :RemoveIFEOEntry "osppsvc.exe"
	)
	schtasks /delete /f /tn "\Microsoft\Windows\SoftwareProtectionPlatform\SvcTrigger" >nul 2>&1
	goto :end
:CreateIFEOEntry
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Debugger" /t REG_SZ /d "SppExtComObjPatcher.exe" >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "KMS_Emulation" /t REG_DWORD /d %KMS_Emulation% >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "KMS_ActivationInterval" /t REG_DWORD /d %KMS_ActivationInterval% >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "KMS_RenewalInterval" /t REG_DWORD /d %KMS_RenewalInterval% >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Office2013" /t REG_SZ /d "%Office2013%" >nul 2>&1
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	if %~1 NEQ osppsvc.exe (
		reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Windows" /t REG_SZ /d "%Windows%" >nul 2>&1
	)
	if %~1 EQU osppsvc.exe (
		reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Office2010" /t REG_SZ /d "%Office2010%" >nul 2>&1
	)
	goto:eof
:RemoveIFEOEntry
	if %~1 NEQ osppsvc.exe (
		reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f >nul 2>&1
	)
	if %~1 EQU osppsvc.exe (
		reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Debugger" >nul 2>&1
		reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "KMS_Emulation" >nul 2>&1
		reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "KMS_ActivationInterval" >nul 2>&1
		reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "KMS_RenewalInterval" >nul 2>&1
		reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Office2010" >nul 2>&1
		reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~1" /f /v "Office2013" >nul 2>&1
		REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f >nul
		REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" >nul
	)
	goto:eof
:StopService
	sc query %~1 | find /i "STOPPED" >nul 2>&1
	if not "%ERRORLEVEL%"=="0" net stop %~1 /y >nul 2>&1
	sc query %~1 | find /i "STOPPED" >nul 2>&1
	if not "%ERRORLEVEL%"=="0" sc stop %~1 >nul 2>&1
	goto:eof
:StopService2
	sc query %~1 | find /i "RUNNING" >nul 2>&1
	if "%ERRORLEVEL%"=="0" net stop %~1 /y >nul 2>&1
	sc query %~1 | find /i "RUNNING" >nul 2>&1
	if "%ERRORLEVEL%"=="0" sc stop %~1 >nul 2>&1
	goto:eof
:UnsupportedVersion
	echo ==== ERROR ====
	echo Unsupported OS version Detected.
	echo This project is only supported for Windows 7/8/8.1
	call :FOOTER
	timeout /t 5
	goto:eof
:end
	echo.
	echo Done.
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CodyInstallAuto
	cls
	call :HEADER "This option installs the KMS Server Service by CODYQX4", " "
	if %win% lss 9200 set host=127.0.0.2
	set sai=43200
	set sri=43200
	set start=demand
	set hwid=364F463A8863D35F
	set kpop=1
	set name=KMSServer
	set kpop=1
	set loglevel=1
	call :FOOTER
	call :RegCody
	call :RegOffice
	set pid=Random
	call :Initiate
	sc create %name% binPath= "%windir%\%name%\%name%.exe" type= own error= normal obj= "NT AUTHORITY\NetworkService" start= demand DisplayName= %name%
	call :FOOTER
	net start %name% >nul
	if %errorlevel% equ 0 echo Successfully started %name%.
	if %errorlevel% neq 0 echo Starting %name% Failed. 
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CodyUnInstallAuto
	set "hSpp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
	set "hOspp=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform"
	set "hService=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\KMS"
	set "hService2=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\%name%"
	if /i "%name%"=="" set name=KMSServer
	if /i "%port%"=="" set "port=1688"
	cls
	call :HEADER "This option uninstalls KMS Server Service", " "
	sc query %name% >nul
	if errorlevel 1 goto :NotInstalledA
	net stop %name% >nul
	if %errorlevel% equ 0 echo Successfully stopped %name%.
	if %errorlevel% neq 0 echo Stopping %name% Failed. 
	sc delete %name%
	reg delete %hService% /f >nul 2>&1
	reg delete %hService2% /f >nul 2>&1
	call :FOOTER
	call :UnRegOffice
	SchTasks /Delete /TN "Reactivate Service MINUTE" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Service HOURLY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Service DAILY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Service WEEKLY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Service MONTHLY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Service ONSTART" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Service ONLOGON" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Instant MINUTE" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Instant HOURLY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Instant DAILY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Instant WEEKLY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Instant MONTHLY" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Instant ONSTART" /F >nul 2>&1
	SchTasks /Delete /TN "Reactivate Instant ONLOGON" /F >nul 2>&1
	netsh advfirewall firewall delete rule name="%name% %port%"
	if exist "%windir%\%name%" rd /s /q "%windir%\%name%" >nul
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:NotInstalledA
	echo:
	echo ...Service is not installed.
	echo:
	echo:
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CodyEmuAutoInstall
	pushd %~dp0
	set sai=120
	set sri=10080
	set start=demand
	set hwid=364F463A8863D35F
	set kpop=1
	set name=KMSServer
	set kpop=1
	set loglevel=1
	if exist "%windir%\KMSServer\KMSServer.exe" del /s /q "%windir%\KMSServer\KMSServer.exe" >nul
	xcopy "files\KMS Server %vera%.exe" "%windir%\KMSServer\" /Q /Y >nul
	ren "%windir%\KMSServer\KMS Server %vera%.exe" "KMSServer.exe"
	netsh advfirewall firewall add rule name="KMS Server Emulator" dir=in  program="%windir%\KMSServer\KMSServer.exe" localport=%port% protocol=TCP action=allow remoteip=any
	netsh advfirewall firewall add rule name="KMS Server Emulator" dir=in  program="%windir%\KMSServer\KMSServer.exe" localport=%port% protocol=TCP action=allow remoteip=localsubnet
	call:RegOffice
	call:RegCODY
	start /min cmd /c "%windir%\KMSServer\KMSServer.exe"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CodyEmuAutoUninstall
	set "port=1688"
	set pid=RandomKMSPID
	set sai=120
	set sri=10080
	netsh advfirewall firewall delete rule name="KMS Server Emulator"
	call:UnRegOffice
	call:UnRegCODY
	if exist "%windir%\KMSServer\" rd /s /q "%windir%\KMSServer\" >nul
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:KeyCheck
	cls
	call :HEADER "This option sets the Client Key", "FOR %ver% %vera%"
	echo:
	if "%ver%"=="Windows Vista (TM) Business" (set key=YFKBB-PQJJV-G996G-VWGXY-2V3X8)
	if "%ver%"=="Windows 7 Professional" (set key=FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4)
	if "%ver%"=="Windows 7 Professional N" (set key=MRPKT-YTG23-K7D7T-X2JMM-QY7MG)
	if "%ver%"=="Windows 7 Professional E" (set key=W82YF-2Q76Y-63HXB-FGJG9-GF7QX)
	if "%ver%"=="Windows 7 Enterprise" (set key=33PXH-7Y6KF-2VJC9-XBBR8-HVTHH)
	if "%ver%"=="Windows 7 Enterprise N" (set key=YDRBP-3D83W-TY26F-D46B2-XCKRJ)
	if "%ver%"=="Windows 7 Enterprise E" (set key=C29WB-22CC8-VJ326-GHFJW-H9DH4)
	if "%ver%"=="Windows Embedded Standard" (set key=F94KQ-WJBTW-YR6MK-K7TGX-69F4C)
	if "%ver%"=="Windows Web Server 2008 R2" (set key=6TPJF-RBVHG-WBW2R-86QPH-6RTM4)
	if "%ver%"=="Windows Server 2008 R2 HPC" (set key=6TPJF-TT8MH-CG224-D3D7Q-498W2-9QCTX)
	if "%ver%"=="Windows Server 2008 R2 Standard" (set key=NG4HW-YC6KT-GKW9T-YTKYR-T4X34-R7VHC)
	if "%ver%"=="Windows Server 2008 R2 Enterprise" (set key=489J6-VHDMP-X63PK-3K798-CPX3Y)
	if "%ver%"=="Windows Server 2008 R2 Datacenter" (set key=74YFP-3QFB3-KQT8W-PMXWJ-7M648)
	if "%ver%"=="Windows Server 2008 R2 for Itanium-based" (set key=GT63C-RJFQ3-4GMB6-BRFB9-CB83V)
	if "%ver%"=="Windows 8" (set key=BN3D2-R7TKB-3YPBD-8DRP2-27GG4)
	if "%ver%"=="Windows 8 N" (set key=8N2M2-HWPGY-7PGT9-HGDD8-GVGGY)
	if "%ver%"=="Windows 8 Pro" (set key=NG4HW-VH26C-733KW-K6F98-J8CK4)
	if "%ver%"=="Windows 8 Pro with Media Center" (set key=GNBB8-YVD74-QJHX6-27H4K-8QHDG)
	if "%ver%"=="Windows 8 Pro N" (set key=XCVCF-2NXM9-723PB-MHCB7-2RYQQ)
	if "%ver%"=="Windows 8 Enterprise" (set key=32JNW-9KQ84-P47T8-D8GGY-CWCK7)
	if "%ver%"=="Windows 8 Enterprise N" (set key=JMNMF-RHW7P-DMY6X-RF3DR-X2BQT)
	if "%ver%"=="Windows Server 2012 Standard" (set key=XC9B7-NBPP2-83J2H-RHMBY-92BT4)
	if "%ver%"=="Windows Server 2012 Standard Core" (set key=XC9B7-NBPP2-83J2H-RHMBY-92BT4)
	if "%ver%"=="Windows Server 2012 Datacenter" (set key=48HP8-DN98B-MYWDG-T2DCC-8W83P)
	if "%ver%"=="Windows Server 2012 Datacenter Core" (set key=48HP8-DN98B-MYWDG-T2DCC-8W83P)
	if "%ver%"=="Windows 8.1" (set key=M9Q9P-WNJJT-6PXPY-DWX8H-6XWKK)
	if "%ver%"=="Windows 8.1 Single Language" (set key=BB6NG-PQ82V-VRDPW-8XVD2-V8P66)
	if "%ver%"=="Windows 8.1 Country Specific" (set key=NCTT7-2RGK8-WMHRF-RY7YQ-JTXG3)
	if "%ver%"=="Windows 8.1 with Bing" (set key=RJQCD-NFWFV-GT876-2T9JY-8FF29)
	if "%ver%"=="Windows 8.1 with Bing N" (set key=Q6HTR-N24GM-PMJFP-69CD8-2GXKR)
	if "%ver%"=="Windows 8.1 with Bing Single Language" (set key=KF37N-VDV38-GRRTV-XH8X6-6F3BB)
	if "%ver%"=="Windows 8.1 with Bing Country Specific" (set key=R962J-37N87-9VVK2-WJ74P-XTMHR)
	if "%ver%"=="Windows 8.1 N" (set key=7B9N3-D94CG-YTVHR-QBPX3-RJP64)
	if "%ver%"=="Windows 8.1 Pro" (set key=GCRJD-8NW9H-F2CDX-CCM8D-9D6T9)
	if "%ver%"=="Windows 8.1 Pro Student" (set key=NQHYK-WGWJH-DQJT7-XB68G-BPYG9)
	if "%ver%"=="Windows 8.1 Pro N" (set key=HMCNV-VVBFX-7HMBH-CTY9B-B4FXY)
	if "%ver%"=="Windows 8.1 Pro Student N" (set key=TNFGH-2R6PB-8XM3K-QYHX2-J4296)
	if "%ver%"=="Windows 8.1 Pro with Media Center" (set key=789NJ-TQK6T-6XTH8-J39CJ-J8D3P)
	if "%ver%"=="Windows 8.1 Enterprise" (set key=MHF9N-XY6XB-WVXMC-BTDCT-MKKG7)
	if "%ver%"=="Windows 8.1 Enterprise N" (set key=TT4HM-HN7YT-62K67-RGRQJ-JFFXW)
	if "%ver%"=="Windows 8.1 Embedded Industry" (set key=NMMPB-38DD4-R2823-62W8D-VXKJB)
	if "%ver%"=="Windows 8.1 Embedded Industry Enterprise" (set key=FNFKF-PWTVT-9RC8H-32HB2-JB34X)
	if "%ver%"=="Windows 8.1 Embedded Industry Automotive" (set key=VHXM3-NR6FT-RY6RT-CK882-KW2CJ)
	if "%ver%"=="Windows Server 2012 R2 Essentials" (set key=KNC87-3J2TX-XB4WP-VCPJV-M4FWM)
	if "%ver%"=="Windows Server 2012 R2 Datacenter" (set key=W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9)
	if "%ver%"=="Windows Server 2012 R2 Datacenter Core" (set key=W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9)
	if "%ver%"=="Windows Server 2012 R2 Standard" (set key=D2N9P-3P6X9-2R39C-7RTCD-MDVJX)
	if "%ver%"=="Windows Server 2012 R2 Standard Core" (set key=D2N9P-3P6X9-2R39C-7RTCD-MDVJX)
	if "%ver%"=="Windows Server 2012 R2 Cloud Storage" (set key=3NPTF-33KPT-GGBPR-YX76B-39KDD)
	if "%ver%"=="Windows 10 Home" (set key=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99)
	if "%ver%"=="Windows 10 Home N" (set key=3KHY7-WNT83-DGQKR-F7HPR-844BM)
	if "%ver%"=="Windows 10 Home Single Language" (set key=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH)
	if "%ver%"=="Windows 10 Home Country Connected" (set key=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR)
	if "%ver%"=="Windows 10 Pro" (set key=W269N-WFGWX-YVC9B-4J6C9-T83GX)
	if "%ver%"=="Windows 10 Pro N" (set key=MH37W-N47XK-V7XM9-C7227-GCQG9)
	if "%ver%"=="Windows 10 Pro Education" (set key=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y)
	if "%ver%"=="Windows 10 Pro Education N" (set key=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC)
	if "%ver%"=="Windows 10 Pro for Advanced PCs" (set key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J)
	if "%ver%"=="Windows 10 Pro N for Advanced PCs" (set key=9FNHH-K3HBT-3W4TD-6383H-6XYWF)
	if "%ver%"=="Windows 10 Pro for Workstations" (set key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J)
	if "%ver%"=="Windows 10 Pro N for Workstations" (set key=9FNHH-K3HBT-3W4TD-6383H-6XYWF)
	if "%ver%"=="Windows 10 Education" (set key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2)
	if "%ver%"=="Windows 10 Education N" (set key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ)
	if "%ver%"=="Windows 10 Enterprise" (set key=NPPR9-FWDCX-D2C8J-H872K-2YT43)
	if "%ver%"=="Windows 10 Enterprise N" (set key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4)
	if "%ver%"=="Windows 10 Enterprise G" (set key=YYVX9-NTFWV-6MDM3-9PT4T-4M68B)
	if "%ver%"=="Windows 10 Enterprise GN" (set key=44RPN-FTY23-9VTTB-MP9BX-T84FV)
	if "%ver%"=="Windows 10 Enterprise 2015 LTSB" (set key=WNMTR-4C88C-JK8YV-HQ7T2-76DF9)
	if "%ver%"=="Windows 10 Enterprise 2015 LTSB N" (set key=2F77B-TNFGY-69QQF-B8YKP-D69TJ)
	if "%ver%"=="Windows 10 Enterprise 2016 LTSB" (set key=DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ)
	if "%ver%"=="Windows 10 Enterprise 2016 LTSB N" (set key=QFFDN-GRT3P-VKWWX-X7T3R-8B639)
	if "%ver%"=="Windows 10 Home Insider Preview" (set key=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99)
	if "%ver%"=="Windows 10 Home N Insider Preview" (set key=3KHY7-WNT83-DGQKR-F7HPR-844BM)
	if "%ver%"=="Windows 10 Home Single Language Insider Preview" (set key=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH)
	if "%ver%"=="Windows 10 Pro Insider Preview" (set key=W269N-WFGWX-YVC9B-4J6C9-T83GX)
	if "%ver%"=="Windows 10 Pro N Insider Preview" (set key=MH37W-N47XK-V7XM9-C7227-GCQG9)
	if "%ver%"=="Windows 10 Pro Education Insider Preview" (set key=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y)
	if "%ver%"=="Windows 10 Pro Education N Insider Preview" (set key=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC)
	if "%ver%"=="Windows 10 Pro for Advanced PCs Insider Preview" (set key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J)
	if "%ver%"=="Windows 10 Pro N for Advanced PCs Insider Preview" (set key=9FNHH-K3HBT-3W4TD-6383H-6XYWF)
	if "%ver%"=="Windows 10 Pro for Workstations Insider Preview" (set key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J)
	if "%ver%"=="Windows 10 Pro N for Workstations Insider Preview" (set key=9FNHH-K3HBT-3W4TD-6383H-6XYWF)
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:PrivacySettings
	start ms-settings:privacy
	goto:QuickAccess
:PersonalizationSettings
	start ms-settings:personalization
	goto:QuickAccess
:NotificationsSetting
	start ms-settings:notifications
	goto:QuickAccess
:OptionalFeaturesSetting
	start ms-settings:optionalfeatures
	goto:QuickAccess
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:JATDUpdate
	call :VERSION
	if "%jatdtemp%"=="" set "jatdtemp=%temp%\jatdtemp"
	cls
	call :HEADER "CHECK/UPDATE JATD", " "
	echo This will check for JATD Updates.
	call :FOOTER
	CHOICE /C CB /N /M "[C]ontinue or [B]ack?:"
    if %errorlevel%==2 goto:Menu1
	cls
	call :HEADER "CHECK/UPDATE JATD", " "
	if not exist "%jatdtemp%" md "%jatdtemp%"
	set "installpath=%cd%"
	set "wget=files\wget\wget.exe"
	set "sevenzip=files\files\7z\7z.exe"
	set "jatdurl=https://dl.dropboxusercontent.com/s/9rnc9aahzk3g7by/JATD.7z?dl=0"
	set "jatdtxturl=https://dl.dropboxusercontent.com/s/vwu1gu80sl9fhrn/version.txt?dl=0"
	if exist "%jatdtemp%\version.txt" del /s /q "%jatdtemp%\version.txt" >nul 2>&1
	%wget% -nc "%jatdtxturl%" --secure-protocol=auto -O "%jatdtemp%\version.txt" --no-check-certificate
	call :FOOTER
	for /f "tokens=*" %%a in (%jatdtemp%\version.txt) do set "newjatdversion=%%a"
	if exist "%jatdtemp%\version.txt" del /s /q "%jatdtemp%\version.txt" >nul 2>&1
	if not "%jatdversion%"=="%newjatdversion%" goto:JATDDownload
	echo No new version found.
	call :FOOTER
	pause
	goto:Menu1
:JATDDownload
	echo Found Version  : %jatdversion%
	echo:
	echo Latest Version : %newjatdversion%
	call :FOOTER
	CHOICE /C CB /N /M "[C]ontinue or [B]ack?:"
    if %errorlevel%==2 goto:Menu1
	cls
	call :HEADER "CHECK/UPDATE JATD", " "
	echo Specify Temp Download Folder.
	echo DEFAULT: %jatdtemp%
	call :FOOTER
	set /p jatdtemp=Specify Folder :^>
	cls
	call :HEADER "CHECK/UPDATE JATD", " "
	for /r "%jatdtemp%" %%a in (*.7z) do echo %%~na | findstr /i "JATD" 1>nul && set "jatd=%%a"
	if exist "%jatd%" del /s /q "%jatd%" >nul 2>&1
	%wget% -nc "%jatdurl%" --secure-protocol=auto -O "%jatdtemp%\%newjatdversion%.7z" --no-check-certificate
	%sevenzip% x "%jatdtemp%\%newjatdversion%.7z" -o"%jatdtemp%\%newjatdversion%" -ps1ave77
	call :FOOTER
	call :JATDUpdateScript
	echo Updater will start now. Tool will close.
	call :FOOTER
	pause
	start "JATD UPDATER" cmd /c "%jatdupdater%"
	if exist "%jatdtemp%\version.txt" del /s /q "%jatdtemp%\version.txt" >nul 2>&1
	exit
:JATDUpdateScript
	set "jatdupdater=%jatdtemp%\jatdupdater.cmd"
	echo @echo off>%jatdupdater%
	echo :: Code by s1ave77>>%jatdupdater%
	echo setlocal ENABLEDELAYEDEXPANSION>>%jatdupdater%
	echo pushd "%installpath%">>%jatdupdater%
	echo echo ###############>>%jatdupdater%
	echo echo JATD UPDATE>>%jatdupdater%
	echo echo ###############>>%jatdupdater%
	echo timeout /t ^5>>%jatdupdater%
	echo for /d /r %%%%x in (.) do rd /s /q "%%%%x">>%jatdupdater%
	echo del /s /q "*.*">>%jatdupdater%
	echo timeout /t ^5>>%jatdupdater%
	echo xcopy "%jatdtemp%\%newjatdversion%\*.*" /s /q "%installpath%\" /y>>%jatdupdater%
	echo start cmd /k "%installpath%\JATDevice.cmd">>%jatdupdater%
	echo if exist "%jatdtemp%\%newjatdversion%" rd /s /q "%jatdtemp%\%newjatdversion%" ^>nul 2^>^&^1>>%jatdupdater%
	echo if exist "%jatdtemp%\%newjatdversion%.7z" del /s /q "%jatdtemp%\%newjatdversion%.7z" ^>nul 2^>^&^1>>%jatdupdater%
	echo endlocal>>%jatdupdater%
	echo del %%0>>%jatdupdater%
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:DefenderUpdateProcess
	cls
	call :HEADER "This option updates Defender Signatures", " "
	powershell "Update-MpSignature -UpdateSource MMPC -Verbose"
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
:DefenderDefRevert
	cls
	call :HEADER "This option reverts Signatures to previous state", " "
	"%programfiles%\windows defender\mpcmdrun.exe" -RemoveDefinitions
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
:DefenderDefRevertAll
	cls
	call :HEADER "This option reverts Signatures to install state", " "
	"%programfiles%\windows defender\mpcmdrun.exe" -RemoveDefinitions -all
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
:DefenderLog
	cls
	set "count=0"
	set "deflog=%programdata%\Microsoft\Windows Defender\Support\MPLog-*.log"
	call :HEADER "This option checks Defender Log", " "
	for /f "tokens=*" %%g in ('type "%deflog%" ^| findstr /i /n "updated"') do (
		set /a count+=1
		echo %%g
		if "!count!"=="20" (
			call :FOOTER
			set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
			cls
			call :HEADER "LIST REG ENTRIES AND VALUES", " "
			set "count=0"
		)
	)
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:DefenderScanQuick
	cls
	call :HEADER "This option performs Defender Quickscan", " "
	echo:
	powershell "Start-MpScan -ScanType QuickScan"
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
:DefenderScanComplete
	cls
	call :HEADER "This option performs Defender Completescan", " "
	echo:
	powershell "Start-MpScan -ScanType FullScan"
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
:DefenderScanFiles
	cls
	call :HEADER "This option performs Defender Completescan", " "
	echo File Path: To scan any drive use 'c:\'
	set /p scanpath=Enter File Path :
	call :FOOTER
	powershell "Start-MpScan -ScanPath %scanpath% -ScanType CustomScan -Verbose"
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
:DefenderQuar
	cls
	call :HEADER "This option shows quarrantined objects", " "
	for /F "tokens=*" %%a in ('"%programfiles%\windows defender\mpcmdrun.exe" -restore -listall') do (
		set /a count+=1
		echo %%a
		if "!count!"=="20" (
			call :FOOTER
			set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
			cls
			call :HEADER "This option shows quarrantined objects", " "
			set "count=0"
		)
	)
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
:DefenderQuarRestore
	cls
	set "threatname="
	call :HEADER "This option restores quarrantined objects", " "
	echo Threat Name or leave blank to restore all:
	set /p threatname=Enter Threat Name :
	call :FOOTER
	if "%threatname%"=="" (
		"%programfiles%\windows defender\mpcmdrun.exe" -restore -all
		call :FOOTER
		set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
		goto :DefenderUpdate
	)
	"%programfiles%\windows defender\mpcmdrun.exe" -restore -name %threatname%
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
:DefenderActionLog
	cls
	set "count=0"
	set "defactionlog=%localappdata%\Temp\MpCmdRun.log"
	call :HEADER "This option checks Defender Log", " "
	for /f "tokens=*" %%g in ('type "%defactionlog%" ^| findstr /i /n "."') do (
		(echo "%%g" | findstr /c:"MpCmdRun" 1>nul && echo %%g && set /a count+=1)&&(echo "%%g" | findstr /c:"Start Time" 1>nul && echo %%g && set /a count+=1)&&(echo "%%g" | findstr /c:"ERROR" 1>nul && echo %%g && set /a count+=1)&&(echo "%%g" | findstr /c:"WARNING" 1>nul && echo %%g && set /a count+=1)&&(echo "%%g" | findstr /c:"INFO" 1>nul && echo %%g && set /a count+=1)&&(echo "%%g" | findstr /c:"Update completed succesfully" 1>nul && echo %%g && set /a count+=1)
		if "!count!"=="20" (
			call :FOOTER
			set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
			cls
			call :HEADER "This option checks Defender Log", " "
			set "count=0"
		)
	)
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:DefenderShowExclusion
	cls
	call :HEADER "This option shows exclusions in Defender", " "
	call :RegEntryList "%hive%", "%subkey%"
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
:DefenderShowThreats
	cls
	set "count=0"
	set "psheader="
	call :HEADER "This option shows detected threats in Defender", " "
	powershell "Get-MpThreat | select ThreatName,Resources,DidThreatExecute,IsActive | ForEach-Object {Write-Host "!psheader!"; Write-Host "NAME_____:" -f Yellow -NoNewLine; Write-host $_.ThreatName -f magenta; Write-Host "RESOURCE_:" -f Yellow -NoNewLine; Write-host "$_.Resources" -f white; Write-Host "EXECUTED_:" -f Yellow -NoNewLine; Write-host $_.DidThreatExecute -f magenta; Write-Host "ISACTIVE_:" -f Yellow -NoNewLine; Write-host $_.IsActive -f magenta; Write-Host "!psheader!"}"
	echo:
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
:DefenderSetExclusion
	cls
	call :HEADER "This option sets exclusions in Defender", " "
	call :DefInputValue
	cls
	call :HEADER "This option sets exclusions in Defender", " "
	call :DefChangePermissions "%entry%"
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
:DefenderRemExclusion
	cls
	call :HEADER "This option removes exclusions in Defender", " "
	call :DefInputValue
	cls
	call :HEADER "This option removes exclusions in Defender", " "
	call :DefRemovePermissions "%entry%"
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
:DefInputValue
	echo Enter Entry name 'd:\' or 'd:\myfolder' or List
	echo Default: %entry%
	echo:
	call :FOOTER
	set /p entry=Enter Entry Name :
	goto:eof
:RegEntryList
	set "count=0"
	for /f "tokens=1* delims=: " %%g in ('"powershell Get-ItemProperty '%~1:\%~2' ^| Select * -exclude PS* ^| Format-List"') do (
		set /a count+=1
		echo %%g%%h
		if "!count!"=="30" (
			call :FOOTER
			set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
			cls
			call :HEADER "LIST REG ENTRIES AND VALUES", " "
			set "count=0"
		)
	)	
	goto:eof
:DefChangePermissions
	for /d %%a in ("%~1") do (
		powershell Add-MpPreference -ExclusionPath '"%%a"' -Verbose
	)
	goto:eof
:DefRemovePermissions
	for /d %%a in ("%~1") do (
		powershell Remove-MpPreference -ExclusionPath '"%%a"' -Verbose
	)
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:DefenderSettings
	cls
	set "pref="
	set "defvalue="
	set "prefcheck=CheckForSignaturesBeforeRunningScan, DisableArchiveScanning, DisableBehaviorMonitoring, DisableEmailScanning, DisableRealtimeMonitoring, DisableRemovableDriveScanning, DisableScanningNetworkFiles, DisableScriptScanning, ScanScheduleQuickScanTime, ScanScheduleTime"
	call :HEADER "This option checks Defender Preferences", " "
	CHOICE /C CSB /N /M "[C]heck first, [Set] directly or [B]ack ? >"
	if %errorlevel%==2 goto :DefenderSettingsChange
	if %errorlevel%==3 goto :DefenderUpdate
	call :FOOTER
	for /d %%a in (%prefcheck%) do call :DefenderPrefsCheck %%a
	call :FOOTER
	CHOICE /C CB /N /M "[C]hange Prefrences or [B]ack ? >"
	if %errorlevel%==2 goto :DefenderUpdate
:DefenderSettingsChange
	call :FOOTER
	echo Enter Entry name 'DisableArchiveScanning'
	echo Default: %def%
	echo:
	call :FOOTER
	set /p def=Enter Entry Name :
	cls
	call :HEADER "This option sets %def%", " "
	call :DefenderPrefsCheck %def%
	call :FOOTER
	echo Enter Entry value 'false', 'true' or time '00:00:00'
	echo Default: %defvalue%
	echo:
	call :FOOTER
	set /p defvalue=Enter Entry Name :
	if "%defvalue%"=="true" set "defvalue=$%defvalue%"
	if "%defvalue%"=="false" set "defvalue=$%defvalue%"
	call :FOOTER
	call :DefenderPrefsSet %def%, %defvalue%
	call :FOOTER
	call :DefenderPrefsCheck %def%
	call :FOOTER
	set/p<nul =PRESS [THE] ANY KEY ^>^>^>&pause>nul
	goto :DefenderUpdate
:DefenderPrefsCheck
	for /f "tokens=* delims=" %%g in ('powershell Get-MpPreference ^| findstr /c:"%~1"') do echo %%g
	goto:eof
:DefenderPrefsSet
	powershell Set-MpPreference -%~1 %~2 -Verbose
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckPowershellVersion
	for /f "tokens=1,2 delims==" %%a in ('powershell Get-Host ^| Select-Object Version') do set psversion=%%a
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckToolStart
	set slp=SoftwareLicensingProduct
	set sls=SoftwareLicensingService
	set spp=SoftwareProtectionProduct
	set sps=SoftwareProtectionService
	set ospp=OfficeSoftwareProtectionProduct
	for /f "tokens=2 delims==" %%A IN ('"wmic path %sls% get version /format:list"') do set version=%%A
	for /f "tokens=2* delims= " %%a in ('reg query "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /v "PROCESSOR_ARCHITECTURE"') do if "%%b"=="AMD64" (set vera=x64) else (set vera=x86)
	for /f "tokens=6 delims=[]. " %%G in ('ver') do set win=%%G
	for /f "tokens=2,3 delims=.=" %%A IN ('"wmic path %sls% get version /format:list"') do set build=%%A.%%B
	FOR /F "tokens=3,4 delims=. " %%I IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" ^| findstr BuildLabEx') DO (SET build1=%%I)
	FOR /F "tokens=3,4 delims=. " %%I IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" ^| findstr UBR') DO for /f "tokens=*" %%a in ('set /A "DEC=%%I"') do (SET build1=%build1%.%%a)
	FOR /F "tokens=3,4 delims=. " %%I IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" ^| findstr ReleaseId') DO (SET relid=%%I)
	if %win% LSS 10240 FOR /F "tokens=3* delims= " %%I IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" ^| findstr ProductName') DO SET "ver=%%I %%J"
	if %win% GEQ 10240 FOR /F "tokens=1 delims==|" %%I IN ('"wmic os get name | findstr /i "Microsoft""') DO FOR /F "tokens=2* delims= " %%i IN ("%%I") DO SET "ver=%%i %%j"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ID
	set slp=SoftwareLicensingProduct
	for /f "tokens=2 delims==" %%G in ('"wmic path %slp% where (Name like '%%Windows%%' and LicenseStatus='%status%') get ID /format:list"') do set id=%%G
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:OID
	set ospp=OfficeSoftwareProtectionProduct
	set osps=OfficeSoftwareProtectionService
	set slp=SoftwareLicensingProduct
	for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where (Name LIKE '%%%~2%%') get LicenseStatus /format:list"') do if %%A geq 1 set officestatus=%%A
	for /f "tokens=2 delims==" %%G in ('"wmic path %~1 where (Name like '%%%~2%%' and LicenseStatus='%officestatus%') get ID /format:list"') do set oid=%%G
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:POID
	set ospp=OfficeSoftwareProtectionProduct
	set osps=OfficeSoftwareProtectionService
	set slp=SoftwareLicensingProduct
	for /f "tokens=2 delims==" %%A in ('"wmic path %~1 where (Name like '%%%~2%%') get LicenseStatus /format:list"') do if %%A geq 1 set othersstatus=%%A
	for /f "tokens=2 delims==" %%G in ('"wmic path %~1 where (Name like '%%%~2%%' and LicenseStatus='%othersstatus%') get ID /format:list"') do set poid=%%G
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CheckSPPSVC
	set slp=SoftwareLicensingProduct
	if %win% GEQ 9200 for /f %%A in ('cscript files\PID8.vbs') do set productkey=%%A
	if %win% LSS 9200 for /f %%A in ('cscript files\PID7.vbs') do set productkey=%%A
	for /f "tokens=2 delims== " %%A in ('"wmic path %slp% where (Name LIKE '%%Windows%%' and PartialProductKey is not null) get GracePeriodRemaining /format:list"') do set grace=%%A
	for /f "usebackq tokens=2 delims==" %%n in (`"%SystemRoot%\System32\wbem\WMIC.exe" /namespace:\\root\cimv2 path %sls% get RemainingWindowsReArmCount /format:list`) do set r=%%n
	for /f "tokens=2 delims== " %%A in ('"wmic path %slp% where (Name LIKE '%%Windows%%' and PartialProductKey is not null) get LicenseStatus /format:list"') do set status=%%A
	if %win% GEQ 9200 (set "tok2=2") else (set "tok2=3")
	for /f "tokens=%tok2% delims= " %%A in ('"wmic path %slp% where LicenseStatus='%status%' get name"') do set edition=%%A
	for /d %%a in (Ultimate, UltimateN, UltimateE, HomeBasic, HomeBasicN, HomeBasicE, HomePremium, HomePremiumN, HomePremiumE) do if "%edition%"=="%%a" set "comment=^< NOT SUPPORTED ^>"
	set /a grace=grace/60/24
	if %status% EQU 6 (set "license=[ EXTENDED GRACE Left: %grace% days ]")&&(color 1F)
	if %status% EQU 5 (set "license=[ NOTIFICATION ]")&&(color 4F)
	if %status% EQU 4 (set "license=[ NON GENUINE GRACE Left: %grace% days ]")&&(color 1F)
	if %status% EQU 3 (set "license=[ OOT GRACE Left: %grace% days ]")&&(color 1F)
	if %status% EQU 2 (set "license=[ OOB GRACE Left: %grace% days ]")&&(color 1F)
	if %status% EQU 1 set "license=[ LICENSED ]"
	if %status% EQU 0 (set "license=[ UNLICENSED ]")&&(color 1F)
	if %win% GEQ 9200 (set "tok=6") else (set "tok=9")
	for /f "tokens=%tok% delims==,() " %%G in ('"wmic path %slp% where LicenseStatus='%status%' get Description /format:list"') do set channel=%%G
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Layout
	set "permanent="
	set "left="
	if %build% lss 10.0 set "relid=0"
	for /d %%a in (RETAIL, OEM, OEM_SLP, OEM_NONSLP, OEM_COA, OEM_DM, VOLUME_MAK, VOLUME_KMS) do if "%channel%"=="%%a" if "%status%"=="1" set "permanent=PERMANENTLY "
	if "%channel%"=="VOLUME_KMSCLIENT" set "left=(Left: %grace% days)"
	for /d %%a in (2, 3, 4, 6) do if "%channel%"=="VOLUME_KMSCLIENT" if %status% EQU %%a set "left="
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo    € -==Emulators: CODYQX4, mikmik38, deagles, SirWest, Hotbird64, qad ^& CyNecx==- €
	echo    €            --==Code: s1ave77, ColdZero, ms-7, MasterDisaster==--              €
	echo    €                       --==forums.mydigitallife.info==--                       €
	echo    €‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹€
	echo:
	echo                     User...: %username% ^| at: %computername% 
	echo                     Version: %ver% %comment%
	echo                     Edition: %build%.%build1% %edition%
	echo                     Channel: %channel% ^| Arch: %vera% ^| RID: %relid%
	echo                     Act.ID.: %id%
	echo:                    PID....: %productkey%
	echo                     Status.: %status% = %permanent%%license% %left%
	echo:
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:NotInstalled
	echo:
	call :COLOROUT "...Service is not installed.", "Red"
	call :FOOTER
	timeout /t 5
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:NotSupported
	cls
	call :HEADER "Not supported: %ver% %vera% found!", " "
	echo:
	call :COLOROUT "Operating System is not supported.", "Red"
	call :FOOTER
	timeout /t 5
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
:COLOROUT
	powershell "Write-Host '%~1' -foreground %~2"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:COLOROUT02
	powershell "Write-Host '%~1' -foreground %~2 -background %~3"
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
:SHORTFOOTER
	echo:
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:TITLE
	title s1ave77s ˛ S-M-R-T JATDevice Mk III ˛ v1.04.01
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:VERSION
	set "jatdversion=JATDevice.v1.04.01"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Exit
	endlocal
	exit
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	