	@echo off
	title ў Reg Tweaks ў by s1ave77
:: Code by s1ave77
	color 3F
	mode con cols=87 lines=50
	setlocal ENABLEDELAYEDEXPANSION
	for /f "tokens=6 delims=[]. " %%G in ('ver') do set win=%%G
	for /f "tokens=2* delims= " %%a in ('reg query "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /v "PROCESSOR_ARCHITECTURE"') do if "%%b"=="AMD64" (set vera=x64) else (set vera=x86)
:MenuRT
	cls
	echo:
	echo    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
	echo:
	echo    ўўўўўўўўўўўўўўўўўўўўўўўўўўўўўў  R E G T W E A K S  ўўўўўўўўўўўўўўўўўўўўўўўўўўўўўў
	echo:
	echo    лплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплпл
	echo    лмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмл
	echo:
	echo    ААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААА
	echo:   А                                                                               А
	echo    == (X) Copy Elevation Files ============  (Y) ^<^<^< Delete ========================
	echo:   А                                                                               А
	echo    ААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААА
	echo:   А                                                                               А
	echo    == (C) MAINTENANCE I and II Menu ======== (D) ^<^<^< Delete ========================
	echo:   А                                                                               А
	echo    == (E) TOOLS Menu ======================= (F) ^<^<^< Delete ========================
	echo:   А                                                                               А
	echo    == (G) Power Menu ======================= (H) ^<^<^< Delete ========================
	echo:   А                                                                               А
	echo    == (I) Hybridboot Disable =============== (J) Hybridboot Enable =================
	echo:   А                                                                               А
	echo    == (K) Verbose On ======================= (L) ^<^<^< Delete ========================
	echo:   А                                                                               А
	echo    == (M) WIM Menu ========================= (N) ^<^<^< Delete ========================
	echo:   А                                                                               А
	echo    == (O) Win Defender Menu ================ (P) ^<^<^< Delete ========================
	echo:   А                                                                               А
	echo    == (Q) Show hidden Files/Folders ======== (R) ^<^<^< Hide ==========================
	echo:   А                                                                               А
	echo    == (S) Single Click ===================== (T) Double Click ======================
	echo:   А                                                                               А
	echo    == (U) Win General ====================== (V) ^<^<^< Delete ========================
	echo:   А                                                                               А
	echo    == (3) CMD/PS Context =================== (4) ^<^<^< Delete ========================
	echo:   А                                                                               А
	echo    == (5) Takeown Context ================== (6) ^<^<^< Delete ========================
	echo:   А                                                                               А
	echo    ААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААА
	echo:   А                                                                               А
	echo    == (0) WIN 10 MENU ==============================================================
	echo:   А                                                                               А
	echo    ААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААА
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo    ВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВ (B) BACK ВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВ
	echo:
 

:choiceRT
	CHOICE /C XYCDEFGHIJKLMNOPQRSTUV34560B /N /M " ўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўм/  YOUR CHOICE  \мўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўў                                        ў>"
	if %errorlevel%==1 goto :X
	if %errorlevel%==2 goto :Y
	if %errorlevel%==3 goto :C
	if %errorlevel%==4 goto :D
	if %errorlevel%==5 goto :E
	if %errorlevel%==6 goto :F
	if %errorlevel%==7 goto :G
	if %errorlevel%==8 goto :H
	if %errorlevel%==9 goto :I
	if %errorlevel%==10 goto :J
	if %errorlevel%==11 goto :K
	if %errorlevel%==12 goto :L
	if %errorlevel%==13 goto :M
	if %errorlevel%==14 goto :N
	if %errorlevel%==15 goto :O
	if %errorlevel%==16 goto :P
	if %errorlevel%==17 goto :Q
	if %errorlevel%==18 goto :R
	if %errorlevel%==19 goto :S
	if %errorlevel%==20 goto :T
	if %errorlevel%==21 goto :U
	if %errorlevel%==22 goto :V
	if %errorlevel%==23 goto :3
	if %errorlevel%==24 goto :4
	if %errorlevel%==25 goto :5
	if %errorlevel%==26 goto :6
	if %errorlevel%==27 goto :MenuWin10
	if %errorlevel%==28 (pushd %~dp0)&&(..\systemtools.cmd)

	goto :MenuRT

:MenuWin10
	cls
	echo:
	echo    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
	echo:
	echo    ўўўўўўўўўўўўўўўўўўўўўўўўўўўў  R E G T W E A K S II  ўўўўўўўўўўўўўўўўўўўўўўўўўўўўў
	echo:
	echo    лплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплплпл
	echo    лмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмлмл
	echo:
	echo    ААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААА
	echo:   А                                                                               А
	echo    == (1) Disable KMS Communication with MS  (2) ^<^<^< Delete ========================
	echo:   А                                                                               А
	echo    == (3) Enable Dark Design for Settings == (4) ^<^<^< Delete ========================
	echo:   А                                                                               А
	echo    == (5) DisableOSUpgrade =========================================================
	echo:   А                                                                               А
	echo    ААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААА
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo:   А                                                                               А
	echo    ААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААА
	echo:   А                                                                               А
	echo    ААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААА
	echo:   А                                                                               А
	echo    ВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВ (B) BACK ВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВ
	echo:
 

:choiceRT
	CHOICE /C 12345B /N /M " ўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўм/  YOUR CHOICE  \мўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўўў                                        ў>"
	if %errorlevel%==1 goto :7
	if %errorlevel%==2 goto :8
	if %errorlevel%==3 goto :DarkOn
	if %errorlevel%==4 goto :DarkOff
	if %errorlevel%==5 goto :DisableOSUpgrade
	if %errorlevel%==6 goto :MenuRT

	goto :MenuWin10

:X
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Copy Elevation Files  
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	pushd "%~dp0"
	xcopy "files\E\*.*" /s "%windir%\System32\" /Q /Y
	xcopy "..\nircmd\%vera%\nircmd.exe" /s "%windir%\System32\" /Q /Y
	pause
	goto :MenuRT

