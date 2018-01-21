	@echo off
	title ˛ WINDOWS IMAGING TOOLS ˛ by s1ave77
:: Code by s1ave77
	color 1F
	mode con cols=87 lines=50
	setlocal EnableExtensions
	setlocal EnableDelayedExpansion
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	powershell.exe -command "& {$pshost = Get-Host;$pswindow = $pshost.UI.RawUI;$newsize = $pswindow.BufferSize;$newsize.height = 9001;$pswindow.buffersize = $newsize;}"
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
	pushd "%~dp0"
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
	if /i "%index%" == "" set index=1
	set "dism=win10.%vera%\dism.exe"
	set "wimlib-imagex=win10.%vera%\wimlib-imagex.exe"
	set "imagex=win10.%vera%\imagex.exe"
	set "oscdimg=win10.%vera%\oscdimg.exe"
	set "used=[ADK10  %vera%]"
	if %win% lss 9200 (set "dism=win10.%vera%\dism.exe")&&(set used=[ADK8.1 %vera%])
	if %win% lss 9200 (set dism="win10.%vera%\imagex.exe")
	if %win% lss 9200 (set dism="win10.%vera%\oscdimg.exe")
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:Menu
	cls
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  WINDOWS IMAGING TOOLS %used%  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	echo    €ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€
	echo    €‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€
	echo:
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    == (9) MOUNTED IMAGE INFO =============== (0) GET CURRENT VERSION ===============
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    == (A) APPLY ESD/SWM/WIM [D] ============ (C) CHECK ESD/SWM/WIM [A/S] [D] =======
	echo:   ∞                                                                               ∞
	echo    == (D) CAPTURE [IX] [D] [W-IX] ========== (E) EXPORT [A/S] [IX] [D] [W-IX] ======
	echo:   ∞                                                                               ∞
	echo    == (F) MOUNT MENU [A/S] [D] ============= (G) CLEANUP MENU [A/S] [D] ============
	echo:   ∞                                                                               ∞
	echo    == (H) SET FLAGS [IX] [W-IX] ============ (I) DELETE [IX] [D] [W-IX] ============
	echo:   ∞                                                                               ∞
	echo    == (J) REGISTRY HIVE MENU [D] =========== (K) SPLIT [A/S] [IX] [D] [W-IX] =======
	echo:   ∞                                                                               ∞
	echo    == (L) WINDOWS UPDATES [A/S] [D] ======== (M) MODERN UI APPS [A/S] [D] ==========
	echo:   ∞                                                                               ∞
	echo    == (N) WINDOWS FEATURES [A/S] [D] ======= (O) DRIVERS MENU [A/S] [D] ============
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    == (P) Upgrade to Target Edition ======== (Q) Net 3.5 Integration [A/S] [D] =====
	echo:   ∞                                                                               ∞
	echo    == (R) Change System Locale [D] ========= (S) Set Product Key [D] ===============
	echo:   ∞                                                                               ∞
	echo    == (1) Decrypt Store ESD ================ (2) Convert Store ESD =================
	echo:   ∞                                                                               ∞
	echo    == (3) List Image Content [W-IX] ======== (4) Update Files directly [W-IX] ======
	echo:   ∞                                                                               ∞
	echo    == (5) Optimize [W-IX] ================== (6) Extract directly [W-IX] ===========
	echo:   ∞                                                                               ∞
	echo    == (Y) Show Name/Edition-Flags ========== (Z) Create ISO (GPT+MBR) ==============
	echo:   ∞                                                                               ∞
	echo    == (X) CHANGE DISM VERSION ======================================================
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo    ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) Back ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
:choiceRT
	CHOICE /C 90ACDEFGHIJKLMNOPQRS123456YZXB /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto :GetWimInfoMASTER
	if %errorlevel%==2 goto :GetWimVersionMASTER
	if %errorlevel%==3 goto :ApplyWIM
	if %errorlevel%==4 goto :Check
	if %errorlevel%==5 goto :Capture
	if %errorlevel%==6 goto :Export
	if %errorlevel%==7 goto :MountMenu
	if %errorlevel%==8 goto :ResetBase
	if %errorlevel%==9 goto :SetFlag
	if %errorlevel%==10 goto :DeleteIndex
	if %errorlevel%==11 goto :RegHiveMenu
	if %errorlevel%==12 goto :SWMMenu
	if %errorlevel%==13 goto :PackagesMenuInput
	if %errorlevel%==14 goto :AppsMenuInput
	if %errorlevel%==15 goto :FeaturesMenu
	if %errorlevel%==16 goto :DriversMenu
	if %errorlevel%==17 goto :CreateProWMC
	if %errorlevel%==18 goto :EnableNET
	if %errorlevel%==19 goto :ChangeLocale
	if %errorlevel%==20 goto :SetKey
	if %errorlevel%==21 goto :ESDDecrypt
	if %errorlevel%==22 goto :ESDConvert
	if %errorlevel%==23 goto :ContentView
	if %errorlevel%==24 goto :Update
	if %errorlevel%==25 goto :Optimize
	if %errorlevel%==26 goto :Extract
	if %errorlevel%==27 goto :ShowInfo
	if %errorlevel%==28 goto :ISOCreation
	if %errorlevel%==29 goto :DISMChange
	if %errorlevel%==30 (pushd %~dp0)&&(..\systemtools.cmd)
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ShowInfo
	cls
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  NAMES AND EDITIONS  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	echo    €ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€
	echo    €‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€
	echo:
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo    ∞  NAME:                                        EDITION:                        ∞
	echo    =================================================================================
	echo    ∞  "Windows 7 Professional"                     "Professional"                  ∞
	echo    ∞  "Windows 7 Professional N"                   "ProfessionalN"                 ∞
	echo    ∞  "Windows 7 Professional E"                   "ProfessionalE"                 ∞
	echo    ∞  "Windows 7 Enterprise"                       "Enterprise"                    ∞
	echo    ∞  "Windows 7 Enterprise E"                     "EnterpriseE"                   ∞
	echo    ∞  "Windows 7 Enterprise N"                     "EnterpriseN"                   ∞
	echo    ∞  "Windows 7 Ultimate"                         "Ultimate"                      ∞
	echo    ∞  "Windows 7 Ultimate E"                       "UltimateE"                     ∞
	echo    ∞  "Windows 7 Ultimate N"                       "UltimateN"                     ∞
	echo    ∞  "Windows Server 2008 R2 Standard"            "ServerStandard"                ∞
	echo    ∞  "Windows Server 2008 R2 Enterprise"          "ServerEnterprise"              ∞
	echo    ∞  "Windows Server 2008 R2 Datacenter"          "ServerDatacenter"              ∞
	echo    =================================================================================
	echo    ∞  "Windows 8"                                  "Core"                          ∞
	echo    ∞  "Windows 8 N"                                "CoreN"                         ∞
	echo    ∞  "Windows 8 Pro"                              "Professional"                  ∞
	echo    ∞  "Windows 8 Pro N"                            "ProfessionalN"                 ∞
	echo    ∞  "Windows 8 Pro with Media Center"            "ProfessionalWMC"               ∞
	echo    ∞  "Windows Server 2012 Standard"               "ServerStandard"                ∞
	echo    ∞  "Windows Server 2012 Standard Core"          "ServerStandardCore"            ∞
	echo    ∞  "Windows Server 2012 Datacenter"             "ServerDatacenter"              ∞
	echo    ∞  "Windows Server 2012 Datacenter Core"        "ServerDatacenterCore"          ∞
	echo    =================================================================================
	echo    ∞  "Windows 8.1"                                "Core"                          ∞
	echo    ∞  "Windows 8.1 N"                              "CoreN"                         ∞
	echo    ∞  "Windows 8.1 Pro"                            "Professional"                  ∞
	echo    ∞  "Windows 8.1 Pro N"                          "ProfessionalN"                 ∞
	echo    ∞  "Windows 8.1 Pro with Media Center"          "ProfessionalWMC"               ∞
	echo    ∞  "Windows Server 2012 R2 Standard"            "ServerStandard"                ∞
	echo    ∞  "Windows Server 2012 R2 Standard Core"       "ServerStandardCore"            ∞
	echo    ∞  "Windows Server 2012 R2 Datacenter"          "ServerDatacenter"              ∞
	echo    ∞  "Windows Server 2012 R2 Datacenter Core"     "ServerDatacenterCore"          ∞
	echo:   ∞                                                                               ∞
	echo    ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
	echo    €‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹/ press any key to continue \‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹€ && pause >nul
	goto:NextShowInfo
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:NextShowInfo
	cls
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  NAMES AND EDITIONS  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	echo    €ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€
	echo    €‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€
	echo:
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo    ∞  NAME:                                        EDITION:                        ∞
	echo    =================================================================================
	echo    ∞  "Windows 8.1 with Bing"                      "CoreConnected"                 ∞
	echo    ∞  "Windows 8.1 with Bing N"                    "CoreConnectedN"                ∞
	echo    ∞  "Windows 8.1 with Bing Single Language"      "CoreConnectedSingleLanguage"   ∞
	echo    ∞  "Windows 8.1 with Bing Country Specific"     "CoreConnectedCountrySpecific"  ∞
	echo    ∞  "Windows 8.1 Pro for Education"              "ProfessionalStudent"           ∞
	echo    ∞  "Windows 8.1 Pro for Education N"            "ProfessionalStudentN"          ∞
	echo    =================================================================================
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
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo    ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
	echo    €‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹/ press any key to continue \‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹€ && pause >nul
	goto:Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:DISMChange
	cls
	call :HEADER "Set DISM Version", " "
	CHOICE /C ET /N /M "Win [E]ight or [T]en ADK:"
	if %errorlevel%==1 goto :Eight
	if %errorlevel%==2 goto :Ten
:Eight
	set dism=win81.%vera%\dism.exe
	set imagex=win81.%vera%\imagex.exe
	set oscdimg=win81.%vera%\oscdimg.exe
	set "used=[WIN8.1 %vera%]"
	goto:Menu
:Ten
	set dism=win10.%vera%\dism.exe
	set imagex=win10.%vera%\imagex.exe
	set oscdimg=win10.%vera%\oscdimg.exe
	set "used=[WIN10  %vera%]"
	goto:Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Capture
	cls
	call :HEADER "This option sets the Name, Description, Flags and Paths for capture", " "
	echo Default: %path1%
	echo Values: Path of Source Drive 'X:'
	call :FOOTER
	set /p path1=Set Path of Source Drive ^>
	call :FOOTER
	for /f "tokens=3 delims=: " %%a in ('"%dism% /image:%path1% /Get-CurrentEdition /english" ^| findstr /i Image') do set offlineversion=%%a
	for /f "tokens=3 delims=: " %%a in ('"%dism% /image:%path1% /Get-CurrentEdition /english" ^| findstr /i Edition') do set flag=%%a
	if "!offlineversion:~0,3!"=="6.3" echo   Windows 8.1 / Servers 2012 R2 Family&&set "name=Windows 8.1 %flag%"&&set "desc=Windows 8.1 %flag%"
	if "!offlineversion:~0,3!"=="6.2" echo   Windows 8 / Servers 2012 Family&&set "name=Windows 8 %flag%"&&set "desc=Windows 8 %flag%"
	if "!offlineversion:~0,3!"=="6.1" echo   Windows 7 / Servers 2008 R2 Family&&set "name=Windows 7 %flag%"&&set "desc=Windows 7 %flag%"
	if "!offlineversion:~0,3!"=="6.0" echo   Windows Vista / Servers 2008 Family&&set "name=Windows Vista %flag%"&&set "desc=Windows Vista %flag%"
	if defined offlineversion (echo   !offlineversion! !flag!) else (echo   No Windows detected.)
	echo   At: %path1%
	call :FOOTER
	pause
	cls
	call :HEADER "This option sets the Name, Description, Flags and Paths for capture by ImageX", " "
	echo Default: %name%
	echo Values: Edition Name
	echo:
	echo Default: %desc%
	echo Values: Edition Description
	echo:
	echo Default: %flag%
	echo Values: Edition Flag
	echo:
	echo Default: %path2%
	echo Values: Path of Destination WIM 'X:\...\install.wim'
	call :FOOTER
	set /p name=Set name ^>
	set /p desc=Set desc ^>
	set /p flag=Set Flag ^>
	set /p path2=Set Path of Destination Drive ^>
:CaptureMenu
	cls
	call :HEADER "CAPTURE MENU", " "
	echo    [I] Capture with [ImageX]
	echo:
	echo    [D] Capture with [DISM]
	echo:
	echo    [W] Capture with [wimlib-imagex]
	echo:
	echo    [N] ENTER NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C IDWNB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :CaptureImagex
	if %errorlevel%==2 goto :CaptureDISM
    if %errorlevel%==3 goto :CaptureWimlib
    if %errorlevel%==4 goto:Capture
    if %errorlevel%==5 goto:Menu
:CaptureImagex
	cls
	call :HEADER "Capturing Image with ImageX  ", " "
	echo Image is beeing captured now from: %path1%
	echo New Image is written to: %path2%
	echo Index of Edition is: %index%
	echo:
	%imagex% /capture "%path1%" "%path2%" "%name%" "%desc%" /flags "%flag%" /compress maximum /check /verify
	call :FOOTER
	pause
	goto:CaptureMenu
:CaptureWimlib
	cls
	call :HEADER "Capturing Image with ImageX  ", " "
	echo Image is beeing captured now from: %path1%
	echo New Image is written to: %path2%
	echo Index of Edition is: %index%
	echo:
	wimlib-imagex capture "%path1%" "%path2%" "%name%" "%desc%" --flags="%flag%" --compress=maximum --check
	call :FOOTER
	pause
	goto:CaptureMenu
:CaptureDISM
	cls
	call :HEADER "Capturing Folder with [DISM]", " "
	echo Image is beeing captured now from: %path1%
 	echo New Image is written to: %path2%
 	echo Index of Edition is: %index%
	echo:
	%dism% /Capture-Image /English /ImageFile:"%path2%" /CaptureDir:"%path1%" /Name:"%name%" /Description:"%desc%" /CheckIntegrity /Verify
	call :FOOTER
	pause
	goto:CaptureMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Check
	cls
	call :HEADER "This option checks Image Files for Info", " "
	echo Default: %path2%
	echo Values: Path of WIM File 'X:\...\install.wim'
	call :FOOTER
	set /p path2=Set Path of to WIM Destination ^>
:CheckMenu
	cls
	call :HEADER "CHECK MENU", " "
	echo    File: %path2%
	call :FOOTER
	echo    [A] Check all Indices Short
	echo:
	echo    [V] Check all Indices Verbose
	echo:
	echo    [S] Check Specific Index
	echo:
	echo    [N] ENTER NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C AVSNB /N /M "YOUR CHOICE:"
	if %errorlevel%==1 goto :furtherIC1
	if %errorlevel%==2 goto :furtherIC3
	if %errorlevel%==3 goto :furtherIC2
	if %errorlevel%==4 goto:Check
	if %errorlevel%==5 goto:Menu
:furtherIC1
	cls
	set "z=0"
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /a z+=1
	if "%z%"=="1" (set ex=ex) else (set ex=ices)
	call :HEADER "Checking !z! Ind%ex%  ", " "
	call :EXTCheck "%path2%", ext1
	echo %ext1%: %path2%
	call :WIMCheckLoop "%path2%"
:DONE
	call :FOOTER
	pause
	goto :CheckMenu
:furtherIC2
	cls
	call :HEADER "Checking Index %index%", " "
	echo Default: %index%
	echo Values: Index of Edition
	call :FOOTER
	set /p index=Set Index of Edition ^>
	cls
	call :HEADER "Checking Index %index%", " "
	echo Info for Image: %path2%
	call :FOOTER
	set "offset="
	for /f "skip=5 tokens=*" %%g in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:%index%') do (
		if "%%g"=="The operation completed successfully." (set offset=rem ) else (set offset=)
		!offset!echo %%g
	)
	call :FOOTER
	pause
	goto :CheckMenu
:furtherIC3
	set z=0
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /A z+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Checking Index !ix! of %z%", " "
		echo Details for image : %path2%
		call :FOOTER
		set "offset="
		for /f "skip=5 tokens=*" %%g in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:!ix!') do (
			if "%%g"=="The operation completed successfully." (set offset=rem ) else (set offset=)
			!offset!echo %%g
		)
		call :FOOTER
		pause
	)
	goto :CheckMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ApplyWIM
	cls
	call :HEADER "APPLY MENU", " "
	echo    [A] Apply Image File
	echo:
	echo    [C] Create Boot Emtry
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C ACB /N /M "YOUR CHOICE:"
	if %errorlevel%==1 goto :ApplyImage
	if %errorlevel%==2 goto :CreateBootEntry
	if %errorlevel%==3 goto:Menu
:ApplyImage
	cls
	call :HEADER "This option applies a WIM to Disk", " "
	echo Default: %path2%
	echo Values: Path of Source WIM 'X:\...\install.wim'
	call :FOOTER
	set /p path2=Path of Source WIM ^>
	cls
	set "z=0"
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /a z+=1
	call :HEADER "Checking !z! Indices ", " "
	call :EXTCheck "%path2%", "ext1"
	echo %ext1%: %path2%
	call :WIMCheckLoop "%path2%"
	call :FOOTER
	pause
	cls
	call :HEADER "This option applies a WIM to Disk", " "
	echo Default: %index%
	echo Values: Index of Edition
	echo:
	if "%scratch%"=="" set "scratch=%temp%"
	echo Default: %scratch%
	echo Values: Path to Scratch Folder 'X:'
	echo:
	echo Default: %path1%
	echo Values: Path of Target Disk 'X:'
	call :FOOTER
	set /p index=Set Index of Edition ^>
	set /p scratch=Set Path of Scratch Folder ^>
	set /p path1=Path of Target Disk  ^>
	echo:
	cls
	call :EXTCheck "%path2%", "ext1"
	call :HEADER "Applying %ext1% to disk", " "
	for /f "tokens=2 delims=:" %%g in ('"%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:%index%" ^| findstr /i Name') do set indexname=%%g
	:loopApply
	if defined indexname if "%indexname:~0,1%"==" " (set "indexname=%indexname:~1%")&&(goto :loopApply)
	echo Path of Source %ext1% : %path2%
	echo Path of Target Disk: %path1%
	echo Index of Edition is: %index%
	if defined indexname echo Name of Edition is : %indexname%
	call :FOOTER
	%dism% /English /Apply-Image /ImageFile:"%path2%" /ScratchDir:"%scratch%" /index:%index% /ApplyDir:"%path1%"
	call :FOOTER
	pause
	goto:ApplyWIM
:CreateBootEntry
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
	goto:ApplyWIM
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:SetFlag
	if /i "%flag%" == "" set "flag=ProfessionalWMC"
	if /i "%desc%" == "" set "desc=Windows 8.1 ProfessionalWMC"
	if /i "%name%" == "" set "name=Windows 8.1 ProfessionalWMC"
	cls
	call :HEADER "This option sets the Name, Description, Flags and Paths of capture by ImageX", " "
	echo Default: %path2%
	echo Values: Path of Image 'X:\...\install.wim'
	call :FOOTER
	set /p path2=Set Path of Destination Drive ^>
	cls
	set "z=0"
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /a z+=1
	call :HEADER "Checking !z! Indices", " "
	call :EXTCheck "%path2%", "ext1"
	echo %ext1%: %path2%
	call :WIMCheckLoop "%path2%"
	call :FOOTER
	pause
	cls
	call :HEADER "This option sets the Name, Description, Flags and Paths of capture by ImageX", " "
	echo Default: %index%
	echo Values: Index of Edition
	call :FOOTER
	set /p index=Set Index of Edition ^>
:SetFlagMenu
	cls
	call :HEADER "SET FLAGS MENU", " "
	echo    [S] Set Name, Description and Edition with [ImageX]
	echo    [W] Set Name, Description and Edition with [wimlib-imagex]
	echo:
	echo    [M] Make Image bootable with [wimlib-imagex]
	echo:
	echo    [N] ENTER NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C SWMNB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :SetNewFlags
	if %errorlevel%==2 goto :SetNewFlagsWimlib
    if %errorlevel%==3 goto :SetBootFlag
    if %errorlevel%==4 goto:SetFlag
    if %errorlevel%==5 goto:Menu
:SetNewFlags
	cls
	call :HEADER "This option sets the Name, Description and Edition [ImageX]", " "
	echo Default: %name%
	echo Values: Edition Name
	echo:
	echo Default: %desc%
	echo Values: Edition Description
	echo:
	echo Default: %flag%
	echo Values: Edition Flag
	call :FOOTER
	set /p name=Set name ^>
	set /p desc=Set desc ^>
	set /p flag=Set Flag ^>
	cls
	call :HEADER "Setting Name, Description and Edition [ImageX]", " "
	echo Edition Flag is changed for: %path2%
	echo:
	echo Index of Edition is: %index%
	call :FOOTER
	%imagex% /flags "%flag%" /info "%path2%" %index% "%name%" "%desc%" /CHECK
	echo:
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	pause
	goto:SetFlagMenu
:SetNewFlagsWimlib
	cls
	call :HEADER "This option sets the Name and Description [wimlib-imagex]", " "
	echo Default: %name%
	echo Values: Edition Name
	echo:
	echo Default: %desc%
	echo Values: Edition Description
	call :FOOTER
	set /p name=Set name ^>
	set /p desc=Set desc ^>
	cls
	call :HEADER "Setting Name and Description [wimlib-imagex]", " "
	echo Edition Flag is changed for: %path2%
	echo:
	echo Index of Edition is: %index%
	call :FOOTER
	wimlib-imagex info "%path2%" %index% "%name%" "%desc%" --check
	call :FOOTER
	pause
	goto:SetFlagMenu
:SetBootFlag
	cls
	call :HEADER "This option sets the Boot Flag with wimlib-imagex", " "
	echo This will make %path2%
	echo:
	echo Index %index% bootable
	call :FOOTER
	CHOICE /C CB /N /M "[C]ontinue or [B]ack:"
	if %errorlevel%==1 goto :SetBootFlagAction
	if %errorlevel%==2 goto:SetFlagMenu
:SetBootFlagAction
	cls
	call :HEADER "Setting Boot Flag for the Image  ", " "
	echo Boot Flag is changed for: %path2%
	echo:
	echo Index of Edition is: %index%
	call :FOOTER
	wimlib-imagex info "%path2%" %index% --check --boot
	call :FOOTER
	pause
	goto:SetFlagMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:MountMenu
	cls
	call :HEADER "Mount/Remount/Commit/Unmount/Discard Image", " "
	echo Default: %path2%
	echo Values: Path to Image 'X:\...\install.wim'
	echo:
	echo Default: %path5%
	echo Values: Path to Mount Folder 'X:'
	echo:
	if "%scratch%"=="" set "scratch=%temp%"
	echo Default: %scratch%
	echo Values: Path to Scratch Folder 'X:'
	call :FOOTER
	set /p path2=Set Path to File ^>
	set /p path5=Set Path of Mount Folder ^>
	set /p scratch=Set Path of Scratch Folder ^>
	if not exist %path5% md %path5%
