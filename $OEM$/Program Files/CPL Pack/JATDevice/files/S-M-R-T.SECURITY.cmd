:: Code by s1ave77 & murphy78 & compgen_153 & Mr Jinje
::[site:forums.mydigitallife.info]
::===============================================================================================================
@echo off
::===============================================================================================================
:: GET ADMIN RIGHTS
(NET FILE||(powershell -command Start-Process '%0' -Verb runAs -ArgumentList '%* '&EXIT /B))>NUL 2>&1
::===============================================================================================================
powershell.exe -command "& {$pshost = Get-Host;$pswindow = $pshost.UI.RawUI;$newsize = $pswindow.BufferSize;$newsize.height = 9001;$pswindow.buffersize = $newsize;}"
::===============================================================================================================
call :TITLE
setlocal EnableExtensions
setlocal EnableDelayedExpansion
pushd "%~dp0"
cd "%~dp0"
call :SystemCheckVariables
::if %win% lss 10240 goto :Not10
if not "%~1"=="" goto %~1
:================================================================================================================
::===============================================================================================================
set "dism=adk\win10.%vera%\dism.exe"
set "imagex=adk\win10.%vera%\imagex.exe"
set "oscdimg=adk\win10.%vera%\oscdimg.exe"
set "install_wim_tweak=adk\install_wim_tweak.exe"
set "wimlib-imagex=adk\win10.%vera%\wimlib-imagex.exe"
set "esddecrypt=adk\esddecrypt.exe"
set "nsudoc=files\nsudo\%vera%\nsudo.exe"
set "wget=files\wget.exe"
:================================================================================================================
::===============================================================================================================
set "ps1file=%cd%\add.ip.ps1"
set "clean=%cd%\clean.ps1"
set "hostsfile=%windir%\System32\drivers\etc\hosts"
set "hostsadd=%cd%\hosts.txt"
set "addlist=%cd%\addlist.txt"
set "cleanlist=%cd%\cleanlist.txt"
set "templist=%cd%\templist.txt"
set "hostsfilesort=%cd%\hostsfilesort.txt"
set "packs=%cd%\Packages.txt"
set "SOFTWAREBKP=%cd%\SOFTWAREBKP"
:================================================================================================================
::===============================================================================================================
::MAIN MENU
:MainMenu
call :SystemCheckVariables
call :TITLE
color 07
cls
call :MENUHEADER "   MAIN MENU [@:%computername%:%build%.%build1%:%edition%:%vera%]"
echo    [X] AUTOMATIC MAINTENANCE
echo:
echo    [M] MANUAL REMOVAL MENU
echo:
echo    [W] WINDOWS SCHEDULED TASKS DISABLE
echo    [O] OFFICE SCHEDULED TASKS DISABLE
echo:
echo    [A] IP ADRESSES REROUTING/HOSTS BLOCK
echo:
echo    [S] SERVICES MANAGEMENT MENU
echo    [T] REGISTRY SETTINGS MENU
echo:
echo    [P] APPX PACKAGES ONLINE MANAGEMENT
echo    [I] WINSXS PACKAGES ONLINE MANAGEMENT
echo:
echo    [F] WINSXS/APPX PACKAGES OFFLINE MANAGEMENT
echo:
echo    [E] EXIT
echo    [R] RESTART
call :MENUFOOTER
echo:
CHOICE /C XMWOASTPIFER /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto:Armageddon
if %errorlevel%==2 goto:ManualRemovalMenu
if %errorlevel%==3 goto:WinTaskSchedulerDisable
if %errorlevel%==4 goto:OfficeTaskSchedulerDisable
if %errorlevel%==5 goto:WriteHostsTaskMenu
if %errorlevel%==6 goto:ServicesManagementMenu
if %errorlevel%==7 goto:RegChangeMenu
if %errorlevel%==8 goto:PSProvAppRemove
if %errorlevel%==9 goto:DISMRemovePackage
if %errorlevel%==10 goto:DISMRemovePackageOffline
if %errorlevel%==11 goto:Exit
if %errorlevel%==12 goto:Restart
goto:MainMenu
:================================================================================================================
::===============================================================================================================
:ServicesManagementMenu
call :TITLE
set "manual="
set "jump="
cls
call :MENUHEADER "   SERVICES MANAGEMENT MENU"
echo    [D] DELETE TELEMETRY SERVICES
echo:
echo    [S] DISABLE UNNEEDED SERVICES
echo:
echo    [B] BACK
call :MENUFOOTER
echo:
CHOICE /C DSB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto:TelemetryDelete
if %errorlevel%==2 goto:ServiceDisable
if %errorlevel%==3 goto:MainMenu
goto:ServicesManagementMenu
:================================================================================================================
::===============================================================================================================
:WriteHostsTaskMenu
call :TITLE
set "manual="
set "jump="
cls
call :MENUHEADER "   IP ADRESSES REROUTING/HOSTS BLOCK MENU"
echo    [R] RE-ROUTE IP ADRESSES
echo:
echo    [A] APPEND ADRESSES TO HOSTS FILE
echo:
echo    [N] RESOLVE ADRESSES TO IPs
echo:
echo    [B] BACK
call :MENUFOOTER
echo:
CHOICE /C RANB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto:IPReRoute
if %errorlevel%==2 goto:WriteHostsTask
if %errorlevel%==3 goto:ResolveNames
if %errorlevel%==4 goto:MainMenu
goto:WriteHostsTaskMenu
:================================================================================================================
::===============================================================================================================
:RegChangeMenu
call :TITLE
set "manual="
set "jump="
cls
call :MENUHEADER "   REG CHANGE MENU"
echo    [T] SET INTERNET CONNECTION TO METERED
echo:
echo    [U] WINDOWS UPDATE DISABLE
echo:
echo    [D] DISABLE CONSUMER FEATURES
echo:
echo    [B] BACK
call :MENUFOOTER
echo:
CHOICE /C TUDB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto:RestrictedReg
if %errorlevel%==2 goto:CheckUpdateKey
if %errorlevel%==3 goto:DisableWindowsConsumerFeatures
if %errorlevel%==4 goto:MainMenu
goto:RegChangeMenu
:================================================================================================================
::===============================================================================================================
:ManualRemovalMenu
call :TITLE
set "manual="
set "jump="
cls
call :MENUHEADER "   MANUAL REMOVAL MENU"
echo    [W] WINDOWS TASK SCHEDULER DISABLE
echo:
echo    [A] APPEND ADRESSES TO HOSTS FILE
echo:
echo    [D] DELETE TELEMETRY SERVICES
echo:
echo    [B] BACK
call :MENUFOOTER
echo:
CHOICE /C WADB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto:TXTWinTaskSchedulerDisable
if %errorlevel%==2 goto:TXTWriteHostsTask
if %errorlevel%==3 goto:TXTTelemetryDelete
if %errorlevel%==4 goto:MainMenu
goto:ManualRemovalMenu
:================================================================================================================
::===============================================================================================================
:DISMRemovePackage
call :TITLE
cls
set "netcheck="
set "manual="
for /f %%a in ('dir %WINDIR%\Microsoft.Net\Framework\v* /O:-N /B') do if "%%a"=="v3.5" set "netcheck=%%a"
if not defined netcheck call :DISMEnableNET
:DISMRemovePackageMenu
cls
call :MENUHEADER "   WINSXS PACKAGES ONLINE MANAGEMENT"
echo    [L] LIST PACKAGES
echo    [C] CHECK PACKAGES
echo:
echo    [E] EXPORT PACKAGES
echo    [I] IMPORT PACKAGES
echo:
echo    [R] REMOVAL SUB MENU
echo    [P] REMOVE USING CUSTOM LIST
echo:
echo    [B] BACK
call :MENUFOOTER
echo:
CHOICE /C LCEIRPB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto:ListInstalledPackages
if %errorlevel%==2 goto:CheckInstalledPackages
if %errorlevel%==3 goto:ExportInstalledPackages
if %errorlevel%==4 goto:ImportPackages
if %errorlevel%==5 goto:RemovalSubMenuOnline
if %errorlevel%==6 goto:RemPackFromList
if %errorlevel%==7 goto:MainMenu
goto:DISMRemovePackage
:================================================================================================================
::===============================================================================================================
:RemovalSubMenuOnline
cls
call :MENUHEADER "   WINSXS PACKAGES ONLINE REMOVAL"
echo    [E] EDGE
echo    [D] DEFENDER
echo    [O] ONEDRIVE
echo    [M] MIRACAST
echo    [G] GEOLOCATION
echo    [I] BIOMETRICS
echo    [A] ALLJOYN
echo    [T] TELEMETRY
echo    [S] SEARCH
echo    [X] XBOX
echo    [H] HOLOGRAPHICS [15063]
echo    [Y] SENSORS [15063]
echo    [Z] MAPS [15063]
echo:
echo    [B] BACK
call :MENUFOOTER
echo:
CHOICE /C EDOMGIATSXHYZB /N /M "YOUR CHOICE ?:"
if !errorlevel!==1 (
	call :EdgeList
	set "txtpath2="
	call :PackRemoval EDGE
	goto:RemovalSubMenuOnline
)
if %errorlevel%==2 (
	if %win% leq 14393 call :DefenderList_14393
	if %win% leq 14393 call :DefenderList64_14393
	if %win% gtr 14393 call :DefenderList_15063
	if %win% gtr 14393 set "txtpath2="
	call :PackRemoval DEFENDER
	goto:RemovalSubMenuOnline
)
if %errorlevel%==3 (
	call :OnedriveList
	set "txtpath2="
	call :PackRemoval ONEDRIVE
	goto:RemovalSubMenuOnline
)
if %errorlevel%==4 (
	if %win% leq 14393 call :MiracastList_14393
	if %win% gtr 14393 call :MiracastList_15063
	set "txtpath2="
	call :PackRemoval MIRACAST
	goto:RemovalSubMenuOnline
)
if %errorlevel%==5 (
	if %win% leq 14393 call :GeolocationList_14393
	if %win% leq 14393 call :GeolocationList64_14393
	if %win% gtr 14393 call :GeolocationList_15063
	if %win% gtr 14393 set "txtpath2="
	call :PackRemoval GEOLOCATION
	goto:RemovalSubMenuOnline
)
if %errorlevel%==6 (
	if %win% leq 14393 call :BiometricsList_14393
	if %win% leq 14393 call :BiometricsList64_14393
	if %win% gtr 14393 call :BiometricsList_15063
	if %win% gtr 14393 set "txtpath2="
	call :PackRemoval BIOMETRICS
	goto:RemovalSubMenuOnline
)
if %errorlevel%==7 (
	if %win% leq 14393 call :AlljoynList_14393
	if %win% leq 14393 call :AlljoynList64_14393
	if %win% gtr 14393 call :AlljoynList_14393
	if %win% gtr 14393 set "txtpath2="
	call :PackRemoval ALLJOYN
	goto:RemovalSubMenuOnline
)
if %errorlevel%==8 (
	if %win% leq 14393 call :TelemetryList_14393
	if %win% leq 14393 call :TelemetryList64_14393
	if %win% gtr 14393 call :TelemetryList_14393
	if %win% gtr 14393 set "txtpath2="
	call :PackRemoval TELEMETRY
	goto:RemovalSubMenuOnline
)
if %errorlevel%==9 (
	if %win% leq 14393 call :SearchList_14393
	if %win% leq 14393 call :SearchList64_14393
	if %win% gtr 14393 call :SearchList_15063
	if %win% gtr 14393 set "txtpath2="
	call :PackRemoval SEARCH
	goto:RemovalSubMenuOnline
)
if %errorlevel%==10 (
	if %win% leq 14393 call :XBoxList_14393
	if %win% leq 14393 call :XBoxList64_14393
	if %win% gtr 14393 call :XBoxList_15063
	if %win% gtr 14393 set "txtpath2="
	call :PackRemoval XBOX
	goto:RemovalSubMenuOnline
)
if %errorlevel%==11 (
	if %win% leq 14393 goto:DISMRemovePackage
	if %win% gtr 14393 call :HolographicsList_15063
	if %win% gtr 14393 call :HolographicsList64_15063
	call :PackRemoval HOLOGRAPHICS
	goto:RemovalSubMenuOnline
)
if %errorlevel%==12 (
	if %win% leq 14393 goto:DISMRemovePackage
	if %win% gtr 14393 call :SensorsList_15063
	if %win% gtr 14393 call :SensorsList64_15063
	call :PackRemoval SENSORS
	goto:RemovalSubMenuOnline
)
if %errorlevel%==13 (
	if %win% leq 14393 goto:DISMRemovePackage
	if %win% gtr 14393 call :MapsList_15063
	if %win% gtr 14393 set "txtpath2="
	call :PackRemoval MAPS
	goto:RemovalSubMenuOnline
)
if %errorlevel%==14 goto:DISMRemovePackageMenu
goto:RemovalSubMenuOnline
:================================================================================================================
::===============================================================================================================
:DISMRemovePackageOffline
cls
set "manual="
set "netcheck="
for /f %%a in ('dir %WINDIR%\Microsoft.Net\Framework\v* /O:-N /B') do if "%%a"=="v3.5" set "netcheck=%%a"
if not defined netcheck call :DISMEnableNET
:DISMRemovePackageOfflineMenu
call :TITLE
cls
call :MENUHEADER "   WINSXS PACKAGES / APPX OFFLINE MANAGEMENT"
echo    [M] MOUNT				[U] UNMOUNT
echo    [Y] DISCARD				[C] COMMIT
echo:   
echo    [D] Decrypt Store/WU ESD
echo    [W] ESD to WIM
echo:
echo    [L] LIST WINSXS PACKAGES
echo    [E] EXPORT WINSXS PACKAGES
echo:
echo    [R] WINSXS PACKS REMOVAL SUB MENU
echo    [P] WINSXS PACKS REMOVAL USING CUSTOM LIST
echo:
echo    [A] PROVISIONED APPX REMOVAL
echo:
echo    [B] BACK
call :MENUFOOTER
echo:
CHOICE /C MUYCDWLERPAB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto:Mount
if %errorlevel%==2 goto:UnMount
if %errorlevel%==3 goto:Discard
if %errorlevel%==4 goto:Commit
if %errorlevel%==5 goto:ESDDecrypt
if %errorlevel%==6 goto:ESDtoWIM
if %errorlevel%==7 goto:SaveOfflineList
if %errorlevel%==8 goto:OfflineExportInstalledPackages
if %errorlevel%==9 goto:RemovalSubMenuOffline
if %errorlevel%==10 goto:RemPackFromListOffline
if %errorlevel%==11 goto:AppsOffline
if %errorlevel%==12 goto:MainMenu
goto:DISMRemovePackageOfflineMenu
:================================================================================================================
::===============================================================================================================
:RemovalSubMenuOffline
call :TITLE
cls
call :MENUHEADER "   WINSXS PACKAGES OFFLINE REMOVAL"
echo    [E] EDGE
echo    [D] DEFENDER
echo    [O] ONEDRIVE
echo    [M] MIRACAST
echo    [G] GEOLOCATION
echo    [I] BIOMETRICS
echo    [A] ALLJOYN
echo    [T] TELEMETRY
echo    [S] SEARCH
echo    [X] XBOX
echo    [H] HOLOGRAPHICS [15063]
echo    [Y] SENSORS [15063]
echo    [Z] MAPS [15063]
echo:
echo    [B] BACK
call :MENUFOOTER
echo:
CHOICE /C EDOMGIATSXHYZB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto:EdgeOffline
if %errorlevel%==2 goto:DefenderOffline
if %errorlevel%==3 goto:OnedriveOffline
if %errorlevel%==4 goto:MiracastOffline
if %errorlevel%==5 goto:GeolocationOffline
if %errorlevel%==6 goto:BiometricsOffline
if %errorlevel%==7 goto:AlljoynOffline
if %errorlevel%==8 goto:TelemetryOffline
if %errorlevel%==9 goto:SearchOffline
if %errorlevel%==10 goto:XBoxOffline
if %errorlevel%==11 goto:HolographicsOffline
if %errorlevel%==12 goto:SensorsOffline
if %errorlevel%==13 goto:MapsOffline
if %errorlevel%==14 goto:DISMRemovePackageOfflineMenu
goto:DISMRemovePackageOfflineMenu
:================================================================================================================
::===============================================================================================================
::MOUNT
:Mount
cls
call :MENUHEADER "   MOUNT WIM"
echo Enter Path to WIM: %wim%
echo:
call :FOOTER
set /p wim=Enter Path to WIM : ^>
call :FOOTER
call :MountDataInputLoop
for /d %%a in (%indices%) do (if not exist "%mount%\%%a" md "%mount%\%%a")&&(%dism% /English /mount-wim /wimfile:"%wim%" /index:%%a /mountdir:"%mount%\%%a")
call :FOOTER
pause
goto:DISMRemovePackageOfflineMenu
:================================================================================================================
::===============================================================================================================
::UNMOUNT
:UnMount
cls
call :MENUHEADER "   UNMOUNT WIM"
call :MountDataInputLoop
call :FOOTER
for /d %%a in (%indices%) do %dism% /English /unmount-wim /mountdir:"%mount%\%%a" /commit /checkintegrity
call :FOOTER
pause
goto:DISMRemovePackageOfflineMenu
:================================================================================================================
::===============================================================================================================
::DISCARD
:Discard
cls
call :MENUHEADER "   DISCARD WIM"
call :MountDataInputLoop
call :FOOTER
for /d %%a in (%indices%) do %dism% /English /unmount-wim /mountdir:"%mount%\%%a" /discard /checkintegrity
call :FOOTER
pause
goto:DISMRemovePackageOfflineMenu
:================================================================================================================
::===============================================================================================================
::COMMIT
:Commit
cls
call :MENUHEADER "   DISCARD WIM"
call :MountDataInputLoop
call :FOOTER
for /d %%a in (%indices%) do %dism% /English /commit-wim /mountdir:"%mount%\%%a"/checkintegrity
call :FOOTER
pause
goto:DISMRemovePackageOfflineMenu
:================================================================================================================
::===============================================================================================================
::ESD TO WIM
:ESDtoWIM
call :TITLE
cls
call :MENUHEADER "   ESD TO WIM"
echo Enter Path to ESD: %esd%
echo:
echo Enter Path to WIM: %wim%
echo:
echo Enter Indices List to convert: 3, 2, 1 or: %indices%
call :FOOTER
set /p esd=Enter Path to ESD : ^>
set /p wim=Enter Path to WIM : ^>
set /p indices=Enter Indices List to mount : ^>
call :FOOTER
for /d %%a in (%indices%) do %wimlib-imagex% export "%esd%" %%a "%wim%" --compress=maximum
call :FOOTER
pause
goto:DISMRemovePackageOfflineMenu
:================================================================================================================
::===============================================================================================================
::ESD DECRYPT
:ESDDecrypt
cls
call :MENUHEADER "   ESD DECRYPT"
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
echo Default: %esd%
echo Values: Path to Store/WU ESD 'X:\...\ab*~.esd'
call :FOOTER
set /p esd=Path to Store/WU ESD : ^>
for /f "tokens=3 delims=: " %%m in ('%dism% /English /Get-WimInfo /WimFile:"%esd%" /Index:4 ^| findstr /i Build') do set b2=%%m
cls
call :MENUHEADER "Decrypting Windows Store ESDs"
esddecrypt.exe "%esd%" 2>nul&&goto:DISMRemovePackageOfflineMenu
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
call :FOOTER
pause
goto:DISMRemovePackageOfflineMenu
:================================================================================================================
::===============================================================================================================
::ONLINE REMOVE LIST
:ListInstalledPackages
cls
call :MENUHEADER "   LIST INSTALLED PACKAGES"
echo Default: %packagetxt%
echo Values: Path to TXT File for output
call :FOOTER
set /p packagetxt=Path to TXT File : ^>
%install_wim_tweak% /o /d /l
move "Packages.txt" "%packagetxt%"
%install_wim_tweak% /h /o /d /l
call :FOOTER
pause
goto:DISMRemovePackageMenu
:================================================================================================================
::===============================================================================================================
::ONLINE REMOVE CHECK
:CheckInstalledPackages
call :TITLE
cls
call :MENUHEADER "   CHECK INSTALLED PACKAGES"
echo    [W] MANUAL SEARCH
echo:
echo    [E] EDGE
echo    [D] DEFENDER
echo    [O] ONEDRIVE
echo    [M] MIRACAST
echo    [G] GEOLOCATION
echo    [I] BIOMETRICS
echo    [A] ALLJOYN
echo    [T] TELEMETRY
echo    [S] SEARCH
echo    [X] XBOX
echo    [H] HOLOGRAPHICS [15063]
echo    [Y] SENSORS [15063]
echo    [Z] MAPS [15063]
echo:
echo    [B] BACK
call :FOOTER
CHOICE /C WEDOMGIATSXHYZB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto:ManualListSearch
if %errorlevel%==2 (
	call :EdgeList
	set "txtpath2="
)
if %errorlevel%==3 (
	if %win% leq 14393 call :DefenderList_14393
	if %win% leq 14393 call :DefenderList64_14393
	if %win% gtr 14393 call :DefenderList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==4 (
	call :OnedriveList
	set "txtpath2="
)
if %errorlevel%==5 (
	if %win% leq 14393 call :MiracastList_14393
	if %win% gtr 14393 call :MiracastList_15063
	set "txtpath2="
)
if %errorlevel%==6 (
	if %win% leq 14393 call :GeolocationList_14393
	if %win% leq 14393 call :GeolocationList64_14393
	if %win% gtr 14393 call :GeolocationList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==7 (
	if %win% leq 14393 call :BiometricsList_14393
	if %win% leq 14393 call :BiometricsList64_14393
	if %win% gtr 14393 call :BiometricsList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==8 (
	if %win% leq 14393 call :AlljoynList_14393
	if %win% leq 14393 call :AlljoynList64_14393
	if %win% gtr 14393 call :AlljoynList_14393
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==9 (
	if %win% leq 14393 call :TelemetryList_14393
	if %win% leq 14393 call :TelemetryList64_14393
	if %win% gtr 14393 call :TelemetryList_14393
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==10 (
	if %win% leq 14393 call :SearchList_14393
	if %win% leq 14393 call :SearchList64_14393
	if %win% gtr 14393 call :SearchList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==11 (
	if %win% leq 14393 call :XBoxList_14393
	if %win% leq 14393 call :XBoxList64_14393
	if %win% gtr 14393 call :XBoxList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==12 (
	if %win% leq 14393 goto:CheckInstalledPackages
	if %win% gtr 14393 call :HolographicsList_15063
	if %win% gtr 14393 call :HolographicsList64_15063
)
if %errorlevel%==13 (
	if %win% leq 14393 goto:CheckInstalledPackages
	if %win% gtr 14393 call :SensorsList_15063
	if %win% gtr 14393 call :SensorsList64_15063
)
if %errorlevel%==14 (
	if %win% leq 14393 goto:CheckInstalledPackages
	if %win% gtr 14393 call :MapsList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==15 goto:DISMRemovePackageMenu
call :FOOTER
set "temptxt=%temp%\Packages.txt"
%install_wim_tweak% /o /d /l
move "Packages.txt" "%temptxt%"
%install_wim_tweak% /h /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do for /f "tokens=*" %%A in (%temptxt%) do echo %%A | findstr /i "%%a" 1>nul && echo %%A
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do for /f "tokens=*" %%A in (%temptxt%) do echo %%A | findstr /i "%%a" 1>nul && echo %%A
call :FOOTER
pause
if exist "%temptxt%" del /s /q "%temptxt%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:CheckInstalledPackages
::===============================================================================================================
::MANUAL LIST SEARCH
:ManualListSearch
set "delete=yes"
cls
call :MENUHEADER "   MANUAL LIST SEARCH"
CHOICE /C SFB /N /M "[S]earch System, by [F]ilepath or [B]ack ?:"
if %errorlevel%==2 (
	cls
	call :MENUHEADER "   MANUAL LIST SEARCH"
	echo Default: %packagetxt%
	echo Values: Path to Packages TXT File
	call :FOOTER
	set /p packagetxt=Path to Packages TXT File : ^>
	set "temptxt=%packagetxt%"
	set "delete=no"
	goto:ManualListSearchAgain
)
if !errorlevel!==3 goto:CheckInstalledPackages
set "temptxt=%temp%\Packages.txt"
%install_wim_tweak% /o /d /l
move "Packages.txt" "%temptxt%"
%install_wim_tweak% /h /o /d /l
:ManualListSearchAgain
set "write=no"
set "packagetxtout="
cls
call :MENUHEADER "   MANUAL LIST SEARCH"
CHOICE /C WN /N /M "[W]rite Findings to File or [N]ot ?:"
if %errorlevel%==1 (
	call :FOOTER
	set "write=yes"
	echo Default: %packagetxtout%
	echo Values: Path to TXT File for output
	call :FOOTER
	set /p packagetxtout=Path to TXT File : ^>
)
cls
call :MENUHEADER "   MANUAL LIST SEARCH"
echo LAST: %searchterm%
echo Enter Search Term.
call :FOOTER
set /p searchterm=Search Term : ^>
call :FOOTER
for /f "tokens=*" %%A in (%temptxt%) do echo %%A | findstr /i "%searchterm%" 1>nul && echo %%A && if !write!==yes echo %%A>>!packagetxtout!
call :FOOTER
CHOICE /C AB /N /M "[A]nother Search or [B]ack ?:"
if !errorlevel!==1 goto:ManualListSearchAgain
if %delete%==yes if exist "%temptxt%" del /s /q "%temptxt%" >nul
goto:CheckInstalledPackages
::===============================================================================================================
::ONLINE EXPORT
:ExportInstalledPackages
call :TITLE
set "txtpath2="
cls
call :MENUHEADER "   EXPORT PACKAGES"
echo    [C] CUSTOM FILE EXPORT
echo:
echo    [E] EDGE
echo    [D] DEFENDER
echo    [O] ONEDRIVE
echo    [M] MIRACAST
echo    [G] GEOLOCATION
echo    [I] BIOMETRICS
echo    [A] ALLJOYN
echo    [T] TELEMETRY
echo    [S] SEARCH
echo    [X] XBOX
echo    [H] HOLOGRAPHICS [15063]
echo    [Y] SENSORS [15063]
echo    [Z] MAPS [15063]
echo:
echo    [B] BACK
call :FOOTER
CHOICE /C CEDOMGIATSXHYZB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 (
	call :FOOTER
	echo Default: %txtpath%
	echo Values: Path to Custom TXT File
	call :FOOTER
	set /p txtpath=Path to TXT File : ^>
)
if %errorlevel%==2 (
	call :EdgeList
	set "txtpath2="
)
if %errorlevel%==3 (
	if %win% leq 14393 call :DefenderList_14393
	if %win% leq 14393 call :DefenderList64_14393
	if %win% gtr 14393 call :DefenderList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==4 (
	call :OnedriveList
	set "txtpath2="
)
if %errorlevel%==5 (
	if %win% leq 14393 call :MiracastList_14393
	if %win% gtr 14393 call :MiracastList_15063
	set "txtpath2="
)
if %errorlevel%==6 (
	if %win% leq 14393 call :GeolocationList_14393
	if %win% leq 14393 call :GeolocationList64_14393
	if %win% gtr 14393 call :GeolocationList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==7 (
	if %win% leq 14393 call :BiometricsList_14393
	if %win% leq 14393 call :BiometricsList64_14393
	if %win% gtr 14393 call :BiometricsList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==8 (
	if %win% leq 14393 call :AlljoynList_14393
	if %win% leq 14393 call :AlljoynList64_14393
	if %win% gtr 14393 call :AlljoynList_14393
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==9 (
	if %win% leq 14393 call :TelemetryList_14393
	if %win% leq 14393 call :TelemetryList64_14393
	if %win% gtr 14393 call :TelemetryList_14393
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==10 (
	if %win% leq 14393 call :SearchList_14393
	if %win% leq 14393 call :SearchList64_14393
	if %win% gtr 14393 call :SearchList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==11 (
	if %win% leq 14393 call :XBoxList_14393
	if %win% leq 14393 call :XBoxList64_14393
	if %win% gtr 14393 call :XBoxList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==12 (
	if %win% leq 14393 goto:ExportInstalledPackages
	if %win% gtr 14393 call :HolographicsList_15063
	if %win% gtr 14393 call :HolographicsList64_15063
)
if %errorlevel%==13 (
	if %win% leq 14393 goto:ExportInstalledPackages
	if %win% gtr 14393 call :SensorsList_15063
	if %win% gtr 14393 call :SensorsList64_15063
)
if %errorlevel%==14 (
	if %win% leq 14393 goto:ExportInstalledPackages
	if %win% gtr 14393 call :MapsList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==15 goto:DISMRemovePackageMenu
call :FOOTER
echo Set Path to Output Folder : %packageexport%
set /p packageexport=Path to Output Folder : ^>
call :FOOTER
if not exist "%packageexport%" md "%packageexport%"
if not exist "%packageexport%\_Helper" md "%packageexport%\_Helper"
set "exportlist=%packageexport%\ImportList.txt"
if exist "%exportlist%" del /s /q "%exportlist%" >nul
type "%txtpath%">>%exportlist%
if defined txtpath2 type "%txtpath2%">>%exportlist%
xcopy "files\_Helper\*.*" /s /q "%packageexport%\_Helper\" /Y
xcopy "files\Start.cmd" /s /q "%packageexport%\" /Y
start "Export Tool by KNARZ" cmd /c "%packageexport%\Start.cmd"
call :FOOTER
echo Wait for the tool to complete, then check the output folder.
call :FOOTER
pause
if exist "%packageexport%\_Helper" rd /s /q "%packageexport%\_Helper" >nul
if exist "%packageexport%\Start.cmd" del /s /q "%packageexport%\Start.cmd" >nul
if exist "%exportlist%" del /s /q "%exportlist%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:ExportInstalledPackages
::===============================================================================================================
::ONLINE IMPORT
:ImportPackages
call :TITLE
cls
call :MENUHEADER "   INSTALL PACKAGES"
echo    [C] CUSTOM FILE IMPORT
echo:
echo    [E] EDGE
echo    [D] DEFENDER
echo    [O] ONEDRIVE
echo    [M] MIRACAST
echo    [G] GEOLOCATION
echo    [I] BIOMETRICS
echo    [A] ALLJOYN
echo    [T] TELEMETRY
echo    [S] SEARCH
echo    [X] XBOX
echo    [H] HOLOGRAPHICS [15063]
echo    [Y] SENSORS [15063]
echo    [Z] MAPS [15063]
echo:
echo    [B] BACK
call :FOOTER
CHOICE /C CEDOMGIATSXHYZB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 (
	call :FOOTER
	echo Default: %txtpath%
	echo Values: Path to Custom TXT File
	call :FOOTER
	set /p txtpath=Path to TXT File : ^>
)
if %errorlevel%==2 (
	call :EdgeList
	set "txtpath2="
)
if %errorlevel%==3 (
	if %win% leq 14393 call :DefenderList_14393
	if %win% leq 14393 call :DefenderList64_14393
	if %win% gtr 14393 call :DefenderList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==4 (
	call :OnedriveList
	set "txtpath2="
)
if %errorlevel%==5 (
	if %win% leq 14393 call :MiracastList_14393
	if %win% gtr 14393 call :MiracastList_15063
	set "txtpath2="
)
if %errorlevel%==6 (
	if %win% leq 14393 call :GeolocationList_14393
	if %win% leq 14393 call :GeolocationList64_14393
	if %win% gtr 14393 call :GeolocationList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==7 (
	if %win% leq 14393 call :BiometricsList_14393
	if %win% leq 14393 call :BiometricsList64_14393
	if %win% gtr 14393 call :BiometricsList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==8 (
	if %win% leq 14393 call :AlljoynList_14393
	if %win% leq 14393 call :AlljoynList64_14393
	if %win% gtr 14393 call :AlljoynList_14393
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==9 (
	if %win% leq 14393 call :TelemetryList_14393
	if %win% leq 14393 call :TelemetryList64_14393
	if %win% gtr 14393 call :TelemetryList_14393
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==10 (
	if %win% leq 14393 call :SearchList_14393
	if %win% leq 14393 call :SearchList64_14393
	if %win% gtr 14393 call :SearchList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==11 (
	if %win% leq 14393 call :XBoxList_14393
	if %win% leq 14393 call :XBoxList64_14393
	if %win% gtr 14393 call :XBoxList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==12 (
	if %win% leq 14393 goto:ImportPackages
	if %win% gtr 14393 call :HolographicsList_15063
	if %win% gtr 14393 call :HolographicsList64_15063
)
if %errorlevel%==13 (
	if %win% leq 14393 goto:ImportPackages
	if %win% gtr 14393 call :SensorsList_15063
	if %win% gtr 14393 call :SensorsList64_15063
)
if %errorlevel%==14 (
	if %win% leq 14393 goto:ImportPackages
	if %win% gtr 14393 call :MapsList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==15 goto:DISMRemovePackageMenu
call :FOOTER
echo Set Path to Work Folder with Packs
set /p packageexport=Path to Workfolder Folder : ^>
call :FOOTER
if not exist "%packageexport%" md "%packageexport%"
set "exportlist=%packageexport%\ImportList.txt"
set "importscript=%packageexport%\install.packages.cmd"
if exist "%exportlist%" del /s /q "%exportlist%" >nul 2>&1
if exist "%importscript%" del /s /q "%importscript%" >nul 2>&1
type "%txtpath%">>%exportlist%
if defined txtpath2 type "%txtpath2%">>%exportlist%
echo @echo off>%importscript%
echo title þ INSTALL PACKAGES þ by s1ave77>>%importscript%
echo :: Code by s1ave77>>%importscript%
echo color 1F>>%importscript%
echo setlocal ENABLEDELAYEDEXPANSION>>%importscript%
echo echo.#########################################################################################>>%importscript%
echo echo This will install choosen Packages.>>%importscript%
echo echo.#########################################################################################>>%importscript%
echo echo:>>%importscript%
echo for /f "tokens=*" %%%%a in ^(%exportlist%^) do for /r "%packageexport%" %%%%g in ^(%%%%a*.cab^) do %%windir%%\System32\dism.exe /online /norestart /add-package:%%%%g>>%importscript%
echo echo.#########################################################################################>>%importscript%
echo echo Done.>>%importscript%
echo echo.#########################################################################################>>%importscript%
echo echo:>>%importscript%
echo pause>>%importscript%
echo exit>>%importscript%
@start /b "NSudo - TrustedInstaller" "%nsudoc%" -U:T "%packageexport%\install.packages.cmd"
call :FOOTER
echo Wait for the tool to complete, then check the output folder.
call :FOOTER
pause
if exist "%exportlist%" del /s /q "%exportlist%" >nul
if exist "%importscript%" del /s /q "%importscript%" >nul
goto:ImportPackages
::===============================================================================================================
:RemPackFromList
pushd "%~dp0"
cls
call :MENUHEADER "   DISM REMOVE PACKAGES FROM LIST ONLINE"
call :TXTFileInputLoop
call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%packs%" del /s /q "%packs%" >nul
pause
goto:DISMRemovePackageMenu
::===============================================================================================================
:PackRemoval
pushd "%~dp0"
cls
call :MENUHEADER "   DISM REMOVE %~1 PACKAGE ONLINE"
CHOICE /C AT /N /M "[A]uto or from [T]extfile ?:"
if %errorlevel%==1 set "errorflag=auto"
if %errorlevel%==2 (
	call :FOOTER
	call :TXTFileInputLoop
	set "errorflag="
)
call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
if "%vera%"=="x64" if exist %txtpath2% for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%packs%" del /s /q "%packs%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
pause
goto:eof
:================================================================================================================
::===============================================================================================================
::OFFLINE REMOVE
:RemPackFromListOffline
pushd "%~dp0"
cls
call :MENUHEADER "   DISM REMOVE DEFENDER PACKAGE OFFLINE"
call :TXTFileInputLoop
if not defined indices call :MountDataInputLoop
if "%manual%"=="" call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoopOffline %%a
call :FOOTER
echo Locking hiddenFeatures.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
goto:DISMRemovePackageOfflineMenu
:================================================================================================================
::===============================================================================================================
::OFFLINE LIST CREATION
:SaveOfflineList
pushd "%~dp0"
cls
call :MENUHEADER "   OFFLINE LIST CREATION"
if not defined indices call :MountDataInputLoop
echo Default: %packagetxt%
echo Values: Path to TXT File for output
call :FOOTER
set /p packagetxt=Path to TXT File : ^>
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
call :FOOTER
move "Packages.txt" "%packagetxt%"
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
goto:DISMRemovePackageOfflineMenu
::===============================================================================================================
::OFFLINE EXPORT
:OfflineExportInstalledPackages
call :TITLE
set "txtpath2="
cls
call :MENUHEADER "   EXPORT PACKAGES OFFLINE"
echo    [C] CUSTOM FILE EXPORT
echo:
echo    [E] EDGE
echo    [D] DEFENDER
echo    [O] ONEDRIVE
echo    [M] MIRACAST
echo    [G] GEOLOCATION
echo    [I] BIOMETRICS
echo    [A] ALLJOYN
echo    [T] TELEMETRY
echo    [S] SEARCH
echo    [X] XBOX
echo    [H] HOLOGRAPHICS [15063]
echo    [Y] SENSORS [15063]
echo    [Z] MAPS [15063]
echo:
echo    [B] BACK
call :FOOTER
CHOICE /C CEDOMGIATSXHYZB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 (
	call :FOOTER
	echo Default: %txtpath%
	echo Values: Path to Custom TXT File
	call :FOOTER
	set /p txtpath=Path to TXT File : ^>
)
if %errorlevel%==2 (
	call :EdgeList
	set "txtpath2="
)
if %errorlevel%==3 (
	if %win% leq 14393 call :DefenderList_14393
	if %win% leq 14393 call :DefenderList64_14393
	if %win% gtr 14393 call :DefenderList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==4 (
	call :OnedriveList
	set "txtpath2="
)
if %errorlevel%==5 (
	if %win% leq 14393 call :MiracastList_14393
	if %win% gtr 14393 call :MiracastList_15063
	set "txtpath2="
)
if %errorlevel%==6 (
	if %win% leq 14393 call :GeolocationList_14393
	if %win% leq 14393 call :GeolocationList64_14393
	if %win% gtr 14393 call :GeolocationList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==7 (
	if %win% leq 14393 call :BiometricsList_14393
	if %win% leq 14393 call :BiometricsList64_14393
	if %win% gtr 14393 call :BiometricsList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==8 (
	if %win% leq 14393 call :AlljoynList_14393
	if %win% leq 14393 call :AlljoynList64_14393
	if %win% gtr 14393 call :AlljoynList_14393
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==9 (
	if %win% leq 14393 call :TelemetryList_14393
	if %win% leq 14393 call :TelemetryList64_14393
	if %win% gtr 14393 call :TelemetryList_14393
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==10 (
	if %win% leq 14393 call :SearchList_14393
	if %win% leq 14393 call :SearchList64_14393
	if %win% gtr 14393 call :SearchList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==11 (
	if %win% leq 14393 call :XBoxList_14393
	if %win% leq 14393 call :XBoxList64_14393
	if %win% gtr 14393 call :XBoxList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==12 (
	if %win% leq 14393 goto:OfflineExportInstalledPackages
	if %win% gtr 14393 call :HolographicsList_15063
	if %win% gtr 14393 call :HolographicsList64_15063
)
if %errorlevel%==13 (
	if %win% leq 14393 goto:OfflineExportInstalledPackages
	if %win% gtr 14393 call :SensorsList_15063
	if %win% gtr 14393 call :SensorsList64_15063
)
if %errorlevel%==14 (
	if %win% leq 14393 goto:OfflineExportInstalledPackages
	if %win% gtr 14393 call :MapsList_15063
	if %win% gtr 14393 set "txtpath2="
)
if %errorlevel%==15 goto:DISMRemovePackageOfflineMenu
call :FOOTER
echo Set Path to Output Folder: %packageexport%
call :FOOTER
set /p packageexport=Path to Output Folder : ^>
call :FOOTER
if not exist "%packageexport%" md "%packageexport%"
if not exist "%packageexport%\_Helper" md "%packageexport%\_Helper"
set "exportlist=%packageexport%\ImportList.txt"
if exist "%exportlist%" del /s /q "%exportlist%" >nul
type "%txtpath%">>%exportlist%
if exist "%txtpath2%" type "%txtpath2%">>%exportlist%
xcopy "files\_Helper\*.*" /s /q "%packageexport%\_Helper\" /Y
xcopy "files\Start.off.cmd" /s /q "%packageexport%\" /Y
start "Export Tool by KNARZ" cmd /c "%packageexport%\Start.off.cmd"
call :FOOTER
echo Wait for the tool to complete, then check the output folder.
call :FOOTER
pause
if exist "%packageexport%\_Helper" rd /s /q "%packageexport%\_Helper" >nul
if exist "%packageexport%\Start.off.cmd" del /s /q "%packageexport%\Start.off.cmd" >nul
if exist "%exportlist%" del /s /q "%exportlist%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:OfflineExportInstalledPackages
:================================================================================================================
::===============================================================================================================
::OFFLINE REMOVE
:EdgeOffline
pushd "%~dp0"
call :EdgeList
set "txtpath2="
cls
call :MENUHEADER "   DISM REMOVE EDGE PACKAGE OFFLINE"
CHOICE /C AT /N /M "[A]uto or from [T]extfile ?:"
if %errorlevel%==1 set "errorflag=auto"
if %errorlevel%==2 (
	call :FOOTER
	call :TXTFileInputLoop
	set "errorflag="
)
if not defined indices call :MountDataInputLoop
if "%manual%"=="" call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoopOffline %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoopOffline %%a
call :FOOTER
echo Locking hiddenFeatures.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:RemovalSubMenuOffline
::===============================================================================================================
:DefenderOffline
pushd "%~dp0"
if %win% leq 14393 call :DefenderList_14393
if %win% leq 14393 call :DefenderList64_14393
if %win% gtr 14393 call :DefenderList_15063
if %win% gtr 14393 set "txtpath2="
cls
call :MENUHEADER "   DISM REMOVE DEFENDER PACKAGE OFFLINE"
CHOICE /C AT /N /M "[A]uto or from [T]extfile ?:"
if %errorlevel%==1 set "errorflag=auto"
if %errorlevel%==2 (
	call :FOOTER
	call :TXTFileInputLoop
	set "errorflag="
)
if not defined indices call :MountDataInputLoop
if "%manual%"=="" call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoopOffline %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoopOffline %%a
call :FOOTER
echo Locking hiddenFeatures.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:RemovalSubMenuOffline
::===============================================================================================================
:OnedriveOffline
pushd "%~dp0"
call :OnedriveList
set "txtpath2="
cls
call :MENUHEADER "   DISM REMOVE ONEDRIVE PACKAGE OFFLINE"
CHOICE /C AT /N /M "[A]uto or from [T]extfile ?:"
if %errorlevel%==1 set "errorflag=auto"
if %errorlevel%==2 (
	call :FOOTER
	call :TXTFileInputLoop
	set "errorflag="
)
if not defined indices call :MountDataInputLoop
if "%manual%"=="" call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoopOffline %%a
call :FOOTER
echo Locking hiddenFeatures.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:RemovalSubMenuOffline
::===============================================================================================================
:MiracastOffline
pushd "%~dp0"
if %win% leq 14393 call :MiracastList_14393
if %win% gtr 14393 call :MiracastList_15063
set "txtpath2="
cls
call :MENUHEADER "   DISM REMOVE MIRACAST PACKAGE OFFLINE"
CHOICE /C AT /N /M "[A]uto or from [T]extfile ?:"
if %errorlevel%==1 set "errorflag=auto"
if %errorlevel%==2 (
	call :FOOTER
	call :TXTFileInputLoop
	set "errorflag="
)
if not defined indices call :MountDataInputLoop
if "%manual%"=="" call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoopOffline %%a
call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:RemovalSubMenuOffline
::===============================================================================================================
:GeolocationOffline
pushd "%~dp0"
if %win% leq 14393 call :GeolocationList_14393
if %win% leq 14393 call :GeolocationList64_14393
if %win% gtr 14393 call :GeolocationList_15063
if %win% gtr 14393 set "txtpath2="
cls
call :MENUHEADER "   DISM REMOVE GEOLOCATION PACKAGE OFFLINE"
CHOICE /C AT /N /M "[A]uto or from [T]extfile ?:"
if %errorlevel%==1 set "errorflag=auto"
if %errorlevel%==2 (
	call :FOOTER
	call :TXTFileInputLoop
	set "errorflag="
)
if not defined indices call :MountDataInputLoop
if "%manual%"=="" call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoopOffline %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoopOffline %%a
call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:RemovalSubMenuOffline
::===============================================================================================================
:BiometricsOffline
pushd "%~dp0"
if %win% leq 14393 call :BiometricsList_14393
if %win% leq 14393 call :BiometricsList64_14393
if %win% gtr 14393 call :BiometricsList_15063
if %win% gtr 14393 set "txtpath2="
cls
call :MENUHEADER "   DISM REMOVE BIOMETRICS PACKAGE OFFLINE"
CHOICE /C AT /N /M "[A]uto or from [T]extfile ?:"
if %errorlevel%==1 set "errorflag=auto"
if %errorlevel%==2 (
	call :FOOTER
	call :TXTFileInputLoop
	set "errorflag="
)
if not defined indices call :MountDataInputLoop
if "%manual%"=="" call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoopOffline %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoopOffline %%a
call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:RemovalSubMenuOffline
::===============================================================================================================
:AlljoynOffline
pushd "%~dp0"
if %win% leq 14393 call :AlljoynList_14393
if %win% leq 14393 call :AlljoynList64_14393
if %win% gtr 14393 call :AlljoynList_14393
if %win% gtr 14393 set "txtpath2="
cls
call :MENUHEADER "   DISM REMOVE ALLJOYN PACKAGE OFFLINE"
CHOICE /C AT /N /M "[A]uto or from [T]extfile ?:"
if %errorlevel%==1 set "errorflag=auto"
if %errorlevel%==2 (
	call :FOOTER
	call :TXTFileInputLoop
	set "errorflag="
)
if not defined indices call :MountDataInputLoop
if "%manual%"=="" call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoopOffline %%a
if "%vera%"=="x64" defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoopOffline %%a
call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:RemovalSubMenuOffline
::===============================================================================================================
:TelemetryOffline
pushd "%~dp0"
if %win% leq 14393 call :TelemetryList_14393
if %win% leq 14393 call :TelemetryList64_14393
if %win% gtr 14393 call :TelemetryList_14393
if %win% gtr 14393 set "txtpath2="
cls
call :MENUHEADER "   DISM REMOVE TELEMETRY PACKAGE OFFLINE"
CHOICE /C AT /N /M "[A]uto or from [T]extfile ?:"
if %errorlevel%==1 set "errorflag=auto"
if %errorlevel%==2 (
	call :FOOTER
	call :TXTFileInputLoop
	set "errorflag="
)
if not defined indices call :MountDataInputLoop
if "%manual%"=="" call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoopOffline %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoopOffline %%a
call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:RemovalSubMenuOffline
::===============================================================================================================
:SearchOffline
pushd "%~dp0"
if %win% leq 14393 call :SearchList_14393
if %win% leq 14393 call :SearchList64_14393
if %win% gtr 14393 call :SearchList_15063
if %win% gtr 14393 set "txtpath2="
cls
call :MENUHEADER "   DISM REMOVE TELEMETRY PACKAGE OFFLINE"
CHOICE /C AT /N /M "[A]uto or from [T]extfile ?:"
if %errorlevel%==1 set "errorflag=auto"
if %errorlevel%==2 (
	call :FOOTER
	call :TXTFileInputLoop
	set "errorflag="
)
if not defined indices call :MountDataInputLoop
if "%manual%"=="" call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoopOffline %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoopOffline %%a
call :FOOTER
echo Locking hiddenFeatures.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:RemovalSubMenuOffline
::===============================================================================================================
:XBoxOffline
pushd "%~dp0"
if %win% leq 14393 call :XBoxList_14393
if %win% leq 14393 call :XBoxList64_14393
if %win% gtr 14393 call :XBoxList_15063
if %win% gtr 14393 set "txtpath2="
cls
call :MENUHEADER "   DISM REMOVE XBOX PACKAGE OFFLINE"
CHOICE /C AT /N /M "[A]uto or from [T]extfile ?:"
if %errorlevel%==1 set "errorflag=auto"
if %errorlevel%==2 (
	call :FOOTER
	call :TXTFileInputLoop
	set "errorflag="
)
if not defined indices call :MountDataInputLoop
if "%manual%"=="" call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoopOffline %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoopOffline %%a
call :FOOTER
echo Locking hiddenFeatures.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:RemovalSubMenuOffline
::===============================================================================================================
:HolographicsOffline
pushd "%~dp0"
if %win% leq 14393 goto:DISMRemovePackageOfflineMenu
if %win% gtr 14393 call :HolographicsList_15063
if %win% gtr 14393 call :HolographicsList64_15063
cls
call :MENUHEADER "   DISM REMOVE HOLOGRAPHICS PACKAGE OFFLINE"
CHOICE /C AT /N /M "[A]uto or from [T]extfile ?:"
if %errorlevel%==1 set "errorflag=auto"
if %errorlevel%==2 (
	call :FOOTER
	call :TXTFileInputLoop
	set "errorflag="
)
if not defined indices call :MountDataInputLoop
if "%manual%"=="" call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoopOffline %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoopOffline %%a
call :FOOTER
echo Locking hiddenFeatures.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:RemovalSubMenuOffline
::===============================================================================================================
:SensorsOffline
pushd "%~dp0"
if %win% leq 14393 goto:DISMRemovePackageOfflineMenu
if %win% gtr 14393 call :SensorsList_15063
if %win% gtr 14393 call :SensorsList64_15063
cls
call :MENUHEADER "   DISM REMOVE SENSORS PACKAGE OFFLINE"
CHOICE /C AT /N /M "[A]uto or from [T]extfile ?:"
if %errorlevel%==1 set "errorflag=auto"
if %errorlevel%==2 (
	call :FOOTER
	call :TXTFileInputLoop
	set "errorflag="
)
if not defined indices call :MountDataInputLoop
if "%manual%"=="" call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoopOffline %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoopOffline %%a
call :FOOTER
echo Locking hiddenFeatures.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:RemovalSubMenuOffline
::===============================================================================================================
:MapsOffline
pushd "%~dp0"
if %win% leq 14393 goto:DISMRemovePackageOfflineMenu
if %win% gtr 14393 call :MapsList_15063
if %win% gtr 14393 set "txtpath2="
cls
call :MENUHEADER "   DISM REMOVE MAPS PACKAGE OFFLINE"
CHOICE /C AT /N /M "[A]uto or from [T]extfile ?:"
if %errorlevel%==1 set "errorflag=auto"
if %errorlevel%==2 (
	call :FOOTER
	call :TXTFileInputLoop
	set "errorflag="
)
if not defined indices call :MountDataInputLoop
if "%manual%"=="" call :FOOTER
echo Unlocking hidden Features.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /p "%mount%\%%a" /l
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoopOffline %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoopOffline %%a
call :FOOTER
echo Locking hiddenFeatures.
call :FOOTER
for /d %%a in (%indices%) do %install_wim_tweak% /h /p "%mount%\%%a" /l
call :FOOTER
pause
if exist "%SOFTWAREBKP%" del /s /q "%SOFTWAREBKP%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
goto:RemovalSubMenuOffline
:================================================================================================================
::===============================================================================================================
:TXTTelemetryDelete
set "txtpath=files\ServiceList.txt"
cls
call :MENUHEADER "   TELEMETRY DELETE FROM TXT"
CHOICE /C MT /N /M "[M]anual or from [T]extfile ?:"
if %errorlevel%==1 (
	if "%snames%"=="" set "snames=dmwappushservice"
	call :FOOTER
	echo Service Name^(s^): dmwappushservice, diagtrack or: %snames%
	call :FOOTER
	set /p snames=Enter Service Name^(s^) : ^>
	call :FOOTER
	for /d %%a in (%snames%) do (
		sc query %%a 1>nul && sc delete %%a
		if "!errorlevel!"=="0" echo Successfully deleted %%a
		if not "!errorlevel!"=="0" echo %%a not installed
	)
	call :FOOTER
	echo Releting Remnants Of Diagtrack
	call :FOOTER
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /v "{60E6D465-398E-4850-BE86-7EF7620A2377}" /t REG_SZ /d "v2.24|Action=Block|Active=TRUE|Dir=Out|App=C:\windows\system32\svchost.exe|Svc=DiagTrack|Name=Windows Telemetry|" /f
	::reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /v "{2765E0F4-2918-4A46-B9C9-43CDD8FCBA2B}" /t REG_SZ /d "v2.24|Action=Block|Active=TRUE|Dir=Out|App=C:\windows\systemapps\microsoft.windows.cortana_cw5n1h2txyewy\searchui.exe|Name=Search and Cortana application|AppPkgId=S-1-15-2-1861897761-1695161497-2927542615-642690995-327840285-2659745135-2630312742|" /f
	call :FOOTER
	pause
	goto:ManualRemovalMenu
)
if %errorlevel%==2 (
	call :TXTFileInputLoop
	echo Checking and deleting Services
	call :FOOTER
	for /f "tokens=*" %%a in (%txtpath%) do (
		sc query %%a 1>nul && sc delete %%a
		if "!errorlevel!"=="0" echo Successfully deleted %%a
		if not "!errorlevel!"=="0" echo %%a not installed
	)
	call :FOOTER
	echo Releting Remnants Of Diagtrack
	call :FOOTER
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /v "{60E6D465-398E-4850-BE86-7EF7620A2377}" /t REG_SZ /d "v2.24|Action=Block|Active=TRUE|Dir=Out|App=C:\windows\system32\svchost.exe|Svc=DiagTrack|Name=Windows Telemetry|" /f
	::reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /v "{2765E0F4-2918-4A46-B9C9-43CDD8FCBA2B}" /t REG_SZ /d "v2.24|Action=Block|Active=TRUE|Dir=Out|App=C:\windows\systemapps\microsoft.windows.cortana_cw5n1h2txyewy\searchui.exe|Name=Search and Cortana application|AppPkgId=S-1-15-2-1861897761-1695161497-2927542615-642690995-327840285-2659745135-2630312742|" /f
	call :FOOTER
	pause
	goto:ManualRemovalMenu
)
:================================================================================================================
::===============================================================================================================
:TelemetryDelete
cls
call :MENUHEADER "   TELEMETRY DELETE"
echo Checking and deleting Services
call :FOOTER
call :TelemetrySvcLoop
call :FOOTER
pause
goto:ServicesManagementMenu
:================================================================================================================
::===============================================================================================================
:ServiceDisable
cls
set "dissvc=WSearch, lfsvc, WbioSrvc, XblAuthManager, XboxNetApiSvc, XblGameSave"
call :MENUHEADER "   DIABLE UNNEEDED SERVICES"
echo Provide Service Name e.g.: %dissvc%
call :FOOTER
set /p dissvc=Set Name:
cls
call :MENUHEADER "   DISABLE UNNEEDED SERVICES"
for /d %%a in (%dissvc%) do call :ServiceQuery %%a
echo:
CHOICE /C CB /N /M "[C]hange or [B]ack ?:"
if %errorlevel%==2 goto:ServicesManagementMenu
cls
call :MENUHEADER "   DISABLE UNNEEDED SERVICES"
if "%dissvcval%"=="" set "dissvcval=disabled"
echo Set Service to : auto^|demand^|disabled^|delayed-auto
echo Default Choice : %dissvcval%
call :FOOTER
set /p dissvcval=Set State:
call :FOOTER
call :ServiceDisableLoop
call :FOOTER
pause
goto:ServicesManagementMenu
::===============================================================================================================
:ServiceQuery
sc query "%~1" | find "RUNNING" >nul 2>&1
if "!errorlevel!"=="0" set "runstate=RUNNING"
if "!errorlevel!"=="1" set "runstate=STOPPED"
for /f "tokens=3 delims= " %%g in ('reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\%~1" ^| findstr /c:" Start"') do (
	if %%g equ 0x1 set "state=AUTO DELAYED"
	if %%g equ 0x2 set "state=AUTO"
	if %%g equ 0x3 set "state=MANUAL"
	if %%g equ 0x4 set "state=DISABLED"
	echo SERVICE		 : 	%~1
	echo START  		 : 	!state!
	echo STATUS 		 : 	!runstate!
)
call :SHFOOTER
goto:eof
:================================================================================================================
::===============================================================================================================
:TXTWinTaskSchedulerDisable
pushd "%~dp0"
cd "%~dp0"
set "txtpath=files\task.scheduler.list.txt"
cls
call :MENUHEADER "   TASK SCHEDULE DISABLE FROM TXT"
call :TXTFileInputLoop
set "manual=active"
set "jump=active"
:================================================================================================================
::===============================================================================================================
:WinTaskSchedulerDisable
cls
call :MENUHEADER "   TASK SCHEDULE DISABLE"
if not "%manual%"=="active" call :WinTasksLoop
if "%manual%"=="active" call :TXTWinTasksLoop "%txtpath%"
call :FOOTER
pause
if defined jump goto:ManualRemovalMenu
if not defined jump goto:MainMenu
:================================================================================================================
::===============================================================================================================
:OfficeTaskSchedulerDisable
cls
call :MENUHEADER "   TASK SCHEDULE DISABLE"
call :OfficeTasksLoop
call :FOOTER
pause
goto:MainMenu
:================================================================================================================
::===============================================================================================================
:PSProvAppRemove
call :TITLE
cls
call :MENUHEADER "   POWERSHELL PROVISIONED APPS REMOVAL"
set "allappsremove=Bing, getstarted, photos, camera, store, xbox, netflix, twitter, messaging, windowscommunicationsapps, alarms, skype, zune, soundrecorder, phone, maps, people, office, candycrushsodasaga, farmville2countryescape, minecraftuwp, royalrevolt2, facebook, appconnector, 3dbuilder"
echo    [L] LIST ALL
echo:
echo    [M] MANUAL REMOVAL
echo:
echo    [A] AUTO REMOVAL
echo:
echo    [R] REINSTALL ALL
echo:
echo    [B] BACK
echo:
call :FOOTER
CHOICE /C LMARB /N /M "YOUR CHOICE ?:"
if %errorlevel%==5 goto:MainMenu
if %errorlevel%==1 (
	cls
	if "%names%"=="" set "names=Name,Version,PackageFullName,InstallLocation"
	set "psheader="
	call :MENUHEADER "   POWERSHELL PROVISIONED APPS REMOVAL"
	echo DEFAULT: Name,Version,PackageFullName,InstallLocation,Dependencies
	echo LAST   : %names%
	call :FOOTER
	set /p names=Checked Items:
	call :FOOTER
	powershell -executionpolicy remotesigned "Get-AppxPackage | select %names% | ForEach-Object {Write-Host "NAME    : [ $_.name ]" -f green -NoNewline ; Write-Host "VERSION: [ $_.version ]" -f yellow ; Write-Host "FULLNAME: $_.packagefullname" -f cyan ; Write-Host "LOCATION: $_.installLocation" -f white ; Write-Host "DEPENDENCIES: $_.dependencies" -f white ; Write-Host "!psheader!"}"
	pause
	goto:PSProvAppRemove
)
if %errorlevel%==2 (
	cls
	call :MENUHEADER "   POWERSHELL PROVISIONED APPS REMOVAL"
	if "%psremove%"=="" set "psremove=Bing"
	call :FOOTER
	echo EX: %psremove%
	call :PSProvAppRemoveLoop
	cls
	call :MENUHEADER "   POWERSHELL PROVISIONED APPS REMOVAL"
	echo CHECKING: !psremove!
	call :SHFOOTER
	for /d %%a in (!psremove!) do powershell -executionpolicy remotesigned Get-AppxPackage *%%a* ^| select Name,Version,PackageFullName,InstallLocation ^| ForEach-Object {Write-Host "NAME    : [ $_.name ]" -f green -NoNewline ; Write-Host "VERSION: [ $_.version ]" -f yellow ; Write-Host "FULLNAME: $_.packagefullname" -f cyan ; Write-Host "LOCATION: $_.installLocation" -f white ; Write-Host "!psheader!"}
	echo:
	CHOICE /C RB /N /M "[R]emove or [B]ack ?:"
	if !errorlevel!==2 goto:PSProvAppRemove
	for /d %%a in (!psremove!) do powershell -executionpolicy remotesigned Get-AppxPackage *%%a* ^| Remove-AppxPackage -verbose
	call :FOOTER
	pause
	goto:PSProvAppRemove
)
if %errorlevel%==3 (
	cls
	call :MENUHEADER "   POWERSHELL PROVISIONED APPS REMOVAL"
	set "psremove=%allappsremove%"
	call :PSProvAppRemoveLoop
	CHOICE /C SB /N /M "[S]ure or [B]ack ?:"
	if !errorlevel!==2 goto:PSProvAppRemove
	cls
	call :MENUHEADER "   POWERSHELL PROVISIONED APPS REMOVAL"
	echo REMOVING: !psremove!
	call :SHFOOTER
	for /d %%a in (!psremove!) do powershell -executionpolicy remotesigned Get-AppxPackage *%%a* ^| Remove-AppxPackage -verbose
	call :FOOTER
	pause
	goto:PSProvAppRemove
)
if %errorlevel%==4 (
	cls
	call :MENUHEADER "   REINSTALL ALL PROVISIONED APPS"
	echo    [E] EDGE
	echo:
	echo    [X] XBOX
	echo:
	echo    [A] ALL
	echo:
	echo    [B] BACK
	echo:
	call :FOOTER
	CHOICE /C EXAB /N /M "YOUR CHOICE ?:"
	if !errorlevel!==1 goto:PSProvAppEdgeRegister
	if !errorlevel!==2 goto:PSProvAppXboxRegister
	if !errorlevel!==3 goto:PSProvAppAllRegister
	if !errorlevel!==4 goto:PSProvAppRemove
)
:PSProvAppEdgeRegister
	set "psfile=%temp%\store.apps.ps1"
	echo Get-AppXPackage -AllUsers -Name *Edge* ^| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$^($_.InstallLocation^)\AppXManifest.xml” -Verbose}>%psfile%
	powershell -executionpolicy remotesigned "%psfile%"
	call :FOOTER
	pause
	if exist "%psfile%" del /s /q "%psfile%" >nul 2>&1
	goto:PSProvAppRemove
:PSProvAppXboxRegister
	set "psfile=%temp%\store.apps.ps1"
	echo Get-AppXPackage -AllUsers -Name *Xbox* ^| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$^($_.InstallLocation^)\AppXManifest.xml” -Verbose}>%psfile%
	powershell -executionpolicy remotesigned "%psfile%"
	call :FOOTER
	pause
	if exist "%psfile%" del /s /q "%psfile%" >nul 2>&1
	goto:PSProvAppRemove
:PSProvAppAllRegister
	set "psfile=%temp%\store.apps.ps1"
	echo Get-AppxPackage -AllUsers ^| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$^($_.InstallLocation^)\AppXManifest.xml” -Verbose}>%psfile%
	powershell -executionpolicy remotesigned "%psfile%"
	call :FOOTER
	pause
	if exist "%psfile%" del /s /q "%psfile%" >nul 2>&1
	goto:PSProvAppRemove
:================================================================================================================
::===============================================================================================================
:AppsOffline
cls
call :MENUHEADER "   POWERSHELL PROVISIONED APPS OFFLINE REMOVAL"
CHOICE /C MA /N /M "[M]anual or remove all [A]uto ?:"
if %errorlevel%==1 (
	call :FOOTER
	if not defined indices call :MountDataInputLoop
	for /d %%a in (!indices!) do start "Get-AppXProvisionedPackage for Index %%a" cmd /k powershell -executionpolicy remotesigned Get-AppXProvisionedPackage -Path "%mount%\%%a"
	cls
	call :MENUHEADER "   POWERSHELL PROVISIONED APPS OFFLINE REMOVAL"
	echo Enter PackageName for Removal. Can be a list like Name1, Name2, NameN
	call :FOOTER
	set /p packagename=Enter PackageName for Removal : ^>
	call :FOOTER
	for /d %%a in (!indices!) do for /d %%g in (!packagename!) do powershell -executionpolicy remotesigned Remove-AppXProvisionedPackage  -Path "%mount%\%%a" -PackageName %%g >nul 2>&1
	if not "!errorlevel!"=="0" echo Remove failed. APP is not installed.
	if "!errorlevel!"=="0" echo Removed %%a successfully.
	call :FOOTER
	)
	pause
	goto:DISMRemovePackageOfflineMenu
)
if %errorlevel%==2 (
	set "removeps=%~dp0removeps.ps1"
	CHOICE /C SB /N /M "[S]ure or [B]ack ?:"
	if !errorlevel!==2 goto:MainMenu
	cls
	call :MENUHEADER "   POWERSHELL PROVISIONED APPS OFFLINE REMOVAL"
	if not defined indices call :MountDataInputLoop
	for /d %%a in (!indices!) do (
		call :FOOTER
		echo Removing from Index %%a
		call :FOOTER
		powershell -executionpolicy remotesigned Get-AppXProvisionedPackage -Path "%mount%\%%a" ^| Remove-AppxProvisionedPackage -Path "%mount%\%%a" >nul 2>&1
		if not "!errorlevel!"=="0" echo Remove failed. APP is not installed.
		if "!errorlevel!"=="0" echo Removed from Index %%a successfully.
		call :FOOTER
	)
	pause
	goto:DISMRemovePackageOfflineMenu
)
:================================================================================================================
::===============================================================================================================
:TXTWriteHostsTask
pushd "%~dp0"
cd "%~dp0"
set "txtpath=files\hosts.addendum.txt"
cls
call :MENUHEADER "   WRITE TO HOSTS FILE FROM TXT"
call :TXTFileInputLoop
set "manual=active"
set "jump=active"
:================================================================================================================
::===============================================================================================================
:WriteHostsTask
call :FileDelete
timeout /t 3 >nul 2>&1
cls
call :MENUHEADER "   WRITE TO HOSTS FILE"
for /f "tokens=1,2,3,4 delims=	 " %%a in ('type %hostsfile%') do if not "%%a"=="#" echo %%a %%b>>"%hostsfilesort%"
if not exist %hostsfilesort% (
	for /f "delims=[]" %%a in ('find /n "::StartOf"^<"%~f0"') do more +%%a "%~f0" 1>%hostsadd%
	set "addlist=%hostsadd%"
	goto:EmptyHostsFile
)
call :CoolCleanProcess %hostsfilesort%
if "%manual%"=="" for /f "delims=[]" %%a in ('find /n "::StartOf"^<"%~f0"') do more +%%a "%~f0" 1>%hostsadd%
if "%manual%"=="active" type "%txtpath%">%hostsadd%
timeout /t 3 >nul 2>&1
call :CompareWithPowershell %hostsfilesort%, %hostsadd%, %addlist%
if not exist %addlist% (
	cls
	call :MENUHEADER "   WRITE TO HOSTS FILE"
	echo No Adresses to add found.
	call :FOOTER
	pause
	call :FileDelete
	goto:MainMenu
)
:EmptyHostsFile
echo copy-item "%windir%\System32\Drivers\etc\hosts" "%windir%\System32\Drivers\etc\hosts.backup">%ps1file%
echo Function Hosts_Updater ^(^){>>%ps1file%
echo: >>%ps1file%
echo $a = Get-Content "%windir%\System32\Drivers\etc\hosts">>%ps1file%
echo $b = Get-Content "%addlist%">>%ps1file%
echo: >>%ps1file%
echo ForEach ^($i in $b^) {>>%ps1file%
echo $a += "$i">>%ps1file%
echo $a ^| Set-Content "%windir%\System32\Drivers\etc\hosts">>%ps1file%
echo }}>>%ps1file%
echo: >>%ps1file%
echo Hosts_Updater>>%ps1file%
powershell -executionpolicy remotesigned -File "%ps1file%"
if exist %addlist% echo Successfully added found to hosts.
if not exist %addlist% echo Nothing to add found.
call :FOOTER
pause
call :FileDelete
if defined jump goto:ManualRemovalMenu
if not defined jump goto:MainMenu
:================================================================================================================
::===============================================================================================================
:CheckUpdateKey
set "regvalue="
set "regkey="
for /f "tokens=3 delims= " %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate"') do set "regvalue=%%a"
cls
call :MENUHEADER "CHECK WINDOWS UPDATE SETTING", " "
echo Set to             : 0 = Auto Update Enabled
echo Set to             : 1 = Auto Update Disabled
::echo Set to             : 0 = Inform, download manually
::echo Set to             : 1 = Auto install, if not in use
::echo Set to             : 2 = [Default] Fully Auto, if not battery
::echo Set to             : 3 = Auto, scheduled download
::echo Set to             : 4 = Auto, if not battery, if not in use
::echo Set to             : 5 = Disabled
call :FOOTER
if "%regvalue%"=="" echo REGKEY : NOT PRESENT
if defined regvalue echo Updates are set to : %regvalue%
call :FOOTER
CHOICE /C SB /N /M "[S]et now or [B]ack ?:"
if %errorlevel%==2 goto:MainMenu
call :FOOTER
set /p regvalue=Set Desired Value ^>:
call :FOOTER
call :KEYOFF %regvalue%
call :FOOTER
pause
goto:MainMenu
:================================================================================================================
::===============================================================================================================
:RemoveInboxAppsDeployment
cls
call :MENUHEADER "REMOVE INBOX APPS DEPLOYMENT", " "
set "key=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications"
FOR %%i IN (
MicrosoftEdge
PPIProjection
ContentDeliveryManager
Cortana
contactsupport
ParentalControls
SecureAssessmentBrowser
XboxGameCallableUI
SecHealthUI
HolographicFirstRun
HoloShell
holoitemplayerapp
Holograms
holocamera
) DO FOR /F %%a IN ('reg query %key% /s /f %%i /k 2^>nul ^| find /i "InboxApplications"') DO IF NOT ERRORLEVEL 1 (reg delete %%a /f 2>nul)
call :FOOTER
pause
goto:RegChangeMenu
:================================================================================================================
::===============================================================================================================
:DisableWindowsConsumerFeatures
set "regvalue=1"
set "dword=DisableWindowsConsumerFeatures"
set "regkey=HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent"
reg query "%regkey%" >nul 2>&1
if %errorlevel%==0 set "found=PRESENT"
if %errorlevel%==1 set "found=NOT PRESENT"
cls
call :MENUHEADER "DISABLE WINDOWS CONSUMER FEATURES", " "
echo KEY IS: %found%
call :FOOTER
if "%found%"=="NOT PRESENT" CHOICE /C SB /N /M "[S]et now or [B]ack ?:"
if %errorlevel%==2 goto:MainMenu
if "%found%"=="PRESENT" (
	for /f "skip=1 tokens=3 delims= " %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures"') do set "fvalue=%%a"
	if "!fvalue!"=="0x0" (
		echo But set to ALLOW.
		echo:
		goto:RemoveConsumerFeatures
		call :FOOTER
	)
	echo And set correctly. Nothing to do.
	call :FOOTER
	pause
	goto:RegChangeMenu
)
:RemoveConsumerFeatures
call :MENUHEADER "DISABLE WINDOWS CONSUMER FEATURES", " "
echo Setting Key: %regkey%
echo Setting Dword: %dword%
echo Setting Value: %regvalue%
call :FOOTER
reg add "%regkey%" /v "%dword%" /t REG_DWORD /d "%regvalue%" /f
call :FOOTER
pause
goto:RegChangeMenu
:================================================================================================================
::===============================================================================================================
:RestrictedReg
set "setacl=setacl\setacl.%vera%\setacl.exe"
set "hive=HKLM"
set "subkey=SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\DefaultMediaCost"
cls
call :MENUHEADER "LIST CONNECTION SETTINGS", ""
call :RegInputHive
cls
call :MENUHEADER "LIST CONNECTION SETTINGS", " "
call :RegOwner "%hive%", "%subkey%"
echo FOR: %hive%\%subkey%
call :FOOTER
echo ORIGINAL OWNER    : %owner% 
if "%owner%"=="TrustedInstaller" (echo ACCESS PERMISSION : RESTRICTED) else (echo ACCESS PERMISSION : GRANTED)
echo:
call :RegEntryList "%hive%", "%subkey%"
call :FOOTER
call :RegInputValue
cls
call :MENUHEADER "CHANGE REG KEY AND RESTORE PERMISSIONS", " "
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
cls
call :MENUHEADER "%hive%\%subkey%"
call :RegEntryList "%hive%", "%subkey%"
call :FOOTER
pause
goto:RegChangeMenu
:================================================================================================================
::===============================================================================================================
:Armageddon
for /f %%a in ('dir %WINDIR%\Microsoft.Net\Framework\v* /O:-N /B') do if "%%a"=="v3.5" set "netcheck=%%a"
set "setacl=setacl\setacl.%vera%\setacl.exe"
set "hive=HKLM"
set "subkey=SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\DefaultMediaCost"
set "dissvc=WSearch, XblAuthManager, XboxNetApiSvc, XblGameSave"
set "entry=Ethernet"
set "entryvalue=0x00000002"
set "entrytype=DWord"
set "roe=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnceEx"
set "dissvc=WSearch, XblAuthManager, XboxNetApiSvc, XblGameSave"
set "dissvcval=disabled"
set "check=%cd%\check.txt"
cls
call :MENUHEADER "AUTOMATIC TELEMETRY MAINTENANCE", ""
CHOICE /C PB /N /M "[P]roceed or [B]ack?:"
if %errorlevel%==2 goto:MainMenu
cls
call :MENUHEADER "AUTOMATIC TELEMETRY MAINTENANCE", ""
call :MaintenanceInputHive
cls
call :MENUHEADER "ENABLING .NET", ""
if not defined netcheck if not "%driveletter%"=="1" call :DISMEnableNETMain
if defined netcheck echo SKIPPED
call :MENUHEADER "SETTING WU TO MANUAL", ""
if not "%wudis%"=="1" call :KEYOFF 2
if "%wudis%"=="1" echo SKIPPED
call :MENUHEADER "DELETING TELEMTRY SERVICES", ""
call :TelemetrySvcLoop
call :MENUHEADER "DISABLING UNNEEDED SERVICES", ""
if not "%dissvc%"=="1" call :ServiceDisableLoop
if "%dissvc%"=="1" echo SKIPPED
call :MENUHEADER "DELETING TELEMETRY TASKS", ""
call :WinTasksLoop
call :MENUHEADER "SETTING CONNECTION TO METERED", ""
if not "%metdis%"=="1" (
	call :RegChangePermissions "%hive%", "%subkey%"
	call :RegChangeLoop "%hive%", "%subkey%", "%entry%", "%entrytype%", "%entryvalue%"
	call :RegRestorePermissions "%hive%", "%subkey%"
)
if "%metdis%"=="1" echo SKIPPED
if "%alldis%"=="1" if "%biodis%"=="1" if "%geodis%"=="1" if "%miradis%"=="1" if "%defdis%"=="1" if "%onedis%"=="1" if "%xdis%"=="1" if "%wustor%"=="1" if "%stodis%"=="1" (
	SCHTASKS /Delete /TN "onlogontemp" /F >nul 2>&1
	if exist "%check%" del /s /q "%check%" >nul
	if "%reboot%"=="0" call :AutoRestart
	call :Restart	
)	
call :MENUHEADER "STAGE 1 PROCESSED ...", ""
echo  Process will continue after REBOOT.
call :FOOTER
SCHTASKS /Create /TN "onlogontemp" /TR "cmd /c call %cd%\S-M-R-T.SECURITY.cmd :STAGE.2" /SC ONLOGON /RL Highest /F
echo %defdis%#%stodis%#%wustor%#%xdis%#%onedis%#%reboot%#%miradis%#%geodis%#%biodis%#%alldis%#%edgedis%#%seardis%#%holodis%#%sensdis%#%mapdis%>>!check!
if "%reboot%"=="0" call :AutoRestart
call :Restart
exit
)
:STAGE.2
pushd "%~dp0"
set "check=%cd%\check.txt"
set "dism=adk\win10.%vera%\dism.exe"
set "install_wim_tweak=adk\install_wim_tweak.exe"
set "packs=%cd%\Packages.txt"
if exist %check% for /f "tokens=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15 delims=#" %%a in (%check%) do (set "stodis=%%b")&&(set "wustor=%%c")&&(set "defdis=%%a")&&(set "onedis=%%d")&&(set "xdis=%%e")&&(set "reboot=%%f")&&(set "miradis=%%g")&&(set "geodis=%%h")&&(set "biodis=%%i")&&(set "alldis=%%j")&&(set "edgedis=%%k")&&(set "seardis=%%l")&&(set "holodis=%%m")&&(set "sensdis=%%n")&&(set "mapdis=%%o")
call :MENUHEADER "AUTOMATIC TELEMETRY MAINTENANCE STAGE 2", ""
::===============================================================================================================
:: EDGE
if "%edgedis%"=="1" goto:DefPurge
call :EdgeList
set "txtpath2="
call :MENUHEADER "   DISM REMOVE EDGE PACKAGE ONLINE"
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
::===============================================================================================================
:: DEFENDER
:DefPurge
if "%defdis%"=="1" goto:ODPurge
if %win% leq 14393 call :DefenderList_14393
if %win% leq 14393 call :DefenderList64_14393
if %win% gtr 14393 call :DefenderList_15063
if %win% gtr 14393 set "txtpath2="
call :MENUHEADER "   DISM REMOVE DEFENDER PACKAGE ONLINE"
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
::===============================================================================================================
:: ONEDRIVE
:ODPurge
if "%onedis%"=="1" goto:ODMira
call :OnedriveList
set "txtpath2="
call :MENUHEADER "   DISM REMOVE ONEDRIVE PACKAGE ONLINE"
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
::===============================================================================================================
:: MIRACAST
:ODMira
if "%miradis%"=="1" goto:ODGeo
if %win% leq 14393 call :MiracastList_14393
if %win% gtr 14393 call :MiracastList_15063
set "txtpath2="
call :MENUHEADER "   DISM REMOVE MIRACAST PACKAGE ONLINE"
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
::===============================================================================================================
:: GEOLOCATION
:ODGeo
if "%geodis%"=="1" goto:ODBio
if %win% leq 14393 call :GeolocationList_14393
if %win% leq 14393 call :GeolocationList64_14393
if %win% gtr 14393 call :GeolocationList_15063
if %win% gtr 14393 set "txtpath2="
call :MENUHEADER "   DISM REMOVE GEOLOCATION PACKAGE ONLINE"
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
::===============================================================================================================
:: BIOMETRICS
:ODBio
if "%biodis%"=="1" goto:ODAll
if %win% leq 14393 call :BiometricsList_14393
if %win% leq 14393 call :BiometricsList64_14393
if %win% gtr 14393 call :BiometricsList_15063
if %win% gtr 14393 set "txtpath2="
call :MENUHEADER "   DISM REMOVE BIOMETRICS PACKAGE ONLINE"
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
if "%vera%"=="x64" defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
::===============================================================================================================
:: ALLJOYN
:ODAll
if "%alldis%"=="1" goto:ODTele
if %win% leq 14393 call :AlljoynList_14393
if %win% leq 14393 call :AlljoynList64_14393
if %win% gtr 14393 call :AlljoynList_14393
if %win% gtr 14393 set "txtpath2="
call :MENUHEADER "   DISM REMOVE ALLJOYN PACKAGE ONLINE"
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
::===============================================================================================================
:: TELEMETRY
:ODTele
if %win% leq 14393 call :TelemetryList_14393
if %win% leq 14393 call :TelemetryList64_14393
if %win% gtr 14393 call :TelemetryList_14393
if %win% gtr 14393 set "txtpath2="
call :MENUHEADER "   DISM REMOVE TELEMETRY PACKAGE ONLINE"
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
::===============================================================================================================
:: SEARCH
if "%seardis%"=="1" goto:ODXbox
if %win% leq 14393 call :SearchList_14393
if %win% leq 14393 call :SearchList64_14393
if %win% gtr 14393 call :SearchList_15063
if %win% gtr 14393 set "txtpath2="
call :MENUHEADER "   DISM REMOVE SEARCH PACKAGE ONLINE"
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
if "%vera%"=="x64" if "%txtpath%"=="files\SearchList.txt" for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%searchlist%" del /s /q "%searchlist%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
::===============================================================================================================
:: XBOX
:ODXbox
if "%xdis%"=="1" goto:ODHolo
if %win% leq 14393 call :XBoxList_14393
if %win% leq 14393 call :XBoxList64_14393
if %win% gtr 14393 call :XBoxList_15063
if %win% gtr 14393 set "txtpath2="
call :MENUHEADER "   DISM REMOVE XBOX PACKAGE ONLINE"
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
::===============================================================================================================
:: HOLOGRAPHICS
:ODHolo
if "%holodis%"=="1" goto:ODSens
if %win% leq 14393 goto:ODSens
if %win% gtr 14393 call :HolographicsList_15063
if %win% gtr 14393 call :HolographicsList64_15063
call :MENUHEADER "   DISM REMOVE HOLOGRAPHICS PACKAGE ONLINE"
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
::===============================================================================================================
:: SENSORS
:ODSens
if "%sensdis%"=="1" goto:ODMaps
if %win% leq 14393 goto:ODMaps
if %win% gtr 14393 call :SensorsList_15063
if %win% gtr 14393 call :SensorsList64_15063
call :MENUHEADER "   DISM REMOVE SENSORS PACKAGE ONLINE"
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
::===============================================================================================================
:: MAPS
:ODMaps
if "%mapdis%"=="1" goto:ODReboot
if %win% leq 14393 goto:ODReboot
if %win% gtr 14393 call :MapsList_15063
if %win% gtr 14393 set "txtpath2="
call :MENUHEADER "   DISM REMOVE MAPS PACKAGE ONLINE"
echo Unlocking hidden Features.
call :FOOTER
%install_wim_tweak% /o /d /l
call :FOOTER
for /f "tokens=*" %%a in (%txtpath%) do call :DISMRemovePackageLoop %%a
if "%vera%"=="x64" if defined txtpath2 for /f "tokens=*" %%a in (%txtpath2%) do call :DISMRemovePackageLoop %%a
call :FOOTER
%install_wim_tweak% /h /o /d /l
call :FOOTER
if exist "%txtpath%" del /s /q "%txtpath%" >nul
if exist "%txtpath2%" del /s /q "%txtpath2%" >nul
if exist "%packs%" del /s /q "%packs%" >nul
::===============================================================================================================
:ODReboot
call :MENUHEADER "STAGE 2 PROCESSED ...", ""
if "%wustor%"=="1" if "%stodis%"=="1" (
	SCHTASKS /Delete /TN "onlogontemp" /F
	if exist "%check%" del /s /q "%check%" >nul
	if "%reboot%"=="0" call :AutoRestart
	call :Restart
	exit
)
echo  Process will continue after REBOOT.
call :FOOTER
SCHTASKS /Create /TN "onlogontemp" /TR "cmd /c call %cd%\S-M-R-T.SECURITY.cmd :STAGE.3" /SC ONLOGON /RL Highest /F
if "%wustor%"=="1" if exist "%check%" del /s /q "%check%" >nul
echo %defdis%#%stodis%#%wustor%#%xdis%#%onedis%#%reboot%#%miradis%#%geodis%#%biodis%#%alldis%#%edgedis%#%seardis%#%holodis%#%sensdis%#%mapdis%>>!check!
if "%reboot%"=="0" call :AutoRestart
call :Restart
exit
)
:STAGE.3
pushd "%~dp0"
set "check=%cd%\check.txt"
set "dism=adk\win10.%vera%\dism.exe"
set "install_wim_tweak=adk\install_wim_tweak.exe"
set "packs=%cd%\Packages.txt"
set "allappsremove=Bing, getstarted, photos, camera, store, xbox, netflix, twitter, messaging, windowscommunicationsapps, alarms, skype, zune, soundrecorder, phone, maps, people, office, candycrushsodasaga, farmville2countryescape, minecraftuwp, royalrevolt2, facebook, appconnector, 3dbuilder"
if exist %check% for /f "tokens=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15 delims=#" %%a in (%check%) do (set "stodis=%%b")&&(set "wustor=%%c")&&(set "defdis=%%a")&&(set "onedis=%%d")&&(set "xdis=%%e")&&(set "reboot=%%f")&&(set "miradis=%%g")&&(set "geodis=%%h")&&(set "biodis=%%i")&&(set "alldis=%%j")&&(set "edgedis=%%k")&&(set "seardis=%%l")&&(set "holodis=%%m")&&(set "sensdis=%%n")&&(set "mapdis=%%o")
call :MENUHEADER "AUTOMATIC TELEMETRY MAINTENANCE STAGE 3", ""
if "%stodis%"=="1" goto:WUStor
set "removeps=%~dp0removeps.ps1"
for /d %%a in (%allappsremove%) do powershell -executionpolicy remotesigned Get-AppxPackage *%%a* ^| Remove-AppxPackage -verbose
:WUStor
if "%wustor%"=="1" goto:Stage.Out
set "count=0"&&set "count2=0"
for /r "%wustor%" %%i in (*.*) do set /a "count+=1"
call :MENUHEADER "INSTALLING %count% FOUND UPDATES"
if /i "%count%"=="0" (
	echo No Updates To Install Found
	SCHTASKS /Delete /TN "onlogontemp" /F >nul 2>&1
	if exist "%check%" del /s /q "%check%" >nul
	goto:MainMenu
)
for /r "%wustor%" %%i in (*.*) do (
	call :MasterInstallUpdates %%i, %%~ni
)
:Stage.Out
call :MENUHEADER "STAGE 3 PROCESSED ...", ""
echo  Process will continue after REBOOT.
SCHTASKS /Delete /TN "onlogontemp" /F >nul 2>&1
if exist "%check%" del /s /q "%check%" >nul
timeout /t 5
if "%reboot%"=="0" call :AutoRestart
call :Restart
goto:MainMenu
:================================================================================================================
::===============================================================================================================
::IP RE-ROUTE
:IPReRoute
call :TITLE
if "%ipreroute%"=="" set "ipreroute=files\ip.reroute.txt"
cls
call :MENUHEADER "IP ADRESSES REROUTING", ""
echo [S] SHOW LIST
echo [C] CHANGE LIST
echo:
echo [R] REROUTE
echo [U] UNDO REROUTE
echo:
echo [W] CHECK SYSTEM SETTINGS
echo:
echo [B] BACK
call :FOOTER
CHOICE /C SCRUWB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto:ShowIPRerouteList
if %errorlevel%==2 goto:ChangeIPRerouteList
if %errorlevel%==3 goto:IPRerouteListTask
if %errorlevel%==4 goto:IPRerouteListUndo
if %errorlevel%==5 goto:CheckIPReroute
if %errorlevel%==6 goto:WriteHostsTaskMenu
goto:IPReRoute
:CheckIPReroute
cls
call :MENUHEADER "IP ADRESSES REROUTING", ""
CHOICE /C 46 /N /M "IPv[4] or IPv[6] ?:"
if %errorlevel%==2 goto:CheckIPReroute.v6
route print -4
call :FOOTER
pause
goto:IPReRoute
:CheckIPReroute.v6
route print -6
call :FOOTER
pause
goto:IPReRoute
:ShowIPRerouteList
cls
call :MENUHEADER "IP ADRESSES REROUTING", ""
if exist "%ipreroute%" type "%ipreroute%"
call :FOOTER
pause
goto:IPReRoute
:ChangeIPRerouteList
cls
call :MENUHEADER "IP ADRESSES REROUTING", ""
echo Default : %ipreroute%
echo:
set /p ipreroute=Enter Path to TXT ? : ^>
call :FOOTER
CHOICE /C RB /N /M "[R]eroute now or [B]ack ?:"
if %errorlevel%==1 goto:IPRerouteListTask
if %errorlevel%==2 goto:IPReRoute
:IPRerouteListTask
cls
call :MENUHEADER "IP ADRESSES REROUTING", ""
CHOICE /C SB /N /M "[S]ure or [B]ack ?:"
if %errorlevel%==2 goto:IPReRoute
cls
call :MENUHEADER "IP ADRESSES REROUTING", ""
echo Rerouting IPs from list.
call :FOOTER
for /f "tokens=*" %%a in (%ipreroute%) do for /f "tokens=*" %%A in ('route -p add %%a MASK 255.255.255.255 0.0.0.0') do (
	echo RE-ROUTING: %%a ^| TO: 0.0.0.0 ^| RESULT: %%A
)
call :FOOTER
pause
goto:IPReRoute
:IPRerouteListUndo
cls
call :MENUHEADER "UNDO IP ADRESSES REROUTING", ""
CHOICE /C SB /N /M "[S]ure or [B]ack ?:"
if %errorlevel%==2 goto:IPReRoute
cls
call :MENUHEADER "UNDO IP ADRESSES REROUTING", ""
echo Rerouting IPs from list.
call :FOOTER
for /f "tokens=*" %%a in (%ipreroute%) do for /f "tokens=*" %%A in ('route delete %%a') do (
	echo UN-ROUTING: %%a ^| RESULT: %%A
)
call :FOOTER
pause
goto:IPReRoute
:================================================================================================================
::===============================================================================================================
::RESOLVE ADRESSES TO IPs
:ResolveNames
call :TITLE
set "adressdown=%temp%\adressdown.txt"
set "iplisttemp=%temp%\iplisttemp.txt"
set "infolisttemp=%temp%\infolisttemp.txt"
set "cleaniplisttemp=%temp%\cleaniplisttemp.txt"
set "templist=%temp%\templist.txt"
set "clean=%temp%\clean.ps1"
cls
call :MENUHEADER "RESOLVE ADRESSES TO IPs", ""
echo [M] MANUAL INPUT
echo:
echo [T] TXT FILE RESOLVE
echo:
echo [B] BACK
call :FOOTER
CHOICE /C MTB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto:ResolveNamesManual
if %errorlevel%==2 goto:ResolveNamesText
if %errorlevel%==3 goto:WriteHostsTaskMenu
goto:ResolveNames
:ResolveNamesManual
cls
call :MENUHEADER "RESOLVE ADRESSES TO IPs", ""
echo Enter web site adress.
echo Default : %adress%
echo:
set /p adress=Enter web site adress ? : ^>
call :FOOTER
call :ResolveNamesTextLoop %adress%
call :FOOTER
echo RESOLVES TO:
echo:
if exist "%iplisttemp%" type %iplisttemp%
call :FOOTER
pause
if exist "%iplisttemp%" del /s /q "%iplisttemp%" >nul 2>&1
if exist "%infolisttemp%" del /s /q "%infolisttemp%" >nul 2>&1
if exist "%adressdown%" del /s /q "%adressdown%" >nul 2>&1
goto:ResolveNames
:ResolveNamesText
cls
call :MENUHEADER "RESOLVE ADRESSES TO IPs", ""
echo Default : %adresstxt%
echo:
set /p adresstxt=Enter Path to TXT ? : ^>
call :FOOTER
CHOICE /C RB /N /M "[R]esolve now or [B]ack ?:"
if %errorlevel%==1 goto:ResolveNamesTextTask
if %errorlevel%==2 goto:ResolveNames
:ResolveNamesTextTask
cls
call :MENUHEADER "RESOLVE ADRESSES TO IPs", ""
echo Resolving names from list.
call :FOOTER
for /f "tokens=*" %%a in (%adresstxt%) do (
	call :ResolveNamesTextLoop %%a
	if exist "%adressdown%" del /s /q "%adressdown%" >nul 2>&1
)
cls
call :MENUHEADER "RESOLVE ADRESSES TO IPs", ""
call :CoolCleanProcess %iplisttemp%
CHOICE /C FC /N /M "Show [F]ull Info or [C]leaned IP list ?:"
if %errorlevel%==1 set "choice=2"
if %errorlevel%==2 set "choice=1"
call :FOOTER
if "%choice%"=="1" if exist "%iplisttemp%" type %iplisttemp%
if "%choice%"=="2" if exist "%infolisttemp%" type %infolisttemp%
call :FOOTER
CHOICE /C SB /N /M "[S]ave output or [B]ack ?:"
if %errorlevel%==2 (
	if exist "%iplisttemp%" del /s /q "%iplisttemp%" >nul 2>&1
	if exist "%infolisttemp%" del /s /q "%infolisttemp%" >nul 2>&1
	if exist "%cleaniplisttemp%" del /s /q "%cleaniplisttemp%" >nul 2>&1
	if exist "%adressdown%" del /s /q "%adressdown%" >nul 2>&1
	if exist "%templist%" del /s /q "%templist%" >nul 2>&1
	goto:ResolveNames
)
call :MENUHEADER "RESOLVE ADRESSES TO IPs", ""
echo Enter Path to TXT file.
call :FOOTER
set /p txtpath=Enter Path to TXT file:
call :FOOTER
CHOICE /C FC /N /M "Save [F]ull Info or [C]leaned IP list ?:"
if %errorlevel%==1 set "choice=2"
if %errorlevel%==2 set "choice=1"
call :FOOTER
if "%choice%"=="1" move "%iplisttemp%" "%txtpath%"
if "%choice%"=="2" move "%infolisttemp%" "%txtpath%"
if exist "%cleaniplisttemp%" del /s /q "%cleaniplisttemp%" >nul 2>&1
if exist "%iplisttemp%" del /s /q "%iplisttemp%" >nul 2>&1
if exist "%infolisttemp%" del /s /q "%infolisttemp%" >nul 2>&1
if exist "%adressdown%" del /s /q "%adressdown%" >nul 2>&1
if exist "%templist%" del /s /q "%templist%" >nul 2>&1
goto:ResolveNames
:================================================================================================================
:================================================================================================================
:================================================================================================================
::===============================================================================================================
::TARGET LOOPS
:================================================================================================================
::===============================================================================================================
::CLEAN LOOP
::CLEAN DOUBLES FROM WU LIST BY KEEPING ORIGINAL LIST ORDER
:CoolCleanProcess
if exist %~1 (
	if exist "%templist%" del /s /q "%templist%" >nul
	if exist "%cleaniplisttemp%" del /s /q "%cleaniplisttemp%" >nul
	type %~1>>%templist%
	echo $hash = @{}>%clean%
	echo gc "%templist%" ^| %%{ if ^($hash.$_ -eq $nqull^) { $_ }; $hash.$_ = 1 } ^> "%cleaniplisttemp%">>%clean%
	powershell -executionpolicy bypass -File %clean% 
	del /s /q "%~1" >nul
	del /s /q "%clean%" >nul
	type %cleaniplisttemp%>>%~1
)
goto:eof
::===============================================================================================================
::RESOLVE NAMES TEXT LOOP
:ResolveNamesTextLoop
%wget% -nc "http://www.mydnstools.info/resolve/%~1" --no-check-certificate -O "%adressdown%"
for /f "tokens=*" %%a in ('type %adressdown% ^| findstr /c:"resolves"') do for /f "tokens=7* delims=< " %%A in ("%%a") do (
	echo %%A  :  %~1>>%infolisttemp%
	if not '%~1' equ '%%A' echo %%A>>%iplisttemp%
)
goto:eof
:================================================================================================================
::===============================================================================================================
::UPDATE INSTALL LOOP
:MasterInstallUpdates
set /a "count2+=1"
echo Installing: %~2  : !count2! of %count%
WUSA "%~1" /quiet /norestart
goto:eof
:================================================================================================================
::===============================================================================================================
:================================================================================================================
::===============================================================================================================
::AUTOMATIC TELEMETRY MAINTENANCE
:MaintenanceInputHive
(set "driveletter=d")&&(set "edgedis=0")&&(set "reboot=0")&&(set "alldis=0")&&(set "biodis=0")&&(set "geodis=0")&&(set "mirdis=0")&&(set "stodis=0")&&(set "wustor=1")&&(set "svcdis=0")&&(set "wudis=0")&&(set "metdis=0")&&(set "defdis=0")&&(set "onedis=0")&&(set "xdis=0")&&(set "seardis=0")&&(set "holodis=0")&&(set "sensdis=0")&&(set "mapdis=0")
if defined netcheck goto:InputNextMain
echo Enter Drive Letter of mounted Win 10 ISO without colon.
echo Default : %driveletter%
echo:
set /p driveletter=Enter Drive Letter : ^>
::===============================================================================================================
call :FOOTER
:InputNextMain
echo Install Updates? Path=Yes, 1=No
echo Default : %wustor%
echo:
set /p wustor=Install Updates? : ^>
::===============================================================================================================
call :FOOTER
echo Disable Unneeded Services? Names=Yes, 1=No
echo Provide Service Name e.g.: %dissvc%
echo Default : %dissvc%
echo:
set /p dissvc=Disable Unneeded Services? : ^>
::===============================================================================================================
call :FOOTER
echo Set Internet Connection to Metered? 0=Yes, 1=No
echo Default : %metdis%
echo:
set /p metdis=Set Internet Connection to Metered? : ^>
::===============================================================================================================
call :FOOTER
echo Purge Edge? 0=Yes, 1=No
echo Default : %edgedis%
echo:
set /p edgedis=Purge Edge? : ^>
::===============================================================================================================
call :FOOTER
echo Purge Defender? 0=Yes, 1=No
echo Default : %defdis%
echo:
set /p defdis=Purge Defender? : ^>
::===============================================================================================================
call :FOOTER
echo Purge Miracast? 0=Yes, 1=No
echo Default : %mirdis%
echo:
set /p mirdis=Purge Miracast? : ^>
::===============================================================================================================
call :FOOTER
echo Purge Geolocation? 0=Yes, 1=No
echo Default : %geodis%
echo:
set /p geodis=Purge Geolocation? : ^>
::===============================================================================================================
call :FOOTER
echo Purge Biometrics? 0=Yes, 1=No
echo Default : %biodis%
echo:
set /p biodis=Purge Biometrics? : ^>
::===============================================================================================================
call :FOOTER
echo Purge Alljoyn? 0=Yes, 1=No
echo Default : %alldis%
echo:
set /p alldis=Purge Alljoyn? : ^>
::===============================================================================================================
call :FOOTER
echo Purge OneDrive? 0=Yes, 1=No
echo Default : %onedis%
echo:
set /p onedis=Purge OneDrive? : ^>
::===============================================================================================================
call :FOOTER
echo Purge Xbox? 0=Yes, 1=No
echo Default : %xdis%
echo:
set /p xdis=Purge Xbox? : ^>
::===============================================================================================================
call :FOOTER
echo Purge Search? 0=Yes, 1=No
echo Default : %seardis%
echo:
set /p seardis=Purge Search? : ^>
::===============================================================================================================
call :FOOTER
echo Purge Holographics [15063]? 0=Yes, 1=No
echo Default : %holodis%
echo:
set /p holodis=Purge Holographics? : ^>
::===============================================================================================================
call :FOOTER
echo Purge Sensors [15063]? 0=Yes, 1=No
echo Default : %sensdis%
echo:
set /p sensdis=Purge Sensors? : ^>
::===============================================================================================================
call :FOOTER
echo Purge Maps [15063]? 0=Yes, 1=No
echo Default : %mapdis%
echo:
set /p mapdis=Purge Maps? : ^>
::===============================================================================================================
call :FOOTER
echo Set WU to Manual? 0=Yes, 1=No
echo Default : %wudis%
echo:
set /p wudis=Set WU to Manual? : ^>
::===============================================================================================================
call :FOOTER
echo Remove Store Apps? 0=Yes, 1=No
echo Default : %stodis%
echo:
set /p stodis=Remove Store Apps? : ^>
::===============================================================================================================
call :FOOTER
echo AUTOMATED REBOOT? 0=Yes, 1=No
echo Default : %reboot%
echo:
set /p reboot=AUTOMATED REBOOT? : ^>
goto:eof
:================================================================================================================
::===============================================================================================================
::SET INTERNET CONNECTION TO METERED
:RegInputHive
echo Enter Hive Abreviation 'HKLM'
echo Default: %hive%
echo:
echo Enter Subkey 'SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\DefaultMediaCost'
echo Default: %subkey%
call :FOOTER
set /p hive=Enter Hive :
set /p subkey=Enter Subkey :
goto:eof
:================================================================================================================
::===============================================================================================================
:RegInputValue
if "%entry%"=="" set "entry=Ethernet"
if "%entryvalue%"=="" set "entryvalue=0x00000002"
if "%entrytype%"=="" set "entrytype=DWord"
echo Enter Entry name 'Ethernet'
echo Default: %entry%
echo:
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
:================================================================================================================
::===============================================================================================================
:RegEntryList
set "count=0"
for /f "tokens=* delims=" %%g in ('"powershell Get-ItemProperty '%~1:\%~2' ^| Select * -exclude PS*"') do (
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
:================================================================================================================
::===============================================================================================================
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
:================================================================================================================
::===============================================================================================================
::SERVICE DISABLE LOOP
:ServiceDisableLoop
for /d %%a in (%dissvc%) do (
	sc query "%%a" | find "RUNNING" >nul 2>&1 && net stop "%%a"
	for /f "tokens=3 delims= " %%g in ('reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\%%a" ^| findstr /c:" Start"') do sc config "%%a" start= %dissvcval%
)
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE EDGELIST
:EdgeList
set "txtpath=%temp%\edgelist.txt"
echo Microsoft-Windows-Internet-Browser-Package>"%txtpath%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE DEFENDERLIST
:DefenderList_14393
set "txtpath=%temp%\defenderlist.txt"
echo Windows-Defender-AM-Default-Definitions-Package>"%txtpath%"
echo Windows-Defender-AppLayer-Group-amcore-Package>>"%txtpath%"
echo Windows-Defender-AppLayer-Group-amcore-Package>>"%txtpath%"
echo Windows-Defender-AppLayer-Group-onecore-Package>>"%txtpath%"
echo Windows-Defender-AppLayer-Group-onecore-Package>>"%txtpath%"
echo Windows-Defender-AppLayer-Group-Package>>"%txtpath%"
echo Windows-Defender-AppLayer-Group-Package>>"%txtpath%"
echo Windows-Defender-Client-Package>>"%txtpath%"
echo Windows-Defender-Client-Package>>"%txtpath%"
echo Windows-Defender-CloudClean-Group-Package>>"%txtpath%"
echo Windows-Defender-Core-Group-amcore-Package>>"%txtpath%"
echo Windows-Defender-Core-Group-amcore-Package>>"%txtpath%"
echo Windows-Defender-Core-Group-onecore-Package>>"%txtpath%"
echo Windows-Defender-Core-Group-onecore-Package>>"%txtpath%"
echo Windows-Defender-Core-Group-Package>>"%txtpath%"
echo Windows-Defender-Core-Group-Package>>"%txtpath%"
echo Windows-Defender-Group-Policy-Package>>"%txtpath%"
echo Windows-Defender-Group-Policy-Package>>"%txtpath%"
echo Windows-Defender-Management-Group-amcore-Package>>"%txtpath%"
echo Windows-Defender-Management-Group-amcore-Package>>"%txtpath%"
echo Windows-Defender-Management-Group-onecore-Package>>"%txtpath%"
echo Windows-Defender-Management-Group-onecore-Package>>"%txtpath%"
echo Windows-Defender-Management-Group-Package>>"%txtpath%"
echo Windows-Defender-Management-Group-Package>>"%txtpath%"
echo Windows-Defender-Management-MDM-Group-Package>>"%txtpath%"
echo Windows-Defender-Management-Powershell-Group-Package>>"%txtpath%"
echo Windows-Defender-Nis-Group-Package>>"%txtpath%"
echo Windows-Defender-ApplicationGuard-Inbox-Package>>"%txtpath%"
echo Windows-Defender-ApplicationGuard-Inbox-Package>>"%txtpath%"
:DefenderList_15063
set "txtpath=%temp%\defenderlist.txt"
echo Windows-Defender-AM-Default-Definitions-Package>"%txtpath%"
echo Windows-Defender-AppLayer-Group-amcore-Package>>"%txtpath%"
echo Windows-Defender-AppLayer-Group-amcore-Package>>"%txtpath%"
echo Windows-Defender-AppLayer-Group-onecore-Package>>"%txtpath%"
echo Windows-Defender-AppLayer-Group-onecore-Package>>"%txtpath%"
echo Windows-Defender-AppLayer-Group-Package>>"%txtpath%"
echo Windows-Defender-AppLayer-Group-Package>>"%txtpath%"
echo Windows-Defender-Client-Package>>"%txtpath%"
echo Windows-Defender-Client-Package>>"%txtpath%"
echo Windows-Defender-CloudClean-Group-Package>>"%txtpath%"
echo Windows-Defender-Core-Group-amcore-Package>>"%txtpath%"
echo Windows-Defender-Core-Group-amcore-Package>>"%txtpath%"
echo Windows-Defender-Core-Group-onecore-Package>>"%txtpath%"
echo Windows-Defender-Core-Group-onecore-Package>>"%txtpath%"
echo Windows-Defender-Core-Group-Package>>"%txtpath%"
echo Windows-Defender-Core-Group-Package>>"%txtpath%"
echo Windows-Defender-Group-Policy-Package>>"%txtpath%"
echo Windows-Defender-Group-Policy-Package>>"%txtpath%"
echo Windows-Defender-Management-Group-amcore-Package>>"%txtpath%"
echo Windows-Defender-Management-Group-amcore-Package>>"%txtpath%"
echo Windows-Defender-Management-Group-onecore-Package>>"%txtpath%"
echo Windows-Defender-Management-Group-onecore-Package>>"%txtpath%"
echo Windows-Defender-Management-Group-Package>>"%txtpath%"
echo Windows-Defender-Management-Group-Package>>"%txtpath%"
echo Windows-Defender-Management-MDM-Group-Package>>"%txtpath%"
echo Windows-Defender-Management-Powershell-Group-Package>>"%txtpath%"
echo Windows-Defender-Nis-Group-Package>>"%txtpath%"
echo Windows-Defender-ApplicationGuard-Inbox-Package>>"%txtpath%"
echo Windows-Defender-ApplicationGuard-Inbox-Package>>"%txtpath%"
echo Microsoft-Windows-SenseClient-Package>>"%txtpath%"
echo Microsoft-Windows-SenseClient-Package>>"%txtpath%"
echo Windows-Shield-Provider-Core-Package>>"%txtpath%"
echo Windows-Shield-Provider-Core-Package>>"%txtpath%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE DEFENDERLIST x64
:DefenderList64_14393
set "txtpath2=%temp%\defenderlist.x64.txt"
echo Windows-Defender-AppLayer-Group-WOW64-Package>"%txtpath2%"
echo Windows-Defender-AppLayer-Group-WOW64-Package>>"%txtpath2%"
echo Windows-Defender-Client-WOW64-Package>>"%txtpath2%"
echo Windows-Defender-Client-WOW64-Package>>"%txtpath2%"
echo Windows-Defender-Core-Group-WOW64-amcore-Package>>"%txtpath2%"
echo Windows-Defender-Core-Group-WOW64-amcore-Package>>"%txtpath2%"
echo Windows-Defender-Core-Group-WOW64-onecore-Package>>"%txtpath2%"
echo Windows-Defender-Core-Group-WOW64-onecore-Package>>"%txtpath2%"
echo Windows-Defender-Core-Group-WOW64-Package>>"%txtpath2%"
echo Windows-Defender-Core-Group-WOW64-Package>>"%txtpath2%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE ONEDRIVELIST
:OnedriveList
set "txtpath=%temp%\onedrivelist.txt"
echo Microsoft-Windows-OneDrive-Setup-Package>"%txtpath%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE MIRACASTLIST
:MiracastList_14393
set "txtpath=%temp%\miracastlist.txt"
echo Microsoft-OneCore-Miracast-Common-Package>"%txtpath%"
echo Microsoft-OneCore-Miracast-Common-Package>>"%txtpath%"
echo Microsoft-OneCore-Miracast-Transmitter-Package>>"%txtpath%"
echo Microsoft-OneCore-Miracast-Transmitter-Package>>"%txtpath%"
echo Microsoft-OneCore-Miracast-Transmitter-shell-Package>>"%txtpath%"
echo Microsoft-OneCore-Miracast-Transmitter-shell-Package>>"%txtpath%"
echo Microsoft-OneCore-Miracast-Transmitter-windows-Package>>"%txtpath%"
echo Microsoft-OneCore-Miracast-Transmitter-windows-Package>>"%txtpath%"
echo Microsoft-OneCore-Miracast-Transmitter-Package>>"%txtpath%"
echo Microsoft-OneCore-Miracast-Transmitter-Package>>"%txtpath%"
echo Microsoft-OneCore-Multimedia-CastingTransmitter-MiracastView-Package>>"%txtpath%"
echo Microsoft-OneCore-Multimedia-CastingTransmitter-MiracastView-Package>>"%txtpath%"
echo Microsoft-Windows-MiracastView-AppX-Package>>"%txtpath%"
echo Microsoft-Windows-MiracastView-AppX-Package>>"%txtpath%"
goto:eof
:MiracastList_15063
set "txtpath=%temp%\miracastlist.txt"
echo Microsoft-OneCore-Miracast-Transmitter-Package>"%txtpath%"
echo Microsoft-OneCore-Miracast-Transmitter-Package>>"%txtpath%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE GEOLOCATIONLIST
:GeolocationList_14393
set "txtpath=%temp%\geolocationlist.txt"
echo Microsoft-Windows-Geolocation-onecoreuap-Package>"%txtpath%"
echo Microsoft-Windows-Geolocation-onecoreuap-Package>>"%txtpath%"
echo Microsoft-Windows-Geolocation-Package>>"%txtpath%"
echo Microsoft-Windows-Geolocation-Package>>"%txtpath%"
echo Microsoft-Windows-Geolocation-shellcommon-Package>>"%txtpath%"
echo Microsoft-Windows-Geolocation-shellcommon-Package>>"%txtpath%"
echo Microsoft-Windows-Geolocation-drivers-Package>>"%txtpath%"
echo Microsoft-Windows-Geolocation-drivers-Package>>"%txtpath%"
echo Microsoft-Windows-Geolocation-shell-Package>>"%txtpath%"
echo Microsoft-Windows-Geolocation-shell-Package>>"%txtpath%"
goto:eof
:GeolocationList_15063
set "txtpath=%temp%\geolocationlist.txt"
echo Microsoft-Windows-Geolocation-Package>>"%txtpath%"
echo Microsoft-Windows-Geolocation-Package>>"%txtpath%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE GEOLOCATIONLIST x64
:GeolocationList64_14393
set "txtpath2=%temp%\geolocationlist.x64.txt"
echo Microsoft-Windows-Geolocation-WOW64-Package>"%txtpath2%"
echo Microsoft-Windows-Geolocation-WOW64-Package>>"%txtpath2%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE BIOMETRICSLIST
:BiometricsList_14393
set "txtpath=%temp%\biometricslist.txt"
echo Microsoft-OneCore-Biometrics-onecore-Package>"%txtpath%"
echo Microsoft-OneCore-Biometrics-onecore-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-ds-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-ds-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-FaceRecognition-onecore-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-FaceRecognition-onecore-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-FaceRecognition-ds-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-FaceRecognition-ds-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-FaceRecognition-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-FaceRecognition-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-FaceRecognition-windows-Package4>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-FaceRecognition-windows-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-Fingerprint-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-Fingerprint-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-Package>>"%txtpath%"
:BiometricsList_15063
set "txtpath=%temp%\biometricslist.txt"
echo Microsoft-OneCore-Biometrics-onecore-Package>"%txtpath%"
echo Microsoft-OneCore-Biometrics-onecore-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-Fingerprint-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-Fingerprint-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-Package>>"%txtpath%"
echo Microsoft-OneCore-Biometrics-Package>>"%txtpath%"
echo Media-FaceAnalysis-Package>>"%txtpath%"
echo Media-FaceAnalysis-Package>>"%txtpath%"
echo Microsoft-OneCore-CameraCaptureUI-Package>>"%txtpath%"
echo Microsoft-OneCore-CameraCaptureUI-Package>>"%txtpath%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE BIOMETRICSLIST x64
:BiometricsList64_14393
set "txtpath2=%temp%\biometricslist.x64.txt"
echo Microsoft-OneCore-Biometrics-Fingerprint-WOW64-Package>"%txtpath2%"
echo Microsoft-OneCore-Biometrics-Fingerprint-WOW64-Package>>"%txtpath2%"
echo Microsoft-OneCore-Biometrics-WOW64-onecore-Package>>"%txtpath2%"
echo Microsoft-OneCore-Biometrics-WOW64-onecore-Package>>"%txtpath2%"
echo Microsoft-OneCore-Biometrics-WOW64-Package>>"%txtpath2%"
echo Microsoft-OneCore-Biometrics-WOW64-Package>>"%txtpath2%"
echo Microsoft-OneCore-Biometrics-WOW64-ds-Package>>"%txtpath2%"
echo Microsoft-OneCore-Biometrics-WOW64-ds-Package>>"%txtpath2%"
echo Microsoft-OneCore-Biometrics-WOW64-Package>>"%txtpath2%"
echo Microsoft-OneCore-Biometrics-WOW64-Package>>"%txtpath2%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE ALLJOYNLIST
:AlljoynList_14393
set "txtpath=%temp%\alljoynlist.txt"
echo Microsoft-OneCore-AllJoyn-Package>"%txtpath%"
echo Microsoft-OneCore-AllJoyn-Package>>"%txtpath%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE ALLJOYNLIST x64
:AlljoynList64_14393
set "txtpath2=%temp%\alljoynlist.x64.txt"
echo Microsoft-OneCore-AllJoyn-WOW64-Package>"%txtpath2%"
echo Microsoft-OneCore-AllJoyn-WOW64-Package>>"%txtpath2%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE TELEMETRYLIST
:TelemetryList_14393
set "txtpath=%temp%\telemetrylist.txt"
echo Microsoft-OneCore-AllowTelemetry-Reduced-Default-Package>"%txtpath%"
echo Microsoft-OneCore-TroubleShooting-Package>>"%txtpath%"
echo Microsoft-OneCore-TroubleShooting-Package>>"%txtpath%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE TELEMETRYLIST x64
:TelemetryList64_14393
set "txtpath2=%temp%\telemetrylist.x64.txt"
echo Microsoft-OneCore-TroubleShooting-WOW64-Package>"%txtpath2%"
echo Microsoft-OneCore-TroubleShooting-WOW64-Package>>"%txtpath2%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE SEARCHLIST
:SearchList_14393
set "txtpath=%temp%\searchlist.txt"
echo Microsoft-Windows-Search2-Package>"%txtpath%"
echo Microsoft-Windows-Search2-Package>>"%txtpath%"
echo Microsoft-Windows-Search2-pcshell-Package>>"%txtpath%"
echo Microsoft-Windows-Search2-pcshell-Package>>"%txtpath%"
echo Microsoft-Windows-Search2-shell-Package>>"%txtpath%"
echo Microsoft-Windows-Search2-shell-Package>>"%txtpath%"
echo Microsoft-Windows-Search2-shellcommon-Package>>"%txtpath%"
echo Microsoft-Windows-Search2-shellcommon-Package>>"%txtpath%"
echo Microsoft-Windows-Cortana-Package>>"%txtpath%"
echo Microsoft-Windows-Cortana-Package>>"%txtpath%"
echo Microsoft-Windows-Cortana-PAL-Desktop-Package>>"%txtpath%"
echo Microsoft-OneCore-CortanaComponents-Package>>"%txtpath%"
echo Microsoft-OneCore-CortanaComponents-Package>>"%txtpath%"
echo Microsoft-Windows-SearchEngine-Client-Package-base~>>"%txtpath%"
echo Microsoft-Windows-SearchEngine-Client-Package-base>>"%txtpath%"
echo Microsoft-Windows-SearchEngine-Client-Package-shell>>"%txtpath%"
echo Microsoft-Windows-SearchEngine-Client-Package-shell>>"%txtpath%"
echo Microsoft-Windows-SearchEngine-Client-Package>>"%txtpath%"
echo Microsoft-Windows-SearchEngine-Client-Package>>"%txtpath%"
echo Microsoft-Windows-Search2-base-Package>>"%txtpath%"
echo Microsoft-Windows-Search2-base-Package>>"%txtpath%"
goto:eof
:SearchList_15063
set "txtpath=%temp%\searchlist.txt"
echo Microsoft-Windows-Cortana-Package>>"%txtpath%"
echo Microsoft-Windows-Cortana-Package>>"%txtpath%"
echo Microsoft-Windows-Cortana-PAL-Desktop-Package>>"%txtpath%"
echo Microsoft-Windows-SearchEngine-Client-Package-base~>>"%txtpath%"
echo Microsoft-Windows-SearchEngine-Client-Package-base>>"%txtpath%"
echo Microsoft-Windows-SearchEngine-Client-Package-shell>>"%txtpath%"
echo Microsoft-Windows-SearchEngine-Client-Package-shell>>"%txtpath%"
echo Microsoft-Windows-SearchEngine-Client-Package>>"%txtpath%"
echo Microsoft-Windows-SearchEngine-Client-Package>>"%txtpath%"
echo Microsoft-Windows-ContentDeliveryManager-Package>>"%txtpath%"
echo Microsoft-Windows-ContentDeliveryManager-Package>>"%txtpath%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE SEARCHLIST
:SearchList64_14393
set "txtpath2=%temp%\searchlist.x64.txt"
echo Microsoft-Windows-Search2-WOW64-Package>"%txtpath2%"
echo Microsoft-Windows-Search2-WOW64-Package>>"%txtpath2%"
echo Microsoft-Windows-Search2-WOW64-pcshell-Package>>"%txtpath2%"
echo Microsoft-Windows-Search2-WOW64-pcshell-Package>>"%txtpath2%"
echo Microsoft-Windows-Search2-WOW64-shell-Package>>"%txtpath2%"
echo Microsoft-Windows-Search2-WOW64-shell-Package>>"%txtpath2%"
echo Microsoft-Windows-Search2-WOW64-shellcommon-Package>>"%txtpath2%"
echo Microsoft-Windows-Search2-WOW64-shellcommon-Package>>"%txtpath2%"
echo Microsoft-OneCore-CortanaComponents-WOW64-Package>>"%txtpath2%"
echo Microsoft-OneCore-CortanaComponents-WOW64-Package>>"%txtpath2%"
echo Microsoft-Windows-Search2-WOW64-base-Package>>"%txtpath2%"
echo Microsoft-Windows-Search2-WOW64-base-Package>>"%txtpath2%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE XBOXLIST
:XBoxList_14393
set "txtpath=%temp%\xboxlist.txt"
echo Microsoft-OneCore-AppRuntime-xbox-Package>"%txtpath%"
echo Microsoft-OneCore-AppRuntime-xbox-Package>>"%txtpath%"
echo Microsoft-Xbox-GameCallableUI-Package>>"%txtpath%"
echo Microsoft-Xbox-GameCallableUI-Package>>"%txtpath%"
echo Microsoft-Xbox-IdentityProvider-Package>>"%txtpath%"
echo Microsoft-Xbox-IdentityProvider-Package>>"%txtpath%"
echo Microsoft-OneCore-Networking-XboxLive-Package>>"%txtpath%"
echo Microsoft-OneCore-Networking-XboxLive-Package>>"%txtpath%"
echo Microsoft-Windows-Client-Drivers-xbox-Package>>"%txtpath%"
echo Microsoft-Windows-Client-Drivers-xbox-Package>>"%txtpath%"
echo Microsoft-Windows-Client-Features-Package-AutoMerged-xbox>>"%txtpath%"
echo Microsoft-Windows-Client-Features-Package-AutoMerged-xbox>>"%txtpath%"
goto:eof
:XBoxList_15063
set "txtpath=%temp%\xboxlist.txt"
echo Microsoft-OneCore-Gaming-Preview-GamesEnumeration-Package>"%txtpath%"
echo Microsoft-OneCore-Gaming-Preview-GamesEnumeration-Package>>"%txtpath%"
echo Microsoft-OneCore-Gaming-Storage-Package>>"%txtpath%"
echo Microsoft-OneCore-Gaming-Storage-Package>>"%txtpath%"
echo Microsoft-OneCore-Gaming-UI-Package>>"%txtpath%"
echo Microsoft-OneCore-Gaming-UI-Package>>"%txtpath%"
echo Microsoft-OneCore-Gaming-XBGM-Package>>"%txtpath%"
echo Microsoft-OneCore-Gaming-XBGM-Package>>"%txtpath%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE XBOXLIST x64
:XBoxList64_14393
set "txtpath2=%temp%\xboxlist.x64.txt"
echo Microsoft-OneCore-AppRuntime-WOW64-xbox-Package>>"%txtpath2%"
echo Microsoft-OneCore-AppRuntime-WOW64-xbox-Package>>"%txtpath2%"
echo Microsoft-OneCore-Networking-XboxLive-WOW64-Package>>"%txtpath2%"
echo Microsoft-OneCore-Networking-XboxLive-WOW64-Package>>"%txtpath2%"
echo Microsoft-Windows-Client-Features-WOW64-Package-AutoMerged-xbox>>"%txtpath2%"
echo Microsoft-Windows-Client-Features-WOW64-Package-AutoMerged-xbox>>"%txtpath2%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE MAPS
:MapsList_15063
set "txtpath=%temp%\mapslist.txt"
echo Microsoft-OneCore-Maps-Core-Package>"%txtpath%"
echo Microsoft-OneCore-Maps-Core-Package>>"%txtpath%"
echo Microsoft-OneCore-Maps-Full-onecoreuap-Package>>"%txtpath%"
echo Microsoft-OneCore-Maps-Full-onecoreuap-Package>>"%txtpath%"
echo Microsoft-OneCore-Maps-Full-Package>>"%txtpath%"
echo Microsoft-OneCore-Maps-Full-Package>>"%txtpath%"
echo Microsoft-OneCore-Maps-onecoreuap-Package>>"%txtpath%"
echo Microsoft-OneCore-Maps-onecoreuap-Package>>"%txtpath%"
echo Microsoft-OneCore-Maps-Package>>"%txtpath%"
echo Microsoft-OneCore-Maps-Package>>"%txtpath%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE HOLOGRAPHICS
:HolographicsList_15063
set "txtpath=%temp%\holographicslist.txt"
echo Microsoft-Windows-Holographic-Desktop-Analog-Package>"%txtpath%"
echo Microsoft-Windows-Holographic-Desktop-Analog-Package>>"%txtpath%"
echo Microsoft-Windows-Holographic-Desktop-Merged-analog-Package>>"%txtpath%"
echo Microsoft-Windows-Holographic-Desktop-Merged-analog-Package>>"%txtpath%"
echo Microsoft-Windows-Holographic-Desktop-Merged-onecoreuap-Package>>"%txtpath%"
echo Microsoft-Windows-Holographic-Desktop-Merged-onecoreuap-Package>>"%txtpath%"
echo Microsoft-Windows-Holographic-Desktop-Merged-Package>>"%txtpath%"
echo Microsoft-Windows-Holographic-Desktop-Merged-Package>>"%txtpath%"
echo Microsoft-Windows-Holographic-Desktop-Merged-pcshell-Package>>"%txtpath%"
echo Microsoft-Windows-Holographic-Desktop-Merged-pcshell-Package>>"%txtpath%"
echo Microsoft-Windows-Holographic-Desktop-Merged-shellcommon-Package>>"%txtpath%"
echo Microsoft-Windows-Holographic-Desktop-Merged-shellcommon-Package>>"%txtpath%"
echo Microsoft-Windows-Holographic-Desktop-Merged-windows-Package>>"%txtpath%"
echo Microsoft-Windows-Holographic-Desktop-Merged-windows-Package>>"%txtpath%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE HOLOGRAPHICS x64
:HolographicsList64_15063
set "txtpath2=%temp%\holographicslist64.txt"
echo Microsoft-Windows-Holographic-Desktop-Merged-WOW64-analog-Package>>"%txtpath2%"
echo Microsoft-Windows-Holographic-Desktop-Merged-WOW64-Package>>"%txtpath2%"
echo Microsoft-Windows-Holographic-Desktop-Merged-WOW64-shellcommon-Package>>"%txtpath2%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE SENSORS
:SensorsList_15063
set "txtpath=%temp%\sensorslist.txt"
echo Sensors-Universal-Package>"%txtpath%"
echo Sensors-Universal-Package>>"%txtpath%"
echo Microsoft-Mobile-Sensors-Package>>"%txtpath%"
echo Microsoft-Mobile-Sensors-Package>>"%txtpath%"
echo Microsoft-OneCore-Sensors-Algorithms-Package>>"%txtpath%"
echo Microsoft-OneCore-Sensors-Algorithms-Package>>"%txtpath%"
echo Microsoft-OneCore-Sensors-Core-Package>>"%txtpath%"
echo Microsoft-OneCore-Sensors-Core-Package>>"%txtpath%"
echo Microsoft-OneCore-Sensors-DriverClasses-Package>>"%txtpath%"
echo Microsoft-OneCore-Sensors-DriverClasses-Package>>"%txtpath%"
echo Microsoft-Windows-MobilePC-Client-Sensors-drivers-Package>>"%txtpath%"
echo Microsoft-Windows-MobilePC-Client-Sensors-drivers-Package>>"%txtpath%"
echo Microsoft-Windows-MobilePC-Client-Sensors-Package>>"%txtpath%"
echo Microsoft-Windows-MobilePC-Client-Sensors-Package>>"%txtpath%"
goto:eof
:================================================================================================================
::===============================================================================================================
::REMOVE PACKAGE SENSORS
:SensorsList64_15063
set "txtpath2=%temp%\sensorslist64.txt"
echo Sensors-Universal-WOW64-Package>>"%txtpath2%"
echo Sensors-Universal-WOW64-Package>>"%txtpath2%"
echo Microsoft-OneCore-Sensors-Core-WOW64-Package>>"%txtpath2%"
echo Microsoft-OneCore-Sensors-Core-WOW64-Package>>"%txtpath2%"
echo Microsoft-Windows-MobilePC-Client-Sensors-WOW64-drivers-Package>>"%txtpath2%"
echo Microsoft-Windows-MobilePC-Client-Sensors-WOW64-drivers-Package>>"%txtpath2%"
echo Microsoft-Windows-MobilePC-Client-Sensors-WOW64-Package>>"%txtpath2%"
echo Microsoft-Windows-MobilePC-Client-Sensors-WOW64-Package>>"%txtpath2%"
goto:eof
:================================================================================================================
::===============================================================================================================
::DISM REMOVE PACKAGE ONLINE
:DISMRemovePackageLoop
%install_wim_tweak% /o /c %~1 /r
call :FOOTER
goto:eof
:================================================================================================================
::===============================================================================================================
::DISM REMOVE PACKAGE OFFLINE
:DISMRemovePackageLoopOffline
for /d %%g in (%indices%) do %install_wim_tweak% /p "%mount%\%%g" /c %~1 /r
call :FOOTER
goto:eof
:================================================================================================================
::===============================================================================================================
::DISM REMOVE PACKAGE
:DISMEnableNET
cls
call :MENUHEADER "   DISM ENABLE .NET 3.5"
echo Enter Drive Letter of mounted Win 10 ISO without colon.
call :FOOTER
set /p driveletter=Enter Drive Letter : ^>
call :FOOTER
%dism% /Online /english /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:%driveletter%:\sources\sxs
call :FOOTER
pause
goto:eof
:================================================================================================================
::===============================================================================================================
::DISM REMOVE PACKAGE
:DISMEnableNETMain
%dism% /Online /english /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:%driveletter%:\sources\sxs
goto:eof
:================================================================================================================
::===============================================================================================================
::TXT FILE INPUT LOOP
:TXTFileInputLoop
call :FOOTER
echo Enter Path to TXT: %txtpath%
call :FOOTER
set /p txtpath=Enter Path to TXT : ^>
call :FOOTER
goto:eof
:================================================================================================================
::===============================================================================================================
::PS PROV APP REMOVE LOOP
:PSProvAppRemoveLoop
call :FOOTER
echo Enter Name of the APP like bing or xbox: %psremove%
call :FOOTER
set /p psremove=Enter Name of the APP : ^>
call :FOOTER
goto:eof
:================================================================================================================
::===============================================================================================================
::TXT FILE INPUT LOOP
:MountDataInputLoop
call :FOOTER
echo Enter Path to Mount Folder: %mount%
echo:
echo Enter Indices List to mount: 3, 2, 1 or: %indices%
call :FOOTER
set /p mount=Enter Path to Mount Folder : ^>
set /p indices=Enter Indices List to mount : ^>
if not exist "%mount%" md "%mount%"
call :FOOTER
goto:eof
:================================================================================================================
::===============================================================================================================
::COMPARE LISTS WITH POWERSHELL
:FileDelete
if exist "%ps1file%" del /s /q "%ps1file%" >nul
if exist "%hostsadd%" del /s /q "%hostsadd%" >nul
if exist "%hostsfilesort%" del /s /q "%hostsfilesort%" >nul
if exist "%hostsfilesort2%" del /s /q "%hostsfilesort2%" >nul
if exist "%addlist%" del /s /q "%addlist%" >nul
if exist "%templist%" del /s /q "%templist%" >nul
if exist "%cleanlist%" del /s /q "%cleanlist%" >nul
if exist "%clean%" del /s /q "%clean%" >nul
goto:eof
:================================================================================================================
::===============================================================================================================
::COMPARE LISTS WITH POWERSHELL
:CompareWithPowershell
for /f "tokens=* delims= " %%a in ('"powershell Compare-Object -ReferenceObject (Get-Content %~1) -DifferenceObject (Get-Content %~2) ^| where-object SideIndicator -eq =^> ^| select -Expand InputObject ^| fl"') do (
	echo %%a>>%~3
)
goto:eof
:================================================================================================================
::===============================================================================================================
::CLEAN DOUBLES FROM WU LIST BY KEEPING ORIGINAL LIST ORDER
:CoolCleanProcess
type %~1>>%templist%
echo $hash = @{}>%clean%
echo gc "%templist%" ^| %%{ if ^($hash.$_ -eq $null^) { $_ }; $hash.$_ = 1 } ^> "%cleanlist%">>%clean%
powershell -executionpolicy bypass -File %clean%
if exist "%~1" del /s /q "%~1" >nul
type %cleanlist%>>%~1
goto:eof
:================================================================================================================
::===============================================================================================================
::CLEAN LOOP
:CleanProcess1
powershell gc "%~1" ^| sort ^| get-unique > "%~2"
goto:eof
:================================================================================================================
::===============================================================================================================
::WINTASKS FROM TXT LOOPS
:TelemetrySvcLoop
sc query dmwappushservice >nul 2>&1
if "%errorlevel%"=="0" sc delete dmwappushservice
if "%errorlevel%"=="0" echo Successfully deleted dmwappushservice
if not "%errorlevel%"=="0" echo dmwappushservice not installed
sc query diagtrack >nul 2>&1
if "%errorlevel%"=="0" sc delete diagtrack
if "%errorlevel%"=="0" echo Successfully deleted diagtrack
if not "%errorlevel%"=="0" echo diagtrack not installed
call :FOOTER
echo Releting Remnants Of Diagtrack
call :FOOTER
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /v "{60E6D465-398E-4850-BE86-7EF7620A2377}" /t REG_SZ /d "v2.24|Action=Block|Active=TRUE|Dir=Out|App=C:\windows\system32\svchost.exe|Svc=DiagTrack|Name=Windows Telemetry|" /f
::reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /v "{2765E0F4-2918-4A46-B9C9-43CDD8FCBA2B}" /t REG_SZ /d "v2.24|Action=Block|Active=TRUE|Dir=Out|App=C:\windows\systemapps\microsoft.windows.cortana_cw5n1h2txyewy\searchui.exe|Name=Search and Cortana application|AppPkgId=S-1-15-2-1861897761-1695161497-2927542615-642690995-327840285-2659745135-2630312742|" /f
goto:eof
:================================================================================================================
::===============================================================================================================
::WINTASKS FROM TXT LOOPS
:TXTWinTasksLoop
for /f "tokens=*" %%a in (%~1) do schtasks /Change /TN "%%a" /Disable
goto:eof
:================================================================================================================
::===============================================================================================================
::WINTASKS LOOPS
:WinTasksLoop
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefresh" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\AitAgent" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable
schtasks /change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable
schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable
goto:eof
:================================================================================================================
::===============================================================================================================
::OFFICETASKS LOOPS
:OfficeTasksLoop
schtasks /change /TN "Microsoft\Office\OfficeTelemetry\AgentFallBack2016" /Disable
schtasks /Change /TN "Microsoft\Office\OfficeTelemetry\OfficeTelemetryAgentLogOn2016" /Disable
schtasks /Change /TN "Microsoft\Office\OfficeTelemetry\AgentLogOn" /Disable
schtasks /Change /TN "Microsoft\Office\OfficeTelemetry\AgentFallBack" /Disable
schtasks /Change /TN "Microsoft\Office\Office 15 Subscription Heartbeat" /Disable
goto:eof
:================================================================================================================
::===============================================================================================================
::UPDATE LOOP
:KEYOFF
echo Attempting to shut down the Windows Update service if it's running
net stop wuauserv >nul 2>&1
call :FOOTER
echo Changing Registry key
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /D %~1 /T REG_DWORD /F >nul 2>&1
if not "!errorlevel!"=="0" call :ERROR
if not "!errorlevel!"=="0" goto:eof
call :FOOTER
Echo Automatic Updates have been set to %~1
goto:eof
:================================================================================================================
::===============================================================================================================
:: COLOROUT
:COLOROUT
powershell "Write-Host '%~1' -foreground %~2"
goto:eof
:================================================================================================================
::===============================================================================================================
:: HEADER
:HEADER
echo.
echo:%~1
echo:%~2
echo.
echo:
goto:eof
:================================================================================================================
::===============================================================================================================
:MENUHEADER
echo.
echo:%~1
echo.
echo:
goto:eof
goto:eof
:================================================================================================================
::===============================================================================================================
:: FOOTER
:SHFOOTER
echo.
goto:eof
:================================================================================================================
::===============================================================================================================
:================================================================================================================
::===============================================================================================================
:: FOOTER
:FOOTER
echo:
echo.
echo:
goto:eof
:================================================================================================================
::===============================================================================================================
:MENUFOOTER
echo:
echo.
echo:
goto:eof
:================================================================================================================
::===============================================================================================================
::SET SYSTEM VARIABLES
:SystemCheckVariables
for /f "tokens=2* delims= " %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "CurrentVersion"') do set "version=%%a"
for /f "tokens=2* delims= " %%a in ('reg query "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /v "PROCESSOR_ARCHITECTURE"') do if "%%b"=="AMD64" (set vera=x64) else (set vera=x86)
for /f "tokens=6 delims=[]. " %%G in ('ver') do set win=%%G
set sls=SoftwareLicensingService
for /f "tokens=2,3 delims=.=" %%a in ('"wmic path %sls% get version /format:list"') do set build=%%a.%%b
FOR /F "tokens=3,4 delims=. " %%I IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" ^| findstr ReleaseId') DO (SET relid=%%I)
FOR /F "tokens=3,4 delims=. " %%I IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" ^| findstr BuildLabEx') DO (SET build1=%%I)
FOR /F "tokens=3,4 delims=. " %%I IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" ^| findstr UBR') DO for /f "tokens=*" %%a in ('set /A "DEC=%%I"') do (SET build1=%build1%.%%a)
for /F "tokens=3* delims= " %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" ^| findstr EditionID') do (SET edition=%%i)
for /f "tokens=6 delims=[]. " %%g in ('ver') do set win=%%g
goto:eof
:================================================================================================================
::===============================================================================================================
:QUIT
echo.
echo Press any key to exit...
echo.
pause>NUL
exit
:================================================================================================================
::===============================================================================================================
:ERROR
echo.
echo The script ran into an unexpected error setting reg key.
echo Press any key to exit...
echo.
goto:eof
:================================================================================================================
::===============================================================================================================
:Not10
echo.
echo This script is only designed for Windows 10...
echo Press any key to exit...
echo.
pause>NUL
exit
:================================================================================================================
::===============================================================================================================
::RESTART
:Restart
cls
call :MENUHEADER "ATTENTION: REBOOT IMMINENT"
CHOICE /C PB /N /M "[P]ROCEED or [B]ack to Menu ?:"
if %errorlevel%==2 goto :MainMenu
ENDLOCAL
start shutdown.exe /r /t 0
exit
goto:eof
:================================================================================================================
::===============================================================================================================
::AUTORESTART
:AutoRestart
cls
call :MENUHEADER "ATTENTION: REBOOT IMMINENT"
set/p<nul =[REBOOT IN 10 SEC] ^>^>^>&timeout /t 10>nul
ENDLOCAL
start shutdown.exe /r /t 0
exit
goto:eof
:================================================================================================================
::===============================================================================================================
:TITLE
title s1ave77s þ S-M-R-T SECURITY þ v1.00.70
goto:eof
:================================================================================================================
::===============================================================================================================
::StartOf
0.0.0.0 vortex.data.microsoft.com
0.0.0.0 vortex-win.data.microsoft.com
0.0.0.0 telecommand.telemetry.microsoft.com
0.0.0.0 telecommand.telemetry.microsoft.com.nsatc.net
0.0.0.0 oca.telemetry.microsoft.com
0.0.0.0 oca.telemetry.microsoft.com.nsatc.net
0.0.0.0 sqm.telemetry.microsoft.com
0.0.0.0 sqm.telemetry.microsoft.com.nsatc.net
0.0.0.0 watson.telemetry.microsoft.com
0.0.0.0 watson.telemetry.microsoft.com.nsatc.net
0.0.0.0 redir.metaservices.microsoft.com
0.0.0.0 choice.microsoft.com
0.0.0.0 choice.microsoft.com.nsatc.net
0.0.0.0 df.telemetry.microsoft.com
0.0.0.0 reports.wes.df.telemetry.microsoft.com
0.0.0.0 wes.df.telemetry.microsoft.com
0.0.0.0 services.wes.df.telemetry.microsoft.com
0.0.0.0 sqm.df.telemetry.microsoft.com
0.0.0.0 telemetry.microsoft.com
0.0.0.0 watson.ppe.telemetry.microsoft.com
0.0.0.0 telemetry.appex.bing.net
0.0.0.0 telemetry.urs.microsoft.com
0.0.0.0 telemetry.appex.bing.net:443
0.0.0.0 settings-sandbox.data.microsoft.com
0.0.0.0 vortex-sandbox.data.microsoft.com
0.0.0.0 survey.watson.microsoft.com
0.0.0.0 watson.live.com
0.0.0.0 watson.microsoft.com
0.0.0.0 statsfe2.ws.microsoft.com
0.0.0.0 corpext.msitadfs.glbdns2.microsoft.com
0.0.0.0 compatexchange.cloudapp.net
0.0.0.0 cs1.wpc.v0cdn.net
0.0.0.0 statsfe2.update.microsoft.com.akadns.net
0.0.0.0 sls.update.microsoft.com.akadns.net
0.0.0.0 fe2.update.microsoft.com.akadns.net
0.0.0.0 diagnostics.support.microsoft.com
0.0.0.0 corp.sts.microsoft.com
0.0.0.0 statsfe1.ws.microsoft.com
0.0.0.0 i1.services.social.microsoft.com
0.0.0.0 i1.services.social.microsoft.com.nsatc.net
0.0.0.0 feedback.windows.com
0.0.0.0 feedback.microsoft-hohm.com
0.0.0.0 feedback.search.microsoft.com
0.0.0.0 preview.msn.com
0.0.0.0 ad.doubleclick.net
0.0.0.0 ads.msn.com
0.0.0.0 ads1.msads.net
0.0.0.0 ads1.msn.com
0.0.0.0 a.ads1.msn.com
0.0.0.0 a.ads2.msn.com
0.0.0.0 adnexus.net
0.0.0.0 adnxs.com
0.0.0.0 aidps.atdmt.com
0.0.0.0 apps.skype.com
0.0.0.0 az361816.vo.msecnd.net
0.0.0.0 az512334.vo.msecnd.net
0.0.0.0 a.rad.msn.com
0.0.0.0 a.ads2.msads.net
0.0.0.0 ac3.msn.com
0.0.0.0 aka-cdn-ns.adtech.de
0.0.0.0 b.rad.msn.com
0.0.0.0 b.ads2.msads.net
0.0.0.0 b.ads1.msn.com
0.0.0.0 bs.serving-sys.com
0.0.0.0 c.msn.com
0.0.0.0 cdn.atdmt.com
0.0.0.0 cds26.ams9.msecn.net
0.0.0.0 c.atdmt.com
0.0.0.0 db3aqu.atdmt.com
0.0.0.0 ec.atdmt.com
0.0.0.0 flex.msn.com
0.0.0.0 g.msn.com
0.0.0.0 h1.msn.com
0.0.0.0 live.rads.msn.com
0.0.0.0 msntest.serving-sys.com
0.0.0.0 m.adnxs.com
0.0.0.0 m.hotmail.com
0.0.0.0 pricelist.skype.com
0.0.0.0 rad.msn.com
0.0.0.0 rad.live.com
0.0.0.0 secure.flashtalking.com
0.0.0.0 static.2mdn.net
0.0.0.0 s.gateway.messenger.live.com
0.0.0.0 secure.adnxs.com
0.0.0.0 sO.2mdn.net
0.0.0.0 ui.skype.com
0.0.0.0 www.msftncsi.com
0.0.0.0 msftncsi.com
0.0.0.0 view.atdmt.com
0.0.0.0 msnbot-65-55-108-23.search.msn.com
0.0.0.0 settings-win.data.microsoft.com
0.0.0.0 schemas.microsoft.akadns.net
0.0.0.0 a-0001.a-msedge.net
0.0.0.0 a-0002.a-msedge.net
0.0.0.0 a-0003.a-msedge.net
0.0.0.0 a-0004.a-msedge.net
0.0.0.0 a-0005.a-msedge.net
0.0.0.0 a-0006.a-msedge.net
0.0.0.0 a-0007.a-msedge.net
0.0.0.0 a-0008.a-msedge.net
0.0.0.0 a-0009.a-msedge.net
0.0.0.0 msedge.net
0.0.0.0 a-msedge.net
0.0.0.0 lb1.www.ms.akadns.net
0.0.0.0 pre.footprintpredict.com
0.0.0.0 vortex-bn2.metron.live.com.nsatc.net
0.0.0.0 vortex-cy2.metron.live.com.nsatc.net