:Y
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Delete Elevation Files  
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	pushd "%~dp0"
	del /s /q "%windir%\System32\elevate.vbs"
	del /s /q "%windir%\System32\elevate.cmd"
	del /s /q "%windir%\System32\nircmd.exe"
	pause
	goto :MenuRT

:C
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Register MAINTENANCE/MAINTENANCE II
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
:: MAINTENANCE
	reg add "HKCR\DesktopBackground\Shell\MAINTENANCE" /v "MUIVerb" /t REG_SZ /d "MAINTENANCE" /f
	reg add "HKCR\DesktopBackground\Shell\MAINTENANCE" /v "SubCommands" /t REG_SZ /d "mouse;keyboard;|;taskmanager;systempanel;admintools;|;DeviceManager;defaultprograms;programsandfeatures;|;network;windowsupdate;windowsfirewall;userpasswords2" /f
	reg add "HKCR\DesktopBackground\Shell\MAINTENANCE" /v "Icon" /t REG_SZ /d "shell32.dll,272" /f
	reg add "HKCR\DesktopBackground\Shell\MAINTENANCE" /v "Position" /t REG_SZ /d "top" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKCR\AllFileSystemObjects\shell\MAINTENANCE" /v "MUIVerb" /t REG_SZ /d "MAINTENANCE" /f
	reg add "HKCR\AllFileSystemObjects\shell\MAINTENANCE" /v "SubCommands" /t REG_SZ /d "mouse;keyboard;|;taskmanager;systempanel;admintools;|;DeviceManager;defaultprograms;programsandfeatures;|;network;windowsupdate;windowsfirewall;userpasswords2" /f
	reg add "HKCR\AllFileSystemObjects\shell\MAINTENANCE" /v "Icon" /t REG_SZ /d "shell32.dll,272" /f
	reg add "HKCR\AllFileSystemObjects\shell\MAINTENANCE" /v "Position" /t REG_SZ /d "top" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\mouse" /ve /t REG_SZ /d "Mouse" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\mouse" /v "Icon" /t REG_SZ /d "setupapi.dll,1" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\mouse\command" /ve /t REG_SZ /d "control /name Microsoft.Mouse" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\keyboard" /ve /t REG_SZ /d "Keyboard" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\keyboard" /v "Icon" /t REG_SZ /d "setupapi.dll,2" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\keyboard\command" /ve /t REG_SZ /d "control /name Microsoft.Keyboard" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\taskmanager" /ve /t REG_SZ /d "Taskmanager" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\taskmanager" /v "Icon" /t REG_SZ /d "mstsc.exe,9" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\taskmanager\command" /ve /t REG_SZ /d "Taskmgr.exe" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\systempanel" /ve /t REG_SZ /d "Systempanel" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\systempanel" /v "Icon" /t REG_SZ /d "shell32.dll,34" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\systempanel\command" /ve /t REG_SZ /d "control /name Microsoft.System" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\admintools" /ve /t REG_SZ /d "Admin Tools" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\admintools" /v "Icon" /t REG_SZ /d "imageres.dll,109" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\admintools\command" /ve /t REG_SZ /d "control /name Microsoft.AdministrativeTools" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\DeviceManager" /ve /t REG_SZ /d "Device Manager" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\DeviceManager" /v "Icon" /t REG_SZ /d "dmdskres.dll,0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\DeviceManager\command" /ve /t REG_SZ /d "control /name Microsoft.DeviceManager" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\defaultprograms" /ve /t REG_SZ /d "Default Programs" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\defaultprograms" /v "Icon" /t REG_SZ /d "shell32.dll,261" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\defaultprograms\command" /ve /t REG_SZ /d "control /name Microsoft.DefaultPrograms" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\programsandfeatures" /ve /t REG_SZ /d "Programs and Features" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\programsandfeatures" /v "Icon" /t REG_SZ /d "shell32.dll,162" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\programsandfeatures\command" /ve /t REG_SZ /d "control /name Microsoft.ProgramsAndFeatures" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\network" /ve /t REG_SZ /d "Network and Sharing Center" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\network" /v "Icon" /t REG_SZ /d "shell32.dll,276" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\network\command" /ve /t REG_SZ /d "control /name Microsoft.NetworkAndSharingCenter" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\windowsupdate" /ve /t REG_SZ /d "Windows Update" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\windowsupdate" /v "Icon" /t REG_SZ /d "shell32.dll,46" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\windowsupdate\command" /ve /t REG_SZ /d "control /name Microsoft.WindowsUpdate" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\windowsfirewall" /ve /t REG_SZ /d "Windows Firewall" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\windowsfirewall" /v "Icon" /t REG_SZ /d "imageres.dll,212" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\windowsfirewall\command" /ve /t REG_SZ /d "control /name Microsoft.WindowsFirewall" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\userpasswords2" /ve /t REG_SZ /d "User Accounts" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\userpasswords2" /v "icon" /t REG_SZ /d "imageres.dll,74" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\userpasswords2\command" /ve /t REG_SZ /d "control userpasswords2" /f