:MountMenuChoice
	cls
	call :HEADER "MOUNT MENU [DISM]", " "
	echo File...: %path2%
	echo Folder.: %path5%
	echo Scratch: %scratch%
	call :FOOTER
	echo    [F] Get Mounted WIM Info
	echo    [V] Get Mounted WIM Version
	echo    [C] Cleanup-WIM and Mountpoints
	echo:
	echo    [M] Mount Single Index
	echo    [I] Mount Multiple Indices
	echo:
	echo    [S] Commit Single Index
	echo    [X] Commit Multiple Indices
	echo    [P] Commit All Indices
	echo:
	echo    [R] Re-Mount Image
	echo    [Y] Re-Mount Multiple Images
	echo    [O] Re-Mount All Images
	echo:
	echo    [U] Unmount/Commit Single Index
	echo    [Z] Unmount/Commit Multiple Indices
	echo    [T] Unmount/Commit All Indices
	echo:
	echo    [D] Discard Single Index
	echo    [E] Discard Multiple Indices
	echo    [A] Discard All Indices
	echo:
	echo    [N] ENTER NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C FVCMISXPRYOUZTDEANB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :GetWimInfo
	if %errorlevel%==2 goto :GetWimVersion
	if %errorlevel%==3 goto :CleanUp
	if %errorlevel%==4 goto :MountSingle
	if %errorlevel%==5 goto :MountMulti
	if %errorlevel%==6 goto :CommitSingle
	if %errorlevel%==7 goto :CommitMulti
	if %errorlevel%==8 goto :CommitAll
	if %errorlevel%==9 goto :ReMountImage
	if %errorlevel%==10 goto :ReMountMultiWim
	if %errorlevel%==11 goto :ReMountAllWim
	if %errorlevel%==12 goto :UnMountSingle
	if %errorlevel%==13 goto :UnMountMulti
	if %errorlevel%==14 goto :UnMountAll
	if %errorlevel%==15 goto :DiscardWim
	if %errorlevel%==16 goto :DiscardMultiWim
	if %errorlevel%==17 goto :DiscardAllWim
	if %errorlevel%==18 goto:MountMenu
	if %errorlevel%==19 goto:Menu
:MountSingle
	cls
	call :HEADER "Mount Image to Folder", " "
	echo Default: %index%
	echo Values: Index of Edition
	call :FOOTER
	set /p index=Set Index of Edition ^>
	cls
	call :HEADER "Mounting Image", " "
	echo Mounting now: %path2% to %path5%
 	echo Index of Edition is: %index%
	call :FOOTER
	%dism% /English /mount-wim /wimfile:"%path2%" /index:%index% /mountdir:"%path5%" /scratchdir:"%scratch%"
	call :FOOTER
	pause
	goto:MountMenuChoice
:MountMulti
	set z=0
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path2%" /english ^| findstr /i Index') do set /A z+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path2%" /english ^| findstr /i Index') do (
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Mounting Index !ix! of %z%", " "
		md "%path5%\%%a"
		%dism% /English /mount-wim /wimfile:"%path2%" /index:%%a /mountdir:"%path5%\%%a" /scratchdir:"%scratch%"
		call :FOOTER
		timeout /t 5
	)
	goto:MountMenuChoice
:UnMountSingle
	cls
	call :HEADER "Unmounting Image", " "
	set "COUNT=0"
	call :MountCheck
	echo Unmounting now: %path5%
	echo:
	%dism% /English /unmount-wim /mountdir:"%path5%" /commit /checkintegrity	
	call :FOOTER
	pause
	goto:MountMenuChoice
:UnMountMulti
	set "z=0"
	set "COUNT=0"
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path2%" /english ^| findstr /i Index') do set /A z+=1
	if %z% equ 0 (
		cls
		call :HEADER "Unmounting Image", " "
		echo No mounted Images found.
		call :FOOTER
		pause
		goto:MountMenuChoice
	)
	set "z=0"
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path2%" /english ^| findstr /i Index') do set /A z+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path2%" /english ^| findstr /i Index') do (
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Unmounting Index !ix! of %z%", " "
		%dism% /English /unmount-wim /mountdir:"%path5%\!ix!" /commit /checkintegrity
		rd /s /q "%path5%\!ix!"
		call :FOOTER
		timeout /t 5
	)
	goto:MountMenuChoice
:UnMountAll
	set "COUNT=0"
	call :MountCheck
	set "z=0"
	for /f "tokens=4 delims= " %%a in ('%dism% /Get-MountedWimInfo /english ^| findstr /i Dir') do set /a z+=1
	for /f "tokens=4 delims= " %%a in ('%dism% /Get-MountedWimInfo /english ^| findstr /i Dir') do (
		set /a COUNT+=1
		cls
		call :HEADER "Unmounting Image !COUNT! of %z%", " "
		%dism% /English /unmount-wim /mountdir:"%%a" /commit /checkintegrity
		rd /s /q "%%a"
		call :FOOTER
		timeout /t 5
	)
	goto:MountMenuChoice
:CommitSingle
	cls
	call :HEADER "Committing Image", " "
	set "COUNT=0"
	call :MountCheck
	set "z=0"
	set "x=0"
	for /f "tokens=4 delims= " %%a in ('%dism% /Get-MountedWimInfo /english ^| findstr /i Dir') do set /a z+=1
	cls
	set /a x+=1
	call :HEADER "Get WIM Info for Mounted Image %x% of %z%", " "
	set "y=0"
	for /f "tokens=* skip=5" %%a in ('%dism% /Get-MountedWimInfo /english') do (
		if "%%a"=="The operation completed successfully." goto:InfoEndCommit
		echo   %%a
		set /a y+=1
		if !y! equ 5 (
			if not "%%a"=="Status : Ok" echo:&&echo =^>Problem detected.
			call :FOOTER
			set "y=0"
			pause
			set /a x+=1
			cls
			call :HEADER "Get WIM Info for Mounted Image !x! of !z!", " "
		)
	)
:InfoEndCommit
	cls
	call :HEADER "Commit Mounted Image", " "
	echo Default: %discarddir%
	echo Values: Path to Mount folder 'X:'
	call :FOOTER
	set /p discarddir=Set Path to Mount Folder ^>
	cls
	call :HEADER "Committing Image", " "
	%dism% /English /commit-wim /mountdir:"%discarddir%" /checkintegrity	
	call :FOOTER
	pause
	goto:MountMenuChoice
:CommitMulti
	set "COUNT=0"
	call :MountCheck
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path2%" /english ^| findstr /i Index') do (
		set /a COUNT+=1
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Commiting %path5%\!ix!", "Image !COUNT! of !z!"
		%dism% /English /commit-wim /mountdir:"%path5%\!ix!" /checkintegrity
		call :FOOTER
		timeout /t 5
	)
	goto:MountMenuChoice
:CommitAll
	set "COUNT=0"
	call :MountCheck
	for /f "tokens=4 delims= " %%a in ('%dism% /Get-MountedWimInfo /english ^| findstr /i Dir') do (
		set discarddir=%%a
		set /a COUNT+=1
		cls
		call :HEADER "Commiting %%a", "Image !COUNT! of !z!"
		%dism% /English /commit-wim /mountdir:"!discarddir!" /checkintegrity
		call :FOOTER
		timeout /t 5
	)
	goto:MountMenuChoice
:ReMountImage
	cls
	call :HEADER "Remounting Image", " "
	set "z=0"
	set "COUNT=0"
	call :MountCheck
	set "z=0"
	set "x=0"
	for /f "tokens=4 delims= " %%a in ('%dism% /Get-MountedWimInfo /english ^| findstr /i Dir') do set /a z+=1
	cls
	set /a x+=1
	call :HEADER "Get WIM Info for Mounted Image %x% of %z%", " "
	set "y=0"
	for /f "tokens=* skip=5" %%a in ('%dism% /Get-MountedWimInfo /english') do (
		if "%%a"=="The operation completed successfully." goto:InfoEndRemount
		echo   %%a
		set /a y+=1
		if !y! equ 5 (
			if not "%%a"=="Status : Ok" echo:&&echo =^>Problem detected.
			call :FOOTER
			set "y=0"
			pause
			set /a x+=1
			cls
			call :HEADER "Get WIM Info for Mounted Image !x! of !z!", " "
		)
	)
:InfoEndRemount
	cls
	call :HEADER "Remount Image", " "
	echo Default: %path5%
	echo Values: Path to Mount folder 'X:'
	call :FOOTER
	set /p path5=Set Path to Mount Folder ^>
	cls
	call :HEADER "Remounting Image", " "
	%dism% /English /Remount-Image /mountdir:"%path5%" /checkintegrity	
	call :FOOTER
	pause
	goto:MountMenuChoice
:ReMountMultiWim
	set "COUNT=0"
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path2%" /english ^| findstr /i Index') do set /A z+=1
	call :MountCheck
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path2%" /english ^| findstr /i Index') do (
		set /a COUNT+=1
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Remounting Image !COUNT! of !z!", " "
		echo Remounting now: %path5%\!ix!
		call :FOOTER
		%dism% /English /Remount-Image /mountdir:"%path5%\!ix!" /checkintegrity
		call :FOOTER
		timeout /t 5
	)
	goto:MountMenuChoice
:ReMountAllWim
	set "COUNT=0"
	call :MountCheck
	for /f "tokens=4 delims= " %%a in ('%dism% /Get-MountedWimInfo /english ^| findstr /i Dir') do (
		set /a COUNT+=1
		cls
		call :HEADER "Remounting Image !COUNT! of !z!", " "
		echo Remounting now: %%a
		call :FOOTER
		%dism% /English /Remount-Image /mountdir:"%%a" /checkintegrity
		call :FOOTER
		timeout /t 5
	)
	goto:MountMenuChoice
:DiscardWim
	cls
	call :HEADER "Discard Mounted Image", " "
	set "COUNT=0"
	call :MountCheck
	set "z=0"
	set "x=0"
	for /f "tokens=4 delims= " %%a in ('%dism% /Get-MountedWimInfo /english ^| findstr /i Dir') do set /a z+=1
	cls
	set /a x+=1
	call :HEADER "Get WIM Info for Mounted Image %x% of %z%", " "
	set "y=0"
	for /f "tokens=* skip=5" %%a in ('%dism% /Get-MountedWimInfo /english') do (
		if "%%a"=="The operation completed successfully." goto:InfoEndDiscard
		echo   %%a
		set /a y+=1
		if !y! equ 5 (
			if not "%%a"=="Status : Ok" echo:&&echo =^>Problem detected.
			call :FOOTER
			set "y=0"
			pause
			set /a x+=1
			cls
			call :HEADER "Get WIM Info for Mounted Image !x! of !z!", " "
		)
	)
:InfoEndDiscard
	cls
	call :HEADER "Discard Mounted Image", " "
	echo Default: %discarddir%
	echo Values: Path to Mount folder 'X:'
	call :FOOTER
	set /p discarddir=Set Path to Mount Folder ^>
	cls
	call :HEADER "Discarding Image %discarddir%", " "
	echo Discarding now: %discarddir%
	call :FOOTER
	%dism% /unmount-wim /English /mountdir:"%discarddir%" /discard
	call :FOOTER
	pause
	goto:MountMenuChoice
:DiscardMultiWim
	set "COUNT=0"
	call :MountCheck
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path2%" /english ^| findstr /i Index') do (
		set /a COUNT+=1
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Discarding Image !COUNT! of !z!", " "
		echo Discarding now: %path5%\!ix!
		call :FOOTER
		%dism% /unmount-wim /English /mountdir:"%path5%\!ix!" /discard
		call :FOOTER
		timeout /t 5
		rd /s /q %path5%\%%a >nul
	)
	goto:MountMenuChoice
:DiscardAllWim
	set "COUNT=0"
	call :MountCheck
	for /f "tokens=4 delims= " %%a in ('%dism% /Get-MountedWimInfo /english ^| findstr /i Dir') do (
		set /a COUNT+=1
		cls
		call :HEADER "Discarding Image !COUNT! of !z!", " "
		echo Discarding now: %%a
		call :FOOTER
		%dism% /unmount-wim /English /mountdir:"%%a" /discard
		call :FOOTER
		timeout /t 5
		rd /s /q %%a >nul
	)
	goto:MountMenuChoice
:CleanUp
	cls
	call :HEADER "CLEANUP", " "
	echo Cleaning Mountpoints ...
	%dism% /Cleanup-Mountpoints /English
	echo:	
	echo Cleaning up ...
	%dism% /Cleanup-Wim /English	
	call :FOOTER
	pause
	goto:MountMenuChoice
:GetWimInfo
	call :MountCheck
	set "x=0"
	for /f "tokens=4 delims= " %%a in ('%dism% /Get-MountedWimInfo /english ^| findstr /i Dir') do set /a z+=1
	cls
	set /a x+=1
	call :HEADER "Get WIM Info for Mounted Image %x% of %z%", " "
	set "y=0"
	for /f "tokens=* skip=5" %%a in ('%dism% /Get-MountedWimInfo /english') do (
		if "%%a"=="The operation completed successfully." goto:InfoEnd
		echo   %%a
		set /a y+=1
		if !y! equ 5 (
			if not "%%a"=="Status : Ok" echo:&&echo =^>Problem detected.
			call :FOOTER
			set "y=0"
			pause
			set /a x+=1
			cls
			call :HEADER "Get WIM Info for Mounted Image !x! of !z!", " "
		)
	)
:InfoEnd
	pause
	goto:MountMenuChoice
:GetWimVersion
	call :MountCheck
	cls
	call :HEADER "Get WIM Version for Mounted Images", " "
	set "y="
	for /f "tokens=4 delims= " %%a in ('%dism% /Get-MountedWimInfo /english ^| findstr /i Dir') do (
		set "mountversion="
		set "mountedition="
		for /f "tokens=3 delims=: " %%g in ('%dism% /english /get-currentedition /image:"%%a" ^| findstr /i Version') do set mountversion=%%g
		for /f "tokens=3 delims=: " %%g in ('%dism% /english /get-currentedition /image:"%%a" ^| findstr /i Edition') do set mountedition=%%g
		if "!mountversion:~0,3!"=="6.3" echo   Windows 8.1 / Servers 2012 R2 Family
		if "!mountversion:~0,3!"=="6.2" echo   Windows 8 / Servers 2012 Family
		if "!mountversion:~0,3!"=="6.1" echo   Windows 7 / Servers 2008 R2 Family
		if "!mountversion:~0,3!"=="6.0" echo   Windows Vista / Servers 2008 Family
		if defined mountversion (echo   !mountversion! !mountedition!) else (echo   No Windows detected. Check Mounted WIM Info.)
		echo   At: %%a
		call :FOOTER
	)
	pause
	goto:MountMenuChoice
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:GetWimInfoMASTER
	set "z=0"
	call :MountCheck
	set "z=0"
	set "x=0"
	for /f "tokens=4 delims= " %%a in ('%dism% /Get-MountedWimInfo /english ^| findstr /i Dir') do set /a z+=1
	cls
	set /a x+=1
	call :HEADER "Get WIM Info for Mounted Image %x% of %z%", " "
	set "y=0"
	for /f "tokens=* skip=5" %%a in ('%dism% /Get-MountedWimInfo /english') do (
		if "%%a"=="The operation completed successfully." goto:InfoEndMASTER
		echo   %%a
		set /a y+=1
		if !y! equ 5 (
			if not "%%a"=="Status : Ok" echo:&&echo =^>Problem detected.
			call :FOOTER
			set "y=0"
			pause
			set /a x+=1
			cls
			call :HEADER "Get WIM Info for Mounted Image %x% of %z%", " "
		)
	)
:InfoEndMASTER
	goto:Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:GetWimVersionMASTER
	cls
	call :HEADER "Version Check Menu", " "
	echo    [M] Show Version of Mounted Images
	echo:
	echo    [O] Show Version of Offline Images
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C MOB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :GetWimVersionMMounted
	if %errorlevel%==2 goto :GetWimVersionMOffline
	if %errorlevel%==3 goto:Menu
:GetWimVersionMMounted
	cls	
	call :MountCheck
	call :HEADER "Get WIM Version for Mounted Images", " "
	set "y=0"
	for /f "tokens=4 delims= " %%a in ('%dism% /Get-MountedWimInfo /english ^| findstr /i Dir') do (
		set "mountversion="
		set "mountedition="
		for /f "tokens=3 delims=: " %%g in ('%dism% /english /get-currentedition /image:"%%a" ^| findstr /i Version') do set mountversion=%%g
		for /f "tokens=3 delims=: " %%g in ('%dism% /english /get-currentedition /image:"%%a" ^| findstr /i Edition') do set mountedition=%%g
		if "!mountversion:~0,3!"=="6.3" echo   Windows 8.1 / Servers 2012 R2 Family
		if "!mountversion:~0,3!"=="6.2" echo   Windows 8 / Servers 2012 Family
		if "!mountversion:~0,3!"=="6.1" echo   Windows 7 / Servers 2008 R2 Family
		if "!mountversion:~0,3!"=="6.0" echo   Windows Vista / Servers 2008 Family
		if defined mountversion (echo   !mountversion! !mountedition!) else (echo   No Windows detected. Check Mounted WIM Info.)
		echo   At: %%a
		call :FOOTER
	)
	pause
	goto:GetWimVersionMASTER
:GetWimVersionMOffline
	cls
	call :HEADER "Get WIM Version for Offline Image", " "
	echo Default: %path20%
	echo Values: Path to Offline Image 'X:'
	call :FOOTER
	set /p path20=Set Path to Offline Image ^>
	cls
	call :HEADER "Get WIM Version for Offline Image", " "
	set "y="
	set "mountversion="
	set "mountedition="
	for /f "tokens=3 delims=: " %%g in ('%dism% /english /get-currentedition /image:"%path20%" ^| findstr /i Version') do set mountversion=%%g
	for /f "tokens=3 delims=: " %%g in ('%dism% /english /get-currentedition /image:"%path20%" ^| findstr /i Edition') do set mountedition=%%g
	if "!mountversion:~0,3!"=="6.3" echo   Windows 8.1 / Servers 2012 R2 Family
	if "!mountversion:~0,3!"=="6.2" echo   Windows 8 / Servers 2012 Family
	if "!mountversion:~0,3!"=="6.1" echo   Windows 7 / Servers 2008 R2 Family
	if "!mountversion:~0,3!"=="6.0" echo   Windows Vista / Servers 2008 Family
	if defined mountversion (echo   !mountversion! !mountedition!) else (echo   No Offline Image found.)
	echo   At: !path20!
	call :FOOTER
	pause
	goto:GetWimVersionMASTER
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Export
	cls
	call :HEADER "This option exports an index from the WIM or ESD", " "
	echo Default: %path2%
	echo Values: Path to Source Image 'X:\...\install.wim' or .esd
	echo:
	echo Default: %path7%
	echo Values: Path to Target Image 'X:\...\install.wim' or .esd
	echo:
	if /i "%comp%"=="" set comp=max
	echo Default: %comp%
	echo Values: Compression Type wim = max^|fast^|none or esd = recovery
	call :FOOTER
	set /p path2=Set Path to Source Image ^>
	set /p path7=Set Path to Target Image ^>
	set /p comp=Set Compression Type ^>
	call :EXTCheck "%path2%", "ext1"
	call :EXTCheck "%path7%", "ext2"
:ExportMenu
	cls
	call :HEADER "EXPORT MENU", " "
	echo Source ^| %ext1% : %path2%
	echo Target ^| %ext2% : %path7%
	echo Compress: %comp%
	call :FOOTER
	echo    [E] Export Single Index with [DISM]
	echo    [W] Export Multiple Indices with [DISM]
	echo:
	echo    [I] Export Single Index with [ImageX]
	echo    [M] Export Multiple Indices with [ImageX]
	echo:
	echo    [T] Export Single Index with [wimlib-imagex]
	echo    [A] Export Multiple Indices with [wimlib-imagex]
	echo:
	echo    [1] Export Single-Index WIMs from Folder with [DISM]
	echo    [2] Export Single-Index WIMs from Folder with [wimlib-imagex]
	echo:
	echo    [N] ENTER NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C EWIMTA12NB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :DISMExportSingle
	if %errorlevel%==2 goto :DISMExportMulti
	if %errorlevel%==3 goto :ImagexExportSingle
	if %errorlevel%==4 goto :ImagexExportMulti
	if %errorlevel%==5 goto :WimlibExportSingle
	if %errorlevel%==6 goto :WimlibExportMulti
	if %errorlevel%==7 goto :DISMExportFromFolder
	if %errorlevel%==8 goto :WimlibExportFolder
    if %errorlevel%==9 goto:Export
    if %errorlevel%==10 goto:Menu
:DISMExportSingle
	cls
	call :HEADER "Exporting %ext1% to %ext2%", " "
	if "%ext2%"=="WIM" if "%comp%"=="recovery" echo Compression for %ext2% must be 'max^|fast^|none'.& echo:& pause& goto :ExportMenu
	if "%ext2%"=="ESD" if not "%comp%"=="recovery" echo Compression for %ext2% must be 'recovery'.& echo:& pause& goto :ExportMenu
	echo Default: %index%
	echo Values: Index of Edition, can be single or list '3, 2, 1'
	call :FOOTER
	set /p indexlist=Set Index of Edition ^>
	for /d %%a in (%indexlist%) do (
		cls
		call :HEADER "Exporting %ext1% Index %%a to %ext2%", "Compression: %comp%"
		echo %ext1%: %path2%
		echo %ext2%: %path7%
		echo Index of Edition is: %%a
		call :FOOTER
		%dism% /Export-Image /English /SourceImageFile:"%path2%" /SourceIndex:%%a /DestinationImageFile:"%path7%" /compress:%comp% /CheckIntegrity
		call :FOOTER
		timeout /t 5
	)
	goto:ExportMenu
:DISMExportMulti
	cls
	call :HEADER "Exporting %ext1% to %ext2%", " "
	if "%ext2%"=="WIM" if "%comp%"=="recovery" echo Compression for %ext2% must be 'max^|fast^|none'.& echo:& pause& goto :ExportMenu
	if "%ext2%"=="ESD" if not "%comp%"=="recovery" echo Compression for %ext2% must be 'recovery'.& echo:& pause& goto :ExportMenu
	set z=0
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /A z+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :BIGHEADER "Exporting %ext1% to %ext2%", "Exporting Index %%a of %z%", "Compression: %comp%"
		echo %ext1%: %path2%
		echo %ext2%: %path7%
		echo Index of Edition is: !ix!
		call :FOOTER
		%dism% /Export-Image /English /SourceImageFile:"%path2%" /SourceIndex:!ix! /DestinationImageFile:"%path7%" /compress:%comp% /CheckIntegrity
		call :FOOTER
		timeout /t 5
	)
	goto:ExportMenu
:ImagexExportSingle
	cls
	call :HEADER "Exporting to %ext2% with [ImageX]", " "
	if "%ext2%"=="WIM" if "%comp%"=="recovery" echo Compression for %ext2% must be 'max^|fast^|none'.& echo:& pause& goto :ExportMenu
	if "%ext2%"=="ESD" echo Export to ESD with 'recovery' compression' with [DISM].& echo:& pause& goto :ExportMenu
	echo Default: %index%
	echo Values: Index of Edition
	call :FOOTER
	set /p index=Set Index of Edition ^>
	for /f "tokens=2 delims=:" %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:%index% ^| findstr /i Name') do set name=%%a
	set "name=%name:~1%"
	call :FOOTER
	echo:
	echo Default: %name%
	echo Values: Name of Edition
	call :FOOTER
	set /p name=Set Index of Edition ^>
	cls
	call :HEADER "Exporting Index %index% to %ext2% with [ImageX] ... ", " "
	echo %ext1%: %path2%
 	echo %ext2%: %path7%
 	echo Index of Edition is: %index%
	call :FOOTER
	%imagex% /export "%path2%" %index% "%path7%" "%name%" /compress maximum /check /verify
	call :FOOTER
	pause
	goto:ExportMenu
:ImagexExportMulti
	cls
	call :HEADER "Exporting %ext1% to %ext2%", " "
	if "%ext2%"=="WIM" if "%comp%"=="recovery" echo Compression for %ext2% must be 'max^|fast^|none'.& echo:& pause& goto :ExportMenu
	if "%ext2%"=="ESD" echo Export to ESD with 'recovery' compression' with [DISM].& echo:& pause& goto :ExportMenu
	set z=0
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /A z+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Exporting %ext1% to %ext2%", " "
		Echo Exporting %ext1% to %ext2%
		Echo Exporting Index %%a of %z%
		echo Name       : !name!
		echo Compression: maximum
		call :FOOTER
		echo %ext1%: %path2%
		echo %ext2%: %path7%
		echo Index of Edition is: !ix!
		call :FOOTER
		%imagex% /export "%path2%" !ix! "%path7%" /compress maximum /check /verify
		call :FOOTER
		timeout /t 5
	)
	goto:ExportMenu
:WimlibExportSingle
	cls
	call :HEADER "Exporting to %ext2% with [wimlib-imagex]", " "
	if "%ext2%"=="WIM" if "%comp%"=="recovery" echo Compression for %ext2% must be 'max^|fast^|none'.& echo:& pause& goto :ExportMenu
	if "%ext2%"=="ESD" echo Export to ESD with 'recovery' compression' with [DISM].& echo:& pause& goto :ExportMenu
	if /i "%index%"=="" set index=1
	echo Default: %index%
	echo Values: Index to Export
	call :FOOTER
	set /p index=Index to Export ^>
	for /f "tokens=2 delims=:" %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:%index% ^| findstr /i Name') do set name=%%a
	set "name=%name:~1%"
	call :FOOTER
	echo Default: %name%
	echo Values: Name of Edition
	call :FOOTER
	set /p name=Set Index of Edition ^>
	cls
	call :HEADER "Exporting %ext1% Index %index% to %ext2%", " "
	echo If exporting Index to boot.wim, it needs to be bootable.
	echo:
	echo If exporting Index to index.wim or .esd, it shouldn't be bootable.
	call :FOOTER
	CHOICE /C BS /N /M "Make Index [B]ootable or [S]kip ?"
	if %errorlevel%==1 set "boot= --boot"
	if %errorlevel%==2 set "boot="
	cls
	call :HEADER "Exporting %ext1% Index %index% to %ext2%", " "
	%wimlib-imagex% export "%path2%" %index% "%path7%" "%name%" --check --compress=%comp%%boot%
	call :FOOTER
	pause
	goto:ExportMenu
:WimlibExportMulti
	cls
	call :HEADER "Exporting %ext1% to %ext2%", " "
	if "%ext2%"=="WIM" if "%comp%"=="recovery" echo Compression for %ext2% must be 'max^|fast^|none'.& echo:& pause& goto :ExportMenu
	if "%ext2%"=="ESD" echo Export to ESD with 'recovery' compression' with [DISM].& echo:& pause& goto :ExportMenu
	set "z="
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set z=%%a
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Exporting %ext1% to %ext2%", " "
		%wimlib-imagex% export "%path2%" !ix! "%path7%" --check --compress=%comp%
		call :FOOTER
		timeout /t 5
	)
	goto:ExportMenu
:DISMExportFromFolder
	cls
	call :HEADER "Exporting from Folder", " "
	echo Default: %wimpath%
	echo Values: Path to WIM Folder 'X:\...'
	echo:
	if /i "%ext%"=="" set ext=wim
	echo Default: %ext%
	echo Values: wim or esd
	call :FOOTER
	set /p wimpath=Set Path to WIM Folder ^>
	set /p ext=Set wim or esd ^>
	for /r "%wimpath%" %%a in (*.%ext%) do (
		cls
		call :BIGHEADER "Source: %%a", "Target: %path7%", "Compression: %comp%"
		%dism% /Export-Image /English /SourceImageFile:"%%a" /SourceIndex:1 /DestinationImageFile:"%path7%" /compress:%comp% /CheckIntegrity
		call :FOOTER
		timeout /t 5
	)
	goto:ExportMenu
:WimlibExportFolder
	cls
	call :HEADER "Exporting from Folder", " "
	echo Default: %wimpath%
	echo Values: Path to WIM Folder 'X:\...'
	echo:
	if /i "%ext%"=="" set ext=wim
	echo Default: %ext%
	echo Values: wim or esd
	call :FOOTER
	set /p wimpath=Set Path to WIM Folder ^>
	set /p ext=Set wim or esd ^>
	for /r "%wimpath%" %%a in (*.%ext%) do (
		cls
		call :BIGHEADER "Source: %%a", "Target: %path7%", "Compression: %comp%"
		if /i "%ext2%"=="WIM" %wimlib-imagex% export "%%a" 1 "%path7%" --compress=%comp%
		if /i "%ext2%"=="ESD" %wimlib-imagex% export "%%a" 1 "%path7%"
		call :FOOTER
		timeout /t 5
	)
	goto:ExportMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:PackagesMenuInput
	cls
	call :HEADER "Updates Menu", " "
	set end=msu
	echo Default: %end%
	echo Values: Extension of Package i.e. 'msu'
	echo:
	echo Default: %path2%
	echo Values: Path to WIM 'X:\...\install.wim'
	echo:
	echo Default: %path5%
	echo Values: Path to Mount Folder 'X:\...'
	call :FOOTER
	set /p end=Set Extension of Package ^>
	set /p path2=Set Path to WIM ^>
	set /p path5=Set Path to Mount Folder ^>
:PackagesMenu
	cls
	call :HEADER "Updates Menu", " "
	echo    [L] List integrated Updates: Package Name
	echo    [U] List integrated Updates: WU Convention
	echo:
	echo    [A] Add Updates
	echo    [R] Remove Updates
	echo:
	echo    [N] INPUT NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C LUARNB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :ListUpdatesNames
	if %errorlevel%==2 goto :ListUpdatesWU
    if %errorlevel%==3 goto :PackagesSubMenu
    if %errorlevel%==4 goto :RemovePackages
    if %errorlevel%==5 (
		if exist "%TMP%\CABS" rd /s /q "%TMP%\CABS"
		goto:PackagesMenuInput
	)
    if %errorlevel%==6 goto:Menu
:ListUpdatesNames
	cls
	set "trigger="
	call :HEADER "List Integrated Updates", " "
	CHOICE /C WS /N /M "[W]rite to file or [S]how only ?"
	if %errorlevel%==1 (set "trigger=1")&&(call :WriteInputLoop)
	if %errorlevel%==2 set "trigger="
	for /f "tokens=2 delims=: " %%Z in ('%dism% /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		set "COUNT=0"
		set "z=0"
		set ix=%%Z
		set ix=!ix:"=!
		call :VersionCheck "%path5%\!ix!"
		cls
		for /f "tokens=3 delims=: " %%p in ('"%dism% /image:"%path5%\!ix!" /Get-Packages /english" ^| findstr /i Package') do if not %%a equ amd64 if not %%a equ x86 set /a "z+=1"
		call :HEADER "List !z! Updates", "Found: !offlineversion! !offlineedition! !offlinearch!"
		if "%trigger%"=="1" echo -------------------------------------------------------------->>%outfile%
		if "%trigger%"=="1" echo !offlineversion! !offlineedition! !offlinearch!>>%outfile%
		if "%trigger%"=="1" echo:>>%outfile%
		for /f "tokens=3 delims=: " %%p in ('"%dism% /image:"%path5%\!ix!" /Get-Packages /english" ^| findstr /i Package') do if not %%a equ amd64 if not %%a equ x86 (
			set /a COUNT+=1
			if "%trigger%"=="1" echo %%p>>%outfile%
			echo %%p
			if "!COUNT!"=="30" (
				call :FOOTER
				pause
				cls
				call :HEADER "List !z! Updates", "Found: !offlineversion! !offlineedition! !offlinearch!"
				set "COUNT=0"
		))
		call :FOOTER
		pause
	)
	goto:PackagesMenu
:ListUpdatesWU
	cls
	set "trigger="
	call :HEADER "List Integrated Updates", " "
	CHOICE /C WS /N /M "[W]rite to file or [S]how only ?"
	if %errorlevel%==1 (set "trigger=1")&&(call :WriteInputLoop)
	if %errorlevel%==2 set "trigger="
	set "y=0"
	for /f "tokens=2 delims=: " %%Z in ('%dism% /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		set "COUNT=0"
		set "z=0"
		set ix=%%Z
		set ix=!ix:"=!
		for /f "tokens=3 delims=: " %%g in ('"%dism% /image:"%path5%\!ix!" /Get-Packages /english" ^| findstr /i Package') do set /a z+=1
		for /f "tokens=2 delims=: " %%i in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:!ix! ^| findstr /i Architecture') do set offlinearch=%%i
		call :VersionCheck "%path5%\!ix!"
		call :VersionCheckSet
		cls
		call :HEADER "List !z! Updates", "Found: !offlineversion! !offlineedition! !offlinearch!"
		if "%trigger%"=="1" echo -------------------------------------------------------------->>%outfile%
		if "%trigger%"=="1" echo !offlineversion! !offlineedition! !offlinearch!>>%outfile%
		if "%trigger%"=="1" echo:>>%outfile%
		for /f "tokens=5,6,7 delims=:_~ " %%a in ('"%dism% /image:"%path5%\!ix!" /Get-Packages /english" ^| findstr /i Package') do if not %%a equ amd64 if not %%a equ x86 (
			set /a COUNT+=1
			if %%r equ amd64 set offlinearch=x64
			if %%r equ x86 set offlinearch=%%o
			if "%trigger%"=="1" echo !name1!-%%a-!offlinearch!>>%outfile%
			echo !name1!-%%a-!offlinearch!
			if "!COUNT!"=="30" (
				call :FOOTER
				pause
				cls
				call :HEADER "List !z! Updates", "Found: !offlineversion! !offlineedition! !offlinearch!"
				set "COUNT=0"
		))
		call :FOOTER
		pause
	)
	goto:PackagesMenu
:PackagesSubMenu
	cls
	call :HEADER "Add Updates", " "
	echo    [S] Single Index Single Update
	echo:
	echo    [A] Auto Install
	echo:
	echo    [T] Text File Install Single Index
	echo    [I] Text File Install Multi Index
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C SATIB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :SingleUpdate
    if %errorlevel%==2 goto :AutoAddPackages
    if %errorlevel%==3 goto :TextFileInstallSingle
    if %errorlevel%==4 goto :TextFileInstallMulti
    if %errorlevel%==5 (
		if exist "%TMP%\CABS" rd /s /q "%TMP%\CABS"
		goto:PackagesMenu
	)
:AutoAddPackages
	title ˛ WINDOWS IMAGING TOOLS ˛ by s1ave77
	cls
	call :HEADER "Add Updates", " "
 	echo Default: %path8%
	echo Values: Path to Package Folder 'X:'
	call :FOOTER
	set /p path8=Set Path to Package Folder ^>
	call :FOOTER
	if exist "%TMP%\CABS" rd /s /q "%TMP%\CABS" >nul
	md "%TMP%\CABS"
	set "file=%TMP%\CABS\installed.updates.txt"
	set "file2=%TMP%\CABS\updates.txt"
	set "deltafile=%TMP%\CABS\delta.updates.txt"
	CHOICE /C SM /N /M "[S]ingle Index or [M]ultiple Index Mount ?:"
	if %errorlevel%==1 goto :SingleAddPacks
	if %errorlevel%==2 goto :MultiAddPacks
:SingleAddPacks
	cls
	call :VersionCheck "%path5%"
	call :VersionCheckSet
	for /f "tokens=2 delims=: " %%i in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:%%Z ^| findstr /i Architecture') do set offlinearch=%%i
	for /f "tokens=5,6,7 delims=:_~ " %%a in ('"%dism% /image:"%path5%" /Get-Packages /english" ^| findstr /i Package') do if not %%a equ amd64 if not %%a equ x86 (
		if %%o equ amd64 set offlinearch=x64
		if %%o equ x86 set offlinearch=%%o
		echo %name1%-%%a-!offlinearch!>>%file%
	)
	for /R "%path8%" %%A in (*.msu) do for /f "tokens=1 delims=_ " %%g in ("%%~nA") do echo %%~g>>%file2%
	call :CompareWithPowershell "%file%", "%file2%", "%deltafile%"
	if not exist %deltafile% goto :NoUpdatesNeeded
	goto :ExtractToCAB
:MultiAddPacks
	set "z="
	for /f "tokens=2 delims=: " %%Z in ('%dism% /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		cls
		set ix=%%Z
		set ix=!ix:"=!
		call :VersionCheck "%path5%\!ix!"
		call :VersionCheckSet
		set "deltafile=%TMP%\CABS\delta.updates.!ix!.txt"
		set "file=%TMP%\CABS\installed.updates.!ix!.txt"
		set "file2=%TMP%\CABS\updates.!ix!.txt"
		for /f "tokens=2 delims=: " %%i in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:!ix! ^| findstr /i Architecture') do set offlinearch=%%i
		for /f "tokens=5,6,7 delims=:_~ " %%a in ('"%dism% /image:"%path5%\!ix!" /Get-Packages /english" ^| findstr /i Package') do if not %%a equ amd64 if not %%a equ x86 (
			if %%o equ amd64 set offlinearch=x64
			if %%o equ x86 set offlinearch=%%o
			echo !name1!-%%a-!offlinearch!>>!file!
		)
		for /R "%path8%" %%A in (*.msu) do for /f "tokens=1 delims=_ " %%g in ("%%~nA") do echo %%~g>>!file2!
		call :CompareWithPowershell "!file!", "!file2!", "!deltafile!"
	)
	if not exist %deltafile% goto :NoUpdatesNeeded
:ExtractToCAB
	if defined deltafile (
		for /f "tokens=*" %%a in (%deltafile%) do for /r "%path8%" %%N in (*.msu) do echo %%~nN | findstr /i "%%a" 1>nul && expand.exe -f:*Windows*.cab "%%N" "%TMP%\CABS" >nul
	)
	call :ShowPackages
	call :FOOTER
	pause
:AutoPackagesSubMenu
	cls
	call :HEADER "Add Updates", " "
	echo    [A] Auto Install Single Index
	echo    [M] Auto Install Multi Index
	echo:
	echo    [N] INPUT NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C AMNB /N /M "   YOUR CHOICE:"
    if %errorlevel%==1 goto :AutoInstallSingle
    if %errorlevel%==2 goto :AutoInstallMulti
    if %errorlevel%==3 (
		if exist "%TMP%\CABS" rd /s /q "%TMP%\CABS"
		goto:AddPackages
	)
    if %errorlevel%==4 (
		if exist "%TMP%\CABS" rd /s /q "%TMP%\CABS"
		goto:PackagesSubMenu
	)
:SingleUpdate
	cls
	call :HEADER "Add Updates", " "
	echo Default: %path9%
	echo Values: Path to Package 'X:\...\*.ext'
	call :FOOTER
	set /p path9=Set Path of Package ^>
	expand.exe -f:*Windows*.cab "%path9%" "%TMP%\CABS" >nul
	echo:
	cls
	call :HEADER "Adding Updates", " "
	for /R "%TMP%\CABS" %%A in (*.cab) do %dism% /English /image:"%path5%" /Add-Package /PackagePath:"%%A"
	call :FOOTER
	pause
	goto:PackagesSubMenu
:AutoInstallSingle
	cls
	call :HEADER "Adding Updates", " "
	set "COUNT="
	set "z="
	for /R "%TMP%\CABS" %%A in (*.cab) do set /A z+=1
	for /R "%TMP%\CABS" %%A in (*.cab) do (
		cls
		SET /A COUNT+=1
		call :HEADER "Adding Package !COUNT! of %z% = %%~nA.%end%", " "
		%dism% /Image:"%path5%" /Add-Package /PackagePath:"%%A"
		call :FOOTER
		timeout /t 3
	)
	call :FOOTER
	pause
	goto:AutoPackagesSubMenu
:AutoInstallMulti
	cls
	call :HEADER "Adding Updates Multi Index", " "
	set "COUNT="
	set "z="
	set "y="
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /A y+=1
	for /R "%TMP%\CABS" %%A in (*.cab) do set /A z+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		for /R "%TMP%\CABS" %%A in (*.cab) do (
			cls
			SET /A COUNT+=1
			set ix=%%a
			set ix=!ix:"=!
			if !COUNT! gtr %z% set COUNT=1
			call :HEADER "Adding Package !COUNT! of %z% : %%~nA.%end% %%~zA", "Index: !ix! of %y%"
			%dism% /Image:"%path5%\!ix!" /Add-Package /PackagePath:"%%A"
			call :FOOTER
			timeout /t 3
		)
	)
	call :FOOTER
	pause
	goto:AutoPackagesSubMenu
:TextFileInstallSingle
	cls
	call :HEADER "Adding Updates from Textfile Single Index", " "
	call :TextfileAddLoop
	for /f "tokens=*" %%a in (!orderfile!) do if not exist "%TMP%\CABS\%%a.%end%" expand.exe -f:*Windows*.cab "%path8%\%%a.%end%" "%TMP%\CABS" >nul
	set "COUNT="
	set "z="
	for /F "tokens=*" %%G in (!orderfile!) do set /A z+=1
	for /F "tokens=*" %%G in (!orderfile!) do (
		cls
		SET /A COUNT+=1
		call :HEADER "Adding Package !COUNT! of !z! = %%G.cab", " "
		%dism% /Image:"!path5!" /Add-Package /PackagePath:"%TMP%\CABS\%%G.cab"
		call :FOOTER
		timeout /t 3
	)
	call :FOOTER
	pause
	goto:PackagesSubMenu
:TextFileInstallMulti
	cls
	call :HEADER "Adding Updates from Textfile Multi Index", " "
	call :TextfileAddLoop
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /A y+=1
	for /F "tokens=*" %%G in (!orderfile!) do set /A z+=1
	for /f "tokens=*" %%a in (!orderfile!) do for /r "%path8%" %%N in (*.msu) do echo %%~nN | findstr /i "%%a" 1>nul && expand.exe -f:*Windows*.cab "%%N" "%TMP%\CABS" >nul
	for /f "tokens=2 delims=: " %%a in ('%dism% /english /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		set ix=%%a
		set ix=!ix:"=!
		for /F "tokens=*" %%G in (!orderfile!) do (
			cls
			SET /A COUNT+=1
			if !COUNT! gtr !z! set COUNT=1
			call :HEADER "Adding Package !COUNT! of !z! : %%G.cab", "Index: !ix! of !y!"
			%dism% /Image:"%path5%\!ix!" /Add-Package /PackagePath:"%TMP%\CABS\%%G.cab"
			call :FOOTER
			timeout /t 3
		)
	)
	call :FOOTER
	pause
	goto:PackagesSubMenu
:RemovePackages
	cls
	call :HEADER "Remove Updates", " "
	echo Default: %path2%
	echo Values: Path to Image 'X:\...\install.wim' or .esd
	echo:
	echo Default: %path5%
	echo Values: Path to Mount Folder 'X:\...'
	call :FOOTER
	set /p path2=Set Path to Image ^>
	set /p path5=Set Path to Folder ^>
	echo:
:RemovePackagesSubMenu
	cls
	call :HEADER "Remove Updates", " "
	echo    [S] Remove Single Update Single Index
	echo    [M] Remove Single Update Multiple indices
	echo:
	echo    [R] Remove from Text File Single Index
	echo    [T] Remove from Text File Multiple indices
	echo:
	echo    [N] INPUT NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C SMRTNB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :RemovePackagesSingle
    if %errorlevel%==2 goto :RemovePackagesMulti
	if %errorlevel%==3 goto :RemovePackagesTextfileSingle
    if %errorlevel%==4 goto :RemovePackagesTextfileMulti
    if %errorlevel%==5 goto:RemovePackages
    if %errorlevel%==6 goto:PackagesMenu
:RemovePackagesSingle
	cls
	call :HEADER "Removing Updates", " "
 	echo Default: %pname%
	echo Values: Name of Package 'X:'
	call :FOOTER
	set /p pname=Set Name of Package ^>
	cls
	call :HEADER "Removing Updates", " "
	%dism% /image:"%path5%" /Remove-Package /PackageName:%pname%	
	call :FOOTER
	pause
	goto:RemovePackagesSubMenu
:RemovePackagesMulti
	cls
	call :HEADER "Removing Updates", " "
 	echo Default: %pname%
	echo Values: Name of Package
	call :FOOTER
	set /p pname=Set Name of Package ^>
	set "COUNT=0"
	set "z=0"
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /a z+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		cls
		SET /A COUNT+=1
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Removing Package %pname%", "Index:!ix! of %z%"
		echo Mount: %path5%\!ix!
		call :FOOTER
		%dism% /image:"%path5%\!ix!" /Remove-Package /PackageName:"%pname%"
		call :FOOTER
		timeout /t 3
	)
	call :FOOTER
	pause
	goto:RemovePackagesSubMenu
:RemovePackagesTextfileSingle
	cls
	call :HEADER "Removing Updates", " "
	echo Gather Updates Names from Text File
	echo Default: %file%
	call :FOOTER
	set /p file=Set Path to Text File:
	set "COUNT=0"
	set "z=0"
	for /F "tokens=*" %%G in (%file%) do set /a z+=1
	for /F "tokens=*" %%G in (%file%) do (
		cls
		SET /A COUNT+=1
		call :HEADER "Removing Package !COUNT! of %z%", "Package Name: %%G"
		%dism% /image:"%path5%" /Remove-Package /PackageName:"%%G"
		call :FOOTER
		timeout /t 3
	)
	call :FOOTER
	pause
	goto:RemovePackagesSubMenu
:RemovePackagesTextfileMulti
	cls
	call :HEADER "Removing Updates", " "
	echo Gather Updates Names from Text File
	echo Default: %file%
	call :FOOTER
	set /p file=Set Path to Text File:
	set "COUNT=0"
	set "z=0"
	set "y=0"
	for /F "tokens=*" %%G in (%file%) do set /a y+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /a z+=1
	set /A prod=%z%*%y%
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		set ix=%%a
		set ix=!ix:"=!
		for /F "tokens=*" %%G in (%file%) do (
			cls
			echo:
			SET /A COUNT+=1
			if !COUNT! gtr %y% set COUNT=1
			call :BIGHEADER "Removing Package !COUNT! of !y! ^(%prod%^)", "Package Name: %%G", "Index !ix! of !z!"
			%dism% /image:"%path5%\!ix!" /Remove-Package /PackageName:"%%G"
			call :FOOTER
			timeout /t 3
		)
	)
	call :FOOTER
	pause
	goto:RemovePackagesSubMenu