:: MAINTENANCE II
	reg add "HKCR\DesktopBackground\Shell\MAINTENANCE.II" /v "MUIVerb" /t REG_SZ /d "MAINTENANCE II" /f
	reg add "HKCR\DesktopBackground\Shell\MAINTENANCE.II" /v "SubCommands" /t REG_SZ /d "msconfig;compmgmt;Eventvwr;|;services;diskmgmt;gpedit" /f
	reg add "HKCR\DesktopBackground\Shell\MAINTENANCE.II" /v "Icon" /t REG_SZ /d "shell32.dll,272" /f
	reg add "HKCR\DesktopBackground\Shell\MAINTENANCE.II" /v "Position" /t REG_SZ /d "top" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKCR\AllFileSystemObjects\shell\MAINTENANCE.II" /v "MUIVerb" /t REG_SZ /d "MAINTENANCE II" /f
	reg add "HKCR\AllFileSystemObjects\shell\MAINTENANCE.II" /v "SubCommands" /t REG_SZ /d "msconfig;compmgmt;Eventvwr;|;services;diskmgmt;gpedit" /f
	reg add "HKCR\AllFileSystemObjects\shell\MAINTENANCE.II" /v "Icon" /t REG_SZ /d "shell32.dll,272" /f
	reg add "HKCR\AllFileSystemObjects\shell\MAINTENANCE.II" /v "Position" /t REG_SZ /d "top" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\msconfig" /ve /t REG_SZ /d "System Configuration" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\msconfig" /v "icon" /t REG_SZ /d "msconfig.exe" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\msconfig\command" /ve /t REG_SZ /d "msconfig.exe" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\compmgmt" /ve /t REG_SZ /d "Computer Management" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\compmgmt" /v "Icon" /t REG_SZ /d "imageres.dll,104" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\compmgmt\command" /ve /t REG_SZ /d "elevate compmgmt.msc" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Eventvwr" /ve /t REG_SZ /d "Event Viewer" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Eventvwr" /v "Icon" /t REG_SZ /d "imageres.dll,93" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Eventvwr\command" /ve /t REG_SZ /d "elevate Eventvwr.msc" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\services" /ve /t REG_SZ /d "Services" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\services" /v "Icon" /t REG_SZ /d "dsuiext.dll,35" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\services\command" /ve /t REG_SZ /d "elevate services.msc" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\diskmgmt" /ve /t REG_SZ /d "Disk Management" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\diskmgmt" /v "Icon" /t REG_SZ /d "shell32.dll,8" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\diskmgmt\command" /ve /t REG_SZ /d "elevate diskmgmt.msc" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\gpedit" /ve /t REG_SZ /d "Group Policy Editor" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\gpedit" /v "Icon" /t REG_SZ /d "shell32.dll,158" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\gpedit\command" /ve /t REG_SZ /d "elevate gpedit.msc" /f
	pause
	goto :MenuRT

:D
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Unregister MAINTENANCE/MAINTENANCE II
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
:: UNREG MAINTENANCE
	reg delete "HKCR\DesktopBackground\Shell\MAINTENANCE" /f
	reg delete "HKCR\AllFileSystemObjects\shell\MAINTENANCE" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\mouse" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\mouse\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\keyboard" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\keyboard\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\taskmanager" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\taskmanager\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\systempanel" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\systempanel\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\admintools" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\admintools\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\DeviceManager" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\DeviceManager\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\defaultprograms" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\defaultprograms\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\programsandfeatures" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\programsandfeatures\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\network" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\network\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\windowsupdate" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\windowsupdate\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\windowsfirewall" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\windowsfirewall\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\userpasswords2" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\userpasswords2\command" /f
:: UNREG MAINTENANCE II
	reg delete "HKCR\DesktopBackground\Shell\MAINTENANCE.II" /f
	reg delete "HKCR\AllFileSystemObjects\shell\MAINTENANCE.II" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\msconfig" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\msconfig\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\compmgmt" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\compmgmt\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Eventvwr" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Eventvwr\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\services" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\services\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\diskmgmt" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\diskmgmt\command" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\gpedit" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\gpedit\command" /f
	pause
	goto :MenuRT

:E
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Register TOOLS 
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "HKCR\DesktopBackground\Shell\TOOLS" /v "MUIVerb" /t REG_SZ /d "TOOLS" /f
	reg add "HKCR\DesktopBackground\Shell\TOOLS" /v "SubCommands" /t REG_SZ /d "cmd;ps;Explorer;Restart_Explorer;|;magnify;calc;CharacterMap;Paint;SnippingTool;|;Regedit;" /f
	reg add "HKCR\DesktopBackground\Shell\TOOLS" /v "Icon" /t REG_SZ /d "imageres.dll,220" /f
	reg add "HKCR\DesktopBackground\Shell\TOOLS" /v "Position" /t REG_SZ /d "top" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKCR\AllFileSystemObjects\shell\TOOLS" /v "MUIVerb" /t REG_SZ /d "TOOLS" /f
	reg add "HKCR\AllFileSystemObjects\shell\TOOLS" /v "SubCommands" /t REG_SZ /d "cmd;ps;Explorer;Restart_Explorer;|;magnify;calc;CharacterMap;Paint;SnippingTool;|;Regedit;" /f
	reg add "HKCR\AllFileSystemObjects\shell\TOOLS" /v "Icon" /t REG_SZ /d "imageres.dll,220" /f
	reg add "HKCR\AllFileSystemObjects\shell\TOOLS" /v "Position" /t REG_SZ /d "top" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\cmd" /ve /t REG_SZ /d "CMD (Admin)" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\cmd" /v "icon" /t REG_SZ /d "cmd.exe" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\cmd\command" /ve /t REG_SZ /d "elevate cmd.exe" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\ps" /ve /t REG_SZ /d "Powershell (Admin)" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\ps" /v "icon" /t REG_SZ /d "imageres.dll,-5372" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\ps\command" /ve /t REG_SZ /d "elevate C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Explorer" /ve /t REG_SZ /d "Explorer" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Explorer" /v "icon" /t REG_SZ /d "Explorer.exe" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Explorer\command" /ve /t REG_SZ /d "explorer.exe" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Restart_Explorer" /ve /t REG_SZ /d "Restart Explorer" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Restart_Explorer" /v "icon" /t REG_SZ /d "imageres.dll,-5339" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Restart_Explorer" /v "Extended" /t REG_SZ /d "" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Restart_Explorer\Command" /ve /t REG_SZ /d "nircmd.exe restartexplorer"