:NoUpdatesNeeded
	cls
	call :HEADER "Updates", " "
 	echo All found Updates in: %path8%
	echo:
	echo are allready installed. Chose others.
	call :FOOTER
	pause
	if exist "%TMP%\CABS" rd /s /q "%TMP%\CABS"
	goto:PackagesMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:AppsMenuInput
	cls
	call :HEADER "Modern Apps", " "
	echo Default: %path2%
	echo Values: Path to WIM 'X:\...\install.wim'
	echo:
	echo Default: %path5%
	echo Values: Path to Mount Folder 'X:\...'
	call :FOOTER
	set /p path2=Set Path to WIM ^>
	set /p path5=Set Path to Mount Folder ^>
:AppsMenu
	cls
	call :HEADER "Modern Apps Menu", " "
	echo    [L] List installed Packages
	echo:
	echo    [S] Remove Single Package from Single Index
	echo    [I] Remove Single Package from Multiple Indices
	echo:
	echo    [A] Batch Remove from text file Single Index 
	echo    [T] Batch Remove from text file Multiple Indices 
	echo:
	echo    [R] Remove Default App Associations
	echo:
	echo    [N] INPUT NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C LSIATRNB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :ListApps
    if %errorlevel%==2 goto :RemoveAppsSingleIndex
    if %errorlevel%==3 goto :RemoveAppsMultipleIndices
    if %errorlevel%==4 goto :RemoveAppsBatchSingleIndex
    if %errorlevel%==5 goto :RemoveAppsBatchMultipleIndices
    if %errorlevel%==6 goto :RemoveDefaultAppAssociations
    if %errorlevel%==7 goto:AppsMenuInput
    if %errorlevel%==8 goto:Menu
:ListApps
	cls
	set "trigger="
	call :HEADER "List Integrated Updates", " "
	CHOICE /C WS /N /M "[W]rite to file or [S]how only ?"
	if %errorlevel%==1 (set "trigger=1")&&(call :WriteInputLoop)
	if %errorlevel%==2 set "trigger="
	for /f "tokens=2 delims=: " %%Z in ('%dism% /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		cls
		set ix=%%Z
		set ix=!ix:"=!
		call :VersionCheck "%path5%\!ix!"
		call :HEADER "List Modern Apps", "Found: !offlineversion! !offlineedition!"
		if "%trigger%"=="1" echo -------------------------------------------------------------->>%outfile%
		if "%trigger%"=="1" echo !offlineversion! !offlineedition! !offlinearch!>>%outfile%
		if "%trigger%"=="1" echo:>>%outfile%
		set "COUNT="
		for /f "tokens=2 delims=: " %%m in ('"%dism% /image:"%path5%\!ix!" /Get-ProvisionedAppxPackages /english" ^| findstr /i PackageName') do (
			set /a COUNT+=1
			if "%trigger%"=="1" echo %%m>>%outfile%
			echo %%m
			if "!COUNT!"=="30" (
				call :FOOTER
				pause
				cls
				call :HEADER "List Modern Apps", "Found: !offlineversion! !offlineedition!"
				set "COUNT="
			)
		)
		call :FOOTER
		pause
	)
	goto:AppsMenu
:RemoveDefaultAppAssociations
	cls
	call :HEADER "Remove Default Apps Associations", " "
	echo Default: %path5%
	echo Values: Path to Mount Folder 'X:\...'
	call :FOOTER
	set /p path5=Set Path to Mount Folder ^>
	cls
	call :HEADER "Remove Modern App %packname% ", " "
	%dism% /image:"%path5%" /Remove-DefaultAppAssociations /english
	call :FOOTER
	pause
	goto:AppsMenu
:RemoveAppsSingleIndex
	cls
	call :HEADER "Remove Modern Apps", " "
	echo Default: %path5%
	echo Values: Path to Mount Folder 'X:\...'
	echo:
	echo Set App Package Name.
	call :FOOTER
	set /p path5=Set Path to Mount Folder ^>
	set /p packname=Set Package Name:
	cls
	call :HEADER "Remove Modern App %packname% ", " "
	%dism% /image:"%path5%" /Remove-ProvisionedAppxPackage /packagename:%packname% /english
	call :FOOTER
	pause
	goto:AppsMenu
:RemoveAppsMultipleIndices
	cls
	call :HEADER "Remove Modern Apps", " "
	echo Set App Package Name.
	call :FOOTER
	set /p packname=Set Package Name:
	set "z="
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /a z+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Remove Modern App %packname%", "Index !ix! of !z!"
		%dism% /image:"%path5%\!ix!" /Remove-ProvisionedAppxPackage /packagename:"%packname%" /english
		call :FOOTER
		timeout /t 5
	)
	call :FOOTER
	pause
	goto:AppsMenu
:RemoveAppsBatchSingleIndex
	cls
	call :HEADER "Remove Modern Apps", " "
	set file=..\App.packages.txt
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
		%dism% /image:"%path5%" /Remove-ProvisionedAppxPackage /packagename:"%%a" /english
		call :FOOTER
		timeout /t 5
	)
	call :FOOTER
	pause
	goto:AppsMenu
:RemoveAppsBatchMultipleIndices
	cls
	call :HEADER "Remove Modern Apps", " "
	echo Write Package Names to Text File
	echo Default: %file%
	call :FOOTER
	set /p file=Set Path to Text File:
	set "z=0"
	set "y=0"
	set "COUNT=0"
	for /f "tokens=*" %%a in (%file%) do set /a z+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /a y+=1
	set /A prod=%z%*%y%
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		set ix=%%a
		set ix=!ix:"=!
		for /f "tokens=*" %%g in (%file%) do (
			set /a COUNT+=1
			if !COUNT! gtr !z! set COUNT=1
			cls
			call :BIGHEADER "Removing !COUNT! of !z! ^(%prod%^)", "Name: %%g", "Index !ix! of !y!"
			%dism% /image:"%path5%\!ix!" /Remove-ProvisionedAppxPackage /packagename:"%%g" /english
			call :FOOTER
			timeout /t 5
		)
	)
	call :FOOTER
	pause
	goto:AppsMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:FeaturesMenu
	cls
	set "y=0"
	call :HEADER "Windows Features", " "
	echo Default: %path2%
	echo Path to Mounted WIM 'x:\...\install.wim'
	echo:
	echo Default: %path5%
	echo Path to Mount Folder 'x:\...'
	call :FOOTER
	set /p path2=Set Path to Mounted WIM:
	set /p path5=Set Path to Mount Folder:
	if not exist %path5% md %path5%
:FeaturesMainMenu
	cls
	call :HEADER "Windows Features", " "
	echo    [L] List Features
	echo    [F] List specific Feature Info
	echo:
	echo    [E] Enable Features
	echo:
	echo    [D] Disable Features
	echo:
	echo    [N] ENTER NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C LFEDNB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :ListWindowsFeatures
	if %errorlevel%==2 goto :ListFeatureInfo
    if %errorlevel%==3 goto :EnableFeaturesMenu
    if %errorlevel%==4 goto :DisableFeaturesMenu
    if %errorlevel%==5 goto :FeaturesMenu
    if %errorlevel%==6 goto:Menu
:ListWindowsFeatures
	cls
	set "y=0"
	call :HEADER "List Windows Features", " "
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		cls
		call :BIGHEADER "List Windows Features", "For: %path5%", "Found: !offlineversion! !offlineedition!"
		set "COUNT="
		set "offset="
		for /f "skip=7 tokens=*" %%m in ('%dism% /image:"%path5%" /Get-Features /english') do (
			set /a COUNT+=1
			set check=%%m
			if "!check:~0,7!"=="Feature" echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
			if "!check:~0,3!"=="The" (set "offset=rem ") else (set "offset=")
			!offset!echo %%m
			if "!COUNT!"=="20" (
				call :FOOTER
				pause
				cls
				call :BIGHEADER "List Windows Features", "For: %path5%", "Found: !offlineversion! !offlineedition!"
				set "COUNT="
			)
		)
	)
	if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			cls
		call :BIGHEADER "List Windows Features", "For: %path5%\!ix!", "Found: !offlineversion! !offlineedition!"
			set "COUNT="
			set "offset="
			for /f "skip=7 tokens=*" %%m in ('%dism% /image:"%path5%\!ix!" /Get-Features /english') do (
				set /a COUNT+=1
				set check=%%m
				if "!check:~0,7!"=="Feature" echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				if "!check:~0,3!"=="The" (set "offset=rem ") else (set "offset=")
				!offset!echo %%m
				if "!COUNT!"=="20" (
					call :FOOTER
					pause
					cls
					call :BIGHEADER "List Windows Features", "For: %path5%\!ix!", "Found: !offlineversion! !offlineedition!"
					set "COUNT="
				)
			)
			call :FOOTER
			pause
		)
	)
	call :FOOTER
	pause
	goto:FeaturesMainMenu
:ListFeatureInfo
	cls
	set "y=0"
	call :HEADER "List Windows Features", " "
	echo Default: %feature%
	echo Name of the Feature.
	call :FOOTER
	set /p feature=Set Feature Name:
	call :FOOTER
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		set "type=online"
		set "scratch="
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		cls
		call :HEADER "List Windows Feature Info", "Found: !offlineversion! !offlineedition!"
		echo For: %feature%
		call :FOOTER
		for /f "skip=7 tokens=1,2,3,4* delims=:" %%m in ('%dism% /image:"%path5%" /english /Get-FeatureInfo /FeatureName:"%feature%"') do (
			set output=%%m
			if "!output:~0,7!"=="Feature" echo Feature Name     : %%n
			if "!output:~0,7!"=="Display" echo Display Name     : %%n
			if "!output:~0,11!"=="Description" echo:&&echo Description      : %%n&&echo:
			if "!output:~0,7!"=="Restart" echo Restart Required : %%n
			if "!output:~0,5!"=="State" echo State            : %%n
		)
	)
    if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			cls
			call :HEADER "List Windows Feature Info", "Found: !offlineversion! !offlineedition!"
			echo For: !feature!
			call :FOOTER
			for /f "skip=7 tokens=1,2,3,4* delims=:" %%m in ('%dism% /image:"%path5%\!ix!" /english /Get-FeatureInfo /FeatureName:"!feature!"') do (
				set output=%%m
				if "!output:~0,7!"=="Feature" echo Feature Name     : %%n
				if "!output:~0,7!"=="Display" echo Display Name     : %%n
				if "!output:~0,11!"=="Description" echo:&&echo Description      : %%n&&echo:
				if "!output:~0,7!"=="Restart" echo Restart Required : %%n
				if "!output:~0,5!"=="State" echo State            : %%n
			)
			call :FOOTER
			pause
		)
	)
	call :FOOTER
	pause
	goto:FeaturesMainMenu
:EnableFeaturesMenu
	cls
	call :HEADER "Enable Windows Features", " "
	echo    [E] Enable Foundation Package Features
	echo:
	echo    [D] Specify Package Name
	echo:
	echo    [S] Specify Source Folder
	echo:
	echo    [A] Batch Enable from text file
	echo:
	echo    [N] ENTER NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C EDSANB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :EnableFoundationFeatures
	if %errorlevel%==2 goto :EnablePackageFeatures
	if %errorlevel%==3 goto :EnableSourceFeatures
	if %errorlevel%==4 goto :EnableFeaturesText
    if %errorlevel%==5 goto :FeaturesMenu
    if %errorlevel%==6 goto:FeaturesMainMenu
:EnableFoundationFeatures
	cls
	set "y=0"
	call :HEADER "Enable Windows Feature", " "
	echo Default: %feature%
	echo Name of the Feature.
	call :FOOTER
	set /p feature=Set Feature Name:
	call :FOOTER
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		cls
		set "y=0"
		call :HEADER "Enable Windows Feature", "Found: !offlineversion! !offlineedition!"
		echo Feature Name: %feature%
		call :FOOTER
		%dism% /image:"%path5%" /english /Enable-Feature /FeatureName:"%feature%" /All
		call :FOOTER
		pause
	)
    if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			cls
			set "y=0"
			call :HEADER "Enable Windows Feature", "Found: !offlineversion! !offlineedition!"
			echo Feature Name: %feature%
			call :FOOTER
			%dism% /image:"%path5%\!ix!" /english /Enable-Feature /FeatureName:"%feature%" /All
			call :FOOTER
			timeout /t 5
		)
	)
	call :FOOTER
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
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		cls
		set "y=0"
		call :HEADER "Enable Windows Feature", "Found: !offlineversion! !offlineedition!"
		echo Feature Name: %feature%
		echo Package Name: %package%
		call :FOOTER
		%dism% /image:"%path5%" /english /Enable-Feature /FeatureName:"%feature%" /PackageName:"%package%"
		call :FOOTER
		pause
	)
    if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			cls
			set "y=0"
			call :HEADER "Enable Windows Feature", "Found: !offlineversion! !offlineedition!"
			echo Feature Name: %feature%
			echo Package Name: %package%
			call :FOOTER
			%dism% /image:"%path5%\!ix!" /english /Enable-Feature /FeatureName:"%feature%" /PackageName:"%package%"
			call :FOOTER
			timeout /t 5
		)
	)
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
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		cls
		set "y=0"
		call :HEADER "Enable Windows Feature", "Found: !offlineversion! !offlineedition!"
		echo Feature Name : %feature%
		echo Source Folder: %sourcefolder%
		call :FOOTER
		%dism% /image:"%path5%" /english /Enable-Feature /FeatureName:"%feature%" /Source:"%sourcefolder%"
		call :FOOTER
		pause
	)
    if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			cls
			set "y=0"
			call :HEADER "Enable Windows Feature", "Found: !offlineversion! !offlineedition!"
			echo Feature Name : %feature%
			echo Source Folder: %sourcefolder%
			call :FOOTER
			%dism% /image:"%path5%\!ix!" /english /Enable-Feature /FeatureName:"%feature%" /Source:"%sourcefolder%"
			call :FOOTER
			timeout /t 5
		)
	)
	goto:EnableFeaturesMenu
:EnableFeaturesText
	cls
	call :HEADER "Enable Windows Feature", " "
	echo Default: %file%
	echo Path to Text File.
	call :FOOTER
	set /p file=Set Path to Text File:
	set "all= /All"
:EnableFeaturesTextStart
	call :FOOTER
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		for /f "tokens=*" %%m in (%file%) do (
			cls
			set "y=0"
			call :HEADER "Enable Windows Feature", "Found: !offlineversion! !offlineedition!"
			echo Feature Name : %%m
			if defined packname echo Package Name : %package%
			if defined source echo Source Folder: %sourcefolder%
			call :FOOTER
			%dism% /image:"%path5%" /english /Enable-Feature /FeatureName:"%%m"%all%
			call :FOOTER
			timeout /t 3
		)
	)
    if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			for /f "tokens=*" %%m in (%file%) do (
				cls
				set "y=0"
				echo:
				call :HEADER "Enable Windows Feature", "Found: !offlineversion! !offlineedition!"
				echo Feature Name: %feature%
				if defined packname echo Package Name : %package%
				if defined source echo Source Folder: %sourcefolder%
				call :FOOTER
				%dism% /image:"%path5%\!ix!" /english /Enable-Feature /FeatureName:"%%m"%all%
				call :FOOTER
				timeout /t 5
			)
		)
	)
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
	echo    [A] Batch Disable from text file
	echo:
	echo    [N] ENTER NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C EDRANB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :DisableFoundationFeatures
	if %errorlevel%==2 goto :DisablePackageFeatures
    if %errorlevel%==3 goto :DisableFeaturesWithRemove
    if %errorlevel%==4 goto :DisableFeaturesText
    if %errorlevel%==5 goto :FeaturesMenu
    if %errorlevel%==6 goto:FeaturesMainMenu
:DisableFoundationFeatures
	cls
	set "y=0"
	call :HEADER "Disable Windows Features", " "
	echo Default: %feature%
	echo Name of the Feature.
	call :FOOTER
	set /p feature=Set Feature Name:
	call :FOOTER
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		cls
		set "y=0"
		call :HEADER "Disable Windows Feature", "Found: !offlineversion! !offlineedition!"
		echo Feature Name: %feature%
		call :FOOTER
		%dism% /image:"%path5%" /english /Disable-Feature /FeatureName:"%feature%"
		call :FOOTER
		pause
	)
    if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			cls
			set "y=0"
			call :HEADER "Disable Windows Feature", "Found: !offlineversion! !offlineedition!"
			echo Feature Name: %feature%
			call :FOOTER
			%dism% /image:"%path5%\!ix!" /english /Disable-Feature /FeatureName:"%feature%"
			call :FOOTER
			timeout /t 5
		)
	)
	goto:DisableFeaturesMenu
:DisablePackageFeatures
	cls
	set "y=0"
	call :HEADER "Disable Windows Features", " "
	echo Default: %feature%
	echo Name of the Feature.
	echo:
	echo Default: %package%
	echo Name of the Package.
	call :FOOTER
	set /p feature=Set Feature Name:
	set /p package=Set Package Name:
	call :FOOTER
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		cls
		set "y=0"
		call :HEADER "Disable Windows Feature", "Found: !offlineversion! !offlineedition!"
		echo Feature Name: %feature%
		echo Package Name: %package%
		call :FOOTER
		%dism% /image:"%path5%" /english /Disable-Feature /FeatureName:"%feature%" /PackageName:"%package%"
		call :FOOTER
		pause
	)
    if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			cls
			set "y=0"
			call :HEADER "Disable Windows Feature", "Found: !offlineversion! !offlineedition!"
			echo Feature Name: %feature%
			echo Package Name: %package%
			call :FOOTER
			%dism% /image:"%path5%\!ix!" /english /Disable-Feature /FeatureName:"%feature%" /PackageName:"%package%"
			call :FOOTER
			timeout /t 5
		)
	)
	goto:DisableFeaturesMenu
:DisableFeaturesWithRemove
	cls
	set "y=0"
	call :HEADER "Disable Windows Features", " "
	echo Default: %feature%
	echo Name of the Feature.
	call :FOOTER
	set /p feature=Set Feature Name:
	call :FOOTER
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		cls
		set "y=0"
		call :HEADER "Disable Windows Feature", "Found: !offlineversion! !offlineedition!"
		echo Feature Name: %feature%
		call :FOOTER
		%dism% /image:"%path5%" /english /Disable-Feature /FeatureName:"%feature%" /Remove
		call :FOOTER
		pause
	)
    if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			cls
			set "y=0"
			call :HEADER "Disable Windows Feature", "Found: !offlineversion! !offlineedition!"
			echo Feature Name: %feature%
			call :FOOTER
			%dism% /image:"%path5%\!ix!" /english /Disable-Feature /FeatureName:"%feature%" /Remove
			call :FOOTER
			timeout /t 5
		)
	)
	goto:DisableFeaturesMenu
:DisableFeaturesText
	cls
	set "packname="
	set "remove="
	call :HEADER "Disable Windows Features", " "
	if /i "%file%"=="" set file=..\Features.txt
	echo Default: %file%
	echo Path to Text File.
	call :FOOTER
	set /p file=Set Path to Text File:
	set "all= /All"
	call :FOOTER
	CHOICE /C PRS /N /M "[R]emove Option or [S]kip ?:"
	if %errorlevel%==1 set "remove= /Remove"
	if %errorlevel%==2 set "remove="
:DisableFeaturesTextStart
	call :FOOTER
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		for /f "tokens=*" %%m in (%file%) do (
			cls
			set "y=0"
			call :HEADER "Disable Windows Feature", "Found: !offlineversion! !offlineedition!"
			echo Feature Name : %%m
			call :FOOTER
			%dism% /image:"%path5%" /english /Disable-Feature /FeatureName:"%%m"%remove%
			call :FOOTER
			timeout /t 3
		)
	)
    if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			for /f "tokens=*" %%m in (%file%) do (
				cls
				set "y=0"
				call :HEADER "Disable Windows Feature", "Found: !offlineversion! !offlineedition!"
				echo Feature Name: %feature%
				call :FOOTER
				%dism% /image:"%path5%\!ix!" /english /Disable-Feature /FeatureName:"%%m"%remove%
				call :FOOTER
				timeout /t 5
			)
		)
	)
	goto:DisableFeaturesMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:DriversMenu
	cls
	set "y=0"
	call :HEADER "Drivers Menu", " "
	echo Default: %path2%
	echo Path to Mounted WIM 'x:\...\install.wim'
	echo:
	echo Default: %path5%
	echo Path to Mount Folder 'x:\...'
	call :FOOTER
	set /p path2=Set Path to Mounted WIM:
	set /p path5=Set Path to Mount Folder:
	if not exist %path5% md %path5%
:DriversMainMenu
	cls
	call :HEADER "Drivers Menu", " "
	echo    [L] List All Drivers
	echo:
	echo    [W] Write List to text file
	echo:
	echo    [A] Add Single Driver
	echo    [F] Add Drivers from Folder
	echo:
	echo    [R] Remove Drivers
	echo:
	echo    [N] ENTER NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C LWAFRNB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :ListWindowsDrivers
    if %errorlevel%==2 goto :WriteDrivers
    if %errorlevel%==3 goto :AddDrivers
    if %errorlevel%==4 goto :AddDriverFolder
    if %errorlevel%==5 goto :RemoveDrivers
    if %errorlevel%==6 goto :DriversMenu
    if %errorlevel%==7 goto:Menu
:ListWindowsDrivers
	cls
	set "y=0"
	call :HEADER "List 3rd Party Drivers", " "
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		cls
		call :HEADER "List 3rd Party Drivers", "Found: !offlineversion! !offlineedition!"
		set "COUNT="
		for /f "skip=10 tokens=*" %%m in ('%dism% /image:"%path5%" /Get-Drivers /english') do (
			set /a COUNT+=1
			set check=%%m
			if "!check:~0,3!"=="The" goto :EndListDrivers
			echo %%m
			if "!check:~0,7!"=="Version" echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
			if "!COUNT!"=="28" (
				pause
				cls
				call :HEADER "List 3rd Party Drivers", "Found: !offlineversion! !offlineedition!"
				set "COUNT="
			)
		)
		pause
	)
    if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			cls
			call :HEADER "List 3rd Party Drivers", "Found: !offlineversion! !offlineedition!"
			set "COUNT="
			for /f "skip=10 tokens=*" %%m in ('%dism% /image:"%path5%\!ix!" /Get-Drivers /english') do (
				set /a COUNT+=1
				set check=%%m
				if "!check:~0,3!"=="The" (set "offset=rem ") else (set "offset=")
				!offset!echo %%m
				if "!check:~0,7!"=="Version" echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				if "!COUNT!"=="28" (
					pause
					cls
					call :HEADER "List 3rd Party Drivers", "Found: !offlineversion! !offlineedition!"
					set "COUNT="
				)
			)
			pause
		)
	)
	goto:DriversMainMenu
:WriteDrivers
	cls
	call :HEADER "Write 3rd Party Drivers", " "
	echo Write Drivers Names to Text File
	echo Default: %file%
	call :FOOTER
	set /p file=Set Path to Text File:
	call :FOOTER
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		cls
		call :BIGHEADER "Writing Drivers", "Found: !offlineversion! !offlineedition!", "!file2!"
		if exist %file% del /s /q %file% >nul
		%dism% /image:"%path5%" /Get-Drivers /english>>!file!
		if %errorlevel%==0 echo Succeessfully wrote Drivers to file.
		if %errorlevel%==1 echo Failed to write Drivers to file.
		call :FOOTER
		pause
	)
    if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			set "file2=!file:~0,-4!.%%a.txt"
			cls
			call :BIGHEADER "Writing Drivers", "Found: !offlineversion! !offlineedition!", "!file2!"
			if exist !file2! del /s /q !file2! >nul
			%dism% /image:"%path5%\!ix!" /Get-Drivers /english>>!file2!
			echo Succeessfully wrote Drivers to file.
			call :FOOTER
			pause
		)
	)
	goto:DriversMainMenu
:AddDrivers
	cls
	call :HEADER "Add 3rd Party Drivers", " "
	echo Path to Driver INF
	echo Default: %driverpath%
	call :FOOTER
	set /p driverpath=Set Path to Driver INF:
	call :FOOTER
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		cls
		call :BIGHEADER "Adding Drivers", "Found: !offlineversion! !offlineedition!", "!file2!"
		%dism% /image:"%path5%" /english /Add-Driver /Driver:"%driverpath%"
		call :FOOTER
		timeout /t 5
	)
    if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			cls
			call :BIGHEADER "Adding Drivers", "Found: !offlineversion! !offlineedition!", "!file2!"
			%dism% /image:"%path5%\!ix!" /english /Add-Driver /Driver:"%driverpath%"
			call :FOOTER
			timeout /t 5
		)
	)
	goto:DriversMainMenu
:AddDriverFolder
	cls
	call :HEADER "Add 3rd Party Drivers from folder", " "
	echo Path to Driver Folder
	echo Default: %driverfolder%
	call :FOOTER
	set /p driverfolder=Set Path to Driver Folder:
	call :FOOTER
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		cls
		call :BIGHEADER "Adding Drivers", "Found: !offlineversion! !offlineedition!", "!file2!"
		%dism% /image:"%path5%" /english /Add-Driver /Driver:"%driverfolder%" /recurse
		call :FOOTER
		timeout /t 5
	)
    if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			cls
			call :HEADER "Adding 3rd Party Drivers", "Found: !offlineversion! !offlineedition!"
			%dism% /image:"%path5%\!ix!" /english /Add-Driver /Driver:"%driverfolder%" /recurse
			call :FOOTER
			timeout /t 5
		)
	)
	goto:DriversMainMenu
:RemoveDrivers
	cls
	call :HEADER "Remove 3rd Party Drivers", " "
	echo Path to Driver INF
	echo Default: %driverpath%
	call :FOOTER
	set /p driverpath=Set Path to Driver INF:
	call :FOOTER
	CHOICE /C SM /N /M "[S]ingle or [M]ulti Index Mount ?:"
	if %errorlevel%==1 (
		call :VersionCheck "%path5%"
		call :VersionCheckSet
		cls
		call :HEADER "Removing 3rd Party Drivers", "Found: !offlineversion! !offlineedition!"
		%dism% /image:"%path5%" /english /Remove-Driver /Driver:"%driverpath%"
		echo:
		call :FOOTER
		timeout /t 5
	)
    if %errorlevel%==2 (
		for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
			set ix=%%a
			set ix=!ix:"=!
			call :VersionCheck "%path5%\!ix!"
			call :VersionCheckSet
			cls
			call :HEADER "Removing 3rd Party Drivers", "Found: !offlineversion! !offlineedition!"
			%dism% /image:"%path5%\!ix!" /english /Remove-Driver /Driver:"%driverpath%"
			call :FOOTER
			timeout /t 5
		)
	)
	goto:DriversMainMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ChangeLocale
	cls
	set locale=en-US
	call :HEADER "Change System Locale", " "
	echo Default: %locale%
	echo Values: Localization i.e. en-US
	echo:
 	echo Default: %path5%
	echo Values: Path to Mount Folder 'X:\...\'
	call :FOOTER
	set /p locale=Set Localization ^>
	set /p path5=Set Path to Folder ^>
	echo:
	cls
	call :HEADER "Change System Locale", " "
	echo Changing Locale in: %path10%
	echo:
	%dism% /English /image:"%path5%" /Set-SKUIntlDefaults:%locale%
	call :FOOTER
	pause
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ResetBase
	cls
	call :HEADER "This option performs a /componentcleanup /resetbase", " "
	echo Default: %path2%
	echo Values: Path to Image 'X:\...\install.wim'
	echo:
	echo Default: %path5%
	echo Values: Path of Mount Folder 'X:\...'
	call :FOOTER
	set /p path2=Set Path to File ^>
	set /p path5=Set Path of Mount Folder ^>
	call :FOOTER
:ResetBaseMenu
	cls
	call :HEADER "ComponentCleanup / ResetBase", " "
	echo    [P] Revert Pending State
	echo:
	echo    [C] Cleanup Single
	echo    [M] Cleanup Multiple
	echo:
	echo    [R] Resetbase Single
	echo    [S] Resetbase Multiple
	echo:
	echo    [N] ENTER NEW DATA
	echo    [B] BACK
	call :FOOTER
	CHOICE /C PCMRSNB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :RevertPending
	if %errorlevel%==2 goto :ComponentCleanupSingle
	if %errorlevel%==3 goto :ComponentCleanupMulti
	if %errorlevel%==4 goto :ResetBaseSingle
	if %errorlevel%==5 goto :ResetBaseMulti
	if %errorlevel%==6 goto:ResetBase
	if %errorlevel%==7 goto:Menu
:RevertPending
	set z=0
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /A z+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Performing RevertPendingActions for Index !ix! of %z%", " "
		%dism% /English /image:"%path5%\!ix!" /cleanup-image /startcomponentcleanup /RevertPendingActions
		call :FOOTER
		timeout /t 5
	)
	goto:ResetBaseMenu
:ComponentCleanupSingle
	cls
	call :HEADER "Performing /componentcleanup /resetbase", " "
	%dism% /image:%path5% /cleanup-image /startcomponentcleanup
	call :FOOTER
	pause
	goto:ResetBaseMenu
:ComponentCleanupMulti
	set z=0
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /A z+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Performing ResetBase for Index !ix! of %z%", " "
		%dism% /English /image:"%path5%\!ix!" /cleanup-image /startcomponentcleanup
		call :FOOTER
		timeout /t 5
	)
	goto:ResetBaseMenu
:ResetBaseSingle
	cls
	call :HEADER "Performing /componentcleanup /resetbase", " "
	%dism% /image:%path5% /cleanup-image /startcomponentcleanup /resetbase
	call :FOOTER
	pause
	goto:ResetBaseMenu
:ResetBaseMulti
	set z=0
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /A z+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Performing ResetBase for Index !ix! of %z%", " "
		%dism% /English /image:"%path5%\!ix!" /cleanup-image /startcomponentcleanup /resetbase
		call :FOOTER
		timeout /t 5
	)
	goto:ResetBaseMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:RegHiveMenu
	cls
	call :HEADER "REG HIVE MENU", " "
	echo    [L] Load Reg Hive
	echo    [U] Unload Reg Hive
	echo:
	echo    [B] BACK
	echo:
	call :FOOTER
	CHOICE /C LUB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :LoadHive
    if %errorlevel%==2 goto :UnloadHive
    if %errorlevel%==3 goto:Menu
:LoadHive
	cls
	if "%hname%"=="" set hname=test
	if "%hive%"==" " set hive=system
	if "%hivepath%"==" " set hivepath=HKLM
	call :HEADER "Load Registry Hive", " "
	echo Default: %hname%
	echo Values: Name for newly opened hive.
	echo:
 	echo Default: %hive%
	echo Values: Registry hive i.e. system, software.
	echo:
 	echo Default: %hivepath%
	echo Values: HKLM,HKCU,HKCR,HKU,HKCC.
	echo:
 	echo Default: %path5%
	echo Values: Path to Mount Folder 'X:\...\'
	call :FOOTER
	set /p hname=Set Name ^>
	set /p hive=Set Hive ^>
	set /p hivepath=Set HK-Path ^>
	set /p path5=Set Path to Mount Folder ^>
	echo:
	cls
	call :HEADER "Loading Hive", " "
	reg load "%hivepath%\%hname%" "%path5%\windows\system32\config\%hive%"
	echo:
	start regedit.exe
	call :FOOTER
	timeout /t 3
	goto:RegHiveMenu
:UnloadHive
	cls
	if "%hname%"=="" set hname=test
	if "%hive%"=="" set hive=system
	if "%hivepath%"=="" set hivepath=HKLM
	call :HEADER "Unload Registry Hive", " "
	echo Default: %hname%
	echo Values: Name for newly opened hive in HKLM.
	echo:
 	echo Default: %hivepath%
	echo Values: HKLM,HKU.
	call :FOOTER
	set /p hname=Set Name ^>
	set /p hivepath=Set HK-Path ^>
	cls
	call :HEADER "Unloading Hive", " "
	reg unload "%hivepath%\%hname%"
	call :FOOTER
	timeout /t 3
	goto:RegHiveMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CreateProWMC
	cls
	call :HEADER "Upgrade to Target Edition", " "
	echo Default: %path2%
	echo Values: Path to WIM File 'X:\...\install.wim'
	call :FOOTER
	set /p path2=Set Path to File ^>
	call :WIMCheckLoop "%path2%"
	call :FOOTER
	pause
	cls
	call :HEADER "Upgrade to Target Edition", " "
	echo Default: %index%
	echo Values: Index to Convert
	echo:
 	echo Default: %path5%
	echo Values: Path to Mount Folder 'X:\...'
	echo:
	if "%editionid%"=="" set editionid=ProfessionalWMC
 	echo Default: %editionid%
	echo Values: EditionID i.e. ProfessionalWMC, CoreConnected
	call :FOOTER
	set /p index=Set Index to Convert ^>
	set /p path5=Set Path to Folder ^>
	set /p editionid=Set Path EditionID ^>
	cls
	call :HEADER "Mounting WIM to:", "%path5%"
	CHOICE /C PS /N /M "[P]proceed or [S]kip ?:"
	if %errorlevel%==1 goto :nextPWa
	if %errorlevel%==2 goto :nextPWb
:nextPWa
	call :FOOTER
	%dism% /English /mount-wim /wimfile:"%path2%" /index:%index% /mountdir:"%path5%"	
	call :FOOTER
	pause
:nextPWb
	cls
	call :HEADER "Getting Target Editions of:", "%path5%"
	CHOICE /C PS /N /M "[P]proceed or [S]kip ?:"
	if %errorlevel%==1 goto :nextPWc
	if %errorlevel%==2 goto :nextPWd
:nextPWc
	call :FOOTER
	%dism% /English /Image:"%path5%" /Get-TargetEditions
	call :FOOTER
	pause
:nextPWd
	cls
	call :HEADER "Setting Edition to %editionid%:", "%path5%"
	CHOICE /C PS /N /M "[P]proceed or [S]kip ?:"
	if %errorlevel%==1 goto :nextPWe
	if %errorlevel%==2 goto :nextPWTokens
:nextPWe
	call :FOOTER
	%dism% /English /Image:"%path5%" /Set-Edition:%editionid%
	call :FOOTER
	pause
:nextPWTokens
	if %editionid% neq ProfessionalWMC goto :nextPWf
	for /f "tokens=2 delims=: " %%k in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:%index% ^| findstr /i Version') do set b1=%%k
	if %b1% LSS 6.2.9200 goto :NextPWf
	cls
	call :HEADER "Copying Generic Activation Tokens to: ", " "
	if %b1% EQU 6.3.9600 echo %path5%\Windows\System32\spp\Store\2.0
	if %b1% EQU 6.2.9200 echo %path5%\Windows\System32\spp\Store
	CHOICE /C PS /N /M "[P]proceed or [S]kip ?:"
	if %errorlevel%==1 goto :nextPWTokensCopy
	if %errorlevel%==2 goto :nextPWf
:nextPWTokensCopy
	if %b1% EQU 6.2.9200 goto :nextPWTokensCopy9200
	if %b1% EQU 6.3.9600 goto :nextPWTokensCopy9600
:nextPWTokensCopy9200
	call :FOOTER
	del /AH "%path5%\Windows\System32\spp\store\data.dat" /S /Q
	xcopy "..\wmc\tokens.dat" "%path5%\Windows\System32\spp\Store" /S /Q /Y 
	xcopy /H "..\wmc\data.dat" "%path5%\Windows\System32\spp\Store" /S /Q /Y
	xcopy "..\wmc\cache.dat" "%path5%\Windows\System32\spp\Store\Cache" /S /Q /Y
	call :FOOTER
	pause
	goto :nextPWf
:nextPWTokensCopy9600
	call :FOOTER
	del /AH "%path5%\Windows\System32\spp\store\2.0\data.dat" /S /Q
	xcopy "..\wmc\tokens.dat" "%path5%\Windows\System32\spp\Store\2.0" /S /Q /Y 
	xcopy /H "..\wmc\data.dat" "%path5%\Windows\System32\spp\Store\2.0" /S /Q /Y
	xcopy "..\wmc\cache.dat" "%path5%\Windows\System32\spp\Store\2.0\Cache" /S /Q /Y
	call :FOOTER
	pause
:nextPWf
	cls
	call :HEADER "Unmouting from:", "%path5%"
	CHOICE /C PS /N /M "[P]proceed or [S]kip ?:"
	if %errorlevel%==1 goto :nextPWg
	if %errorlevel%==2 goto :nextPWh
:nextPWg
	call :FOOTER
	%dism% /English /unmount-wim /mountdir:"%path5%" /commit
	call :FOOTER
	pause
:nextPWh
	cls
	call :HEADER "Setting Flags for:", "%path2%"
	CHOICE /C PS /N /M "[P]proceed or [S]kip ?:"
	if %errorlevel%==1 goto :nextPWi
	if %errorlevel%==2 goto :nextPWj
:nextPWi
	call :FOOTER
	echo Default: %name%
	echo Values: Edition Name
	echo:
 	echo Default: %desc%
	echo Values: Edition Description
	echo:
 	echo Default: %flag%
	echo Values: Edition Flag
	call :FOOTER
	set /p name=Set name ^>
	set /p desc=Set desc ^>
	set /p flag=Set Flag ^>
	cls
	call :HEADER "Setting Flags for:", "%path2%"
	%imagex% /info "%path2%" %index% "%name%" "%desc%" /flags "%flag%"
	call :FOOTER
	pause
:nextPWj
	cls
	call :HEADER "Exporting", " "
	CHOICE /C PS /N /M "[P]proceed or [S]kip ?:"
	if %errorlevel%==1 goto :nextPWk
	if %errorlevel%==2 goto :Menu
:nextPWk
	echo Default: %path9%
	echo Values: Specify Path for new WIM File 'X:\...\install.wim'
	echo:
	set /p path9=Set Path to File ^>
	cls
	call :HEADER "Exporting", " "
	%dism% /English /Export-Image /SourceImageFile:"%path2%" /SourceIndex:%index% /DestinationImageFile:"%path9%" /compress:maximum /CheckIntegrity
	call :FOOTER
	pause
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:EnableNET
	cls
	call :HEADER "Enabling .NET 3.5 offline", " "
	echo Default: %path2%
	echo Values: Path to WIM File 'X:\...\install.wim'
	echo:
 	echo Default: %path5%
	echo Values: Path to Mount Folder 'X:\...'
	echo:
	echo Default: %path1%
	echo Values: Path to mounted Windows ISO 'X'
	call :FOOTER
	set /p path2=Set Path to File ^>
	set /p path5=Set Path to Folder ^>
	set /p path1=Set Path to ISO ^>
	call :FOOTER
	CHOICE /C ASB /N /M "[A]uto, [S]pecific or [B]ack ?:"
	if %errorlevel%==1 goto :nextENa
	if %errorlevel%==2 goto :nextENb
	if %errorlevel%==3 goto :Menu
:nextENb
	cls
	call :HEADER "Enabling .NET 3.5 in:", "%path5%"
	%dism% /English /Image:"%path5%" /Enable-Feature /All /FeatureName:NetFX3 /Source:%path1%:\sources\sxs /LimitAccess	
	call :FOOTER
	pause
	goto :Menu
:nextENa
	set z=0
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set /A z+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Enabling .NET Index !ix! of %z%", " "
		echo:
		%dism% /English /Image:"%path5%\!ix!" /Enable-Feature /All /FeatureName:NetFX3 /Source:%path1%:\sources\sxs /LimitAccess	
		call :FOOTER
		timeout /t 5
	)
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:SWMMenu
	cls
	call :HEADER "SWM Menu", " "
	echo    [S] Split WIM to SWMs with [ImageX]
	echo    [M] Merge SWMs to WIM with [ImageX]
	echo:
	echo    [D] Split WIM to SWMs with [DISM]
	echo    [I] Merge SWMs to WIM with [DISM]
	echo:
	echo    [W] Split WIM to SWMs with [wimlib-imagex]
	echo    [T] Merge SWMs to WIM with [wimlib-imagex]
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C SMDIWTB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :SplitWIM
    if %errorlevel%==2 goto :MergeSWMtoWIM
	if %errorlevel%==3 goto :DISMSplitWIM
    if %errorlevel%==4 goto :DISMMergeSWMtoWIM
	if %errorlevel%==5 goto :WimlibSplitWIM
    if %errorlevel%==6 goto :WimlibMergeSWMtoWIM
    if %errorlevel%==7 goto:Menu
:SplitWIM
	cls
	call :HEADER "This option splits a WIM file to SWM with [ImageX]", " "
	if "%size%"=="" set size=4000
	echo Default: %size%
	echo Values: Size of chunks in MB
	echo:
	echo Default: %path2%
	echo Values: Path of Source WIM 'X:\...\install.wim'
	echo:
	echo Default: %path11%
	echo Values: Path of Destination SWM 'X:\...\install.swm'
	call :FOOTER
	set /p size=Set Size of Chunks ^>
	set /p path2=Set Path of Source WIM ^>
	set /p path11=Set Path of Destination SWM ^>
	echo:
	cls
	call :HEADER "Splitting WIM to SWM with [ImageX] ...", " "
	echo WIM: %path2%
 	echo SWM: %path11%
 	echo Chunk Size: %size%
	echo:
	%imagex% /split "%path2%" "%path11%" %size% /check
	call :FOOTER
	pause
	goto:SWMMenu
:MergeSWMtoWIM
	cls
	call :HEADER "This option merges a SWM file to WIM with [ImageX]", " "
	if "%mindex%"=="" set mindex=*
	echo Default: %mindex%
	echo Values: Number of specific index or wildcard
	echo:
	echo Default: %path13%
	echo Values: Path of Source SWM 'X:\...\install.swm'
	echo:
	echo Default: %path2%
	echo Values: Path of Destination WIM 'X:\...\install.wim'
	call :FOOTER
	set /p mindex=Set Indices to Merge ^>
	set /p path13=Set Path of Source SWM ^>
	set /p path2=Set Path of Destination WIM ^>
	echo:
	cls
	call :HEADER "Merging SWMs to WIM with [ImageX] ...", " "
	%imagex% /ref "%path13:~0,-4%*.swm" /check /export "%path13%" %mindex% "%path2%" "UniqueName"
	call :FOOTER
	pause
	goto:SWMMenu
:DISMSplitWIM
	cls
	call :HEADER "This option splits a WIM file to SWM with [DISM]", " "
	if "%size%"=="" set size=4000
	echo Default: %size%
	echo Values: Size of chunks in MB
	echo:
	echo Default: %path2%
	echo Values: Path of Source WIM 'X:\...\install.wim'
	echo:
	echo Default: %path11%
	echo Values: Path of Destination SWM 'X:\...\install.swm'
	call :FOOTER
	set /p size=Set Size of Chunks ^>
	set /p path2=Set Path of Source WIM ^>
	set /p path11=Set Path of Destination SWM ^>
	echo:
	cls
	call :HEADER "Splitting WIM to SWM with [DISM] ...", " "
	echo WIM: %path2%
 	echo SWM: %path11%
 	echo Chunk Size: %size%
	call :FOOTER
	%dism% /Split-Image /English /ImageFile:"%path2%" /SWMFile:"%path11%" /FileSize:%size% /CheckIntegrity
	call :FOOTER
	pause
	goto:SWMMenu
:DISMMergeSWMtoWIM
	cls
	call :HEADER "This option merges a SWM file to WIM with [DISM]", " "
	echo Default: %path13%
	echo Values: Path of Source SWM 'X:\...\install.swm'
	echo:
	echo Default: %path2%
	echo Values: Path of Destination WIM 'X:\...\install.wim'
	call :FOOTER
	set /p path13=Set Path of Source SWM ^>
	set /p path2=Set Path of Destination WIM ^>
	echo:
	CHOICE /C SA /N /M "[S]ingle Index or [A]ll ?:"
	if %errorlevel%==1 goto :DISMMergeSWMtoWIMSingle
	if %errorlevel%==2 goto :DISMMergeSWMtoWIMMulti
:DISMMergeSWMtoWIMSingle
	cls
	call :HEADER "This option merges a SWM file to WIM with [DISM]", " "
	if "%index%"=="" set index=1
	echo Default: %index%
	echo Values: Number of specific index or wildcard
	call :FOOTER
	set /p index=Set Index to Merge ^>
	echo:
	cls
	call :HEADER " Merging SWMs to WIM with [DISM] ...", " "
	%dism% /Export-Image /English /SourceImageFile:"%path13%" /SWMFile:"%path13:~0,-4%*.swm" /SourceIndex:%index% /DestinationImageFile:"%path2%" /CheckIntegrity
	call :FOOTER
	pause
	goto:SWMMenu
:DISMMergeSWMtoWIMMulti
	set z=0
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path13%" ^| findstr /i Index') do set /A z+=1
	for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%path13%" ^| findstr /i Index') do (
		cls
		set ix=%%a
		set ix=!ix:"=!
		call :HEADER "Merging Index !ix! of !z! with [DISM]", "To: !path2!"
		%dism% /Export-Image /English /SourceImageFile:"%path13%" /SWMFile:"%path13:~0,-4%*.swm" /SourceIndex:!ix! /DestinationImageFile:"%path2%" /CheckIntegrity
		call :FOOTER
		timeout /t 3
	)
	call :FOOTER
	goto:SWMMenu