:: ------------------------------------------------------------------------------------------------------------------------------------------------- 
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\magnify" /ve /t REG_SZ /d "Magifier" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\magnify" /v "icon" /t REG_SZ /d "magnify.exe" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\magnify\command" /ve /t REG_SZ /d "magnify.exe" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\calc" /ve /t REG_SZ /d "Calculator" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\calc" /v "icon" /t REG_SZ /d "calc.exe" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\calc\command" /ve /t REG_SZ /d "calc.exe" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\CharacterMap" /ve /t REG_SZ /d "Character Map" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\CharacterMap" /v "icon" /t REG_SZ /d "charmap.exe" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\CharacterMap\command" /ve /t REG_SZ /d "charmap.exe" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Paint" /ve /t REG_SZ /d "Paint" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Paint" /v "icon" /t REG_SZ /d "mspaint.exe" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Paint\Command" /ve /t REG_SZ /d "mspaint.exe" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Regedit" /ve /t REG_SZ /d "Regedit" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Regedit" /v "icon" /t REG_SZ /d "Regedit.exe" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Regedit\command" /ve /t REG_SZ /d "Regedit.exe" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\SnippingTool" /ve /t REG_SZ /d "Snipping Tool" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\SnippingTool" /v "icon" /t REG_SZ /d "SnippingTool.exe" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\SnippingTool\command" /ve /t REG_SZ /d "SnippingTool.exe" /f
	pause
	goto :MenuRT

:F
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Unregister TOOLS 
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg delete "HKCR\DesktopBackground\Shell\TOOLS" /f
	reg delete "HKCR\AllFileSystemObjects\shell\TOOLS" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\cmd" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\ps" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Explorer" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Restart_Explorer" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\magnify" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\calc" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\CharacterMap" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Paint" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Regedit" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\SnippingTool" /f
	pause
	goto :MenuRT


:G
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Register Power Menu
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "HKCR\AllFileSystemObjects\shell\Power Menu" /v "MUIVerb" /t REG_SZ /d "Power Menu" /f
	reg add "HKCR\AllFileSystemObjects\shell\Power Menu" /v "SubCommands" /t REG_SZ /d "lock;logoff;switch;sleep;hibernate;restart;shutdown;hybridshutdown" /f
	reg add "HKCR\AllFileSystemObjects\shell\Power Menu" /v "Icon" /t REG_SZ /d "shell32.dll,215" /f
	reg add "HKCR\AllFileSystemObjects\shell\Power Menu" /v "Position" /t REG_SZ /d "bottom" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKCR\DesktopBackground\Shell\Power Menu" /v "MUIVerb" /t REG_SZ /d "Power Menu" /f
	reg add "HKCR\DesktopBackground\Shell\Power Menu" /v "SubCommands" /t REG_SZ /d "lock;logoff;switch;sleep;hibernate;restart;shutdown;hybridshutdown" /f
	reg add "HKCR\DesktopBackground\Shell\Power Menu" /v "Icon" /t REG_SZ /d "shell32.dll,215" /f
	reg add "HKCR\DesktopBackground\Shell\Power Menu" /v "Position" /t REG_SZ /d "bottom" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\lock" /ve /t REG_SZ /d "Lock" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\lock" /v "Icon" /t REG_SZ /d "shell32.dll,44" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\lock\command" /ve /t REG_SZ /d "Rundll32 User32.dll,LockWorkStation" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\logoff" /ve /t REG_SZ /d "Log Off" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\logoff" /v "Icon" /t REG_SZ /d "shell32.dll,263" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\logoff\command" /ve /t REG_SZ /d "Shutdown -l" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\switch" /ve /t REG_SZ /d "Switch User" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\switch" /v "Icon" /t REG_SZ /d "shell32.dll,264" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\switch\command" /ve /t REG_SZ /d "tsdiscon.exe" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\sleep" /ve /t REG_SZ /d "Sleep" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\sleep" /v "Icon" /t REG_SZ /d "shell32.dll,217" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\sleep\command" /ve /t REG_SZ /d "rundll32.exe powrprof.dll,SetSuspendState Sleep" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\hibernate" /ve /t REG_SZ /d "Hibernate" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\hibernate" /v "Icon" /t REG_SZ /d "shell32.dll,122" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\hibernate\command" /ve /t REG_SZ /d "Shutdown -h" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\restart" /ve /t REG_SZ /d "Restart" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\restart" /v "Icon" /t REG_SZ /d "shell32.dll,176" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\restart\command" /ve /t REG_SZ /d "Shutdown -r -f -t 00" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\shutdown" /ve /t REG_SZ /d "Shut Down" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\shutdown" /v "Icon" /t REG_SZ /d "shell32.dll,215" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\shutdown\command" /ve /t REG_SZ /d "Shutdown -s -f -t 00" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\hybridshutdown" /ve /t REG_SZ /d "Shut Down (Hybrid)" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\hybridshutdown" /v "Icon" /t REG_SZ /d "shell32.dll,112" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\hybridshutdown\command" /ve /t REG_SZ /d "Shutdown -s -f -t 00 -hybrid" /f
	pause
	goto :MenuRT

:H
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Unregister Power Menu
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg delete "HKCR\AllFileSystemObjects\shell\Power Menu" /f
	reg delete "HKCR\DesktopBackground\Shell\Power Menu" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\lock" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\logoff" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\switch" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\sleep" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\hibernate" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\restart" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\shutdown" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\hybridshutdown" /f
	pause
	goto :MenuRT


:I
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
	echo:
	echo Hybridboot Disable
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
	pause
	goto :MenuRT

:J
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Hybridboot Enable 
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "1" /f
	pause
	goto :MenuRT

:K
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Verbose ON 
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "VerboseStatus" /t REG_DWORD /d "1" /f
	pause
	goto :MenuRT

:L
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Verbose OFF 
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "VerboseStatus" /t REG_DWORD /d "0" /f
	pause
	goto :MenuRT

:M
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Register WIM Menu
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Windows\System32\Dism.exe" /t REG_SZ /d "RUNASADMIN" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKCR\.WIM" /ve /t REG_SZ /d "WIMfile" /f
	reg add "HKCR\WIMfile\DefaultIcon" /ve /t REG_EXPAND_SZ /d "%%SystemRoot%%\System32\isoburn.exe" /f
	reg add "HKCR\WIMfile\Shell\.Wim" /v "MUIVerb" /t REG_SZ /d "Windows Imaging Format (WIM)" /f
	reg add "HKCR\WIMfile\Shell\.Wim" /v "SubCommands" /t REG_SZ /d "Mkdir zMountdir zPackage;.Wim Info;DISM log file;Mount # 1 R/W | if boot.wim is PE;Mount # 2 R/W | if boot.wim is Default;Mount # 3 R/W;Mount # 4 R/W;Mount # 5 R/W;Drivers Packages Features To Desktop;Add-Driver's;Add-Package *.cab *.msu;Unmount + Save zMountDir;Unmount NO SAVE zMountDir;Cleanup + Delete zMountDir;IMAGEX .Wim Info;IMAGEX compress export" /f
	reg add "HKCR\WIMfile\Shell\.Wim" /v "icon" /t REG_SZ /d "isoburn.exe" /f
	reg add "HKCR\WIMfile\Shell\.Wim\command" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mkdir zMountdir zPackage" /v "MUIVerb" /t REG_SZ /d "Mkdir zMountdir zPackage" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mkdir zMountdir zPackage\command" /ve /t REG_SZ /d "cmd /c if not exist C:\zMountDir Mkdir C:\zMountDir | cmd /c if not exist C:\zPackage Mkdir C:\zPackage" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\[ Mkdir zPackage ]" /v "MUIVerb" /t REG_SZ /d "[ Mkdir zPackage ]" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\[ Mkdir zPackage ]\command" /ve /t REG_SZ /d "cmd /c if not exist C:\zPackage Mkdir C:\zPackage" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\.Wim Info" /v "MUIVerb" /t REG_SZ /d ".Wim Info" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\.Wim Info\command" /ve /t REG_SZ /d "cmd /c C:\Windows\System32\Dism /Get-WimInfo /WimFile:\"%%1\" && Pause" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\DISM log file" /ve /t REG_SZ /d "DISM log file" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\DISM log file\command" /ve /t REG_SZ /d "explorer /select, C:\Windows\Logs\DISM\Dism.log" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Add-Driver's" /v "MUIVerb" /t REG_SZ /d "Add-Driver's" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Add-Driver's\command" /ve /t REG_SZ /d "cmd /k C:\Windows\System32\Dism /image:C:\zMountDir /Add-Driver /driver:C:\Drivers /recurse" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 1 R/W | if boot.wim is PE" /v "MUIVerb" /t REG_SZ /d "Mount # 1 R/W | if boot.wim is PE" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 1 R/W | if boot.wim is PE\command" /ve /t REG_SZ /d "cmd /k C:\Windows\System32\Dism /mount-wim /wimfile:\"%%1\" /index:1 /mountdir:C:\zMountDir" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 2 R/W | if boot.wim is Default" /v "MUIVerb" /t REG_SZ /d "Mount # 2 R/W | if boot.wim is Default" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 2 R/W | if boot.wim is Default\command" /ve /t REG_SZ /d "cmd /k C:\Windows\System32\Dism /mount-wim /wimfile:\"%%1\" /index:2 /mountdir:C:\zMountDir" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 3 R/W" /v "MUIVerb" /t REG_SZ /d "Mount # 3 R/W" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 3 R/W\command" /ve /t REG_SZ /d "cmd /k C:\Windows\System32\Dism /mount-wim /wimfile:\"%%1\" /index:3 /mountdir:C:\zMountDir" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 4 R/W" /v "MUIVerb" /t REG_SZ /d "Mount # 4 R/W" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 4 R/W\command" /ve /t REG_SZ /d "cmd /k C:\Windows\System32\Dism /mount-wim /wimfile:\"%%1\" /index:4 /mountdir:C:\zMountDir" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 5 R/W" /v "MUIVerb" /t REG_SZ /d "Mount # 5 R/W" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 5 R/W\command" /ve /t REG_SZ /d "cmd /k C:\Windows\System32\Dism /mount-wim /wimfile:\"%%1\" /index:5 /mountdir:C:\zMountDir" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Drivers Packages Features To Desktop" /f
	pause
	goto :MenuRT

:N
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Unregister WIM Menu
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg delete "HKCR\.wim" /f
	reg delete "HKCR\*\shell\.WIM" /f
	reg delete "HKCR\WIMfile" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mkdir zMountdir zPackage" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\.Wim Info" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\DISM log file" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Drivers Packages Features To Desktop" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Add-Driver's" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 1 R/W | if boot.wim is PE" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 2 R/W | if boot.wim is Default" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 3 R/W" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 4 R/W" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Mount # 5 R/W" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Packages *.cab *.msu" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Add-Package *.cab *.msu" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Unmount + Save zMountDir" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Unmount NO SAVE zMountDir" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Cleanup + Delete zMountDir" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\IMAGEX .Wim Info" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\IMAGEX compress export" /f
	reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Windows\System32\Dism.exe" /f
	reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Windows\System32\Dism.exe" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\[ Mkdir zMountdir ]" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\[ Mkdir zPackage ]" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Inject Drivers" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Get-Drivers To Desktop" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Get-Packages To Desktop" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Get-Features To Desktop" /f
	pause
	goto :MenuRT