:WimlibSplitWIM
	cls
	call :HEADER "This option splits a WIM file to SWMs with [wimlib-imagex]", " "
	if "%size%"=="" set size=4000
	echo Default: %size%
	echo Values: Size of chunks in MB
	echo:
	echo Default: %path2%
	echo Values: Path of Source WIM 'X:\...\install.wim'
	echo:
	echo Default: %path11%
	echo Values: Path of Destination SWM 'X:\...\install.swm'
	call :FOOTER
	set /p size=Set Size of Chunks ^>
	set /p path2=Set Path of Source WIM ^>
	set /p path11=Set Path of Destination SWM ^>
	echo:
	cls
	call :HEADER "Splitting WIM to SWM with [wimlib-imagex] ...", " "
	echo WIM: %path2%
 	echo SWM: %path11%
 	echo Chunk Size: %size%
	call :FOOTER
	wimlib-imagex split "%path2%" "%path11%" %size% --check
	call :FOOTER
	pause
	goto:SWMMenu
:WimlibMergeSWMtoWIM
	cls
	call :HEADER "This option merges a SWM file to WIM with [wimlib-imagex]", " "
	if "%windex%"=="" set windex=all
	echo Default: %windex%
	echo Values: Number of specific index or wildcard
	echo:
	echo Default: %path13%
	echo Values: Path of Source SWM 'X:\...\install.swm'
	echo:
	echo Default: %path2%
	echo Values: Path of Destination WIM 'X:\...\install.wim'
	call :FOOTER
	set /p windex=Set Indices to Merge ^>
	set /p path13=Set Path of Source SWM ^>
	set /p path2=Set Path of Destination WIM ^>
	echo:
	cls
	call :HEADER "Merging SWMs to WIM with [wimlib-imagex] ...", " "
	wimlib-imagex export "%path13%" --ref="%path13:~0,-4%*.swm" %windex% "%path2%" --check
	call :FOOTER
	pause
	goto:SWMMenu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:SetKey
	cls
	call :HEADER "Set Product Key", " "
	echo Default: %key%
	echo Values: Product Key 'XXXXX-XXXXX-XXXXX-XXXXX-XXXXX'
	echo:
 	echo Default: %path5%
	echo Values: Path to Mount Folder 'X:\...'
	call :FOOTER
	set /p key=Set Product Key ^>
	set /p path5=Set Path to Folder ^>
	cls
	call :HEADER "Setting Product Key %key%", "to: %path5%"
	%dism% /English /Image:"%path5%" /Set-ProductKey:%key%
	call :FOOTER
	pause
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ContentView
	cls
	call :HEADER "View Image Content", " "
	if /i "%index%"=="" set index=1
	echo Default: %index%
	echo Values: Index to show
	echo:
 	echo Default: %path2%
	echo Values: Path to Image 'X:\...\install.wim' or .esd
	echo:
	if /i "%tmppath%"=="" set "tmppath=%systemdrive%\users\%username%\desktop\dir.index.%index%.txt"
 	echo Default: %tmppath%
	echo Values: Path to Text File 'X:\...\dir.index.%index%.txt'
	call :FOOTER
	set /p index=Set Index ^>
	set /p path2=Set Path to Image ^>
	set /p tmppath=Set Path to Text File ^>
	echo:
	CHOICE /C AS /N /M "[A]ll Files or [S]pecific Path ?"
	if %errorlevel%==1 goto :ShowAllFiles
	if %errorlevel%==2 goto :ShowPath
:ShowAllFiles
	wimlib-imagex dir %path2% %index% > %tmppath%
	start "" cmd /k notepad %tmppath%
	goto :Menu
:ShowPath
	echo:
	if /i "%wimpath%"=="" set "wimpath=Windows\Setup"
 	echo Default: %wimpath%
	echo Values: Path to specific Folder 'X:\...'
	call :FOOTER
	set /p wimpath=Set Path to specific Folder ^>
	echo:
	CHOICE /C DN /N /M "[D]etailed Info or [N]ormal Output ?"
	if %errorlevel%==1 set "detailed= --detailed"
	if %errorlevel%==2 set "detailed="
	wimlib-imagex dir %path2% %index% --path=%wimpath%%detailed% > %tmppath%
	start "" cmd /k notepad %tmppath%
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ESDDecrypt
	cls
	set "crypto1=BwIAAACkAABSU0EyAAgAAAEAAQCNWsKi2L/3i8l2s91yX0Ea4Z5x5i9ngwB2wITlxLgCUz22U60YGehF2NeH6htxHQsqI6WEVFnxjgR5TEkWJTDrZ9Ura1wAcugczD9uz0owxYF5p8oWEku3MK7qLCPAtX+4CEKCPuruHMSZe3ieZyC/odI/50B//PBM/HEBh5FM/rVteXMDEvuMozAHqQoz3p6iDekL/Dhqy9J5foP6ZUwdEGLj2AXI4Ae6ciXy/wmM5mCtCtNq8CFV+mFSFLWFZ2sazBQ8GyyehHkMrjGQ4EG5RSQWMySiGagaWbzvZ37LR2+qqdwxOzGwQlsBRfCfmtfFnajqLZnab8A1HmlEbI7WYwHb7MoBj2FK+xowzGs5i9pIP3Brullq28R6ayAvEywixklHzarC10r2SlalORdiMJnEcPGeaJ5ZvzKG8wOATn68cLLQFKrqlrRo9XLjWrpJCTKt8CcrbRJ5ZLbYxzw4vecz2O3GyJQ8wRVCOGDq6RTaftToOE6vMqG7MjzYU9hPbxHqnWZo9c09sAh1inBJsHJi6mZZokkTZ7R8FtSrSfIGoF0Kr1BmmWZc/n9MvCBnwwlTkt0O9kkG7IJO8mrBNdGydcq+ph1MbUGib5nwWIazgcfXGXYDz1eX1RpqmhA1TkXzbwUl6vPeuncbD5kUxdGK5XueW2j9E+/Dw2zn/bWSYRVhMrSXbc77IlFRDd1tZZT5766snSQxo8+mffl6NbLimvpwh4Q7vXJULQrXxS1eGYOMq+IsH5N5vkyowkI3MHBruewkRbEyBydB9zkQuqrx3bs0lT3qB94WK72fo8QaXeVOebm9cdJQ+dMb2yGjqR2CPZOam6CLiRyCNspwVUaLfCqOnZAGa/HW7oi+2RNm/EM89kxbH2GDQl1KrIk7sZ+5BUe7dubbmE8k23LibVynY37Yn8kGooGBrCvnIuUSGebhTOWvm70S+p4jcT5dmQD5D7tRZlXccPyvRVKyUBWC5hbMZBXYd4ZVbaRQNFXVz2Thir58jpF6VIxhcCj9ifmG71qT0GFIqJsxl4pABNV42RyqefUq5Nfcw4RLRWtPtK3WTPljJXSCukRTO3jdkPelD5MZA0PLO5t95cddI9MgxIer72jM6ve1bV5fK9MbzJidJE9ZgLENvxP59Hx7rnBWAUlMlw8VTjz6MhvHMJvd7poUhxyZG21Qs/JwWQd/qsZqW7sDcg104KGNcMaHxVDVjSOisfafEX5s0zeOQghTpVEbkrScoQheL0/aNPxQvC1rsBD0K3x65vE1hl3taMw6Dps7SFr0mOGyCVCFOb2h+2eZfMvw/hvbZ3KfiwpOYJzAXgX7m0syE5v7lTtWOaHTz9BWcDXFYWX15YNjQiId/SPUuDBKki9I1YJHef2GxR2/mx1Idic6JkqeAXKDexQxEy/3Pv2tKVfJhCtmTiRTv0pDxctw1q3wXpU/lpw5q4vVlf7B9W4NDRZh3krfrd7a5UKn5Jqhc/RzvqIX05PqP8clGMM3639+0/uqrMVeG8OkAPTHC4Csvsj04QM="
	set "crypto2=BwIAAACkAABSU0EyAAgAAAEAAQCf1EyRJa6EtwRlee0ClaLRcEhgNGS4jfVouO+MuuTnTV3avzNwgoXpQvQf4CQdsCQhBWyUUbvwbNnYG+ESsOtAiw7p7+jRrHAAR5rWRBCNeJTnKSBpz254JnjSVFMRczulrigEhSRz5bidP6SRbPK9/sKWopCND34cNNddjADibpdw7oW1g7Chb9snAjpoLv+cpSA0IWXURiT5Nz4vdQ3NPTkvH4v9MwH//JUuv19irf3QYUJSN+QkmLX65cKxxKmcUYe0/MbrxUu7KK3OM/nDpmKuKbjbUdeY4PD2uBwPQ4Ha91+bx4i7aWhqC5MYpN9PjSI+2C3mJ6uYobz5WUK/J7+MzvWOcPOgsR5RYynyZOmnD7x1cLQncA1ZgkaXkhwZXswTQGy9KRdcuZ3wIHwdzeOLbFgZu8dyj9eSuMbNPLlWFI7Ciurh1bHCMr81LiG5KWa4jy54MwD+NUkVOXbiBsjSijcfEvSFP1B4w0PPWXEf9OS9+wI5a2YZ0O0NoPLJqdbQDLlNL/bkOmdIBXs9OMEwbMZP0vhPyY19jotBsrIxQUyc5ThXr8uDzTh+J2dl03j2wpqRwykseKqp8HVjAPNYabnOSaq2/aPYIGXt6KPn/C+7xz4hyY3tTJcHK7xYAMEaJmKmqaiOR5+yO1zpevO04CYmZdFo6wRbbmrNyVu/p5dAFZyFyyglW7ieFKSgAz/isIPh+G3p8m3YF9grQ2TIQNNIN1pLJPvWvzqDIinr8gzTwzER9ZXlH9U26m8aiXptTRlXK2ws8LyVYKPqNHM9DwPJS9PuvcOykCBdeB7JvopdBU1jJUBWBsDMve0jvTWai9pujkRFsG61oclHMc1E635g+hjRxbKv7L/P2kvg5RXa6J+rpVo5jgJQ70CBgtqpNHLf6QteU8sDIlxKet1+lw7YRvfq9Wi6rmxlGqwrA9zWlCZLvnCFl8q//0a6Q+68yn5325zy67oz/X7FTWgoUU9sDDDprSwvYukrT3BlU3ntY1YAiXQtZsg6LknToQZdtj4z/bUP7sHMkds96MNRj+/+iuzEEyJaQPNGWOlzJkMa7Yujbq+5ScsxoXC5Iy8v1mi10hzYC54ByX1L9yfwi6F0rklsshl5IPSgIH+MOoZM0W+5/KlQCYeKZsIGJfyV+cVbkjLsVsFMOV+f3I+GKrJMoU8zg0vBP1SMIaEXxE5R7hd2lnzX2wIZwJvKhyHV2KSgyAQ0vpFbopB64Y1dkC/kDvEpluQ/WHjqHzwTKJyXBnFAKRNQO4BqmyNMib5N21l96Mm2nUHcxmd+KeXMuZNavvVds40FL/rOid/ROc8fK6SG/3YI+XbO4L28nPmEQPYHTfxBfkefRtUqaxC5K7QMX5LTI/ZaB+ZgJtbOXtvhUaVfyFlEzr1RBqFXXe6NhpP052qI16G7C0Sx7CT+aMv+16zqcBLb/1r4rqGhDTJjcxnkesZdc/gbDJt44RzdGo+FiZZItD3TmnyKOPjNExgA0qxdoFnwnxb5lp+qmlNi0XaOBwgSHSdiPhw="
	set "crypto3=BwIAAACkAABSU0EyAAgAAAEAAQCb7Jceg+YeJXNdb7HHJ0irxNsGSWu7itcuEQkfS+znxm6XwxmfINt8SGzbIIka2eOB2t9L0lGwSM0uP3UPyhBzzc8FL735OL+RnimL4SVKDb5AsYpREOcNQgKsk6OOeo8q8+4+swvwfe6+VloNqCrjiE6bCS7TrC+haV+eabj1QaT+aSXNWrukmrvi1VFoQIVeet5BqHzciVV+bv3/iSG/EEkxV6Yqq4Y2o9bvSDIbE+lGc1bKPlT9zy+lYx+WMB0Nfzo7nIrKs7qCw8GbeRTsHo5GMWxrLNltFsDpoO0C62pSvxEGB/id2TwESrd7brudppjjJ+LdbCBUNam6zx2lhZmjconDvvWLYC6KXVVgTh5WHjv8z0dxkD+Hc6o6OhdXuxAA5xtZYgIah8t2ZVK5V2PEFnusqZP7fqbSUJOp6sZe3AZWWVZz6dg6VqYpDMbKBz8rhHXXHjkaqIMrmxnSmHoB4fsxelWre9oxQoQJUkASAUhflDPKtFVe30oLsN6fNwBBNVKywJogPsClqIuNiQDpsXRFg8PYBgvqDQz8DRfDpu5WyhQjdD+eVQpeczWmTyPuwfGB0TscKDhzIhSwebKK0NwCn2LunmdJEOjJsnsYLrE63rsQdcXimzPifQ5XWlV9GUqo5ce+AlX0IMmw7DSZJBe9Sr1adBFuHQvRvQ1tGyQ5oD7WxKshS8WbvKT6cZb0XBE0Ru82gl9uSvJAgOJG9E8g7BApwCfaWAMEVj/Xd8DZSjZ0VWxRlsVkhjxWeiiQWg85J08JdjC2soG14IiXRTVAGogUTcUVlOPkovrWoRVqTMLAA+Vh0R6BpcAexwUv4YVmw2661iDUmnkYWyXMcSBQP43h5SjdLirO19b/1UD9lvaCaZpyokKMD6+GNJyCX9stVuS7c1ow/nsuVDgx3Rv7wE0as5h9WSheM5p6Lzf1UTHy1Mg2XpJAn37amw7rUnOkz4qqJ5ItRwAAhRn2Cn+PUtp5Ti1vfHmPd0PodAdTUo+5lYOGmXJxx0SHTh3dSCkSIJWjoAFYnrtEWMTszcenxYlZc2e6dWNZUPO4VyftrGkF4FpWxFC63Gd15uf3vUlStFXRArMh9KQ14sf4PGmpxmoXNZBWNsa7xizW83lkS3sbtnHtLEk6xyJ01sj+HWPoEuTzSbs6v3P8NstpN37xJui+hafIA5ILpB04qlxrxIRKEow31QzrMINyiwjCnxzIrXFuEQq9aY1930q5XgYfoV8OZirdIWKYtvPWzBgEkmi5w930kqjRyA81XwhH74guWww7A1lImbygBDl5wyE8GRVg2Emy7pU2sybyvtjMLSBgmTK8h6UqEXaupvuVCYjC8BzkUGWfTG9eh50TPpFZMO4vB2l2tbfwA2oTBwvjuwaDwdUIFXYjmdti3A+EGuhvDAeGzGxZhOmQir84CYXEKMj4yaqFvaKecMCtOOwWWpAEIzRWxXJIXN6EPqiZGEauZUAXjicVI/jpkKGhWUnaLZhNFTYD6Nl/eBMA2TPj6w4AiOnr21bDjgE="
	set "crypto4=BwIAAACkAABSU0EyAAQAAAEAAQCBK154a48ca1NUi4rwPvAb25g7qltZ0xm5HYKYLYA7AWrSEsmGduL1lgbH0GB0hLVp3qK3U6XBpudvCLTkcozadaKisCLDvCuAboPRgpkBjQ0g9jqU1bECrRgESQo+zypLSBtgL1vVsgHncefceZjxirjM6IeYV1Vul2St0BOcvDFQqnFLfFwehCUUs1GUQhNVOJeYUVGkEQxpvMCrO6jWzOvvFiieN6zB0ygCCsnLsk2Ns4JXe4SnsmgGf7tw+f5RjKBv7Hk3wyblOm0vzPnh6K77KhAiOcvO30cxEMHyK/kYOj8I1vHndjlqhvyD3e8qplpjQUVXe0DKYx1NTF69UdRqRv7gLwfvmE6hmJaTbe+N0DoC8Ie27WYBUiZfJSypbL282a9Vu4lNplTox6dfzf5hdE1KLiDptpCm+5rGTeEIQNIjYj7Ju0lmdDg5YobuCduao2ZsxVhrSfg0mBcsUa69uSL2mLtorZDoSS0ZEyoGudDapHiT7zd+HBQiUZaE1H90V/Zfjmmt/sbpXd+kDWs2+cRjCVRvSpqD8OSvSVO2ECR0QzLF4LpssF5G5exCs+ABvH5UMgu74rAGHPbqgSURURvxltzrVIFe1JZcv4YZwsGgi7JaKMdzF5EsLKhiLmqU0++tA5gKNFC4TwuUCP7X5eFDv7FTKWf3fmtKTE05sakAuAgTm1IPBZ5B5UtWctUwfLknsj4JlO4WQMd+sBg/NaQP9jRberZFyg0RRTXxJVRx+aBDaJdh66hF/gU="
	set "crypto5=BwIAAACkAABSU0EyAAQAAAEAAQDpBHbDTC1rTdcSHhp58n1fBY4EaGo6ez4RYAu/RGiICloh3lm4vXz6SgEAXdQEtv0HzXXpORvkm+uWzmfl02yXDSYEvmDVw9kIn0u9pxdQiwo18ezHK55zbQV+KzisSJz97ZO9Z65i+EsoUdi7clqHDcJKEuudF0BDWt16XBTdntVBt7OMhYv549C1wRjASLIJVmWmeXz1d6fw03TWQoWNUud/UY3YGEzGcPPEnJT/Rhpp2OcXYYcKbsLwVyRK7tbF7MALxBrqU440kXjBGStcfTPYYwXg/C42RSdtZcjwYl1bbzcckpB3lkunMG741JK4MR238Dl+Md6EOt1HKji9gS7cQl5RPPv/oKCcWL6PkViWHhzvwexLM1cpLcXAAum7gPYegT2PrHZUav8yEtuGTPUi4+cHHaiXStujvZ79jXV9HeJ0NEfAcie8d+4Ctph34Skj9arHA649yhat+q6iqmNWE0uTyfPNZ9tr42hLQwITCBe+jEdOYNqSRdutNDI7dGS2uG6k7UQUSLbvZ5fHI/YULMtoVI+I/kESboMj+r+ENBDslckFxS4ubUsjJcLci1ig8kZg909tlWX+wQeuAbQCzuWJbhXPJf2IcZ2o7kfPfbmYFObPVG1FgAfEo+nKSl8Pqw/7hf6t8BzWdquWvgCuqoWMJdRqL3N5Utrm6NdS0B5sJOGqqxhEXI6O02pfO/Kmt5a+JtAA7Gv5WzYtmcdNIZX5mXqqzsCoN5Vjv6jU/q3qDsRQkXw4YbypJSQ="
	set "crypto6=BwIAAACkAABSU0EyAAQAAAEAAQCdf7DpxvHkW+g0CYgrqi+lFMwdIx1QFes0QyeQO91Cp1KjNp1ELtVgLLw5+5qRf+yOFg+TyMewBe99drjK7pTkdEHwkswcRw9JljHk7BjyXDHpckLWmGfOFtDK0TftIUAmc6AN0HhHpugBR0tkWrNfGtW61lSKsiMWhDEVUqnkwJNQQSjBpK6rbA/7yFrFR9D6vDwg46iRmbqhwMCVzr3Wea/3lN87v6gaz+cDAEvS9mHsEEoSRVzh1EX5UMfFMuMPfYekCnagT5jhZfOlU3MLSuA5lsUOy10wErlMSUW09Pl8iDGLAp8iZQw+VGd/39KTMlm88FGrd47GxPA7l1jZz+bozGWpWaWPQQ2YqKtS3UWhg8YUaeWuJC0KGmtA7lH5F80fMNzfJStUNnUzUrLInxNg97EA4FFM45DTAIBijHvDOsMJG0K4yg3ntKHiMgyrLVpy0WfIm4KR5eoF38uIoV2fUr0Mi2EC7VYKsqEnZr3dLI4zAy+ggAJQCfbTAqy2/ecYel4egZ0odA80uSRo6gG4TbqWj4DHu/fbJrjcdXos9z45jlOsaOy6ayTmymxhIXb+oOKN25ETUItRLrsBrTDIj/ZJGSmQa4KrtarZhORX3JKuVkLjxEDdix/48o+vBttPLYPiEv0bYSpMv4R5QGcZegcqPkK48++QPrxnNkv6nZfPzZBbTEj1ZvWQSVOSNi0aIYnt8oaMvUv3jJk+NAEhyOkOOnMJXcrq6ChxlA5Hoy48zR7LLQ2S5guzXwU="
	set "crypto7=BwIAAACkAABSU0EyAAQAAAEAAQDdv7jU8mT9zjOtXkxHf8JMsCtPfb5CBnLyLbq6fcppME4x3Cy+rs8bhs4aYmuRsopmTDt6Qc3x6tZTX+rhTZzjhgF21D0EqwCzTsyaSxI4jC5BavPzT/HXgwb843poeQ3twKEZc93PDDExxrLz+FXemK74uey9w0SvPo0yTcNhnP+I8p9p12eVCRMcN/ma2etIE2U3vVmYlsYVQlqi9bZ8Bj2F2YBpQdTz+1JzKsE7lWnmMQzig2I1+mg3Tmu4+dcj+8Kne94habjxEcDGK0L1raHcDbtkgoRi45XLF46QoFvrjd0F5CjmFYuTvyKlzLfXtLgPqDTH5R6MQU3Fz1y5lblZ26yovcceD3D63SBaUkwDrlv+1NoG+qHVFSuuiFmNFMxAExPKUeLHRa2Xt5zle8fXFOMpOpAjFZItyfG8EhtL3HukFgZnmOw6qqLzkzXI+zW6xEWIi2akaBfwLvDBM6GEk2FahaQSuTXphvcBnQ9jUR5Tf318NQqkBjiF/xKCzNV9gwi5Wuap5F5BgDjiBnxw8DUqh3NthT01IGckbA63AAWhkt0KlR1bYjmNkwvCQ3biRrxSDF7HbBP79Lx8ZardLy0EgZYhEp4yXeOdb/DLxc+mWdUqERkQ7f1Qu6+asKMQz7wKL6sZ/PszlHdluhQ0TPXNb6poAqmgVviD1br/ItIkwht7fqaNueOb4CE4fAchmvCZ4M78gUodfMV5B3Hg0//6kU/V5D6w+P0LYszkwX5xFMut1xZDUocjigE="
	set "crypto8=BwIAAACkAABSU0EyAAQAAAEAAQDrhu20TkgPM2EU2vFdgi9LSa91FUNyNHLvu+H+IonWKFB5B7oO8YA8eZAdlIOjTLYzyDZp+GB0ojkw1cIG/OL3diJd7KURelimikpiWX4XRzybavo/qLIORAsh4nVNmXa/UG2GqP6WQKyK5hSXeZ429ebyhV3MPUN38KmvlaAP14ONHbgj2uNnUs5SR19s9Bz7DmfNhuSXeiokS01SW7S4WzPM6TuJ/IBo52MIQK4tzPFI+3c2b5LjXfFWpadMo/x5jIZRKjxeIwqQ8c67CI3AtQHDryJfVrhoIAbUdG0/6xVbIa9aQ5YHAtsFOnyH0Cv4Lo0Fwe7kSwNGqd8aT+zZA3hB22g6tJk/Zc5UxwtmFO2giIm0HlP52gnuDXq9Ga7LJg4zudAT3vnt6CaDV31k5NlVhdbHg9zEQQVsxlAvBXFRb38DX+rPNmGYFZtXDKVJI+fAFGPDt63eMJlu1NMEmfUeJHyE+TK11nnqvcmYFL1vBtoxmqm2GhulTLfP6WxrPZ9kYABl495kEYLqFD16rwbZO5hx+2UwRw1aPfaLtxOlyYayYxK7C87jUMErS30P/U6UQTBUMW8PKP9zOGl+mYmUX2RoOf1v9EpgiuGCtrzYFMQHTA0I/QgwmUadBNfZYRVTkPYEaxHgQ9ixRCQVwGQ/KmMndtj9nBHYrmaK56CghHRKAh9NXERXNxPFMx5a+Rip3eSI0LDvp3JjHnRviJJLTDn9zZGowWL7wvQeg6I8jbQzrjFhbjRTpwN0/z8="
	set "crypto9=BwIAAACkAABSU0EyAAQAAAEAAQCtdSEzxQsEBSjVdKDS33zXhXaXePAOEPEKxkXl64uiEKa9nG0l6cDtujVs09o/8wYnc+KYJvadTW7r3sNZ3gh+vEUl1GGnjOXsMbcRAT2/U9H2rGjZ0oOwGpF81JPISPO5YulQcIoQf6vwUoOr9EDJ2fUn7ThaLkRu/5HQcbyWtO0Zk2MlolYtKLKYvZ555P0tq0qm1P26brrBIz7QWUKCcGn1tDbeu6+hltAYrVdKLtq1KMQsY8Arm5mRjrLtcuLBUgFt/4deCvD2mqSGJcZPiqOiZ08UAqX1CfoR+E8VSzoddEVQ4i4nGJEUehlCr2DN3OswfNqFV2ln379hvSfMPdfuRhB3u56rilY9l6c34Ehinm0aqHtE8s8SvwRNQx/J5AxuN2E5ueY4demqAQ4k+P0nkwlDTl+nXtcqna5NMcEfUR5I5lQo3geQVu3m4Amz9D2xyUQs1ClN5LRb/hjqPsqoi15W4chV+QvBVvMucGtdg5GdGzJD4qNOEW5xDYpT1lNsTv/8/2rcKToSjU5eOatmvqy/8s2L6D8033gEo15Ut1+a8yT1yjU/1nut9tdWypLaot0ri50Cq805yq24AYilnD1jn/tGI99/qaOLHlaO3w1JZ7TrDm6R5MCZCoT8bW6Suy7xqdxkp4YZZkemsW7DJ315XAeGeAeUWXBA9PkWIqeVH0jScyGI47RiwBVIOlwhPPPmHOmd/sTSz5WSUogdwFJ4eBOpXv2inO9qxdgxSOCquTyFO2HEPw4z8xM="
	set "crypto10=BwIAAACkAABSU0EyAAQAAAEAAQA9RnTQ9aM4KjDBYP7Xk5He4ujJJSnEdIdy3W02ywrJQYlQGUZho7rN5N1lQBEebYJjjQDgTAdcEs/Wyp2Hrp/yyj58UNyMnRi0+V2Ni/Q+wKHJgPVJrOqKgFcTXi20MamnGab+1p0KkRDv36j4gvVZ4VhWYhEiki2wyIf6uHrvtWEb4VaenI60i8LaveafSsQ7fzUAlPSuz36CDAo1Mt4IZKT/tSFL2qqHug5wi4DF5gWktHcdV8UIe4kYIfFBV+Nd1KFeno04XdOfXpmIkSpx/ZqL66DC3GHifW7Mbr4zEMDvOmnIHCuEdP8+ptwhtl5jO/XS1FxfFRYUiHlJ5t7MocRH8mGMHDUTtmG1Ji2f0oZVS3lBVg4m0RwqhcrPIWzqSOfIlJiknJvcurtyR53x4wj/R01zWoqLYKyKrhRri7m+y6xqceDkxUX4Zetkll8hedQJBNt4AF35CPXn91ekoaDWm0hVR0RKmYT8YFV88sqXsOpAuFsrCXPQ+lKlOkW+e7Nv8GwtmkgL884Lz8B7DXLe9IZ81ckkW8zySbA7ImwKf6C0H3hf1xbnW3Kdo7Y1zznQbrr3QuCOl77u7H80ARadvvjHGfTcgx3VKoi5h1pBkMAATV/HiF2LfXQv/5cOc6DyQkUXrtUFQriobdnSUzPQjk70zo/a300wbZlnrkMkd1F+ffKpMitEcx0IUPAe59OJ+HJT6HS/Mv64iTyFuZRoYztu5Xkm7AgEblMNOeH94KGotaT6QJJkMsriYQM="
	set "crypto12=BwIAAACkAABSU0EyAAQAAAEAAQCz/H5OwXZw9WCCmg5maHa4W6sw5O6dG8IBJEOlQ3RZRayZAEd2fOHv2a105Q2EDkaQEnrWNfVFR9vgKClf2eGhtbhVNX8ew6oFeVzO7FHWAee2t1IW9nESetNXzjfkyqgli7M9nk5ZfH9GZQlvRK4AvCwx04WXIlgK5hvLA1UT4Nks2uD9FjifWV+0n+larUeaE1ALwyHtuJ/2JqPeFEaUaYJ+pLdZ64SrN9E3BytWHzInn7qXQxtdqzZf2NkWvf9rbrHihviHHbTucloeGpVUFtd2YxTQakRZPZ1gxLmyxdbNsodrkgZQpdgalU4Ch0d2oau57o/vtgnH53Fl9U3gmSrkSiNwvYACWS0hvSrhtxbE6Jc81m1DBT25r6oNAJ35vwyH4W9p9Nr5AAGJ7GzwRYIPQ3hdydn6YmiJC4CaNo9QCPc1g+FjlXgL3NyepMBnrDcNM5SDjvjF/mDKuNdOhc+PnXtseRI2c6iddfQdAwLynRuFyIhtqJl3p4v0pKzjIMxgRrRpQeq6MnvbJCnG/ldMZs6/5HAWXUDrCL5Bg8jTwaTWYRKSxD4BBo9lxVWeQyRkdrj1C4apX6CVab5/YY+pxj7sxMGvMpdQjGVTt++WBo53Yl09G/+DMkM2wUWwHYH3rnwOxOAvaAAGuy0O1IEp14sc4artmJtiDsa9TO8KDE0MKIuw8YceuUh4FLkvs6cW9KtmGY0crq92czffU7ykora+FnRQbRPPvoCQR8N8+zrP35sg0NSlpmXlARY="
	set "crypto13=BwIAAACkAABSU0EyAAQAAAEAAQD5FLY+u0lCnsF4u8jCNhKqVKNxOOdZ/dpZ62Q29P8NkM5dnf3ZkPxUB4Buq3gMm2z6ZRDtHt0sagJnnyNtZCQ4TMGMPTbpgbUIS4pombTc2o+5eWR3xiSQL3qo/A/Kl+CFLtXnGSxbES4FUiEB42v4YWXhaJdQaV5Iu5bMOG+PqMWMRxvuAyQRmmhCiWwUMzmbzXOmA46edTQuVZtO2BG3lYWllVWIhi6iNc/bE+ziJPnWRPe32GuxgcUWYWe1vNmlkhDDGvGfHx5O9P7Z5i2aiG9XaKoQJSoTlMcSjmUHlFlOUS7HG9iHvBwe8rcM2yfYFf+JzhX767iuz28Aay7GdXpb3p4uKzJGXTdozHXCjMAx5wmCRxA8zlpQjyWiQiv+3qzb5t1WPG9g5CcrtlP7J0O4v2CdAJiiQKlDivzyUDFo17oZnabq9CielU5ZhP8PJOk3li1xUr8VfNSwb1fZ9Se4C5Q1/2n7eB/JR/f5r+FdT+DhLJrUx0Ww13nGF2e4Q9bYQ9amZKmyrGgWS2zoI9cx9eYj0i0wDw2g0Wk2uuhLTaF/BcjFUfgUIrzJORlrSIYoqfuUto4y7Ux9+j2vjaVGwci7P6/P36suJv0Hsf4Qs9Fj5bVPOUckb08II3j1axfqhhGrJzZLGupYOYkrnT/++bz4ZHbRm5XuWbXsmqicoUO7jz++ocf5OFwmLNm3L3rLH4q9FvdupzGULU/Fv0p1v74Av31LYy/ktdMotByoeM1hRUBrXC60RTPdvyI="
	set "crypto14=BwIAAACkAABSU0EyAAQAAAEAAQDnwsaFhU3Gr7pwehh+U8CXlxz2nDnIqrOloxwTjnbm6uwhmLThcLv9km0/RFoTA4iniBswNR+tLjjEg9EyupGWrW5uTLzB7LoVVg4AOnaFWiM77lxQqiD2Npf82YlUvgGwYw5Fd1lJG6DO/8Ct5kRrEUc6LL58MWL84rKiwdI16A8ZMPOtRqTeJESGVsqvcm2KBHOrBEhcrHnOTsTSdREuO1TCJ/rW931V0sGEQ2fDmM+ZpK/P6U6UIvATrz1Ly/ypSGYIKBiDLGpSVQTsl5Ae37ZnVIlkkJnSSUt/z4n+3sLyKWWj8Oc8GONbIVWUhrvqfVyu/2puhgoOr4P4syfrreDRlxH9b3QS0yZO34seNlsZAXcqgRO7kLlMZYJq3C1VMhWSMVDeV0mvZwF99E6B+PqiUY9ctvehfHmGs4X2xcEDd42/qz1Kc+RfWIFsdZNFWr2WTrW0Sbu9qMdrtWVxojD/FWjgqiYx2mW/4fSEhBWXedVNpKUntf2kSItJ9ijgXRh0TUF7OWXdezTe0HTqyz6j2OFUqh5/fYj4R5DGLxYwKTKfJvvY8WHybSRxW1J+E2fYrGJH7Uxt26Q9fPbliWne9NJSh93+wb4g2dO7Qdb8s3LPLGjg+Ux6UA9hvZ8lRraQRn7KxW+sud2rFZeFtR3LiZRCNygz22Ua4EgVI/Db8CcAML6MGzoOEp7Ap4mGPuq/bbeR4AGD52D3qGwHHss3AHm2qRkfqBByKYCnk5j98IYmlrGPrWCM77TrDgg="
	set "crypto15=BwIAAACkAABSU0EyAAQAAAEAAQAb0w7FuYkeohGBNQqEe7cREziKQ8bQiLe/cUOdIefU1E86osTYAMZgSvR1rTrR4LrxQ39XvAPrak09X9wcSvd83C0Vym6NY4eaqi6bYJ5fQAdRWHWLTlIO3PwvWLuF5pKFcWv4VMqCqsHqXaTF/jUcx+A4WLTcnyIuimr8vsqi4TdqoHAp6tbGBqWTQ3Fjh5SDOQm28qDu7WpfYXcZdbXUR2E/RIsM67AIjml0LB9IXnY6uHCZuK8h45hd4FUrdfA9nMQEMg6hDVuPRywhY3BU0Albds9S3kH1D5pjwmT/chhO6cd6jzulwke96FS0Vus1LkwCDnwprHD1SjQ1XjjwUdY4jVnsb2sVGMAhO0FtYKtZqArz2Aae2KgJdq7y6gY5pI6dRRW7wyZaXerW3pcthINGUOP1Vfa519hHVOaq7C3bWXCVW9gYv8gle8F9uXJvLP20zh5GNrEukCXpLTcQuMEpTy3plUFfN2RydY7sgvol3iFQ6/jgIvEPTeKzasdv57wuJMBpXZaEwF9TOv4S+yR3/2nKnt0WjhKeuSYpD6jRABQnhfheM4j6Ukti8gUYlkMsemZ36jNCzojJdnGhzShHy8jvJ39qsrtSf7Bk12M1GK2NDv5R8M+hlnMx+HYgxmar0B+4cRd4yQH7w/b+Kvec4Lvm2nQVZCesasNozuNVoVIcNNV0VJ9jopPrLfDyvjQiaGMzLRSJdmo+yqW6lX5zT/+rxgpj1n+TvvjSoBywVxaVvVEs8oSpjoFJOAg="
	set "crypto16=BwIAAACkAABSU0EyAAgAAAEAAQCJQzvRuG6UOAd1yRKLPxiA3bxH3uDDZPSRaR2fZEUa2/Q7qshCs+yVRLzAt+vY4hUw8TDyROB6z1c0q421+fhWXRbxIZjT4TgkRuymGLt7dOVNJ75b3876iCnSH8WVRA/q2rX6HzK4u5IkYPt0mjRz58UunmNvLRG2iDmkuKvyFxSQUy6qXK8fHdLoN31VXEBAUbdtJWZ73ePZ0yLYivAKDPr4BlQSI5WNbY5MKSiVGNfHNoODRRUhuKW5CllsYxl7j7CdaM76DjseM5KLIGLfdca5pNocIuqIV3LxzikID6J5f+0NIJsJTBj+kynC7qwaOlHDIDsyxPfVP5EzgkG0b1UWBkJOsYdiQRVFWkIR+SL2Ez0xT9NrpN3vQQ3yRdEkpiZOeHoW+X3/kP4kEf7YoHw7DAHuYY/dqGe+7KCi6q+PgTmOrjIl3haIYDmrb3Ij8XXCmq0w7/tkGXv0WHmMeAjiW8oK17l4m4YFUX2qYiKPNyKGTQLTgKnYplps2OSHKpDN8m2T87Ww0W4I7+Hwek8M1N9XfTttdpm3aAYb8FWv84QGKOJGFnHMHMHnjq8Hvl0zKKchKXOrJeppNJKvLuhzRWONM/3wn/oFlHoIeUPB11GLvmL80dGSUJYdF7h//ukouO5abspe7WJe61+l7OvshnV7PPvPhQXBMxilyR/MDRr0DbGcZDdJW0Oc7CxdG1L8Lf+Na0+J1gylP+s9EIMZbiYhunXjhYH6crBeBKmauXmRTdts3JZhTLrFfT1ofp/UeG7oi9+sbabPUROh5aw2DeO6hso+Ao5ZeWHZuP4dAQH+P9q7+WzrWCdl3QtF5lKZ56HZQyLijY4LsjojJcmhFgEODAtWKuZThE2m2Wzlrd8lMJvOeg3G8+wNSuRcpq+pge9nZMku2KJE179t7YQcsoz1ug9fRxIjys0a0379MX7HyH8AJgQPSK9nI372RD/hhS0AU1azFyQHAarV7G18zBNxsyXux2Q4icT2rMwEZ4HNZt64mRYvYgIuKZABtWV9E9SB1Jy2ZDuVX1evZuXxLYYrXhrbGyNl3Arklcl9GXeilBXJubD3r7qdUnLObHkmWOkHXAxW/APSqC8hixN/vKV4lKZmgNwrZgQ7y9JguDijDSmiRzJ4antPQAgZA3j/QgMNo6DDb/ThD5S7fHmzA994hzYRdbMoVjq0mc1O/Y4PjTm9GbMvcYi5uTx/9J6hkfBorPC7miOwr2PdGyeRXzUbW9hwTQDnjvDU07uYiAiXHpM1XdL+sXoqR0rq2cMbuiCUZA60UYmGl7LM4SsccnuearM0MkOz8+m1gHg6LEog3eVebdKuueqMd1SiORQ63biI9DebQfV6USm2LpSP++GHDgq5zPhEh34pDtAOY0kVaeVWreb/edvKchiHJ7XzOqchV7irydtNA1c0fomlG8QFIUmhMcutMudqrMBHZYMZHf3xGQw42tPbYhfMgs92E37qIzmMdFeoaWdaUtoB26LMQnVLamEj19oanJRCv4MW2TWubT7zkBH0CBc="
	echo Default: %path2%
	echo Values: Path to Source Image File 'X:\...\ab*~.esd'
	call :FOOTER
	set /p path2=Path to Source Image File ^>
	for /f "tokens=3 delims=: " %%m in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:4 ^| findstr /i Build') do set b2=%%m
	cls
	call :HEADER "Decrypting Windows Store ESDs", " "
	esddecrypt.exe "%path2%" 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto1% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto2% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto3% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto4% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto5% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto6% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto7% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto8% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto9% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto10% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto11% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto12% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto13% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto14% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto15% 2>nul&&goto:DecryptEscape
	esddecrypt.exe "%path2%" %crypto16%