:O
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Register Win Defender Menu
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "HKCR\folder\shell\WindowsDefender" /v "MUIVerb" /t REG_SZ /d "Scan With Windows Defender" /f
	reg add "HKCR\folder\shell\WindowsDefender" /v "Icon" /t REG_SZ /d "%%ProgramFiles%%\Windows Defender\EppManifest.dll" /f
	reg add "HKCR\folder\shell\WindowsDefender" /ve /t REG_SZ /d "" /f
	reg add "HKCR\folder\shell\WindowsDefender\Command" /ve /t REG_SZ /d "\"C:\Program Files\Windows Defender\MpCmdRun.exe\" -scan -scantype 3 -SignatureUpdate -file %%1" /f
	reg add "HKCR\DesktopBackground\Shell\WindowsDefender" /v "MUIVerb" /t REG_SZ /d "Windows Defender" /f
	reg add "HKCR\DesktopBackground\Shell\WindowsDefender" /v "SubCommands" /t REG_SZ /d "WD-Settings;WD-Update;WD-Update-QS;WD-QuickScan;WD-FullScan" /f
	reg add "HKCR\DesktopBackground\Shell\WindowsDefender" /v "Icon" /t REG_SZ /d "%%ProgramFiles%%\Windows Defender\EppManifest.dll" /f
	reg delete "HKCR\DesktopBackground\Shell\WindowsDefender" /v "Position" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-Settings" /ve /t REG_SZ /d "Settings" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-Settings" /v "HasLUAShield" /t REG_SZ /d "" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-Settings" /v "Icon" /t REG_SZ /d "%%ProgramFiles%%\Windows Defender\EppManifest.dll" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-Settings\command" /ve /t REG_SZ /d "\"C:\Program Files\Windows Defender\MSASCui.exe\" -Settings" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-Update" /ve /t REG_SZ /d "Update" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-Update" /v "Icon" /t REG_SZ /d "%%ProgramFiles%%\Windows Defender\EppManifest.dll" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-Update\command" /ve /t REG_SZ /d "\"C:\Program Files\Windows Defender\MSASCui.exe\" -Update" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-Update-QS" /ve /t REG_SZ /d "Update and Quick Scan" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-Update-QS" /v "Icon" /t REG_SZ /d "%%ProgramFiles%%\Windows Defender\EppManifest.dll" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-Update-QS\command" /ve /t REG_SZ /d "\"C:\Program Files\Windows Defender\MSASCui.exe\" -UpdateAndQuickScan" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-QuickScan" /ve /t REG_SZ /d "Quick Scan" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-QuickScan" /v "Icon" /t REG_SZ /d "%%ProgramFiles%%\Windows Defender\EppManifest.dll" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-QuickScan\command" /ve /t REG_SZ /d "\"C:\Program Files\Windows Defender\MSASCui.exe\" -QuickScan" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-FullScan" /ve /t REG_SZ /d "Full Scan" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-FullScan" /v "Icon" /t REG_SZ /d "%%ProgramFiles%%\Windows Defender\EppManifest.dll" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-FullScan\command" /ve /t REG_SZ /d "\"C:\Program Files\Windows Defender\MSASCui.exe\" -FullScan" /f
	pause
	goto :MenuRT

:P
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Unregister Win Defender Menu
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg delete "HKCR\folder\shell\WindowsDefender" /f
	reg delete "HKCR\folder\shell\WindowsDefender\Command" /f
	reg delete "HKCR\DesktopBackground\Shell\WindowsDefender" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-Settings" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-Update" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-Update-QS" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-QuickScan" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WD-FullScan" /f
	pause
	goto :MenuRT

:Q
	cls
	set "regpath=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Show hidden Files/Folders/Extensions
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "%regpath%" /v Hidden /t REG_DWORD /d 1 /f
	reg add "%regpath%" /v HideFileExt /t REG_DWORD /d 0 /f
	reg add "%regpath%" /v ShowSuperHidden /t REG_DWORD /d 1 /f
	pause
	goto :MenuRT

:R
	cls
	set "regpath=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Hide hidden Files/Folders/Extensions
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "%regpath%" /v Hidden /t REG_DWORD /d 2 /f
	reg add "%regpath%" /v HideFileExt /t REG_DWORD /d 1 /f
	reg add "%regpath%" /v ShowSuperHidden /t REG_DWORD /d 0 /f
	pause
	goto :MenuRT

:S
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Single Click
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShellState" /t REG_BINARY /d "240000001720000000000000000000000000000001000000120000000000000022000000" /f
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "IconUnderline" /t REG_DWORD /d "2" /f
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "AutoCheckSelect" /t REG_DWORD /d "0" /f
	pause
	goto :MenuRT

:T
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Double Click
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShellState" /t REG_BINARY /d "240000003720000000000000000000000000000001000000120000000000000022000000" /f
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "IconUnderline" /t REG_DWORD /d "2" /f
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "ShellState" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "IconUnderline" /t REG_DWORD /d "2" /f
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "AutoCheckSelect" /t REG_DWORD /d "1" /f
	pause
	goto :MenuRT

:U
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Enable 8.1 Features
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v "DisableConfig" /t REG_DWORD /d "1" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v "DisableSR" /t REG_DWORD /d "1" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "EnableBackupForWin8Apps" /t REG_DWORD /d "0" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_DWORD /d "1" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StartPage" /v "MakeAllAppsDefault" /t REG_DWORD /d "1" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SkyDriveOptIn" /v "Brand" /t REG_DWORD /d "1" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "MotionAccentId_v1.00" /t REG_DWORD /d "219" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" /f
:: -------------------------------------------------------------------------------------------------------------------------------------------------
	if %win% gtr 9600 (
		reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v DontSearchWindowsUpdate /t REG_DWORD /d 1 /f
		reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 0 /f
		reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d 1 /f
	)
	pause
	goto :MenuRT

:V
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo DISable 8.1 Features
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "0" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v "DisableConfig" /t REG_DWORD /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v "DisableSR" /t REG_DWORD /d "0" /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "EnableBackupForWin8Apps" /t REG_DWORD /d "0" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_DWORD /d "0" /f
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StartPage" /v "MakeAllAppsDefault" /t REG_DWORD /d "0" /f
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SkyDriveOptIn" /v "Brand" /t REG_DWORD /d "0" /f
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "MotionAccentId_v1.00" /t REG_DWORD /d "208" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" /f
	if %win% gtr 9600 (
		reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v DontSearchWindowsUpdate /t REG_DWORD /d 0 /f
		reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 1 /f
		reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d 0 /f
	)
	pause
	goto :MenuRT

:3
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Enable CMD/Powershell here
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
::COMMAND PROMPT HERE
	reg add "HKCR\Directory\shell\MenuCmd" /v "MUIVerb" /t REG_SZ /d "@shell32.dll,-22022" /f
	reg add "HKCR\Directory\shell\MenuCmd" /v "Icon" /t REG_SZ /d "cmd.exe" /f
	reg add "HKCR\Directory\shell\MenuCmd" /v "ExtendedSubCommandsKey" /t REG_SZ /d "Directory\ContextMenus\MenuCmd" /f
	reg add "HKCR\Directory\shell\MenuCmd" /v "Position" /t REG_SZ /d "bottom" /f
	reg add "HKCR\Directory\background\shell\MenuCmd" /v "MUIVerb" /t REG_SZ /d "@shell32.dll,-22022" /f
	reg add "HKCR\Directory\background\shell\MenuCmd" /v "Icon" /t REG_SZ /d "cmd.exe" /f
	reg add "HKCR\Directory\background\shell\MenuCmd" /v "ExtendedSubCommandsKey" /t REG_SZ /d "Directory\ContextMenus\MenuCmd" /f
	reg add "HKCR\Directory\background\shell\MenuCmd" /v "Position" /t REG_SZ /d "bottom" /f
	reg add "HKCR\LibraryFolder\background\shell\MenuCmd" /v "MUIVerb" /t REG_SZ /d "@shell32.dll,-22022" /f
	reg add "HKCR\LibraryFolder\background\shell\MenuCmd" /v "Icon" /t REG_SZ /d "cmd.exe" /f
	reg add "HKCR\LibraryFolder\background\shell\MenuCmd" /v "ExtendedSubCommandsKey" /t REG_SZ /d "Directory\ContextMenus\MenuCmd" /f
	reg add "HKCR\LibraryFolder\background\shell\MenuCmd" /v "Position" /t REG_SZ /d "bottom" /f
	reg add "HKCR\Drive\shell\MenuCmd" /v "MUIVerb" /t REG_SZ /d "@shell32.dll,-22022" /f
	reg add "HKCR\Drive\shell\MenuCmd" /v "Icon" /t REG_SZ /d "cmd.exe" /f
	reg add "HKCR\Drive\shell\MenuCmd" /v "ExtendedSubCommandsKey" /t REG_SZ /d "Directory\ContextMenus\MenuCmd" /f
	reg add "HKCR\Drive\shell\MenuCmd" /v "Position" /t REG_SZ /d "bottom" /f
	reg add "HKCR\Directory\ContextMenus\MenuCmd\shell\open" /v "MUIVerb" /t REG_SZ /d "@shell32.dll,-37415" /f
	reg add "HKCR\Directory\ContextMenus\MenuCmd\shell\open" /v "Icon" /t REG_SZ /d "cmd.exe" /f
	reg add "HKCR\Directory\ContextMenus\MenuCmd\shell\open\command" /ve /t REG_SZ /d "cmd.exe /s /k pushd \"%%V\"" /f
	reg add "HKCR\Directory\ContextMenus\MenuCmd\shell\runas" /v "MUIVerb" /t REG_SZ /d "@shell32.dll,-37444" /f
	reg add "HKCR\Directory\ContextMenus\MenuCmd\shell\runas" /v "Icon" /t REG_SZ /d "cmd.exe" /f
	reg add "HKCR\Directory\ContextMenus\MenuCmd\shell\runas" /v "HasLUAShield" /t REG_SZ /d "" /f
	reg add "HKCR\Directory\ContextMenus\MenuCmd\shell\runas\command" /ve /t REG_SZ /d "cmd.exe /s /k pushd \"%%V\"" /f
::POWERSHELL PROMPT HERE
	reg add "HKCR\Directory\shell\MenuPowerShell" /v "MUIVerb" /t REG_SZ /d "@powershell.exe,-109" /f
	reg add "HKCR\Directory\shell\MenuPowerShell" /v "Icon" /t REG_SZ /d "powershell.exe" /f
	reg add "HKCR\Directory\shell\MenuPowerShell" /v "ExtendedSubCommandsKey" /t REG_SZ /d "Directory\ContextMenus\MenuPowerShell" /f
	reg add "HKCR\Directory\shell\MenuPowerShell" /v "Position" /t REG_SZ /d "bottom" /f
	reg add "HKCR\Directory\background\shell\MenuPowerShell" /v "MUIVerb" /t REG_SZ /d "@powershell.exe,-109" /f
	reg add "HKCR\Directory\background\shell\MenuPowerShell" /v "Icon" /t REG_SZ /d "powershell.exe" /f
	reg add "HKCR\Directory\background\shell\MenuPowerShell" /v "ExtendedSubCommandsKey" /t REG_SZ /d "Directory\ContextMenus\MenuPowerShell" /f
	reg add "HKCR\Directory\background\shell\MenuPowerShell" /v "Position" /t REG_SZ /d "bottom" /f
	reg add "HKCR\LibraryFolder\background\shell\MenuPowerShell" /v "MUIVerb" /t REG_SZ /d "@powershell.exe,-109" /f
	reg add "HKCR\LibraryFolder\background\shell\MenuPowerShell" /v "Icon" /t REG_SZ /d "powershell.exe" /f
	reg add "HKCR\LibraryFolder\background\shell\MenuPowerShell" /v "ExtendedSubCommandsKey" /t REG_SZ /d "Directory\ContextMenus\MenuPowerShell" /f
	reg add "HKCR\LibraryFolder\background\shell\MenuPowerShell" /v "Position" /t REG_SZ /d "bottom" /f
	reg add "HKCR\Drive\shell\MenuPowerShell" /v "MUIVerb" /t REG_SZ /d "@powershell.exe,-109" /f
	reg add "HKCR\Drive\shell\MenuPowerShell" /v "Icon" /t REG_SZ /d "powershell.exe" /f
	reg add "HKCR\Drive\shell\MenuPowerShell" /v "ExtendedSubCommandsKey" /t REG_SZ /d "Directory\ContextMenus\MenuPowerShell" /f
	reg add "HKCR\Drive\shell\MenuPowerShell" /v "Position" /t REG_SZ /d "bottom" /f
	reg add "HKCR\Directory\ContextMenus\MenuPowerShell\shell\open" /v "MUIVerb" /t REG_SZ /d "@shell32.dll,-37446" /f
	reg add "HKCR\Directory\ContextMenus\MenuPowerShell\shell\open" /v "Icon" /t REG_SZ /d "powershell.exe" /f
	reg add "HKCR\Directory\ContextMenus\MenuPowerShell\shell\open\command" /ve /t REG_SZ /d "powershell.exe -noexit -command Set-Location '%%V'" /f
	reg add "HKCR\Directory\ContextMenus\MenuPowerShell\shell\runas" /v "MUIVerb" /t REG_SZ /d "@shell32.dll,-37448" /f
	reg add "HKCR\Directory\ContextMenus\MenuPowerShell\shell\runas" /v "Icon" /t REG_SZ /d "powershell.exe" /f
	reg add "HKCR\Directory\ContextMenus\MenuPowerShell\shell\runas" /v "HasLUAShield" /t REG_SZ /d "" /f
	reg add "HKCR\Directory\ContextMenus\MenuPowerShell\shell\runas\command" /ve /t REG_SZ /d "powershell.exe -noexit -command Set-Location '%%V'" /f