:DecryptEscape
	call :FOOTER
	pause
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ESDConvert
	cls
	call :HEADER "Windows Store ESD to WIM/ESD Export", " "
	CHOICE /C EC /N /M "[E]xport Install Index or [C]reate full ISO ?"
	if %errorlevel%==1 goto :ExportTo
	if %errorlevel%==2 goto :CreateFullISO
:ExportTo
	cls
	call :HEADER "Windows Store ESD to WIM/ESD Export", " "
	set index=4
	echo Default: %index%
	echo Values: Index to convert [install index is 4]
	echo:
	set ext1=esd
	echo Default: %ext1%
	echo Values: Type of Install Image ['esd' or 'wim']
	echo:
	echo Default: %path2%
	echo Values: Path to Store Image File 'X:\...\ab*~.esd'
	echo:
 	echo Default: %temppath%
	echo Values: Path to Work Folder 'X:\...'
	call :FOOTER
	set /p index=Index to convert ^>
	set /p ext1=Type of Install Image ^>
	set /p path2=Path to Store Image File ^>
	set /p temppath=Path to Work Folder ^>
	for /f "tokens=2 delims=: " %%m in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:%index% ^| findstr /i Edition') do set edition=%%m
	for /f "tokens=2 delims=: " %%m in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:%index% ^| findstr /i Version') do set b1=%%m
	echo:
	cls
	call :HEADER "Converting ESD Index %index% to install.%ext1%", " "
	if /i "%ext1%"=="wim" %wimlib-imagex% export "%path2%" %index% "%temppath%\install.%ext1%" --compress=maximum
	if /i "%ext1%"=="esd" %dism% /English /Export-Image /SourceImageFile:"%path2%" /SourceIndex:4 /DestinationImageFile:"%temppath%\install.%ext1%" /compress:recovery /CheckIntegrity
	if %b1% EQU 6.2.9200 set file=%~dp0prowmc8.txt&&goto :ExportToProWMC
	if %b1% EQU 6.3.9600 set file=%~dp0prowmc81.txt&&goto :ExportToProWMC
	call :FOOTER
	pause
	goto :Menu
:ExportToProWMC
	cls
	call :HEADER "Inject Activation Tokens", " "
	CHOICE /C IS /N /M "[I]nject or [S]kip ?"
	if %errorlevel%==1 goto :InjectTokens
	if %errorlevel%==2 goto :CreateFullISO
:InjectTokens
	cls
	call :HEADER "Inject Activation Tokens", " "
	%wimlib-imagex% update "%temppath%\install.%ext1%" 1 < %file%
	call :FOOTER
	pause
	goto :Menu
:CreateFullISO
	cls
	call :HEADER "Windows Store ESD to WIM/ESD Export", " "
	echo Default: %path2%
	echo Values: Path to Store Image File 'X:\...\ab*~.esd'
	echo:
	set ext1=esd
	echo Default: %ext1%
	echo Values: Type of Install Image ['esd' or 'wim']
	echo:
	if /i "%temppath%"=="" set temppath=%temp%
 	echo Default: %temppath%
	echo Values: Path to Work Folder 'X:\...'
	call :FOOTER
	set /p path2=Path to Store Image File ^>
	set /p ext1=Type of Install Image ^>
	set /p temppath=Path to Work Folder ^>
	echo:
	if not exist "%temppath%\DVD" md "%temppath%\DVD"
	cls
	call :HEADER "Applying ESD Index: 1 to: %temppath%\DVD", " "
	%dism% /English /apply-image /imagefile:"%path2%" /index:1 /applydir:"%temppath%\DVD"
	echo:
	del /s /q "%temppath%\DVD\MediaMeta.xml"
	if exist "%temppath%\DVD\sources\pid.txt" del /s /q "%temppath%\DVD\sources\pid.txt"
	call :FOOTER
	timeout /t 5
	cls
	call :HEADER "Exporting ESD Index: 2 to: %temppath%\DVD\sources\boot.wim", " "
	%wimlib-imagex% export "%path2%" 2 "%temppath%\DVD\sources\boot.wim" --compress=maximum --boot
	call :FOOTER
	timeout /t 5
	cls
	call :HEADER "Exporting ESD Index: 3 to: %temppath%\DVD\sources\boot.wim", " "
	%wimlib-imagex% export "%path2%" 3 "%temppath%\DVD\sources\boot.wim" --compress=maximum --boot
	call :FOOTER
	timeout /t 5
	cls
	call :HEADER "Exporting ESD Index: 4 to: %temppath%\DVD\sources\install.%ext1%", " "
	if /i "%ext1%"=="wim" %wimlib-imagex% export "%path2%" 4 "%temppath%\DVD\sources\install.%ext1%" --compress=maximum
	if /i "%ext1%"=="esd" %dism% /English /Export-Image /SourceImageFile:"%path2%" /SourceIndex:4 /DestinationImageFile:"%temppath%\DVD\sources\install.%ext1%" /compress:recovery /CheckIntegrity
	call :FOOTER
	timeout /t 5
	cls
	call :HEADER "Creating: %temppath%\DVD\sources\ei.cfg", "For Edition: %edition%"
	set file=%temppath%\DVD\sources\ei.cfg
	echo [EditionID]
	echo %edition%
	echo:
	echo [Channel]
	echo Retail
	echo:
	echo [VL]
	echo 0
	echo [EditionID] >%file%
	echo %edition% >>%file%
	echo: >>%file%
	echo [Channel] >>%file%
	echo Retail >>%file%
	echo: >>%file%
	echo [VL] >>%file%
	echo 0 >>%file%
	call :FOOTER
	timeout /t 5
	if /i "%edition%"=="ProfessionalWMC" (goto :UpdateProWMC) else (goto :WriteISO)
:UpdateProWMC
	for /f "tokens=2 delims=: " %%k in ('%dism% /english /Get-WimInfo /WimFile:"%path2%" /Index:4 ^| findstr /i Version') do set b1=%%k
	if %b1% EQU 6.2.9200 set file=%~dp0prowmc8.txt
	if %b1% EQU 6.3.9600 set file=%~dp0prowmc81.txt
	cls
	call :HEADER "Implementing Activation Tokens into: %edition%", " "
	%wimlib-imagex% update "%temppath%\DVD\sources\install.%ext1%" 1 < %file%
	call :FOOTER
	timeout /t 5