::	reg add "HKCR\Directory\shell\cmd" /v "Extended" /t REG_SZ /d "" /f
::	reg add "HKCR\Directory\background\shell\cmd" /v "Extended" /t REG_SZ /d "" /f
::	reg add "HKCR\Directory\shell\Powershell" /v "Extended" /t REG_SZ /d "" /f
::	reg add "HKCR\Directory\background\shell\Powershell" /v "Extended" /t REG_SZ /d "" /f
	pause
	goto :MenuRT

:4
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Disable CMD/Powershell here
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg delete "HKCR\Directory\shell\MenuCmd" /f
	reg delete "HKCR\Directory\background\shell\MenuCmd" /f
	reg delete "HKCR\LibraryFolder\background\shell\MenuCmd" /f
	reg delete "HKCR\Drive\shell\MenuCmd" /f
	reg delete "HKCR\Directory\ContextMenus\MenuCmd" /f
	reg delete "HKCR\Directory\shell\MenuPowerShell" /f
	reg delete "HKCR\Directory\background\shell\MenuPowerShell" /f
	reg delete "HKCR\LibraryFolder\background\shell\MenuPowerShell" /f
	reg delete "HKCR\Drive\shell\MenuPowerShell" /f
	reg delete "HKCR\Directory\ContextMenus\MenuPowerShell" /f
	pause
	goto :MenuRT
	
:5
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Enable Takeown here
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg add "HKCR\*\shell\takeown" /ve /t REG_SZ /d "Take Ownership" /f
	reg add "HKCR\*\shell\takeown" /v "Icon" /t REG_SZ /d "imageres.dll,73" /f
	reg add "HKCR\*\shell\takeown" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
	reg add "HKCR\*\shell\takeown\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
	reg add "HKCR\*\shell\takeown\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
	reg add "HKCR\Directory\shell\takeown" /ve /t REG_SZ /d "Take Ownership" /f
	reg add "HKCR\Directory\shell\takeown" /v "Icon" /t REG_SZ /d "imageres.dll,73" /f
	reg add "HKCR\Directory\shell\takeown" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
	reg add "HKCR\Directory\shell\takeown\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f
	reg add "HKCR\Directory\shell\takeown\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f
	pause

	goto :MenuRT

:6
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Disable Takeown here
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	reg delete "HKCR\*\shell\takeown" /f
	reg delete "HKCR\Directory\shell\takeown" /f
	pause
	goto :MenuRT

:7
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Disable KMS Communication with MS
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	if %win% gtr 9600 REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" /d 1 /t "REG_DWORD" >nul
	if not "%errorlevel%"=="0" echo No supported System detected
	pause
	goto :MenuWin10

:8
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo Enable KMS Communication with MS
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /f >nul
	REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v "NoGenTicket" >nul
	pause
	goto :MenuWin10

:DarkOn
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo AppsUseLightTheme Dark
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	if %win% gtr 9600 reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d "0" /f >nul
	if %win% gtr 9600 reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d "0" /f >nul
	if not "%errorlevel%"=="0" echo No supported System detected
	pause
	goto :MenuWin10

:DarkOff
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo AppsUseLightTheme Light
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	if %win% gtr 9600 reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d "1" /f >nul
	if %win% gtr 9600 reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d "1" /f >nul
	pause
	goto :MenuWin10

:DisableOSUpgrade
	cls
	echo:
	echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 	echo DisableOSUpgrade
	echo:
	echo ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп
	echo:
	echo:
	set "regvalue="
	echo Stopping Win 10 Update Offer:
	echo:
	for /f "tokens=3 delims= " %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate"') do set "regvalue=%%a"
	if "%regvalue%"=="0x1" (
		echo Value already set. Skipping Entry.
		echo:
		pause
		goto :MenuWin10
	)
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableOSUpgrade" /t REG_DWORD /d "1" /f >nul 2>&1
	if not "%errorlevel%"=="0" (echo Something went wrong.) else (echo Entry successfully established.)
	pause
	goto :MenuWin10


:ExitRT
	ENDLOCAL
	exit
goto :eof