:WriteISO
	cls
	call :ISOCheckLoop "%temppath%\DVD\sources\install.%ext1%", 1
	call :HEADER "Creating: %temppath%\%label%.iso", "For Edition: %edition% %langid% %arch%"
	%oscdimg% -bootdata:2#p0,e,b"%temppath%\DVD\boot\etfsboot.com"#pEF,e,b"%temppath%\DVD\efi\Microsoft\boot\efisys.bin" ^
	-o -h -m -u2 -udfver102 ^
	-t03/18/2014,09:09:28 -g ^
	-l%label% ^
	%temppath%\DVD ^
	%temppath%\%label%.iso
	call :FOOTER
	CHOICE /C DB /N /M "[D]elete DVD Folder or [B]ack ?"
	if %errorlevel%==1 rd /s /q "%temppath%\DVD"& goto :Menu
	if %errorlevel%==2 goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Optimize
	cls
	call :HEADER "Optimize ESDs or WIMs", " "
	echo Default: %path2%
	echo Values: Path to Source Image File 'X:\...\ab*~.esd'
	call :FOOTER
	set /p path2=Path to Source Image File ^>
	call :FOOTER
	CHOICE /C RN /N /M "[R]ecompress or [N]ot ?"
	if %errorlevel%==1 set "recompress="
	if %errorlevel%==2 set "recompress=--recompress"
	call :EXTCheck "%path2%", "ext1"
	cls
	call :HEADER "Optimizing %ext1%", "%ext1%: %path2%"
	%wimlib-imagex% optimize "%path2%" --check %recompress%
	call :FOOTER
	pause
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Extract
	cls
	call :HEADER "Extract Files from ESDs or WIMs", " "
	echo Default: %path2%
	echo Values: Path to Source Image File 'X:\...\ab*~.esd'
	echo:
	if /i "%temppath%"=="" set temppath=%temp%
 	echo Default: %temppath%
	echo Values: Path to Work Folder 'X:\...'
	echo:
	if /i "%index%"=="" set index=1
 	echo Default: %index%
	echo Values: Index to Extract from
	call :FOOTER
	set /p path2=Path to Source Image File ^>
	set /p temppath=Path to Work Folder ^>
	set /p index=Index ^>
	call :EXTCheck "%path2%", "ext1"
	echo:
	CHOICE /C ST /N /M "[S]ingle or from [T]extfile ?"
	if %errorlevel%==1 goto :SingleExtract
	if %errorlevel%==2 goto :TextfileExtract
:SingleExtract
	call :FOOTER
	if /i "%folder%"=="" set folder=\Windows\System32\spp\store\2.0
	echo Default: %folder%
	echo Values: Path to File/Folder to Extract 'X:\...\ab*~.esd'
	call :FOOTER
	set /p folder=Path to File/Folder to Extract ^>
	cls
	call :BIGHEADER "Extracting %folder%", "%ext1%: %path2%", "To: %temppath%"
	%wimlib-imagex% extract "%path2%" %index% "%folder%" --dest-dir=%temppath%
	call :FOOTER
	pause
	goto :Menu
:TextfileExtract
	call :FOOTER
	if /i "%textfile%"=="" set textfile=%~dp0tokens.txt
	echo Default: %textfile%
	echo Values: Path to Text File
	call :FOOTER
	set /p textfile=Path to Text File ^>
	cls
	call :BIGHEADER "Extracting via %textfile% input", "%ext1%: %path2%", "To: %temppath%"
	%wimlib-imagex% extract "%path2%" %index% @%textfile% --dest-dir=%temppath%
	call :FOOTER
	pause
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Update
	cls
	call :HEADER "Update Files inside ESDs or WIMs", " "
	echo Default: %path2%
	echo Values: Path to Source Image File 'X:\...\ab*~.esd'
	echo:
	if /i "%textfile%"=="" set textfile=%~dp0prowmc.txt
	echo Default: %textfile%
	echo Values: Path to Text File
	call :FOOTER
	set /p path2=Path to Source Image File ^>
	set /p textfile=Path to Text File ^>
	call :EXTCheck "%path2%", "ext1"
	echo:
	CHOICE /C SA /N /M "[S]ingle or [A]ll Indices ?"
	if %errorlevel%==1 goto :SingleUpdate
	if %errorlevel%==2 goto :MultiUpdate
:SingleUpdate
	call :FOOTER
	if /i "%index%"=="" set index=1
 	echo Default: %index%
	echo Values: Index to Update
	call :FOOTER
	set /p index=Index ^>
	for /f "tokens=2 delims=: " %%i in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:%index% ^| findstr /i Architecture') do set arch=%%i
	for /f "tokens=1" %%m in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:%index% ^| findstr /i Default') do set langid=%%m
	for /f "tokens=2 delims=: " %%m in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:%index% ^| findstr /i Edition') do set edition=%%m
	cls
	call :BIGHEADER "Updating Index %index% %path2%", "%edition% %langid% %arch%", "From: %textfile%"
	%wimlib-imagex% update "%path2%" %index% --check < %textfile%
	call :FOOTER
	pause
	goto :Menu
:MultiUpdate
	set "z="
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do set z=%%a
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" ^| findstr /i Index') do (
		set ix=%%a
		set ix=!ix:"=!
		for /f "tokens=2 delims=: " %%i in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:!ix! ^| findstr /i Architecture') do set arch=%%i
		for /f "tokens=1" %%m in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:!ix! ^| findstr /i Default') do set langid=%%m
		for /f "tokens=2 delims=: " %%m in ('%dism% /English /Get-WimInfo /WimFile:"%path2%" /Index:!ix! ^| findstr /i Edition') do set edition=%%m
		cls
		call :BIGHEADER "%ext1%: %path2%", "%edition% %langid% %arch%", "Index !ix! of !z!"
		%wimlib-imagex% update "%path2%" !ix! --check < %textfile%
		call :FOOTER
		timeout /t 5
	)
	pause
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:DeleteIndex
	cls
	call :HEADER "Delete Menu", " "
	echo    [I] Delete Index with [ImageX]
	echo:
	echo    [D] Delete Index with [DISM]
	echo:
	echo    [W] Delete Index with [wimlib-imagex]
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C IDWB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :ImagexDelete
    if %errorlevel%==2 goto :DISMDelete
	if %errorlevel%==3 goto :WimlibDelete
    if %errorlevel%==4 goto:Menu
:WimlibDelete
	cls
	call :HEADER "Delete Index with [wimlib-imagex]", " "
	echo Default: %path2%
	echo Values: Path to Source Image File 'X:\...\ab*~.esd'
	echo:
	if /i "%index%"=="" set index=1
 	echo Default: %index%
	echo Values: Index to Delete
	call :FOOTER
	set /p path2=Path to Source Image File ^>
	set /p index=Index ^>
	call :EXTCheck "%path2%", "ext1"
	cls
	call :HEADER "Deleting Index %index% from %ext1%", "%ext1%: %path2%"
	%wimlib-imagex% delete "%path2%" %index% --check
	call :FOOTER
	echo It is recommended to 'Optimize' the %ext1% afterwards to delete unreferenced streams.
	echo:
	pause
	goto:DeleteIndex
:DISMDelete
	cls
	call :HEADER "Delete Index with [DISM]", " "
	echo Default: %path2%
	echo Values: Path to Source Image File 'X:\...\ab*~.esd'
	echo:
	if /i "%index%"=="" set index=1
 	echo Default: %index%
	echo Values: Index to Delete
	call :FOOTER
	set /p path2=Path to Source Image File ^>
	set /p index=Index ^>
	call :EXTCheck "%path2%", "ext1"
	cls
	call :HEADER "Deleting Index %index% from %ext1%", "%ext1%: %path2%"
	%dism% /Delete-Image /English /ImageFile:"%path2%" /Index:%index% /CheckIntegrity
	call :FOOTER
	echo It is recommended to 'Optimize' the %ext1% afterwards to delete unreferenced streams.
	echo:
	pause
	goto:DeleteIndex
:ImagexDelete
	cls
	call :HEADER "Delete Index with [ImageX]", " "
	echo Default: %path2%
	echo Values: Path to Source Image File 'X:\...\ab*~.esd'
	echo:
	if /i "%index%"=="" set index=1
 	echo Default: %index%
	echo Values: Index to Delete
	call :FOOTER
	set /p path2=Path to Source Image File ^>
	set /p index=Index ^>
	call :EXTCheck "%path2%", "ext1"
	cls
	call :HEADER "Deleting Index %index% from %ext1%", "%ext1%: %path2%"
	%imagex% /delete "%path2%" %index% /check
	call :FOOTER
	echo It is recommended to 'Optimize' the %ext1% afterwards to delete unreferenced streams.
	echo:
	pause
	goto:DeleteIndex
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ISOCreation
	cls
	call :HEADER "Create ISO from Folder", " "
 	echo Default: %temppath%
	echo Values: Path to Work Folder 'X:\...'
	echo:
 	echo Default: %isopath%
	echo Values: Path to ISO Output Folder 'X:\...'
	echo:
	if /i "%ext1%"=="" set ext1=wim
 	echo Default: %ext1%
	echo Values: Extension of Install File
	call :FOOTER
	set /p temppath=Path to Work Folder ^>
	set /p isopath=Path ISO Output Folder ^>
	set /p ext1=Extension of Install File ^>
	if not exist "%temppath%\sources\install.%ext1%" echo:&echo Install.%ext1% is missing.& echo:& pause&goto :Menu
	if not exist "%temppath%\sources\boot.wim" echo:&echo Boot.wim is missing.& echo:& pause&goto :Menu
	cls
	call :HEADER "Create ISO from Folder", " "
	call :WIMCheckLoop "%temppath%\sources\install.%ext1%"
	call :FOOTER
	pause
	if exist "%temppath%\sources\ei.cfg" (set exist=Rec) else (set exist=C)
:CreateCFG
	cls
	call :HEADER "%exist%reating: %temppath%\sources\ei.cfg", " "
	CHOICE /C CS /N /M "[C]ontinue or [S]kip ?"
	if %errorlevel%==1 del /s /q "%temppath%\sources\ei.cfg" >nul& goto :furtherCreateCFG
	if %errorlevel%==2 goto :ProWMCCheck
:furtherCreateCFG
	call :FOOTER
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%temppath%\sources\install.%ext1%" ^| findstr /i Index') do (
		set ix=%%a
		set ix=!ix:"=!
		for /f "tokens=2 delims=: " %%m in ('%dism% /English /Get-WimInfo /WimFile:"%temppath%\sources\install.%ext1%" /Index:!ix! ^| findstr /i Edition') do (
			set index=!ix!
			set edition=%%m
		)
	)
	if %index% equ 1 (
		echo Default: %edition%
		echo Values: Single Index Image Edition
		call :FOOTER
		set /p edition=Single Index Image Edition ^>
		call :FOOTER
	)
	set "file=%temppath%\sources\ei.cfg"
	if /i "%cfgchannel%"=="" set cfgchannel=Retail
 	echo Default: %cfgchannel%
	echo Values: Channel to Use 'Retail/Volume/OEM'
	call :FOOTER
	set /p cfgchannel=Channel to Use ^>
	call :FOOTER
	if %index% equ 1 (
		echo [EditionID]
		echo %edition%
	)
	echo [Channel]
	echo %cfgchannel%
	echo [VL]
	echo 0
	call :FOOTER
	echo Writing ei.cfg
	echo:
	timeout /t 5
	if %index% equ 1 (
		echo [EditionID] >%file%
		echo %edition% >>%file%
		echo [Channel] >>%file%
		echo %cfgchannel% >>%file%
		echo [VL] >>%file%
		echo 0 >>%file%
		goto :ProWMCCheck
	)
	echo [Channel] >%file%
	echo %cfgchannel% >>%file%
	echo [VL] >>%file%
	echo 0 >>%file%
	call :FOOTER
	timeout /t 5
:ProWMCCheck
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%temppath%\sources\install.%ext1%" ^| findstr /i Index') do (
		set ix=%%a
		set ix=!ix:"=!
		for /f "tokens=2 delims=: " %%m in ('%dism% /English /Get-WimInfo /WimFile:"%temppath%\sources\install.%ext1%" /Index:!ix! ^| findstr /i Edition') do (
			set index=!ix!
			if %%m equ ProfessionalWMC set edition=%%m&&goto :furtherProWMCCheck 
		)
	)
	goto :ISOWriteProcess
:furtherProWMCCheck
	cls
	call :HEADER "Implementing Activation Tokens into: %edition% Index: %index%", " "
	CHOICE /C CS /N /M "[C]ontinue or [S]kip ?"
	if %errorlevel%==1 goto :ProWMCUpdate
	if %errorlevel%==2 goto :ISOWriteProcess
:ProWMCUpdate
	for /f "tokens=2 delims=: " %%k in ('%dism% /English /Get-WimInfo /WimFile:"%temppath%\sources\install.%ext1%" /Index:%index% ^| findstr /i Version') do set b1=%%k
	if %b1% EQU 6.2.9200 set file=%~dp0prowmc8.txt
	if %b1% EQU 6.3.9600 set file=%~dp0prowmc81.txt
	cls
	call :HEADER "Implementing Activation Tokens into: %edition% Index: %index%", " "
	%wimlib-imagex% update "%temppath%\sources\install.%ext1%" %index% < %file%
	call :FOOTER
	timeout /t 5
:ISOWriteProcess
	cls
	call :HEADER "Creating ISO", " "
	pause
	call :ISOCheckLoop "%temppath%\sources\install.%ext1%", 1
 	echo Default: %label%
	echo Values: DVD Label
	call :FOOTER
	set /p label=DVD Label ^>
	cls
	call :HEADER "Creating: %isopath%\%label%.iso", " "
	%oscdimg% -bootdata:2#p0,e,b"%temppath%\boot\etfsboot.com"#pEF,e,b"%temppath%\efi\Microsoft\boot\efisys.bin" ^
	-o -h -m -u2 -udfver102 ^
	-t03/18/2014,09:09:28 -g ^
	-l%label% ^
	%temppath% ^
	%isopath%\%label%.iso
	call :FOOTER
	CHOICE /C DB /N /M "[D]elete DVD Folder or [B]ack ?"
	if %errorlevel%==1 rd /s /q "%temppath%"& goto :Menu
	if %errorlevel%==2 goto :Menu
	goto:Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ISOCheckLoop
	set "langid="
	for /f "tokens=2 delims=: " %%i in ('%dism% /english /Get-WimInfo /WimFile:"%~1" /Index:%~2 ^| findstr /i Architecture') do set arch=%%i
	for /f "tokens=1" %%m in ('%dism% /english /Get-WimInfo /WimFile:"%~1" /Index:%~2 ^| findstr /i Default') do set langid=%%m
	for /f "skip=1 tokens=4 delims=:." %%g in ('%dism% /english /Get-WimInfo /WimFile:"%~1" /Index:%~2 ^| findstr /i Version') do set verbuild=%%g
	for /f "tokens=2 delims=: " %%m in ('%dism% /english /Get-WimInfo /WimFile:"%~1" /Index:%~2 ^| findstr /i Edition') do set edition=%%m
	for /f "tokens=3 delims=: " %%p in ('%dism% /english /get-wiminfo /wimfile:"%~1" /index:%~2 ^| findstr /i "ServicePack Build"') do set svcbuild=%%p
	set tag=IR3
	if %svcbuild% EQU 17056 set tag=IR4
	if /i "%arch%"=="x86" set arch=X86
	if /i "%arch%"=="x64" set arch=X64
rem	set langid=!langid:*]=!
    for %%b in (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) do set langid=!langid:%%b=%%b!
	set label=%tag%_CCSA_%arch%FRER_%langid%_DV9
	if /i "%edition%"=="CoreSingleLanguage" set label=%tag%_CSLA_%arch%FRER_%langid%_DV9
	if /i "%edition%"=="ProfessionalWMC" set label=%tag%_CPWMCA_%arch%FRER_%langid%_DV9
	if /i "%edition%"=="CoreCountrySpecific" set label=%tag%_CCHA_%arch%FRER_%langid%_DV9
	if /i "%edition%"=="Core" set label=%tag%_CCOA_%arch%FRER_%langid%_DV9
	if /i "%edition%"=="CoreN" set label=%tag%_CCNA_%arch%FRER_%langid%_DV9
	if /i "%edition%"=="Professional" set label=%tag%_CPRA_%arch%FRER_%langid%_DV9
	if /i "%edition%"=="ProfessionalN" set label=%tag%_CPRNA_%arch%FRER_%langid%_DV9
	if /i "%edition%"=="CoreConnected" set label=%tag%_CCONA_%arch%FRER_%langid%_DV9
	if /i "%edition%"=="CoreConnectedN" set label=%tag%_CCONNA_%arch%FRER_%langid%_DV9
	if /i "%edition%"=="CoreConnectedSingleLanguage" set label=%tag%_CCSLA_%arch%FRER_%langid%_DV9
	if /i "%edition%"=="CoreConnectedCountrySpecific" set label=%tag%_CCCHA_%arch%FRER_%langid%_DV9
	if /i "%edition%"=="ProfessionalStudent" set label=%tag%_CPSA_%arch%FRER_%langid%_DV9
	if /i "%edition%"=="ProfessionalStudentN" set label=%tag%_CPSNA_%arch%FRER_%langid%_DV9
	if /i %verbuild% GTR 9600 if "%edition%"=="Professional" set label=%verbuild%_CPRA_%arch%FRER_%langid%_DV9
	if /i %verbuild% GTR 9600 if "%edition%"=="Enterprise" set label=%verbuild%_CENA_%arch%FREV_%langid%_DV9
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:WIMCheckLoop
	set "offset2="
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%~1" ^| findstr /i Index') do set ix=%%a && set ix=!ix:"=! && if !ix! geq 10 set "offset2= "
	echo:
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo IND%offset2%  MODIFIED    LANG   ARC  BUILD           INDEX NAME
	echo:
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	set "z2=0"
	set "offset="
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%~1" ^| findstr /i Index') do (
		set "lang="
		set ix=%%a
		set ix=!ix:"=!
		for /f "tokens=2 delims=: " %%i in ('%dism% /English /Get-WimInfo /WimFile:"%~1" /Index:!ix! ^| findstr /i Architecture') do set arch=%%i
		for /f "tokens=2 delims=: " %%k in ('%dism% /English /Get-WimInfo /WimFile:"%~1" /Index:!ix! ^| findstr /i Version') do set b1=%%k
		for /f "tokens=3 delims=: " %%m in ('%dism% /English /Get-WimInfo /WimFile:"%~1" /Index:!ix! ^| findstr /i Build') do set b2=%%m
		for /f "tokens=1" %%m in ('%dism% /English /Get-WimInfo /WimFile:"%~1" /Index:!ix! ^| findstr /i Default') do set lang=%%m
		for /f "tokens=2 delims=:-" %%m in ('%dism% /English /Get-WimInfo /WimFile:"%~1" /Index:!ix! ^| findstr /i Modified') do set mod=%%m
		for /f "tokens=2 delims=:" %%g in ('%dism% /English /Get-WimInfo /WimFile:"%~1" /Index:!ix! ^| findstr /i Name') do (
		set /a z2+=1
		if "!lang!"=="" set "lang=-----"
		if !arch! equ ^<undefined^> set "arch=---"
		if !b1! equ ^<undefined^> set "b1=--------"
		if !b2! equ ^<undefined^> set "b2=-----"
		if !z! gtr 12 set "offset=rem "
		if !z2! lss 10 (set "offset2=0") else (set "offset2=")
		echo [!offset2!!ix!] !mod! !lang!  !arch!  !b1!.!b2! %%g
		!offset!echo:
		)
	if !z2! equ 20 (
		call :FOOTER
		pause
		cls
		echo:
		echo €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
		Echo Checking !z! Ind%ex% 
		echo:
		echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
		echo %ext1%: %path2%
		echo:
		echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
		echo IND%offset2%  MODIFIED    LANG   ARC  BUILD           INDEX NAME
		echo:
		echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
		set "z2="
	))
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ShowPackages
	title ˛ WINDOWS IMAGING TOOLS ˛ by s1ave77
	cls
	call :HEADER "Checking Updates against integrated ones", " "
	echo Not Integrated:
	echo:
	set "y=0"
	for /f "tokens=*" %%a in (!deltafile!) do (
		set /a y+=1
		echo %%a
		if !y! equ 30 (
			call :FOOTER
			pause
			cls
			call :HEADER "Checking Updates against integrated ones", " "
			echo Not Integrated:
			echo:
			set "y=0"
	))
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:VersionCheck
	for /f "tokens=3 delims=: " %%a in ('"%dism% /image:"%~1" /Get-CurrentEdition /english" ^| findstr /i Image') do set offlineversion=%%a
	for /f "tokens=3 delims=: " %%g in ('"%dism% /image:"%~1" /Get-CurrentEdition /english" ^| findstr /i Edition') do set offlineedition=%%g
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:VersionCheckSet
		if "!offlineversion:~0,3!"=="6.1" set name1=Windows6.1
		if "!offlineversion:~0,3!"=="6.2" set name1=Windows8-RT
		if "!offlineversion:~0,3!"=="6.3" set name1=Windows8.1
		if "!offlineversion:~0,3!"=="10.0" set name1=Windows10.0
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:MountCheck
	set "z=0"
	for /f "tokens=4 delims= " %%a in ('%dism% /Get-MountedWimInfo /english ^| findstr /i Dir') do set /a z+=1
	if %z% equ 0 (
		cls
		call :HEADER "MOUNT CHECK FAILED", " "
		echo No mounted Images found.
		call :FOOTER
		pause
	)
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
:EXTCheck
	set "checkpath=%~1"
	set "check=%checkpath:~-3%"
	if "%check%"=="wim" set %~2=WIM
	if "%check%"=="esd" set %~2=ESD
	if "%check%"=="swm" set %~2=SWM
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:VersionCheck
	for /f "tokens=3 delims=: " %%a in ('"%dism% /image:"%~1" /Get-CurrentEdition /english" ^| findstr /i Image') do set offlineversion=%%a
	for /f "tokens=3 delims=: " %%a in ('"%dism% /image:"%~1" /Get-CurrentEdition /english" ^| findstr /i Edition') do set offlineedition=%%a
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:VersionCheckSet
		if "!offlineversion:~0,3!"=="6.1" set name1=Windows6.1
		if "!offlineversion:~0,3!"=="6.2" set name1=Windows8-RT
		if "!offlineversion:~0,3!"=="6.3" set name1=Windows8.1
		if "!offlineversion:~0,3!"=="10.0" set name1=Windows10.0
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:WriteInputLoop
	title ˛ WINDOWS IMAGING TOOLS ˛ by s1ave77
	cls
	call :HEADER "Add Updates", " "
 	echo Default: %outfile%
	echo Values: Path to Output File 'X:\..\test.txt'
	call :FOOTER
	set /p outfile=Set Path to Output File ^>
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:TextfileAddLoop
	set end=msu
	echo Default: %end%
	echo Values: Extension of Package i.e. 'msu'
	echo:
 	echo Default: %orderfile%
	echo Values: Path to Text File
	echo:
 	echo Default: %path8%
	echo Values: Path to Package Folder 'X:'
	call :FOOTER
	set /p end=Set Extension of Package ^>
	set /p orderfile=Set Path to Text File ^>
	set /p path8=Set Path to Package Folder ^>
	set "COUNT="
	set "z="
	set "y="
	if not exist "%TMP%\CABS" md "%TMP%\CABS"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:COLOROUT
	powershell "Write-Host '%~1' -foreground %~2"
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:BIGHEADER
	echo:
	echo €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:%~1
	echo:%~2
	echo:%~3
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
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
:FOOTER
	echo:
	echo ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
	echo:
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
