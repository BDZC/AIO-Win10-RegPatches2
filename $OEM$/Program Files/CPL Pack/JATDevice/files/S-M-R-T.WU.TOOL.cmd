::code: s1ave77, some MSMG (borrowed layout idea), burfadel (Office Installer), MichalGajda (PSWUModule)
::idea collaboration by ColdZero, LastWords & s1ave77
::thanks to KNARZ for suggesting to re-instate calls to avoid redundant code
::thanks to LastWords, nechrist for bug hunting
::[site:forums.mydigitallife.info]
::===============================================================================================================
@echo off
::===============================================================================================================
powershell.exe -command "& {$pshost = Get-Host;$pswindow = $pshost.UI.RawUI;$newsize = $pswindow.BufferSize;$newsize.height = 9001;$pswindow.buffersize = $newsize;}"
::===============================================================================================================
:: GET ADMIN RIGHTS
(NET FILE||(powershell -command Start-Process '%0' -Verb runAs -ArgumentList '%* '&EXIT /B))>NUL 2>&1
::===============================================================================================================
call :TITLE
if "%~1"=="" setlocal ENABLEDELAYEDEXPANSION && setlocal EnableExtensions
setlocal EnableExtensions
setlocal EnableDelayedExpansion
pushd "%~dp0"
cd %~dp0
::===============================================================================================================
::SET SYSTEM VARIABLES
call :SystemCheckVariables
::===============================================================================================================
::SET STATIC FILE PATH VARIABLES
if not "%~1"=="" set "workpath=%~1"
if "%~1"=="" set "workpath=%cd%"
if not "%~1"=="" goto:JumpEntryPoint
if "%~1"=="" goto:JumpEntryPoint
::===============================================================================================================
::SET PATH VARIABLES MANUALLY
:SetVariables
cls
call :Header "SET PATH VARIABLES MANUALLY"
echo WU LOG File____: %log%
echo Work Folder____: %workpath%
call :Footer
set /p log=Path of WU LOG:
set /p workpath=Path Work Folder:
if "%workpath%"=="" goto:SetVariables
::===============================================================================================================
::SET STATIC FILE PATH VARIABLES
:JumpEntryPoint
set "downpath=%workpath%"
if not exist "%downpath%" md "%downpath%" >nul
set "downlinklist=files\update.links.%vera%.txt"
set "murphylist=files\murphy78list.txt"
set "kbarch=%vera%"
::===============================================================================================================
::SET FILE PATH VARIABLES
::if %win% leq 9600 
if "%log%"=="" set "log=%windir%\WindowsUpdate.log"
::if %win% geq 10240 set "log=%temp%\WindowsUpdate.log"
::===============================================================================================================
::SET TOOL PATH VARIABLES
set "sevenzip=files\7z\7z.exe"
set "wget=files\wget.exe"
set "dism=adk\win10.%vera%\dism.exe"
set "wimlib-imagex=adk\win10.%vera%\wimlib-imagex.exe"
set "imagex=adk\win10.%vera%\imagex.exe"
set "oscdimg=adk\win10.%vera%\oscdimg.exe"
::===============================================================================================================
::SET FOLDER PATH VARIABLES
set "mountfolder=%workpath%\mount"
set "wimpath=%workpath%\install.wim"
::===============================================================================================================
::SET FILE PATH VARIABLES
set "wuoffer=%workpath%\wuoffer.txt"
set "downloadlist=%workpath%\downlist.txt"
set "cleandownloadlist=%workpath%\cleandownlist.txt"
set "updatelist=%workpath%\updatelist.txt"
set "installedupdatelist=%workpath%\installedupdatelist.txt"
set "cleanupdatelist=%workpath%\cleanupdatelist.txt"
set "todolist=%workpath%\todolist.txt"
set "loadlist=%workpath%\loadlist.txt"
set "cleanloadlist=%workpath%\cleanloadlist.txt"
set "checklist=%workpath%\checklist.txt"
set "templist=%workpath%\templist.txt"
set "murphy78content=%workpath%\murphy78content.txt"
set "wimupdatelist=%workpath%\wimupdatelist.txt"
set "folderupdatelist=%workpath%\folderupdatelist.txt"
set "integrateupdatelist=%workpath%\integrateupdatelist.txt"
::===============================================================================================================
::SET TOOLS PATH VARIABLES
set "clean=%workpath%\clean.ps1"
set "pfile=%workpath%\compare.ps1
set "wucheck=%workpath%\wucheck.vbs"
::===============================================================================================================
::DELETE AT STARTUP
if exist "%wuoffer%" del /s /q "%wuoffer%" >nul
if exist "%updatelist%" del /s /q "%updatelist%" >nul
if exist "%installedupdatelist%" del /s /q "%installedupdatelist%" >nul
if exist "%todolist%" del /s /q "%todolist%" >nul
if exist "%cleanupdatelist%" del /s /q "%cleanupdatelist%" >nul
if exist "%templist%" del /s /q "%templist%" >nul
if exist "%checklist%" del /s /q "%checklist%" >nul
if exist "%downloadlist%" del /s /q "%downloadlist%" >nul
if exist "%loadlist%" del /s /q "%loadlist%" >nul
if exist "%wucheck%" del /s /q "%wucheck%" >nul
if exist "%clean%" del /s /q "%clean%" >nul
if exist "%templist%" del /s /q "%templist%" >nul
if exist "%murphy78content%" del /s /q "%murphy78content%" >nul
if exist "%cleandownloadlist%" del /s /q "%cleandownloadlist%" >nul
if exist "%cleanloadlist%" del /s /q "%cleanloadlist%" >nul
if exist "%wimupdatelist%" del /s /q "%wimupdatelist%" >nul
if exist "%folderupdatelist%" del /s /q "%folderupdatelist%" >nul
if exist "%integrateupdatelist%" del /s /q "%integrateupdatelist%" >nul
:================================================================================================================
::===============================================================================================================
::MAIN MENU
:MainMenu
call :SystemCheckVariables
call :TITLE
color 07
cls
call :MenuHeader "   MAIN MENU [@:%computername%:%build%.%build1%:%edition%:%vera%]"
echo:
if %win% lss 9600 echo    WU LOG: %log%
if %win% geq 9600 echo    WU CATALOG SERVICE by mkuba50@MDL
echo    WORK  : %workpath%
call :MenuFooter
echo:
echo    [I] WINDOWS UPDATE INSTALL MENU
echo    [B] BURFADELS OFFICE UPDATES INSTALLER MENU
echo    [P] POWERSHELL WINDOWS UPDATE MODULE
echo:
echo    [A] GENERAL INTEGRATION MENU
echo    [M] MURPH/ABBODI LIST ISO INTEGRATION MENU
echo:
echo    [W] WINDOWS IMAGING MENU
echo    [C] CHECK/REPAIR/CLEANUP MENU
echo:
echo    [Q] QUERY WU LOGS AND DOWNLOAD MENU
echo    [U] QUERY WU CATALOG SERVICE by MKUBA50
echo:
echo    [S] SET NEW VARIABLES
echo    [D] DELETE TEMP FILES
echo:
echo    [T] SET WU TO DISABLED
echo:
echo    [E] EXIT    [WITHOUT DELETE]  [V] EXIT    [WITH DELETE]
echo    [R] RESTART [WITHOUT DELETE]  [X] RESTART [WITH DELETE]
call :MenuFooter
echo:
CHOICE /C IBPAMWCQUSDTEVRX /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto :InstallMenu
if %errorlevel%==2 goto :OfficeMenu
if %errorlevel%==3 goto :PSWUModuleMenu
if %errorlevel%==4 goto :IntegrationMenu
if %errorlevel%==5 goto :MurphIntegrationMenu
if %errorlevel%==6 goto :ExportMenu
if %errorlevel%==7 goto :CheckMenu
if %errorlevel%==8 goto :QueryLog
if %errorlevel%==9 goto :QueryCatalog
if %errorlevel%==10 goto :SetVariables
if %errorlevel%==11 goto :TempFiles
if %errorlevel%==12 goto :WuauservSet
if %errorlevel%==13 goto:Exit
if %errorlevel%==14 goto:ExitDelete
if %errorlevel%==15 goto:Restart
if %errorlevel%==16 goto:RestartDelete
goto:MainMenu
:================================================================================================================
::===============================================================================================================
::INSTALL WINDOWS UPDATES
:InstallMenu
cls
call :MenuHeader "   INSTALL WINDOWS UPDATES"
echo:
if %win% lss 9600 echo    WU LOG: %log%
if %win% geq 9600 echo    WU CATALOG SERVICE by mkuba50@MDL
echo    WORK  : %workpath%
call :MenuFooter
echo:
echo    [O] ONLINE MODE
echo    [F] OFFLINE MODE
echo:
echo    [I] INSTALL ALL UPDATES FROM FOLDER ^(BRUTE MODE^)
echo:
echo    [L] INSTALL UPDATES FROM LIST
echo:
echo    [D] DELETE TEMP FILES
echo:
echo    [B] BACK TO MAIN MENU
call :MenuFooter
echo:
CHOICE /C OFILDB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto :OnlineInstall
if %errorlevel%==2 goto :OfflineInstall
if %errorlevel%==3 goto :InstallAllUpdates
if %errorlevel%==4 goto :InstallUpdatesFromList
if %errorlevel%==5 goto :TempFiles2
if %errorlevel%==6 goto:MainMenu
goto:InstallMenu
:================================================================================================================
::===============================================================================================================
::INSTALL OFFICE UPDATES
:OfficeMenu
set "burfname="
for /r "%cd%" %%a in (*.cmd) do echo %%~na | findstr /i "Installer For Microsoft Office Updates" 1>nul && set "burfname=%%~na"
if "%burfname%"=="" (set "na=SCRIPT IS MISSING...") else (set "na=")
cls
call :MenuHeader "   BURFADELSs %burfname%%na%"
echo:
if %win% lss 9600 echo    WU LOG: %log%
if %win% geq 9600 echo    WU CATALOG SERVICE by mkuba50@MDL
echo    WORK  : %workpath%
call :MenuFooter
echo:
echo    [D] DOWNLOAD/UPDATE BURFADEL OFFICE INSTALLER
echo:
echo    [R] RUN BURFADEL OFFICE INSTALLER
echo:
echo    [B] BACK TO MAIN MENU
call :MenuFooter
echo:
CHOICE /C DRB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto :BurfDown
if %errorlevel%==2 goto :BurfStart
if %errorlevel%==3 goto:MainMenu
goto:OfficeMenu
:================================================================================================================
::===============================================================================================================
::MURPH INTEGRATION MENU
:MurphIntegrationMenu
set "murphcheck=0"
set "na=0"
for /r "%cd%\files" %%a in (*.txt) do (
	echo "%%~na" | findstr /i "murphy78list" 1>nul && set /a murphcheck+=1
	echo "%%~na" | findstr /i "update.links.x86" 1>nul && set /a murphcheck+=1
	echo "%%~na" | findstr /i "update.links.x64" 1>nul && set /a murphcheck+=1
)
if "%murphcheck%"=="3" (
	set "checkcount=%murphcheck%"
	set "na=LISTS ARE PRESENT."
)
if %murphcheck% lss 3 (
	set /a checkcount=3-%murphcheck%
	set "na=LIST(S) ARE MISSING..."
)
cls
call :MenuHeader "   INTEGRATION FROM murphy78/abbodi: [%checkcount%/3] %na%"
echo:
if %win% lss 9600 echo    WU LOG: %log%
if %win% geq 9600 echo    WU CATALOG SERVICE by mkuba50@MDL
echo    WORK  : %workpath%
call :MenuFooter
echo:
echo    [D] DOWNLOAD/UPDATE LISTS
echo:
echo    [M] MATCH murphy78/abbodi LIST WITH FOLDER/LINK LIST
echo:
echo    [I] INTEGRATION FROM murphy78/abbodi LIST
echo:
echo    [B] BACK TO MAIN MENU
call :MenuFooter
echo:
CHOICE /C DMIB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto :MurphDown
if %errorlevel%==2 goto :MatchMurphyWithLinks
if %errorlevel%==3 goto :IntegrateFromMurphy
if %errorlevel%==4 goto:MainMenu
goto:MurphIntegrationMenu
:================================================================================================================
::===============================================================================================================
::INTEGRATE UPDATES
:IntegrationMenu
cls
call :MenuHeader "   INTEGRATE UPDATES"
echo:
if %win% lss 9600 echo    WU LOG: %log%
if %win% geq 9600 echo    WU CATALOG SERVICE by mkuba50@MDL
echo    WORK  : %workpath%
call :MenuFooter
echo:
echo    [I] INTEGRATE ALL UPDATES FROM FOLDER
echo    [A] INTEGRATE ALL UPDATES FROM FOLDER FOR ALL INDICES
echo:
echo    [C] CHECK LIST AGAINST FOLDER FOR MISSING UPDATES
echo:
echo    [W] WRITE FILENAMES TO LIST
echo:
echo    [L] INTEGRATE UPDATES FROM LIST
echo    [F] INTEGRATE UPDATES FROM LIST FOR ALL INDICES
echo:
echo    [D] DELETE TEMP FILES
echo:
echo    [B] BACK TO MAIN MENU
call :MenuFooter
echo:
CHOICE /C IACWLFDB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto :IntegrateAllUpdates
if %errorlevel%==2 goto :IntegrateAllUpdatesAllIndices
if %errorlevel%==3 goto :CheckListAgainstFolder
if %errorlevel%==4 goto :WriteNamesToList
if %errorlevel%==5 goto :IntegrateUpdatesFromList
if %errorlevel%==6 goto :IntegrateUpdatesAllIndices
if %errorlevel%==7 goto :TempFiles3
if %errorlevel%==8 goto:MainMenu
goto:IntegrationMenu
:================================================================================================================
::===============================================================================================================
::EXPORT MENU
:ExportMenu
cls
call :MenuHeader "   WINDOWS IMAGING MENU"
echo:
echo    [NOTE:] NEXT OPTION ALLOWS WIM TO ESD CONVERSION
echo    [E] EXPORT SINGLE/ALL INDEX/INDICES WITH DISM
echo:
echo    [NOTE:] NEXT OPTION ALLOWS ESD TO WIM CONVERSION
echo    [W] EXPORT SINGLE/ALL INDEX/INDICES WITH WIMLIB-IMAGEX
echo:
echo    [Q] WINDOWS SKU CONVERSION
echo    [P] PROWMC CREATION
echo    [I] PROWMC TOKENS INJECTION ^(WIN8/8.1^)
echo:
echo    [S]/[J] SPLIT/JOIN WIM WITH DISM
echo    [R]/[K] SPLIT/JOIN WIM WITH WIMLIB-IMAGEX
echo:
echo    [O] OPTIMIZE WIM WITH WIMLIB-IMAGEX
echo:
echo    [C] CREATE ISO FROM SETUP FILES FOLDER
echo    [U] CREATE USB FROM SETUP FILES FOLDER
echo:
echo    [B] BACK TO MAIN MENU
call :MenuFooter
echo:
CHOICE /C EWQPISJRKOCUB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto :ExportIndex
if %errorlevel%==2 goto :WimlibExport
if %errorlevel%==3 goto :WinSKUConversion
if %errorlevel%==4 goto :ProfessionalWMCCreation
if %errorlevel%==5 goto :TokensInjection
if %errorlevel%==6 goto :SplitWithDISM
if %errorlevel%==7 goto :JoinWithDISM
if %errorlevel%==8 goto :SplitWithWimlib
if %errorlevel%==9 goto :JoinWithWimlib
if %errorlevel%==10 goto :WimlibOptimize
if %errorlevel%==11 goto :CreateISO
if %errorlevel%==12 goto :CreateUSB
if %errorlevel%==13 goto:MainMenu
goto:ExportMenu
:================================================================================================================
::===============================================================================================================
::QUERY WU LOG
:QueryLog
cls
call :MenuHeader "   QUERY LOG FILES"
echo:
if %win% lss 9600 echo    WU LOG: %log%
if %win% geq 9600 echo    WU CATALOG SERVICE by mkuba50@MDL
echo    WORK  : %workpath%
call :MenuFooter
echo:
echo    [Q] QUERY WU LOG FOR SINGLE UPDATE KBs
echo    [F] QUERY WU LOG FROM TEXT FILE
echo:
echo    [K] QUERY LINK LIST FOR SINGLE UPDATE KBs
echo    [T] QUERY LINK LIST FROM TEXT FILE
echo:
echo    [L] QUERY KB LIST AGAINST LINK LIST
echo    [M] MATCH TWO LISTS
echo:
echo    [D] DOWNLOAD THE LINK LIST
echo    [S] DOWNLOAD SINGLE LINK
echo:
echo    [W] SAVE CURRENT WINDOWS UPDATE LOG
echo:
echo    [B] BACK TO MAIN MENU
call :MenuFooter
echo:
CHOICE /C QFKTLMDSWB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto :QueryLogManually
if %errorlevel%==2 goto :QueryLogTextFile
if %errorlevel%==3 goto :LinkListKBCheck
if %errorlevel%==4 goto :LinkListTextCheck
if %errorlevel%==5 goto :KBsAgainstLinks
if %errorlevel%==6 goto :MatchLists
if %errorlevel%==7 goto :DownloadData
if %errorlevel%==8 goto :DownloadSingle
if %errorlevel%==9 goto :SaveCurrentLog
if %errorlevel%==10 goto:MainMenu
goto:QueryLog
:================================================================================================================
::===============================================================================================================
::QUERY WU CATALOG
:QueryCatalog
cls
call :TITLE
call :MenuHeader "   QUERY WU CATALOG SERVICE BY MKUBA50"
echo:
if %win% lss 9600 echo    WU LOG: %log%
if %win% geq 9600 echo    WU CATALOG SERVICE by mkuba50@MDL
echo    WORK  : %workpath%
call :MenuFooter
echo:
echo    [Q] QUERY CATALOG FOR SINGLE UPDATE KBs
echo    [F] QUERY CATALOG FROM TEXT FILE
echo:
echo    [R] FREELY ROAM THE CATALOG
echo    [L] FREELY ROAM THE CATALOG FROM KB-LIST
echo:
echo    [G] DOWNLOAD THE LINK LIST
echo    [S] DOWNLOAD SINGLE LINK
echo:
echo    [D] DELETE TEMP FILES
echo:
echo    [B] BACK TO MAIN MENU
call :MenuFooter
echo:
CHOICE /C QFRLGSDB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto :QueryCatalogManually
if %errorlevel%==2 goto :QueryCatalogTextFile
if %errorlevel%==3 goto :FreeRoamCatalog
if %errorlevel%==4 goto :FreeRoamCatalogTextFile
if %errorlevel%==5 goto :DownloadData
if %errorlevel%==6 goto :DownloadSingle
if %errorlevel%==7 goto:TempFiles4
if %errorlevel%==8 goto:MainMenu
goto:QueryLog
:================================================================================================================
::===============================================================================================================
::CHECK/REPAIR MENU
:CheckMenu
cls
call :MenuHeader "   CHECK/REPAIR MENU"
echo:
echo    [C] CHECK MOUNTs
echo    [W] CHECK WIM INFO
echo:
echo    [I] SHOW INSTALLED UPDATES
echo:
echo    [X] DISCARD FAILED MOUNT
echo    [Y] DISCARD ALL FAILED MOUNTs
echo:
echo    [A] SCAN/RESTORE COMPONENT STORE ONLINE
echo    [R] CLEANUP/RESETBASE ONLINE SYSTEM
echo    [S] SFC /SCANNOW
echo    [P] CLEAN MOUNT POINTS
echo:
echo    [B] BACK TO MAIN MENU
call :MenuFooter
echo:
CHOICE /C CWIXYARSPB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto :MountCheck
if %errorlevel%==2 goto :WIMCheck
if %errorlevel%==3 goto :ShowInstalledUpdates
if %errorlevel%==4 goto :Discard
if %errorlevel%==5 goto :DiscardAll
if %errorlevel%==6 goto :RestoreProcess
if %errorlevel%==7 goto :CleanupProcess
if %errorlevel%==8 goto :SFCStart
if %errorlevel%==9 goto :CleanMountPoints
if %errorlevel%==10 goto:MainMenu
goto:CheckMenu
:================================================================================================================
::===============================================================================================================
::PS WU MODULE MENU
:PSWUModuleMenu
call :WuauservCheck wuauserv
if exist "%windir%\System32\WindowsPowerShell\v1.0\Modules\PSWindowsUpdate\PSWindowsUpdate.psd1" (set "ishere=INSTALLED") else (set "ishere=NEEDED")
cls
if "%ishere%"=="INSTALLED" call :MenuHeader "   PS WU MODULE MENU [IS=%ishere%]"
if "%ishere%"=="NEEDED" call :MenuHeader02 "   PS WU MODULE MENU [IS=%ishere%]"
echo:
echo    [D] DOWNLOAD/COPY MODULE
echo:
echo    [W] CHECK WINDOWS UPDATE
echo:
echo    [S] CHECK SYSTEM FOR INSTALLED UPDATES
echo    [C] CHECK FOR SPECIFIC INSTALLED UPDATE
echo:
echo    [I] INSTALL WU OFFER WITH CHOICE
echo:
echo    [H] HIDE/UNHIDE WINDOWS UPDATES
echo:
echo    [A] MODULE AUTO-UPDATE
echo    [X] DELETE MODULE
echo:
echo    [B] BACK TO MAIN MENU
call :MenuFooter
echo:
CHOICE /C DWSCIHAXB /N /M "YOUR CHOICE ?:"
if %errorlevel%==1 goto :PSWUModuleDown
if %errorlevel%==2 goto :PSWUModuleCheckWU
if %errorlevel%==3 goto :PSWUModuleCheckSystem
if %errorlevel%==4 goto :PSWUModuleSearch
if %errorlevel%==5 goto :PSWUModuleUpdate
if %errorlevel%==6 goto :PSWUModuleHide
if %errorlevel%==7 goto :PSWUModuleAutoUpdate
if %errorlevel%==8 goto :PSWUModuleDelete
if %errorlevel%==9 goto:MainMenu
goto:PSWUModuleMenu
:================================================================================================================
::===============================================================================================================
::PS WINDOWS UPDATE MODULE DOWNLOAD
:PSWUModuleDown
cls
if exist "%windir%\System32\WindowsPowerShell\v1.0\Modules\PSWindowsUpdate\PSWindowsUpdate.psd1" (
	call :Header "PS WU Module FOUND"
	echo Skipping Download and Install. Use Auto-Update Feature.
	call :Footer
	timeout /t 5
	goto:PSWUModuleMenu
)
set "psmoduleadress=https://gallery.technet.microsoft.com/scriptcenter/2d191bcd-3308-4edd-9de2-88dff796b0bc/file/41459/43/PSWindowsUpdate.zip"
call :Header "PS WU Module DOWNLOAD"
echo This downloads PS WU Module.
echo:
echo Downloading to: %cd%
call :Footer
call :WgetSingleLoop %psmoduleadress%, %cd%
for /r "%cd%" %%a in (*.zip) do echo %%~na | findstr /i "PSWindowsUpdate" 1>nul && set "psmodule=%%a"&&set "psmodulename=%%~na"
call :Footer
echo Unpacking/Copying to: %windir%\System32\WindowsPowerShell\v1.0\Modules\PSWindowsUpdate
call :Footer
if exist "%psmodule%" if not exist "%cd%\%psmodulename%" (
	%sevenzip% x "%psmodule%"
)
if not exist "%windir%\System32\WindowsPowerShell\v1.0\Modules\PSWindowsUpdate" (
	md "%windir%\System32\WindowsPowerShell\v1.0\Modules\PSWindowsUpdate" >nul
	xcopy "%cd%\%psmodulename%\*.*" /s /q "%windir%\System32\WindowsPowerShell\v1.0\Modules\PSWindowsUpdate" >nul
)
call :Footer
call :TITLE
pause
goto:PSWUModuleMenu
::===============================================================================================================
::PS WU MODULE CHECK WU
:PSWUModuleCheckWU
cls
call :Header "PS WU MODULE WU CHECK"
CHOICE /C WS /N /M "[W]rite to File or [S]how ?:"
if %errorlevel%==1 goto :WriteWUOfferToFile
if %errorlevel%==2 goto :ShowWUOfferOnly
:ShowWUOfferOnly
cls
call :Header "PS WU MODULE WU CHECK"
call :PSWUModule Get-WUList, ""
call :TITLE
call :Footer
pause
goto:PSWUModuleMenu
:WriteWUOfferToFile
call :Footer
echo Path to TXT List: %txtfile%
call :Footer
set /p txtfile=Set Path to TXT File:
call :Footer
call :PSWUModule Get-WUList, >%txtfile%
call :TITLE
call :Footer
pause
goto:PSWUModuleMenu
::===============================================================================================================
::PS WU MODULE CHECK SYSTEM
:PSWUModuleCheckSystem
cls
call :Header "PS WU MODULE SYSTEM CHECK"
CHOICE /C WS /N /M "[W]rite to File or [S]how ?:"
if %errorlevel%==1 goto :WriteWUHistoryToFile
if %errorlevel%==2 goto :ShowWUHistoryOnly
:ShowWUHistoryOnly
cls
call :Header "PS WU MODULE SYSTEM CHECK"
call :PSWUModule Get-WUHistory, ""
call :TITLE
call :Footer
pause
goto:PSWUModuleMenu
:WriteWUHistoryToFile
call :Footer
echo Path to TXT List: %txtfile%
call :Footer
set /p txtfile=Set Path to TXT File:
call :Footer
call :PSWUModule Get-WUHistory, >%txtfile%
call :TITLE
call :Footer
pause
goto:PSWUModuleMenu
::===============================================================================================================
::PS WU MODULE UPDATE SEARCH
:PSWUModuleSearch
cls
call :Header "PS WU MODULE SPECIFIC UPDATE CHECK"
echo KB Number^(s^)____: %kb%
echo 'KBXXXXXX1' or 'KBXXXXXX1, KBXXXXXX2, KBXXXXXX3, KBXXXXXX4' 
call :Footer
set /p kb=Set Update ID ^>
call :Footer
set "answer="
powershell Set-ExecutionPolicy Bypass
powershell Import-Module PSWindowsUpdate
for /d %%w in (%kb%) do (
	for /f "tokens=2,* delims= " %%a in ('"powershell Get-WUHistory"') do echo %%b | find "%%w" 1>nul && set answer=%%a at %%b
	if defined answer echo !answer!
)
powershell Set-ExecutionPolicy Restricted
if not defined answer (
	echo Update not found.
	call :Footer
	pause
	call :TITLE
	goto:PSWUModuleMenu
)
call :TITLE
call :Footer
pause
goto:PSWUModuleMenu
::===============================================================================================================
::PS WU MODULE UPDATE SYSTEM
:PSWUModuleUpdate
cls
call :Header "PS WU MODULE UPDATE CHECK"
call :PSWUModule Get-WUInstall, ""
call :TITLE
call :Footer
pause
goto:PSWUModuleMenu
::===============================================================================================================
::PS WU MODULE HIDE UPDATES
:PSWUModuleHide
cls
call :Header "PS WU MODULE HIDE UPDATES"
echo Checking Windows Update Offer ...
call :Footer
call :PSWUModule Get-WUList, ""
call :TITLE
call :Footer
CHOICE /C HU /N /M "[H]ide or [U]nhide ?:"
if %errorlevel%==1 goto :PSWUModuleHideProcess
if %errorlevel%==2 goto :PSWUModuleUnhideProcess
:PSWUModuleHideProcess
call :Footer
CHOICE /C TK /N /M "Hide by [T]itle or [K]B Number ?:"
if %errorlevel%==1 goto :PSWUModuleHideByTitle
if %errorlevel%==2 goto :PSWUModuleHideByKBNumber
:PSWUModuleUnhideProcess
call :Footer
CHOICE /C TK /N /M "Unhide by [T]itle or [K]B Number ?:"
if %errorlevel%==1 goto :PSWUModuleUnhideByTitle
if %errorlevel%==2 goto :PSWUModuleUnhideByKBNumber
:PSWUModuleHideByTitle
call :Footer
echo Title             : %updatetitle%
echo Enter first two Words, wildcard will be added automatically.
call :Footer
set /p updatetitle=Set Update Title ^>
call :Footer
set "hideparam= -Title "%updatetitle%*" -Confirm:$false"
call :PSWUModule Hide-WUUpdate, "%hideparam%"
call :Footer
pause
goto:PSWUModuleMenu
:PSWUModuleUnhideByTitle
call :Footer
echo Title             : %updatetitle%
echo Enter first two Words, wildcard will be added automatically.
call :Footer
set /p updatetitle=Set Update Title ^>
call :Footer
set "hideparam= -Title "%updatetitle%*" -HideStatus:$false -Confirm:$false"
call :PSWUModule Hide-WUUpdate, "%hideparam%"
call :Footer
pause
goto:PSWUModuleMenu
:PSWUModuleHideByKBNumber
call :Footer
echo KB Number^(s^)____: %kb%
echo 'KBXXXXXX1' or 'KBXXXXXX1, KBXXXXXX2, KBXXXXXX3, KBXXXXXX4' 
call :Footer
set /p kb=Set Update ID ^>
call :Footer
for /d %%w in (%kb%) do (
	set "hideparam= -KBArticleID "%%w" -Confirm:$false"
	call :PSWUModule Hide-WUUpdate, "!hideparam!"
	call :Footer
)
pause
goto:PSWUModuleMenu
:PSWUModuleUnhideByKBNumber
call :Footer
echo KB Number^(s^)____: %kb%
echo 'KBXXXXXX1' or 'KBXXXXXX1, KBXXXXXX2, KBXXXXXX3, KBXXXXXX4' 
call :Footer
set /p kb=Set Update ID ^>
call :Footer
for /d %%w in (%kb%) do (
	set "hideparam= -KBArticleID "%%w" -HideStatus:$false -Confirm:$false"
	call :PSWUModule Hide-WUUpdate, "!hideparam!"
	call :Footer
)
pause
goto:PSWUModuleMenu
::===============================================================================================================
::PS WU MODULE AUTO-UPDATE
:PSWUModuleAutoUpdate
cls
call :Header "PS WU MODULE UPDATE CHECK"
call :PSWUModule Update-WUModule, ""
call :TITLE
call :Footer
pause
goto:PSWUModuleMenu
::===============================================================================================================
::PS WU MODULE DELETE
:PSWUModuleDelete
cls
call :Header "PS WU MODULE DELETE"
if exist "%windir%\System32\WindowsPowerShell\v1.0\Modules\PSWindowsUpdate" rd /s /q "%windir%\System32\WindowsPowerShell\v1.0\Modules\PSWindowsUpdate" >nul
echo Deleted Module.
call :Footer
timeout /t 5
goto:PSWUModuleMenu
:================================================================================================================
::===============================================================================================================
::BURF INSTALLER DOWNLOAD
:BurfDown
cls
set "burf="
set "oldburfpack="
set "oldburf="
set "burfadress=https://db.tt/mawTftNS"
call :Header "BURF OFFICE INSTALLER DOWNLOAD"
echo This downloads Burfs Office Installer to root directory.
echo:
echo Downloading to: %cd%
call :Footer
for /r "%cd%" %%a in (*.7z) do echo %%~na | findstr /i "Microsoft Office Updates" 1>nul && set "oldburfpack=%%a
if exist "%oldburfpack%" del /s /q "%oldburfpack%" >nul
call :WgetSingleLoop %burfadress%, %cd%
for /r "%cd%" %%a in (*.7z) do echo %%~na | findstr /i "Microsoft Office Updates" 1>nul && (set "burf=%%a")&&(set "burfname=%%~na")
for /r "%cd%" %%a in (*.cmd) do echo %%~na | findstr /i "Microsoft Office Updates" 1>nul && set "oldburf=%%a"
if exist "%oldburf%" del /s /q "%oldburf%" >nul
call :Footer
echo Unpacking to: %cd%
call :Footer
%sevenzip% x "%burf%"
call :Footer
call :TITLE
pause
goto:OfficeMenu
::===============================================================================================================
::BURF INSTALLER PROCESS
:BurfStart
for /r "%cd%" %%a in (*.cmd) do echo %%~na | findstr /i "Installer For Microsoft Office Updates" 1>nul && set "burfname=%%~na"
cls
call "%cd%\%burfname%.cmd"
call :TITLE
goto:OfficeMenu
:================================================================================================================
:================================================================================================================
::===============================================================================================================
::WRITE FILE NAMES TO TXT FILE
:WriteNamesToList
cls
call :Header "WRITE FILE NAMES TO TXT FILE"
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
call :Footer
set /p txtfile=Set Text File Name :
set /p ext=Set File Extension :
set /p folderpath=Set Folder Path :
if not defined folderpath goto:Tools
echo:
CHOICE /C KWOF /N /M "[K]B Numbers, WU like [W]ith, With[O]ut Extension or [F]ile Info ?"
if %errorlevel%==1 goto :WriteKBNumbers
if %errorlevel%==2 goto :WriteWithExtension
if %errorlevel%==3 goto :WriteOnlyFilename
if %errorlevel%==4 goto :WriteFileinfoToTextfile
:WriteKBNumbers
cls
call :Header "WRITE FILE NAMES OF %folderpath%"
set "y=0"
if exist "%folderpath%\%txtfile%.txt" del "%folderpath%\%txtfile%.txt" /s /q >nul
for /R "%folderpath%" %%A in (*.%ext%) do (
	set /a y+=1
	set "kbnr=%%~nA"
	for /f "tokens=2 delims=- " %%i in ("!kbnr!") do echo %%i
	for /f "tokens=2 delims=- " %%i in ("!kbnr!") do echo %%i>> %folderpath%\%txtfile%.txt
)
call :Footer
echo Wrote %y% KB Numbers to Text File.
call :Footer
pause	
goto:IntegrationMenu
:WriteWithExtension
cls
call :Header "WRITE FILE NAMES OF %folderpath%"
set "y=0"
if exist "%folderpath%\%txtfile%.txt" del "%folderpath%\%txtfile%.txt" /s /q >nul
for /R "%folderpath%" %%A in (*.%ext%) do (
	set /a y+=1
	echo %%~nxA
	echo %%~nxA>> %folderpath%\%txtfile%.txt
)
call :Footer
echo Wrote %y% File Names with Extension to Text File.
call :Footer
pause	
goto:IntegrationMenu
:WriteOnlyFilename
cls
call :Header "WRITE FILE NAMES OF %folderpath%"
set "y=0"
set "offset="
if exist "%folderpath%\%txtfile%.txt" del "%folderpath%\%txtfile%.txt" /s /q >nul
for /R "%folderpath%" %%a in (*.%ext%) do (
	set /a y+=1
	!offset!echo %%~na
	!offset!echo %%~na>>%folderpath%\%txtfile%.txt
)
call :Footer
echo Wrote %y% File Names without Extension to Text File.
call :Footer
pause	
goto:IntegrationMenu
:WriteFileinfoToTextfile
cls
call :Header "WRITE FILE NAMES OF %folderpath%"
if /i "%ext%"=="" set ext=*
echo Wildcard for all or specific Extension
echo Default: %ext%
call :Footer
set /p ext=Set File Extension :
cls
call :Header "WRITE FILE INFO OF %folderpath%"
set "y=0"
for /R "%folderpath%" %%a in (*.*) do set /a y+=1
if exist "%txtfilepath%" del "%txtfilepath%" /s /q >nul
forfiles /p "%folderpath%" /m *.%ext% /s /c "cmd /c echo @relpath ^| @fsize ^| @fdate @ftime"
forfiles /p "%folderpath%" /m *.%ext% /s /c "cmd /c echo @relpath ^| @fsize ^| @fdate @ftime">%folderpath%\%txtfile%.txt
call :Footer
echo Wrote %y% File Infos to Text File.
call :Footer
pause	
goto:IntegrationMenu
:================================================================================================================
::===============================================================================================================
::CHECK LIST AGAINST FOLDER FOR MISSING UPDATES
:CheckListAgainstFolder
cls
call :Header "CHECK LIST AGAINST FOLDER FOR MISSING UPDATES"
echo Enter Path to TXT List: %installist%
echo:
echo Enter Path to Integration List: %integratefromlist%
echo:
echo Path to Update Folder: %workfolder%
echo:
if "%ext%"=="" set ext=msu
echo Update type: %ext%
echo:
set "kbarch=%vera%"
echo KB Architechture: %kbarch% : 'x64' or 'x86'
echo:
call :Footer
set /p installist=Set Path to TXT List: 
set /p integratefromlist=Set Path to Integration List: 
set /p workfolder=Set Path to Update Folder: 
set /p ext=Set Update type: 
set /p kbarch=Enter Architecture: 
cls
call :Header "SCHEDULED IN LIST"
type %installist%
call :Header "PRESENT IN FOLDER"
call :ListAgainstFolderCheck %installist%, %workfolder%, %ext%, %integratefromlist%
call :CompareWithPowershell %integratefromlist%, %installist%, %downloadlist%, "set /a count+=1", "REM "
if not exist "%downloadlist%" (
	call :Footer
	echo NO UPDATES MISSING.
	call :Footer
	pause
	goto:IntegrationMenu
)
call :Header "MISSING IN FOLDER"
type %downloadlist%
call :Footer
CHOICE /C DM /N /M "[D]ownload or [M]enu ?:"
if %errorlevel%==1 goto :DownloadMissingInListCheck
if %errorlevel%==2 goto:IntegrationMenu
:DownloadMissingInListCheck
call :Header "CHECKING LINKLIST FOR DOWNLOAD LINKS"
echo Update Links Available:
call :Footer
if exist "%loadlist%" del /s /q "%loadlist%" >nul
set "txtlog=files\update.links.%kbarch%.txt"
for /f "tokens=*" %%w in (%downloadlist%) do (
	call :LinkListCheckLoop %txtlog%, %%w, %kbarch%, %loadlist%
)
::===============================================================================================================
::CLEAN DOUBLES FROM LINK LIST
if exist %loadlist% (
	call :CleanProcess1 %loadlist%, %cleanloadlist%, loadlist.txt
)
::===============================================================================================================
if exist %loadlist% type %loadlist%
if not exist %loadlist% echo No Update Links found.
call :Footer
call :TITLE
CHOICE /C DM /N /M "[D]ownload or back to [M]enu ?:"
if %errorlevel%==1 goto :DownloadMissingInList
if %errorlevel%==2 goto:IntegrationMenu
:DownloadMissingInList
cls
call :Header "DOWNLOADING MISSING UPDATES"
echo Downloading to: %workfolder%
call :Footer
call :WgetLoop %loadlist%, %workfolder%
call :Footer
call :TITLE
CHOICE /C AM /N /M "[A]gain or [M]enu ?:"
if %errorlevel%==1 goto :CheckListAgainstFolder
if %errorlevel%==2 goto:IntegrationMenu
:================================================================================================================
::===============================================================================================================
::SHOW INSTALLED UPDATES MANUALLY
:ShowInstalledUpdates
cls
call :Header "SEARCHING SYSTEM FOR INSTALLED UPDATES"
CHOICE /C KVWB /N /M "[K]B List, Show [V]erbose, [W]MIC or [B]ack ?:"
if %errorlevel%==1 goto :SearchKBNumbers
if %errorlevel%==2 goto :SearchVerbose
if %errorlevel%==3 goto :ShowInstalledWMIC
if %errorlevel%==4 goto:CheckMenu
:SearchKBNumbers
call :Footer
echo Path to TXT File: %installedupdates%
call :Footer
set /p installedupdates=Set Path to TXT File:
call :Footer
echo Currently Installed Updates:
call :Footer
call :ShowInstalledModule %installedupdates%
call :Footer
echo Found %count% Updates.
call :Footer
pause
goto:CheckMenu
:SearchVerbose
call :Footer
echo Currently Installed Updates:
call :Footer
call :ShowInstalledVerboseModule
call :Footer
echo Found %count% Updates.
call :Footer
pause
goto:CheckMenu
:ShowInstalledWMIC
call :Footer
echo Currently Installed Updates:
call :Footer
call :ShowInstalledWMICModule
call :Footer
echo Found %count% Updates.
call :Footer
pause
goto:CheckMenu
::===============================================================================================================
::CHECK/RESTORE PROCESSES
:RestoreProcess
cls
call :Header "SCAN/RESTORE COMONENT STORE ONLINE"
CHOICE /C SRW /N /M "[S]can, [R]estore online or from [W]IM/ESD ?:"
if %errorlevel%==1 goto :ScanStart
if %errorlevel%==2 goto :RestoreStart
if %errorlevel%==3 goto :RestoreFromWIMStart
:ScanStart
echo:
echo:
call :Header "SCANNING ONLINE SYSTEM"
call :ScanModule "scan"
call :Footer
pause
goto:CheckMenu
:RestoreStart
echo:
echo:
call :Header "RESTORING ONLINE SYSTEM"
call :ScanModule "restore"
call :Footer
pause
goto:CheckMenu
:RestoreFromWIMStart
echo:
echo:
set "index=1"
call :Header "RESTORING ONLINE SYSTEM FROM WIM"
echo Path to WIM File: %wimfile%
echo Index of WIM File: %index% ^| must match installed edition
call :Footer
set /p wimfile=Set Path to WIM File:
set /p index=Index of WIM File:
call :Footer
if "%wimfile:~-3%"=="wim" set "ext=wim"
if "%wimfile:~-3%"=="esd" set "ext=esd"
%dism% /online /cleanup-image /restorehealth /source:%ext%:"%wimfile%":%index% /limitaccess
call :Footer
pause
goto:CheckMenu
::===============================================================================================================
::CLEANUP/RESETBASE PROCESSES
:CleanupProcess
cls
call :Header "CLEANUP/RESETBASE ONLINE SYSTEM"
CHOICE /C ACR /N /M "[A]nalyze, [C]leanup or [R]esetBase ?:"
if %errorlevel%==1 goto :AnalyzeStart
if %errorlevel%==2 goto :CleanupStart
if %errorlevel%==3 goto :ResetbaseStart
:AnalyzeStart
echo:
echo:
call :Header "ANALYZING ONLINE SYSTEM"
call :CleanupModule "online", "analyzecomponentstore"
call :Footer
pause
goto:CheckMenu
:CleanupStart
echo:
echo:
call :Header "CLEANING ONLINE SYSTEM"
call :CleanupModule "online", "startcomponentcleanup"
call :Footer
pause
goto:CheckMenu
:ResetbaseStart
echo:
echo:
call :Header "RESETBASING ONLINE SYSTEM"
call :ResetbaseModule "online"
call :Footer
pause
goto:CheckMenu
::===============================================================================================================
::SFC /SCANNOW
:SFCStart
cls
call :Header "SFC /SCANNOW"
sfc /scannow
call :Footer
pause
goto:CheckMenu
::===============================================================================================================
::CLEAN MOUNT POINTS
:CleanMountPoints
cls
call :Header "DISM CLEAN SWEEP RUN"
echo Cleanup-Mountpoints ...
call :Footer
%dism% /Cleanup-Mountpoints /English
call :Footer
echo Cleanup-Wim ...
call :Footer
%dism% /Cleanup-Wim /English	
call :Footer
pause
goto:CheckMenu
::===============================================================================================================
::CHECK MOUNTs
:MountCheck
cls
call :Header "CHECK MOUNTs"
%dism% /Get-MountedWimInfo /english
call :Footer
pause
goto:CheckMenu
::===============================================================================================================
::WIM CHECK
:WIMCheck
pushd "%~dp0"
cls
call :Header "CHECK WIM INFO"
echo Path to WIM File: %wimfile%
call :Footer
set /p wimfile=Set Path to WIM File:
call :Footer
CHOICE /C SV /N /M "[S]hort Info or [V]erbose Mode ?:"
if %errorlevel%==1 goto :WIMCheckChoice1
if %errorlevel%==2 goto :WIMCheckChoice2
:WIMCheckChoice1
cls
set "z=0"
for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%wimfile%" ^| findstr /i Index') do set /a z+=1
if %z% gtr 9 (set "offset2= ") else (set "offset2=")
call :Header "CHECK WIM INFO FOR %z% INDICES"
call :Header "IND%offset2%  MODIFIED    LANG   ARC  BUILD           INDEX NAME"
call :WIMCheckLoop1 "%wimfile%", %z%
call :Footer
pause
goto:CheckMenu
:WIMCheckChoice2
cls
set "z=0"
call :Header "CHECK WIM INFO"
call :WIMCheckLoop2 "%wimfile%"
goto:CheckMenu
:================================================================================================================
::===============================================================================================================
::MANUAL DOWNLOAD SINGLE LINK
:DownloadSingle
cls
call :Header "DOWNLOAD FILE FROM LINK"
echo Link to File: "%wgetlink%"
echo:
call :Footer
set /p wgetlink=Enter Link to File here:
call :Header "DOWNLOADING FILE FROM LINK"
echo Downloading to: %downpath%
call :Footer
call :WgetSingleLoop "%wgetlink%", %downpath%
call :Footer
call :TITLE
pause
goto:QueryLog
:================================================================================================================
::===============================================================================================================
::MANUAL DOWNLOAD LIST
:DownloadData
cls
call :Header "DOWNLOAD FILES FROM LIST"
if /i "%wgetlist%"=="" if exist %loadlist% set "wgetlist=%loadlist%"
echo Path to TXT File: %wgetlist%
echo:
call :Footer
set /p wgetlist=Enter Path to to TXT File here:
call :Header "DOWNLOADING LIST"
echo Downloading to: %downpath%
call :Footer
call :WgetLoop %wgetlist%, %downpath%
call :Footer
call :TITLE
pause
goto:QueryLog
:================================================================================================================
::===============================================================================================================
:: WU LOG KB QUERY
:QueryLogManually
cls
call :Header "QUERY WINDOWSUPDATE.LOG FOR SINGLE KB"
echo Path to LOG File: %log%
echo:
echo KB Number^(s^)____: %kb%
echo 'KBXXXXXX1' or 'KBXXXXXX1, KBXXXXXX2, KBXXXXXX3, KBXXXXXX4' 
call :Footer
set /p log=Enter Path to to LOG File here:
set /p kb=Enter KB Number here:
cls
call :Header "QUERY WINDOWSUPDATE.LOG FOR SINGLE KB"
::if %win% geq 10240 powershell Get-WindowsUpdateLog -LogPath $env:temp\WindowsUpdate.log
echo Found Update Link^(s^):
call :Footer
if exist "%loadlist%" del /s /q "%loadlist%" >nul
for /d %%w in (%kb%) do (
	call :WUCheckLoop %log%, %%w
)
::===============================================================================================================
::CLEAN DOUBLES FROM LINK LIST
if exist %loadlist% (
	call :CleanProcess1 %loadlist%, %cleanloadlist%, loadlist.txt
)
::===============================================================================================================
if exist %loadlist% type %loadlist%
if not exist %loadlist% echo No Update Links found.
call :Footer
call :TITLE
CHOICE /C AM /N /M "[A]gain or [M]enu ?:"
if %errorlevel%==1 goto :QueryLogManually
if %errorlevel%==2 goto:QueryLog
::===============================================================================================================
:: WU LOG TEXT QUERY
:QueryLogTextFile
cls
call :Header "QUERY WINDOWSUPDATE.LOG FROM TXT FILE"
echo Path to LOG File: %log%
echo Path to TXT File: %downloadlist%
call :Footer
set /p log=Path to LOG File:
set /p downloadlist=Path to TXT File:
cls
call :Header "QUERY WINDOWSUPDATE.LOG FROM TXT FILE"
echo Found Update Links:
call :Footer
if exist "%loadlist%" del /s /q "%loadlist%" >nul
for /f "tokens=*" %%a in (%downloadlist%) do (
	call :WUCheckLoop %log%, %%a
)
::===============================================================================================================
::CLEAN DOUBLES FROM LINK LIST
if exist %loadlist% (
	call :CleanProcess1 %loadlist%, %cleanloadlist%, loadlist.txt
)
::===============================================================================================================
if exist %loadlist% type %loadlist%
if not exist %loadlist% echo No Update Links found.
call :Footer
call :TITLE
CHOICE /C AM /N /M "[A]gain or [M]enu ?:"
if %errorlevel%==1 goto :QueryLogTextFile
if %errorlevel%==2 goto:QueryLog
:================================================================================================================
::===============================================================================================================
:: LINK LIST KB QUERY
:LinkListKBCheck
cls
call :Header "QUERY LINK LIST FOR SINGLE KB"
echo Path to LOG File: %txtlog%
echo:
echo KB Number^(s^)____: %kb%
echo 'KBXXXXXX1' or 'KBXXXXXX1, KBXXXXXX2, KBXXXXXX3, KBXXXXXX4' 
echo:
if not defined kbarch set "kbarch=%vera%"
echo Architechture_____: %kbarch% : 'x64' or 'x86'
call :Footer
set /p txtlog=Enter Path to to LOG File here:
set /p kb=Enter KB Number here:
set /p kbarch=Enter Architecture:
cls
call :Header "QUERY LINK LIST FOR SINGLE KB"
echo Found Update Link^(s^):
call :Footer
if exist "%loadlist%" del /s /q "%loadlist%" >nul
for /d %%i in (%kb%) do (
	call :LinkListCheckLoop %txtlog%, %%i, %kbarch%, %loadlist%
)
::===============================================================================================================
::CLEAN DOUBLES FROM LINK LIST
if exist %loadlist% (
	call :CleanProcess1 %loadlist%, %cleanloadlist%, loadlist.txt
)
::===============================================================================================================
if exist %loadlist% type %loadlist%
call :Footer
call :TITLE
CHOICE /C AM /N /M "[A]gain or [M]enu ?:"
if %errorlevel%==1 goto :LinkListKBCheck
if %errorlevel%==2 goto:QueryLog
::===============================================================================================================
:: LINK LIST TEXT QUERY
:LinkListTextCheck
cls
call :Header "QUERY LINK LIST FROM TXT FILE"
echo Path to LOG File: %txtlog%
echo:
echo Path to TXT File: %downlinklist%
echo:
if not defined kbarch set "kbarch=%vera%"
echo Architechture_____: %kbarch% : 'x64' or 'x86'
echo:
if not defined command set "command=0"
echo Write to loadlist.txt: %command% : '0'=No '1'=Yes
call :Footer
set /p txtlog=Path to LOG File:
set /p downlinklist=Path to TXT File:
set /p kbarch=Enter Architecture:
set /p command=Write to loadlist ?:
cls
call :Header "QUERY LINK LIST FROM TXT FILE"
echo Found Update Links:
call :Footer
if exist "%loadlist%" del /s /q "%loadlist%" >nul
for /f "tokens=*" %%w in (%downlinklist%) do (
	call :LinkListCheckLoop %txtlog%, %%w, %kbarch%, %loadlist%
)
::===============================================================================================================
::CLEAN DOUBLES FROM LINK LIST
if exist %loadlist% (
	call :CleanProcess1 %loadlist%, %cleanloadlist%, loadlist.txt
)
::===============================================================================================================
if exist %loadlist% type %loadlist%
call :Footer
call :TITLE
CHOICE /C AM /N /M "[A]gain or [M]enu ?:"
if %errorlevel%==1 goto :LinkListTextCheck
if %errorlevel%==2 goto:QueryLog
::===============================================================================================================
:: KB LIST AGAINST LINK LIST QUERY
:KBsAgainstLinks
cls
call :Header "KB LIST AGAINST LINK LIST QUERY"
if not defined kbarch set "kbarch=%vera%"
echo Architechture_____: %kbarch% : 'x64' or 'x86'
echo:
echo Path to KB List: %txtlog%
echo:
set "downlinklist=files\update.links.%kbarch%.txt
echo Path to Link List: %downlinklist%
call :Footer
set /p kbarch=Enter Architecture:
set /p txtlog=Path to KB List:
set /p downlinklist=Path to Link List:
cls
call :Header "KBs IN LIST"
type %txtlog%
echo:
call :Header "KBs FOUND IN LINK LIST"
if exist "%loadlist%" del /s /q "%loadlist%" >nul
for /f "tokens=*" %%a in (%txtlog%) do for /f "tokens=*" %%w in (%downlinklist%) do echo "%%w" | findstr /i "%%a" 1>nul && echo %%a>>%loadlist%
::===============================================================================================================
::CLEAN DOUBLES FROM LINK LIST
if exist %loadlist% (
	call :CleanProcess1 %loadlist%, %cleanloadlist%, loadlist.txt
)
type %loadlist%
::===============================================================================================================
::COMPARE LISTS WITH POWERSHELL
set "count=0"
call :CompareWithPowershell %loadlist%, %txtlog%, %checklist%, "set /a count+=1", "REM "
::===============================================================================================================
if not exist %checklist% call :Header "NOTHING MISSING IN LINK LIST"
if exist %checklist% (
	call :Header "MISSING IN LINK LIST"
	type %checklist%
)
call :Footer
call :TITLE
CHOICE /C AM /N /M "[A]gain or [M]enu ?:"
if %errorlevel%==1 goto :KBsAgainstLinks
if %errorlevel%==2 goto:QueryLog
:================================================================================================================
::===============================================================================================================
:: KB CATALOG QUERY MANUAL
:QueryCatalogManually
cls
call :Header "WU CATALOG SERVICE by mkuba50@MDL"
if "%versvar%"=="" set "versvar=10"
if "%archsvar%"=="" set "archsvar=%vera%"
echo Windows version: %versvar% ^| '10', '8.1', '2016', '2012', '2012 R2', Embedded'
echo:
echo Windows build  : %buildsvar% ^| '1703', '1607', '1511' [Win 10 only]
echo:
echo Architecture   : %archsvar% ^| 'x86' or 'x64'
echo:
echo KB Number^(s^)   : %kbsvar% ^| KBXXXXXX1, KBXXXXXX2, ...
call :Footer
set /p versvar=Enter Windows version:
set /p buildsvar=Enter Windows build:
set /p archsvar=Enter Architecture:
set /p kbsvar=Enter KB Number^(s^):
if not "%versvar%"=="10" set "buildsvar="
cls
call :Header "WU CATALOG SERVICE by mkuba50@MDL"
for /d %%a in (%kbsvar%) do call :QueryCatalogLoop %%a
cls
call :Header "WU CATALOG SERVICE by mkuba50@MDL"
if exist "%kbtemplist%" type "%kbtemplist%" 
if not exist "%kbtemplist%" call :Footer
if exist "%kbtemplist%" echo:
CHOICE /C EM /N /M "[E]xport List or back to [M]enu ?:"
)
if %errorlevel%==2 (
	if exist "%kbtemplist%" del /s /q "%kbtemplist%" >nul 2>&1
	if exist "%downpath%\_temp" rd /s /q "%downpath%\_temp" >nul 2>&1
	goto:QueryCatalog
)
echo Path to TXT List: %txtpath%
call :Footer
set /p txtpath=Enter Path to TXT List :
if exist "%kbtemplist%" move "%kbtemplist%" "%txtpath%"
if exist "%downpath%\_temp" rd /s /q "%downpath%\_temp" >nul 2>&1
goto:QueryCatalog
:================================================================================================================
::===============================================================================================================
:: KB CATALOG QUERY FROM TXT
:QueryCatalogTextFile
cls
call :Header "WU CATALOG SERVICE by mkuba50@MDL"
if "%versvar%"=="" set "versvar=10"
if "%archsvar%"=="" set "archsvar=%vera%"
echo Windows version: %versvar% ^| '10', '8.1', '2016', '2012', '2012 R2', Embedded'
echo:
echo Windows build   : %buildsvar% ^| '1703', '1607', '1511' [Win 10 only]
echo:
echo Architecture    : %archsvar% ^| 'x86' or 'x64'
echo:
echo KB TXT File Path: %kbtxt%
call :Footer
set /p versvar=Enter Windows version:
set /p buildsvar=Enter Windows build:
set /p archsvar=Enter Architecture:
set /p kbtxt=Enter KB TXT File Path:
if not "%versvar%"=="10" set "buildsvar="
cls
call :Header "WU CATALOG SERVICE by mkuba50@MDL"
for /f "tokens=*" %%a in (%kbtxt%) do call :QueryCatalogLoop %%a
cls
call :Header "WU CATALOG SERVICE by mkuba50@MDL"
if exist "%kbtemplist%" type "%kbtemplist%" 
if not exist "%kbtemplist%" call :Footer
if exist "%kbtemplist%" echo:
CHOICE /C EM /N /M "[E]xport List or back to [M]enu ?:"
)
if %errorlevel%==2 (
	if exist "%kbtemplist%" del /s /q "%kbtemplist%" >nul 2>&1
	if exist "%downpath%\_temp" rd /s /q "%downpath%\_temp" >nul 2>&1
	goto:QueryCatalog
)
echo Path to TXT List: %txtpath%
call :Footer
set /p txtpath=Enter Path to TXT List :
if exist "%kbtemplist%" move "%kbtemplist%" "%txtpath%"
if exist "%downpath%\_temp" rd /s /q "%downpath%\_temp" >nul 2>&1
goto:QueryCatalog
:================================================================================================================
::===============================================================================================================
:: FREE ROAM CATALOG
:FreeRoamCatalog
cls
call :Header "FREE-ROAM CATALOG SERVICE by mkuba50@MDL"
echo SEARCHSTRING: 'KBXXXXXXX', 'NVIDIA - Display 21.21.13.7653', 
echo               'INTEL driver 7 Series'
echo:
echo LAST        :  %searchstrvar%
call :Footer
set /p searchstrvar=Enter SEARCHSTRING:
cls
call :Header "FREE-ROAM CATALOG SERVICE by mkuba50@MDL"
for /f "tokens=*" %%a in ("%searchstrvar%") do call :QueryCatalogFRInfoLoop "%%a"
cls
call :Header "FREE-ROAM CATALOG SERVICE by mkuba50@MDL"
if exist "%kbtemplist%" type "%kbtemplist%" 
if not exist "%kbtemplist%" call :Footer
if exist "%kbtemplist%" echo:
CHOICE /C SM /N /M "[S]ave output or [M]enu ?:"
if %errorlevel%==2 (
	if exist "%downpath%\_temp\kbtemplist.txt" del /s /q "%downpath%\_temp\kbtemplist.txt" >nul 2>&1
	if exist "%downpath%\_temp" rd /s /q "%downpath%\_temp" >nul 2>&1
	goto:QueryCatalog
)
call :Header "FREE-ROAM CATALOG SERVICE by mkuba50@MDL"
echo Enter Path to TXT file.
call :Footer
set /p txtpath=Enter Path to TXT file:
move "%downpath%\_temp\kbtemplist.txt" "%txtpath%"
if exist "%downpath%\_temp" rd /s /q "%downpath%\_temp" >nul 2>&1
goto:QueryCatalog
:================================================================================================================
::===============================================================================================================
:: FREE ROAM CATALOG FROM TEXT
:FreeRoamCatalogTextFile
cls
call :Header "FREE-ROAM CATALOG SERVICE by mkuba50@MDL"
echo Enter Path to TXT file : %kbtxt%
call :Footer
set /p kbtxt=Enter Path to TXT file:
cls
call :Header "FREE-ROAM CATALOG SERVICE by mkuba50@MDL"
for /f "tokens=*" %%a in (%kbtxt%) do call :QueryCatalogFRInfoLoop "%%a"
cls
call :Header "FREE-ROAM CATALOG SERVICE by mkuba50@MDL"
if exist "%kbtemplist%" type "%kbtemplist%" 
if not exist "%kbtemplist%" call :Footer
if exist "%kbtemplist%" echo:
CHOICE /C SM /N /M "[S]ave output or [M]enu ?:"
if %errorlevel%==2 (
	if exist "%downpath%\_temp\kbtemplist.txt" del /s /q "%downpath%\_temp\kbtemplist.txt" >nul 2>&1
	if exist "%downpath%\_temp" rd /s /q "%downpath%\_temp" >nul 2>&1
	goto:QueryCatalog
)
call :Header "FREE-ROAM CATALOG SERVICE by mkuba50@MDL"
echo Enter Path to TXT file.
call :Footer
set /p txtpath=Enter Path to TXT file:
move "%downpath%\_temp\kbtemplist.txt" "%txtpath%"
if exist "%downpath%\_temp" rd /s /q "%downpath%\_temp" >nul 2>&1
goto:QueryCatalog
:================================================================================================================
::===============================================================================================================
::DOWNLOAD murphy78 LISTs
:MurphDown
cls
set "murphadress=http://files.fm/down.php?i=dpgmagk&n=murphy78list.txt"
set "x86listadress=http://files.fm/down.php?i=dywkwwk&n=update.links.x86.txt"
set "x64listadress=http://files.fm/down.php?i=nplrgfl&n=update.links.x64.txt"
call :Header "MURPHY/ABBODI LISTs DOWNLOAD"
echo This downloads murphy/abbodi lists to files directory.
echo:
echo Downloading to: %cd%\files
call :Footer
for /r "%cd%\files" %%a in (*.txt) do echo "%%~na" | findstr /i "murphy78list" 1>nul && set "murphy78list=%%a"
for /r "%cd%\files" %%a in (*.txt) do echo "%%~na" | findstr /i "update.links.x86" 1>nul && set "x86list=%%a"
for /r "%cd%\files" %%a in (*.txt) do echo "%%~na" | findstr /i "update.links.x64" 1>nul && set "x64list=%%a"
del /s /q "%murphy78list%" >nul
del /s /q "%x86list%" >nul
del /s /q "%x64list%" >nul
call :WgetSingleLoop "%murphadress%", %cd%\files
call :WgetSingleLoop "%x86listadress%", %cd%\files
call :WgetSingleLoop "%x64listadress%", %cd%\files
for /r "%cd%\files" %%a in (*.txt) do echo "%%~na" | findstr /i "murphy78list" 1>nul && set "murphy78list=%%a"
for /r "%cd%\files" %%a in (*.txt) do echo "%%~na" | findstr /i "update.links.x86" 1>nul && set "x86list=%%a"
for /r "%cd%\files" %%a in (*.txt) do echo "%%~na" | findstr /i "update.links.x64" 1>nul && set "x64list=%%a"
ren "%murphy78list%" "murphy78list.txt"
ren "%x86list%" "update.links.x86.txt"
ren "%x64list%" "update.links.x64.txt"
call :Footer
call :TITLE
pause
goto:MurphIntegrationMenu
::===============================================================================================================
::MATCH murphy78 LIST WITH FOLDER
:MatchMurphyWithLinks
cls
set "count=0"&&set "count2=0"
if not defined ext set "ext=msu"
::===============================================================================================================
call :Header "MATCH murphy78 LIST WITH FOLDER"
echo Path to murphy78 List: %murphylist%
echo:
echo Path to Update folder: %workpath%
echo:
echo Path to Link List_: %downlinklist%
echo:
echo Architechture_____: %kbarch% : 'x64' or 'x86'
echo:
echo Language-ID_______: %langid% : i.e. 'en-US'
echo:
echo Extension_________: %ext%
call :Footer
set /p murphylist=Path to murphy78 List:
set /p workpath=Path to Update folder:
set /p downlinklist=Path to TXT File:
set /p kbarch=Enter Architecture:
set /p langid=Enter Language-ID:
set /p ext=Enter Extension:
cls
call :Header "MATCH murphy78 LIST WITH FOLDER"
echo Checking for Updates ... be patient ...
call :Footer
if exist "%folderupdatelist%" del /s /q "%folderupdatelist%" >nul
if exist "%loadlist%" del /s /q "%loadlist%" >nul
if exist "%murphy78content%" del /s /q "%murphy78content%" >nul
::===============================================================================================================
::CHECK INSTALL.WIM UPDATES
for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
	for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ SERVICING (
		for /f "tokens=1,2,3,4 delims=-" %%r in ("%%g") do (
			if %%t equ %kbarch% echo %%s>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t, %folderupdatelist%
			if %%u equ %kbarch% echo %%s-%%t>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t-%%u, %folderupdatelist%
)))
for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
	for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ 1ST-PASS if %%g equ 1 (
		for /f "tokens=1,2,3,4 delims=-" %%r in ("%%h") do (
			if %%t equ %kbarch% echo %%s>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t, %folderupdatelist%
			if %%u equ %kbarch% echo %%s-%%t>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t-%%u, %folderupdatelist%
)))
for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
	for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ 1ST-PASS if %%g equ 2 (
		for /f "tokens=1,2,3,4 delims=-" %%r in ("%%i") do (
			if %%t equ %kbarch% echo %%s>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t, %folderupdatelist%
			if %%u equ %kbarch% echo %%s-%%t>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t-%%u, %folderupdatelist%
)))
for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
	for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ 2ND-PASS (
		for /f "tokens=1,2,3,4 delims=-" %%r in ("%%g") do (
			if %%t equ %kbarch% echo %%s>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t, %folderupdatelist%
			if %%u equ %kbarch% echo %%s-%%t>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t-%%u, %folderupdatelist%
)))
for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
	for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ NETFX3 (
		for /f "tokens=1,2,3,4 delims=-" %%r in ("%%g") do (
			if %%t equ %kbarch% echo %%s>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t, %folderupdatelist%
			if %%u equ %kbarch% echo %%s-%%t>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t-%%u, %folderupdatelist%
)))
for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
	for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ PROWMC (
		for /f "tokens=1,2,3,4 delims=-" %%r in ("%%g") do (
			if %%t equ %kbarch% echo %%s>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t, %folderupdatelist%
			if %%u equ %kbarch% echo %%s-%%t>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t-%%u, %folderupdatelist%
)))		
for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
	for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ W10 (
		for /f "tokens=1,2,3,4 delims=-" %%r in ("%%g") do (
			if %%t equ %kbarch% echo %%s>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t, %folderupdatelist%
			if %%u equ %kbarch% echo %%s-%%t>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t-%%u, %folderupdatelist%
)))		
for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
	for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ NETFX452 if %%g equ %langid% (
		for /f "tokens=1,2,3,4 delims=-" %%r in ("%%h") do (
			if %%t equ %kbarch% echo %%s>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t, %folderupdatelist%
			if %%u equ %kbarch% echo %%s-%%t>>%murphy78content%&&call :MurphyFolderCheck %workpath%, %ext%, %%s-%%t-%%u, %folderupdatelist%
)))		
::===============================================================================================================
::CLEAN DOUBLES FROM LINK LIST
if exist %murphy78content% (
	call :CoolCleanProcess %murphy78content%
)
::===============================================================================================================
::CLEAN DOUBLES FROM LINK LIST
if exist %folderupdatelist% (
	call :CoolCleanProcess %folderupdatelist%
)
::===============================================================================================================
::COMPARE LISTS WITH POWERSHELL
if exist %folderupdatelist% (
	call :CompareWithPowershell %folderupdatelist%, %murphy78content%, %todolist%, "", ""
)
::===============================================================================================================
::SHOW LISTS
cls
call :Header "CONTENT murphy78 LIST"
if exist %murphy78content% type %murphy78content%
call :Footer
call :TITLE
pause
cls
call :Header "PRESENT IN FOLDER"
if exist %folderupdatelist% type %folderupdatelist%
call :Footer
call :TITLE
pause
cls
call :Header "MISSING IN FOLDER"
if exist %todolist% type %todolist%
if not exist %todolist% echo NO UPDATES MISSING.
call :Footer
call :TITLE
pause
::===============================================================================================================
::CHECK FOR BOOT.WIM/WINRE.WIM UPDATES
cls
set "found="&&set "found2="
call :Header "CHECKING FOR BOOT.WIM/WINRE.WIM UPDATES"
set "wimrelist=KB3000850, KB3006958, KB2974735"
for /d %%a in (%wimrelist%) do (
	set "found="
	for /r "%workpath%" %%i in (*.%ext%) do echo %%~ni | findstr /i "%%a-%kbarch%" 1>nul && echo %%a found.&&set "found=check"
	if not "!found!"=="check" (
		echo %%a not found
		call :LinkListCheckLoop %downlinklist%, %%a, %kbarch%, %loadlist%
))
call :Footer
if exist %loadlist% type %loadlist%
call :Footer
for /r "%workpath%" %%i in (*.cab) do echo %%~ni | findstr /i "KB3005608-%kbarch%" 1>nul && echo KB3005608 found.&&set "found2=check2"
if not "!found2!"=="check2" (
	call :Footer
	echo KB3005608 not found
	call :Footer
	call :LinkListCheckLoop %downlinklist%, KB3005608, %kbarch%, %loadlist%
	if exist %loadlist% type %loadlist%
)
call :Footer
CHOICE /C SM /N /M "[S]earch in Link List or [M]enu ?:"
if %errorlevel%==1 goto :MatchMurphyWithLinks2
if %errorlevel%==2 goto:MurphIntegrationMenu
::===============================================================================================================
::CHECK LINK LIST FOR MISSING FOR DOWNLOAD
:MatchMurphyWithLinks2
cls
call :Header "MATCH MISSING KBs WITH LINK LIST"
if exist %todolist% (
	for /f "tokens=*" %%a in (%todolist%) do (
		call :LinkListCheckLoop %downlinklist%, %%a, %kbarch%, %loadlist%
))
if exist %loadlist% (
	call :CoolCleanProcess %loadlist%
	type %loadlist%
)
call :Footer
call :TITLE
CHOICE /C ADM /N /M "[A]gain, [D]ownload or [M]enu ?:"
if %errorlevel%==1 goto :MatchMurphyWithLinks
if %errorlevel%==2 goto :MurphIntegrationDownload
if %errorlevel%==3 goto:MurphIntegrationMenu
::===============================================================================================================
::DOWNLOAD MISSING MURPHIES
:MurphIntegrationDownload
cls
call :Header "DOWNLOADING MISSING UPDATES"
echo Downloading to: %downpath%
call :Footer
call :WgetLoop %loadlist%, %downpath%
call :Footer
call :TITLE
for /r "%downpath%" %%i in (*.%ext%) do (
	set "temp=%%~ni"
	for /f "tokens=1,2,3 delims=- " %%e in ("!temp!") do if %%e equ x64 ren "%%i" "!temp:~4!"
)
CHOICE /C AM /N /M "[A]gain or [M]enu ?:"
if %errorlevel%==1 goto :MatchMurphyWithLinks
if %errorlevel%==2 goto:MurphIntegrationMenu
::===============================================================================================================
::MATCH TWO LISTS
:MatchLists
cls
call :Header "MATCH TWO LISTS"
echo NOTE: This will show all entries that are not in list 1.
echo:
echo Path to TXT List 1: %txtlist1%
echo:
echo Path to TXT List 2: %txtlist2%
echo:
echo Path to Delta List: %deltatxtlist%
echo:
if not defined kbarch set "kbarch=%vera%"
echo Architechture_____: %kbarch% : 'x64' or 'x86'
call :Footer
set /p txtlist1=Path to TXT List 1:
set /p txtlist2=Path to TXT List 2:
set /p deltatxtlist=Path to Delta List :
set /p kbarch=Enter Architecture:
::===============================================================================================================
::COMPARE LISTS WITH POWERSHELL
if exist "%deltatxtlist%" del /s /q "%deltatxtlist%" >nul
call :CompareWithPowershell %txtlist1%, %txtlist2%, %deltatxtlist%, "", "rem "
cls
call :Header "MATCH TWO LISTS"
if exist %deltatxtlist% type %deltatxtlist%
call :Footer
call :TITLE
pause
goto:QueryLog
:================================================================================================================
::===============================================================================================================
::CLEAN TEMP FILES
:TempFiles
call :CleanTempFiles
goto:MainMenu
:TempFiles2
call :CleanTempFiles
goto:InstallMenu
:TempFiles3
call :CleanTempFiles
goto:IntegrationMenu
:TempFiles4
call :CleanTempFiles
goto:QueryCatalog
:================================================================================================================
::===============================================================================================================
::SAVE CURRENT WU LOG
:SaveCurrentLog
if /i "%log%"=="" set "log=%windir%\WindowsUpdate.log"
if /i "%savepath%"=="" set "savepath=%cd%"
cls
call :Header "SAVING CURRENT WU LOG"
echo Copy To: %cd%
call :Footer
set /p savepath=Copy To:
cls
call :Header "SAVING CURRENT WU LOG"
xcopy "%log%" /s /q "%savepath%" /y >nul
if %errorlevel%==0 echo Successfully copied %log% to %savepath%.
if %errorlevel%==1 echo Copying %log% to %savepath% failed.
call :Footer
pause
goto:QueryLog
:================================================================================================================
::===============================================================================================================
::ONLINE INSTALL
:OnlineInstall
call :WuauservCheck wuauserv
::===============================================================================================================
::VBS File Creation
echo Set updateSession = CreateObject^("Microsoft.Update.Session"^)>%wucheck%
echo updateSession.ClientApplicationID = "MSDN Sample Script">>%wucheck%
echo Set updateSearcher = updateSession.CreateUpdateSearcher^(^)>>%wucheck%
echo WScript.Echo "Searching for updates..." ^& vbCRLF>>%wucheck%
echo Set searchResult = _>>%wucheck%
echo updateSearcher.Search^("IsInstalled=0 and Type='Software' and IsHidden=0"^)>>%wucheck%
echo WScript.Echo "List of applicable items on the machine:">>%wucheck%
echo Set colUpdates = searchResult.Updates>>%wucheck%
echo For i = 0 to colUpdates.Count - ^1>>%wucheck%
echo:>>%wucheck%
echo     For Each strArticle in colUpdates.Item^(i^).KBArticleIDs>>%wucheck%
echo         Wscript.Echo "KB" ^& strArticle>>%wucheck%
echo     Next>>%wucheck%
echo     Wscript.Echo>>%wucheck%
echo 	For Each strArticle in colUpdates.Item^(i^).BundledUpdates>>%wucheck%
echo 			Wscript.Echo "Bundled update: " ^& strArticle>>%wucheck%
echo 		Next>>%wucheck%
echo Next>>%wucheck%
echo If searchResult.Updates.Count = 0 Then>>%wucheck%
echo     WScript.Echo "There are no applicable updates.">>%wucheck%
echo     WScript.Quit>>%wucheck%
echo End If>>%wucheck%
::===============================================================================================================
::SHOW AVAILABLE UPDATES | BUNDLED | WRITE TO FILE
cls
call :Header "SEARCHING WU FOR UPDATES"
echo Windows Update Offer:
call :Footer
cscript %wucheck%>>%wuoffer%
for /f "tokens=*" %%a in (%wuoffer%) do (
	set "kbnr="
	if "%%a" equ "There are no applicable updates." echo %%a
	for /f "tokens=1 delims=:- " %%A in ("%%a") do echo %%A | findstr /i "KB" 1>nul && (
		for /f "tokens=1,2,3,4,5,6 delims=:- " %%G in ('type %wuoffer% ^| findstr /i "Bundled" ^| findstr /i "%%A" ^| findstr /v /i "ie" ^| findstr /v /i "Malicious"') do (
			set "kbtemp=%%J"
			echo %%K | findstr /i "%vera%" 1>nul && set "kbnr=KB!kbtemp:~2!"
			echo %%L | findstr /i "%vera%" 1>nul && set "kbnr=KB!kbtemp:~2!-%%K"
		)
		if defined kbnr echo !kbnr!>>%updatelist%
		if not defined kbnr echo %%a>>%updatelist%
))
echo:
::===============================================================================================================
::CLEAN DOUBLES FROM WU LIST BY KEEPING ORIGINAL LIST ORDER
if exist "%updatelist%" call :CoolCleanProcess %updatelist%
::if %win% lss 9200 if exist "%updatelist%" call :CleanProcess1 %updatelist%, %cleanupdatelist%, updatelist.txt
::===============================================================================================================
if %errorlevel% neq 0 (
	echo:
	if %win% geq 10240 echo.
	if %win% lss 10240 echo.
	echo In case an ERROR appeares here, re-start the process.
	echo ERROR: 0x8024402C = can't connect to Windows Update
	echo Make sure the machine is connected to the internet.
	if %win% geq 10240 echo.
	if %win% lss 10240 echo.
	echo:
	call :TITLE
	pause
	goto:InstallMenu
)
set "ucount=0"
if exist "%updatelist%" for /f "tokens=*" %%a in (%updatelist%) do set /a ucount+=1
if exist "%updatelist%" type "%updatelist%"
call :Header "FOUND: %ucount% Updates to Install."
call :TITLE
CHOICE /C PM /N /M "[P]roceed or [M]enu ?:"
if %errorlevel%==1 goto :ShowFolder
if %errorlevel%==2 goto:InstallMenu
::===============================================================================================================
::SHOW UPDATES IN FOLDER
:ShowFolder
cls
call :Header "SEARCHING FOLDER FOR AVAILABLE UPDATES"
echo Updates found in Folder:
call :Footer
set "count=0"&&set "count2=0"
call :ActiveFolderCheck %workpath%, msu, %checklist%
if %count% equ 0 (
	call :NotFound "No Updates found in Folder."
	goto:ShowMissing
)
call :Header "FOUND: %count% Updates in Folder."
call :TITLE
pause
::===============================================================================================================
::SHOW MISSING UPDATES IN FOLDER
:ShowMissing
cls
call :Header "SEARCHING FOLDER FOR MISSING UPDATES"
echo Missing Updates in Folder:
call :Footer
::===============================================================================================================
::COMPARE LISTS WITH POWERSHELL
if %count% gtr 0 (
	call :CompareWithPowershell %checklist%, %updatelist%, %downloadlist%, "set /a count2+=1", "REM "
)
::===============================================================================================================
if %count% equ 0 if %count2% equ 0 (
	call :NotFound "No Updates to install found in Folder."
	type %updatelist%>>%downloadlist%
	call :Footer
	goto:CheckDownloadChoice
)
if %count2% equ 0 (
	call :NotFound "No Updates missing in Folder."
	call :TITLE
	goto:ShowInstall
)
if exist "%downloadlist%" type "%downloadlist%"
call :Header "FOUND: %count2% Missing Updates."
call :TITLE
:CheckDownloadChoice
CHOICE /C DIM /N /M "[D]ownload, [I]nstall or back to [M]enu ?:"
if %errorlevel%==1 goto :CheckDownload8
if %errorlevel%==2 goto :ShowInstall
if %errorlevel%==3 goto:InstallMenu
::===============================================================================================================
::CHECK WU LOG FOR LINKS
:CheckDownload8
if %win% geq 6200 goto:CheckDownload10
::===============================================================================================================
::PREPARE UPDATE LINK LIST WIN 8
cls
call :Header "CHECKING WINDOWUPDATE.LOG FOR DOWNLOAD LINKS"
echo Update Links Available:
call :Footer
if exist "%loadlist%" del /s /q "%loadlist%" >nul
call :Footer
for /f "tokens=*" %%a in (%downloadlist%) do (
	call :WUCheckLoop %log%, %%a
)
goto:Clean.List.001
::===============================================================================================================
::PREPARE UPDATE LINK LIST WIN 8.1/10
:CheckDownload10
echo %ver% | findstr /v "Server" | findstr /v "Embedded" 1>nul && (
	if %win% equ 10240 set "buildsvar=1507" && set "versvar=10"
	if %win% equ 10586 set "buildsvar=1511" && set "versvar=10"
	if %win% equ 14393 set "buildsvar=1607" && set "versvar=10"
	if %win% equ 15063 set "buildsvar=1703" && set "versvar=10"
	if %win% equ 9600 set "buildsvar=" && set "versvar=8.1"
	if %win% equ 7601 set "buildsvar=" && set "versvar=7"
	set "archsvar=%vera%"
)
echo %ver% | findstr /i "Server 2016" 1>nul && (
	set "buildsvar="
	set "archsvar=%vera%"
	set "versvar=2016"
)
echo %ver% | findstr /i "Server 2012 R2" 1>nul && (
	set "buildsvar="
	set "archsvar=%vera%"
	set "versvar=2012 R2"
)
echo %ver% | findstr /i "Server 2012" | findstr /v "R2" 1>nul && (
	set "buildsvar="
	set "archsvar=%vera%"
	set "versvar=2012"
)
echo %ver% | findstr /i "Embedded" 1>nul && (
	set "buildsvar="
	set "archsvar=%vera%"
	set "versvar=Embedded"
)
if not exist "%downpath%\_temp" md "%downpath%\_temp" >nul 2>&1
cls
call :Header "CHECKING WINDOWUPDATE CATALOG FOR DOWNLOAD LINKS"
echo Updates Available: for %ver%
call :Footer
set "ucount=0"
if exist "%downloadlist%" for /f "tokens=*" %%a in (%downloadlist%) do set /a ucount+=1
if exist %downloadlist% type %downloadlist%
call :Header "FOUND: %ucount% Updates to Install."
CHOICE /C CS /N /M "[C]heck or [S]kip ?:"
if %errorlevel%==2 goto :Download.Ask
call :Footer
if exist %downloadlist% for /f "tokens=*" %%a in (%downloadlist%) do call :QueryCatalogLoop %%a
call :Footer
if exist %kbtemplist% type %kbtemplist%
CHOICE /C ESM /N /M "[E]xport List, [S]kip or back to [M]enu ?:"
if %errorlevel%==2 (
	if exist "%kbtemplist%" del /s /q "%kbtemplist%" >nul 2>&1
	if not exist "%downpath%\_temp" rd /s /q "%downpath%\_temp" >nul 2>&1
	goto:Download.Ask
)
if %errorlevel%==3 (
	if exist "%kbtemplist%" del /s /q "%kbtemplist%" >nul 2>&1
	if not exist "%downpath%\_temp" rd /s /q "%downpath%\_temp" >nul 2>&1
	goto:InstallMenu
)
echo Path to TXT List: %txtpath%
call :Footer
set /p txtpath=Enter Path to TXT List :
if exist "%kbtemplist%" move "%kbtemplist%" "%txtpath%"
if not exist "%downpath%\_temp" rd /s /q "%downpath%\_temp" >nul 2>&1
goto:Download.Ask
::===============================================================================================================
::CLEAN DOUBLES FROM LINK LIST
:Clean.List.001
if exist %loadlist% (
	call :CleanProcess1 %loadlist%, %cleanloadlist%, loadlist.txt
)
::===============================================================================================================
if exist %loadlist% type %loadlist%
if not exist %loadlist% echo No Update Links found.
:Download.Ask
call :Footer
call :TITLE
CHOICE /C DSM /N /M "[D]ownload, [S]kip or back to [M]enu ?:"
if %errorlevel%==1 goto :Download
if %errorlevel%==2 goto :InstallUpdates
if %errorlevel%==3 goto:InstallMenu
::===============================================================================================================
::DOWNLOAD UPDATE LINK LIST
:Download
cls
call :Header "DOWNLOADING FOUND UPDATES"
echo Downloading to: %downpath%
call :Footer
call :WgetLoop %loadlist%, %downpath%
call :Footer
call :TITLE
CHOICE /C IM /N /M "[I]nstall or [M]enu ?:"
if %errorlevel%==1 goto :ShowInstall
if %errorlevel%==2 goto:InstallMenu
::===============================================================================================================
::SHOW UPDATES TO INSTALL
:ShowInstall
cls
call :Header "SHOW UPDATES TO INSTALL"
echo Updates in Folder to Install:
call :Footer
set "count=0"&&set "count2=0"
if %win% lss 7601 set "fstr=6.0"
if %win% equ 7601 set "fstr=6.1"
if %win% equ 9200 set "fstr=8.0"
if %win% equ 9600 set "fstr=8.1"
if %win% geq 10240 set "fstr=10.0"
for /f "tokens=*" %%a in (%updatelist%) do (
	for /r "%workpath%" %%i in (*.msu) do (
		for /f "tokens=1 delims=_" %%r in ("%%~ni") do echo %%r | findstr /i "%fstr%" | findstr /i "%%a" | findstr /i "%vera%" 1>nul && (set /a count+=1&&echo %%r>>%todolist%)
))
if exist %todolist% call :CoolCleanProcess %todolist%
if exist %todolist% type %todolist%
if /i "%count%"=="0" (
	call :NotFound "No Updates to install found."
	call :Footer
	goto:CheckDownloadChoice
)

call :Header "FOUND: %count% Updates to Install."
CHOICE /C IM /N /M "[I]nstall or [M]enu ?:"
if %errorlevel%==1 goto :InstallUpdates
if %errorlevel%==2 goto:InstallMenu
:================================================================================================================
::===============================================================================================================
::OFFLINE INSTALL
:OfflineInstall
::===============================================================================================================
::SHOW INSTALLED UPDATES
cls
call :Header "SEARCHING SYSTEM FOR INSTALLED UPDATES"
echo Currently Installed Updates:
call :Footer
call :ShowInstalledModule %installedupdatelist%
if exist "%installedupdatelist%" call :CoolCleanProcess %installedupdatelist%
set "ucount=0"
if exist "%installedupdatelist%" for /f "tokens=*" %%a in (%installedupdatelist%) do set /a ucount+=1
if exist "%installedupdatelist%" type %installedupdatelist%
call :Header "FOUND: %ucount% Updates installed."
pause
::===============================================================================================================
::COMPARE WITH FOLDER
cls
call :Header "COMPARING INSTALLED WITH UPDATE FOLDER"
echo Updates in Folder:
call :Footer
set "count=0"&&set "count2=0"
call :ActiveFolderCheck %workpath%, msu, %checklist%
if not exist %checklist% (
	call :NotFound "No Updates found in Folder."
	goto:InstallMenu
)
::===============================================================================================================
::COMPARE LISTS WITH POWERSHELL
set "count=0"
if exist "%checklist%" call :CoolCleanProcess %checklist%
call :CompareWithPowershell %installedupdatelist%, %checklist%, %downloadlist%, "set /a count+=1", "REM "
::===============================================================================================================
if not exist %downloadlist% (
	call :NotFound "No Updates to install found."
	goto:InstallMenu
)
::===============================================================================================================
::CLEAN DOUBLES FROM FOLDER LIST
powershell gc "%downloadlist%" ^| sort ^| get-unique > "%cleandownloadlist%"
::===============================================================================================================
::SORT UPDATELIST LIST WITH POWERSHELL
powershell gc "%cleandownloadlist%" ^| sort > "%todolist%"
::===============================================================================================================
call :Footer
echo Updates to install:
call :Footer
if exist %todolist% type %todolist%
call :Header "FOUND: %count% Updates to Install."
call :TITLE
CHOICE /C IM /N /M "[I]nstall or [M]enu ?:"
if %errorlevel%==1 goto :InstallUpdates
if %errorlevel%==2 goto:InstallMenu
:================================================================================================================
::===============================================================================================================
::INSTALL UPDATES
:InstallUpdates
::===============================================================================================================
::INSTALL FOUND UPDATES
cls
set "count=0"&&set "count2=0"
for /f "tokens=* delims=- " %%a in (%todolist%) do set /a count+=1
if /i "%count%"=="0" (
	call :NoUpdatesToInstallFound install
	goto:InstallMenu
)
call :Header "INSTALLING %count% FOUND UPDATES"
for /f "tokens=* delims=- " %%a in (%todolist%) do (
	for /r "%workpath%" %%i in (*.msu) do (
		for /f "tokens=1 delims=_" %%r in ("%%~ni") do set "archcheck=%%r"
		echo !archcheck! | find /i "%%a" 1>nul && if "!archcheck:~-3!"=="%vera%" call :MasterInstallUpdates %%i, %%~ni
))
call :Footer
pause
goto:InstallMenu
:InstallUpdatesFromList
::===============================================================================================================
::INSTALL UPDATES FROM LIST
cls
call :Header "INSTALLING UPDATES FROM LIST"
echo Path to TXT List: %installist%
call :Footer
set /p installist=Set Path to TXT List:
set "count=0"&&set "count2=0"
for /f "tokens=* delims=- " %%a in (%installist%) do set /a count+=1
if /i "%count%"=="0" (
	call :NoUpdatesToInstallFound install
	goto:InstallMenu
)
cls
call :Header "INSTALLING %count% FOUND UPDATES"
for /f "tokens=* delims=- " %%a in (%installist%) do (
	for /r "%workpath%" %%i in (*.msu) do (
		for /f "tokens=1 delims=_" %%r in ("%%~ni") do set "archcheck=%%r"
		echo !archcheck! | find /i "%%a" 1>nul && if "!archcheck:~-3!"=="%vera%" call :MasterInstallUpdates %%i, %%~ni
))
call :Footer
pause
goto:InstallMenu
:InstallAllUpdates
::===============================================================================================================
::INSTALL ALL UPDATES REGARDLESS
cls
call :Header "INSTALL ALL UPDATES REGARDLESS"
if not defined installfolder set "installfolder=%workpath%"
echo Path to Updates Folder: %installfolder%
call :Footer
set /p installfolder=Set Path to Updates Folder:
set "count=0"&&set "count2=0"
for /r "%installfolder%" %%i in (*.msu) do set /a "count+=1"
if /i "%count%"=="0" (
	call :NoUpdatesToInstallFound install
	goto:InstallMenu
)
call :Header "INSTALLING %count% FOUND UPDATES"
for /r "%installfolder%" %%i in (*.msu) do (
	call :MasterInstallUpdates %%i, %%~ni
)
call :Footer
pause
goto:InstallMenu
:================================================================================================================
::===============================================================================================================
::INTEGRATION
::===============================================================================================================
::INTEGRATE UPDATES FROM FOLDER
:IntegrateAllUpdates
cls
call :IntegrationSetDataTwo
set "count=0"&&set "count2=0"
for /r "%workfolder%" %%i in (*.msu) do set /a "count+=1"
if /i "%count%"=="0" (
	call :NoUpdatesToInstallFound integrate
	goto:IntegrationMenu
)
cls
call :Header "CHECKING %count% FOUND UPDATES"
if not exist "%mountfolder%" md "%mountfolder%" >nul
echo Mounting: %wimfile%
echo to      : %mountfolder%
call :Footer
call :MountWIM %wimfile%, %index%, %mountfolder%
call :CheckMountedWIM %mountfolder%, %wimupdatelist%
echo:
call :Header "PRESENT IN FOLDER:"
echo:
call :ActiveFolderIntegrationCheck %workfolder%, msu, %folderupdatelist%
set "count=0"
call :CompareWithPowershell %wimupdatelist%, %folderupdatelist%, %integrateupdatelist%, "set /a count+=1", "REM "
if not exist "%integrateupdatelist%" (
	call :Footer
	echo UPDATES ALREADY INTEGRATED.
	echo:
	goto :UnmountIAU
)
echo:
call :Header "SERVICING %count% UPDATES."
type %integrateupdatelist%
call :Footer
call :MasterIntegrateUpdates %integrateupdatelist%, %workfolder%, msu, %mountfolder%
if "%command%"=="cleanup" (
	call :Header "CLEANING MOUNTED WIM"
	call :CleanupModule "image:%mountfolder%"
)
if "%command%"=="resetbase" (
	call :Header "RESETBASING MOUNTED WIM"
	call :ResetbaseModule "image:%mountfolder%"
)
:UnmountIAU
echo:
call :Header "UNMOUNTING"
echo Unmount: %mountfolder%
echo to     : %wimfile%
call :Footer
call :UnMountWIM %mountfolder%
if exist "%wimupdatelist%" del /s /q "%wimupdatelist%" >nul
if exist "%folderupdatelist%" del /s /q "%folderupdatelist%" >nul
if exist "%integrateupdatelist%" del /s /q "%integrateupdatelist%" >nul
call :Footer
if exist "%mountfolder%" rd /s /q "%mountfolder%" >nul
pause
goto:IntegrationMenu
::===============================================================================================================
::INTEGRATE UPDATES FROM FOLDER ALL INDICES
:IntegrateAllUpdatesAllIndices
cls
call :IntegrationSetDataTwo
set "count=0"&&set "count2=0"&&set "count3=0"
for /r "%workfolder%" %%i in (*.msu) do set /a "count+=1"
if /i "%count%"=="0" (
	call :NoUpdatesToInstallFound integrate
	goto:IntegrationMenu
)
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do set /a count3+=1 
cls
if %count3% gtr 9 (set "offset2= ") else (set "offset2=")
call :Header "IND%offset2%  MODIFIED    LANG   ARC  BUILD           INDEX NAME"
call :WIMCheckLoop1 %wimfile%, !count3!
echo:
if not exist "%mountfolder%" md "%mountfolder%" >nul
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	call :Header "MOUNTING INDEX: !ix! OF %count3% to: %mountfolder%\!ix!"
	if not exist "%mountfolder%\!ix!" md "%mountfolder%\!ix!" >nul
	call :MountWIM %wimfile%, !ix!, %mountfolder%\!ix!
)
call :Footer
if "!arch!"=="---" (
	echo No Windows Image Found.
	call :Footer
	timeout /t 5
	goto:UnMountUseless
)
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	call :CheckMountedWIM %mountfolder%\!ix!, %wimupdatelist%
	call :Header "SERVICING: INDEX: !ix! OF %count3%, !offlineversion! !offlineedition!"
	call :ActiveFolderIntegrationCheck %workfolder%, msu, %folderupdatelist%
	set "count=0"&&set "marker="
	call :CompareWithPowershell %wimupdatelist%, %folderupdatelist%, %integrateupdatelist%, "set /a count+=1", "REM "
	if not exist "%integrateupdatelist%" (
		call :Footer
		echo UPDATES ALREADY INTEGRATED INTO INDEX !ix!.
		echo:
		set "marker=REM "
	)
	!marker!call :MasterIntegrateUpdates %integrateupdatelist%, %workfolder%, msu, %mountfolder%\!ix!
	if exist "%wimupdatelist%" del /s /q "%wimupdatelist%" >nul
	if exist "%folderupdatelist%" del /s /q "%folderupdatelist%" >nul
	if exist "%integrateupdatelist%" del /s /q "%integrateupdatelist%" >nul
)
if "%command%"=="cleanup" (
	for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
		set ix=%%z
		call set ix=%%ix:"=%%
		call :Header "CLEANING INDEX: !ix! OF %count3%
		call :CleanupModule "image:%mountfolder%\!ix!"
))
if "%command%"=="resetbase" (
	for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
		set ix=%%z
		call set ix=%%ix:"=%%
		call :Header "RESETBASING INDEX: !ix! OF %count3%"
		call :ResetbaseModule "image:%mountfolder%\!ix!"
))
pause
goto:IntegrationMenu
:UnMountUseless
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	call :Header "UNMOUNTING/COMMITTING INDEX: !ix! OF %count3%"
	call :UnMountWIM %mountfolder%\!ix!
)
call :Footer
if exist "%mountfolder%" rd /s /q "%mountfolder%" >nul
pause
goto:IntegrationMenu
::===============================================================================================================
::INTEGRATE UPDATES FROM LIST
:IntegrateUpdatesFromList
cls
call :IntegrationSetData
set "count=0"&&set "count2=0"
for /f "tokens=* delims=- " %%a in (%installist%) do set /a count+=1
if /i "%count%"=="0" (
	call :NoUpdatesToInstallFound integrate
	goto:IntegrationMenu
)
cls
if not exist "%mountfolder%" md "%mountfolder%" >nul
call :Header "MOUNTING INDEX: %index% to: %mountfolder%"
call :MountWIM %wimfile%, %index%, %mountfolder%
call :Header "SERVICING INDEX: %index%"
call :CheckMountedWIM %mountfolder%, %wimupdatelist%
set "count=0"
call :CompareWithPowershell %wimupdatelist%, %installist%, %integrateupdatelist%, "set /a count+=1", "REM "
if not exist "%integrateupdatelist%" (
	call :Footer
	echo UPDATES ALREADY INTEGRATED.
	call :Footer
	pause
	goto:UnmountIAFL
)
type %integrateupdatelist%
call :Footer
call :MasterIntegrateUpdates %integrateupdatelist%, %workfolder%, msu, %mountfolder%
if "%command%"=="cleanup" (
	call :Header "CLEANING INDEX: %index%"
	call :CleanupModule "image:%mountfolder%"
)
if "%command%"=="resetbase" (
	call :Header "RESETBASING INDEX: %index%"
	call :ResetbaseModule "image:%mountfolder%"
)
:UnmountIAFL
call :Header "UNMOUNTING INDEX: %index%"
call :UnMountWIM %mountfolder%
call :Footer
if exist "%mountfolder%" rd /s /q "%mountfolder%" >nul
pause
goto:IntegrationMenu
::===============================================================================================================
::INTEGRATE UPDATES FROM LIST ALL INDICES
:IntegrateUpdatesAllIndices
cls
call :IntegrationSetData
set "count=0"&&set "count2=0"&&set "count3=0"
for /f "tokens=* delims=- " %%a in (%installist%) do set /a count+=1
if /i "%count%"=="0" (
	call :NoUpdatesToInstallFound integrate
	goto:IntegrationMenu
)
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do set /a count3+=1 
cls
if !count3! gtr 9 (set "offset2= ") else (set "offset2=")
call :Header "IND!offset2!  MODIFIED    LANG   ARC  BUILD           INDEX NAME"
call :WIMCheckLoop1 %wimfile%, !count3!
echo:
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	if not exist "%mountfolder%\!ix!" md "%mountfolder%\!ix!" >nul
	call :Header "MOUNTING INDEX: !ix! OF %count3% to: %mountfolder%\!ix!"
	call :MountWIM %wimfile%, !ix!, %mountfolder%\!ix!
)
call :Footer
if "!arch!"=="---" (
	echo No Windows Image Found.
	call :Footer
	pause
	goto:UnMountUselessList
)
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	call :Header "SERVICING: INDEX: !ix! OF %count3%, !offlineversion! !offlineedition!"
	call :CheckMountedWIM %mountfolder%\!ix!, %wimupdatelist%
	set "count=0"&&set "marker="
	call :CompareWithPowershell %wimupdatelist%, %installist%, %integrateupdatelist%, "set /a count+=1", "REM "
	if not exist "%integrateupdatelist%" (
		echo UPDATES ALREADY INTEGRATED INTO INDEX !ix!.
		echo:
		set "marker=REM "
	)
	!marker!type %integrateupdatelist%
	!marker!call :Footer
	!marker!call :MasterIntegrateUpdates %integrateupdatelist%, %workfolder%, msu, %mountfolder%\!ix!
	if exist "%wimupdatelist%" del /s /q "%wimupdatelist%" >nul
	if exist "%folderupdatelist%" del /s /q "%folderupdatelist%" >nul
	if exist "%integrateupdatelist%" del /s /q "%integrateupdatelist%" >nul
)
if "%command%"=="cleanup" (
	for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
		set ix=%%z
		call set ix=%%ix:"=%%
		call :Header "CLEANING INDEX: !ix! OF %count3%
		call :CleanupModule "image:%mountfolder%\!ix!"
))
if "%command%"=="resetbase" (
	for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
		set ix=%%z
		call set ix=%%ix:"=%%
		call :Header "RESETBASING INDEX: !ix! OF %count3%"
		call :ResetbaseModule "image:%mountfolder%\!ix!"
))
:UnMountUselessList
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	call :Header "UNMOUNTING/COMMITTING INDEX: !ix! OF %count3%"
	call :UnMountWIM %mountfolder%\!ix!
)
call :Footer
if exist "%mountfolder%" rd /s /q "%mountfolder%" >nul
pause
goto:IntegrationMenu
:================================================================================================================
::===============================================================================================================
::MURPHY/ABBODI LIST WIM INTEGRATION
:IntegrateFromMurphy
cls
set "count=0"&&set "count2=0"&&set "count3=0"
set "kbarch=%arch%"
set "ext=msu"
set "command=1"
set "skuindex=1"
set "win10tele=1"
::===============================================================================================================
call :Header "MURPHY/ABBODI LIST WIM INTEGRATION"
echo Path to WIM: %wimfile%
call :Footer
set /p wimfile=Set Path to WIM:
call :Footer
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do set /a count3+=1
if %count3% gtr 12 (set "offset= ") else (set "offset=")
call :Header "IND!offset2!  MODIFIED    LANG   ARC  BUILD           INDEX NAME"
call :WIMCheckLoop1 %wimfile%, !count3!
call :Footer
echo Murphy/Abbodi List: %murphylist%
echo:
echo Update folder: %workpath%
echo:
echo WIM Architechture: 'x64' or 'x86'
echo Default: %kbarch%
echo:
echo Update Extension: %ext%
echo:
echo Mount Folder: %mountfolder%
echo:
echo Cleanup Otions: '1'=None, '2'=CleanUp, '3'=ResetBase
echo Default: %command%
echo:
echo Set sources\sxs Folder Path: '1'=Skip
echo Default: %sxs%
echo:
echo Set boot.wim Path: '1'=Skip
echo Default: %bootwimfile%
echo:
echo Setup Files folder: '1'=Skip
echo Default: %setupfilespath%
echo:
echo Set Highest SKU Index for WIM : %skuindex%
echo:
echo Integrate Win 'Preparation' Updates? '0'=No '1'=Yes
echo Default: %win10tele% 
call :Footer
set /p murphylist=Path to murphy78 List:
set /p workpath=Path to Update folder:
set /p kbarch=Enter Architecture:
set /p ext=Enter Extension:
set /p mountfolder=Set Path to Mount Folder:
set /p command=Set Cleanup or ResetBase:
set /p sxs=Set sources\sxs Folder Path:
set /p bootwimfile=Set boot.wim Path:
set /p setupfilespath=Path to Setup Files folder:
set /p skuindex=Set Highest SKU Index:
set /p win10tele=Set Win 'Preparation' Updates:
::===============================================================================================================
::FAILED
if !count3! equ 0 (
	cls
	call :Header "MURPHY/ABBODI LIST WIM INTEGRATION FAILED"
	echo There is no Windows WIM.
	call :Footer
	timeout /t 5
	goto:MurphIntegrationMenu
)
::===============================================================================================================
::MURPHY LIST WIM INTEGRATION MOUNT
cls
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	call :Header "MOUNTING INDEX !ix! of %count3%"
	if not exist "%mountfolder%\!ix!" md "%mountfolder%\!ix!" >nul
	call :MountWIM %wimfile%, !ix!, %mountfolder%\!ix!
)
::===============================================================================================================
::NO WINDOWS IMAGE FOUND
if "%arch%"=="---" (
	call :Footer
	echo No Windows Image Found.
	call :Footer
	timeout /t 5
	goto:UnMountMurphList
)
::===============================================================================================================
::COPY/MOUNTING WINRE.WIM
call :Header "COPYING WINRE.WIM"
set "winrewimfile=%mountfolder%\%skuindex%\Windows\System32\Recovery\winre.wim"
set "workwinrewim=%workpath%\winre.wim"
xcopy /h "%winrewimfile%" /s /q "%workpath%\" /y
attrib -h -s "%workwinrewim%"
call :Header "MOUNTING %workwinrewim%"
if not exist "%workpath%\wimre" md "%workpath%\wimre" >nul
call :MountWIM %workwinrewim%, 1, %workpath%\wimre
::===============================================================================================================
::SERVICING WINRE.WIM I
set "wimrelist=KB3000850, KB2962409, KB3013769, KB3013410, KB3006958, KB2974735"
call :Header "SERVICING %workpath%\winre.wim"
for /d %%a in (%wimrelist%) do (
	for /r "%workpath%" %%i in (*.%ext%) do echo "%%~ni" | findstr /i "%%a-%kbarch%" 1>nul && %dism% /image:"%workpath%\wimre" /Add-Package /PackagePath:%%i
)
::===============================================================================================================
::SERVICING WINRE.WIM II
call :Header "KB3005608 TO %workpath%\winre.wim"
set "wimrelist=KB3005608"
for /d %%a in (%wimrelist%) do (
	for /r "%workpath%" %%i in (*.cab) do echo "%%~ni" | findstr /i "%%a-%kbarch%" 1>nul && %dism% /image:"%workpath%\wimre" /Add-Package /PackagePath:%%i
)
::===============================================================================================================
::RESETBASE WINRE.WIM
call :Header "RESETBASING %workpath%\winre.wim"
call :ResetbaseModule image:%workpath%\wimre
::===============================================================================================================
::UNMOUNTING/COMMITTING WINRE.WIM
call :Header "UNMOUNTING %workpath%\winre.wim"
call :UnMountWIM %workpath%\wimre
if exist "%workpath%\wimre" rd /s /q "%workpath%\wimre" >nul
::===============================================================================================================
::EXPORT WINRE.WIM
call :Header "EXPORT %workpath%\winre.wim"
set "targetwimfile3=%workwinrewim:~0,-4%.#2.wim%"
call :ExportWIMWithDism %workwinrewim%, 1, "%targetwimfile3%"
::===============================================================================================================
::DELETE OLD WINRE.WIM AND RENAME EXPORT
call :Header "DELETE ORIGINAL AND RENAME EXPORT"
del /s /q "%workwinrewim%"
ren "%targetwimfile3%" "winre.wim"
::===============================================================================================================
::COPY BACK WINRE.WIM AND RESTORE ATTRIBUTES
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	call :Header "COPYING BACK TO INDEX !ix! AND RESTORE ATTRIBUTES"
	del /ah "%mountfolder%\!ix!\Windows\System32\Recovery\winre.wim" /s /q
	xcopy "%workwinrewim%" /s /q "%mountfolder%\!ix!\Windows\System32\Recovery\" /y
	attrib +h +s "%mountfolder%\!ix!\Windows\System32\Recovery\winre.wim"
)
del /s /q "%workwinrewim%" >nul
::===============================================================================================================
::INTEGRATING SERVICING STACK UPDATES
call :Header "INTEGRATING SERVICING STACK UPDATES TO %count3% INDEX(ICES)"
echo Be patient ...
call :Footer
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
		for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ SERVICING (
			for /f "tokens=1,2,3,4 delims=-" %%r in ("%%g") do (
				if %%t equ %kbarch% echo Integrating : %%s-%%t to Index: !ix! of %count3%&&call :ServiceWIM %workpath%, %ext%, %%s-%kbarch%, %mountfolder%\!ix!
				if %%u equ %kbarch% echo Integrating : %%s-%%t-%%u to Index: !ix! of %count3%&&call :ServiceWIM %workpath%, %ext%, %%s-%%t-%kbarch%, %mountfolder%\!ix!
				call :Footer
))))	
::===============================================================================================================
::NET INTEGRATION
if not "%sxs%"=="1" (
	for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
		set ix=%%z
		call set ix=%%ix:"=%%
		call :Header "ENABLING .NET 3.x IN INDEX !ix! OF %count3%"
		%dism% /English /Image:"%mountfolder%\!ix!" /Enable-Feature /All /FeatureName:NetFX3 /Source:%sxs% /LimitAccess
))
::===============================================================================================================
::INTEGRATING ALL OTHER UPDATES
call :Header "INTEGRATING 1ST-PASS\1 UPDATES TO %count3% INDEX(ICES)"
echo Be patient ...
call :Footer
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
		for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ 1ST-PASS if %%g equ 1 (
			for /f "tokens=1,2,3,4 delims=-" %%r in ("%%h") do (
				if %%t equ %kbarch% echo Integrating : %%s-%%t to Index: !ix! of %count3%&&call :ServiceWIM %workpath%, %ext%, %%s-%kbarch%, %mountfolder%\!ix!
				if %%u equ %kbarch% echo Integrating : %%s-%%t-%%u to Index: !ix! of %count3%&&call :ServiceWIM %workpath%, %ext%, %%s-%%t-%kbarch%, %mountfolder%\!ix!
				call :Footer
))))
call :Header "INTEGRATING 1ST-PASS\2 UPDATES TO %count3% INDEX(ICES)"
echo Be patient ...
call :Footer
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
		for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ 1ST-PASS if %%g equ 2 (
			for /f "tokens=1,2,3,4 delims=-" %%r in ("%%i") do (
				if %%t equ %kbarch% echo Integrating : %%s-%%t to Index: !ix! of %count3%&&call :ServiceWIM %workpath%, %ext%, %%s-%kbarch%, %mountfolder%\!ix!
				if %%u equ %kbarch% echo Integrating : %%s-%%t-%%u to Index: !ix! of %count3%&&call :ServiceWIM %workpath%, %ext%, %%s-%%t-%kbarch%, %mountfolder%\!ix!
				call :Footer
))))
call :Header "INTEGRATING NETFX3 UPDATES TO %count3% INDEX(ICES)"
echo Be patient ...
call :Footer
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
		for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ NETFX3 (
			for /f "tokens=1,2,3,4 delims=-" %%r in ("%%g") do (
					if %%t equ %kbarch% echo Integrating : %%s-%%t to Index: !ix! of %count3%&&call :ServiceWIM %workpath%, %ext%, %%s-%kbarch%, %mountfolder%\!ix!
					if %%u equ %kbarch% echo Integrating : %%s-%%t-%%u to Index: !ix! of %count3%&&call :ServiceWIM %workpath%, %ext%, %%s-%%t-%kbarch%, %mountfolder%\!ix!
					call :Footer
))))
::===============================================================================================================
::PROWMC
call :Header "INTEGRATING PROWMC UPDATES TO %count3% INDEX(ICES)"
echo Be patient ...
call :Footer
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	for /f "tokens=2 delims=: " %%A in ('%dism% /English /Get-WimInfo /WimFile:"%wimfile%" /Index:%%z ^| findstr /i Edition') do if "%%A"=="ProfessionalWMC" (
		for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
			for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ PROWMC (
				for /f "tokens=1,2,3,4 delims=-" %%r in ("%%g") do (
					if %%t equ %kbarch% echo Integrating : %%s-%%t to Index: !ix! of %count3%&&call :ServiceWIM %workpath%, %ext%, %%s-%kbarch%, %mountfolder%\!ix!
					if %%u equ %kbarch% echo Integrating : %%s-%%t-%%u to Index: !ix! of %count3%&&call :ServiceWIM %workpath%, %ext%, %%s-%%t-%kbarch%, %mountfolder%\!ix!
					call :Footer
)))))
::===============================================================================================================
::WIN 10 TELEMETRY
if "%win10tele%"=="1" (
	call :Header "INTEGRATING WIN 10 TELEMETRY UPDATES TO %count3% INDEX(ICES)"
	echo Be patient ...
	call :Footer
	for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
		set ix=%%z
		call set ix=%%ix:"=%%
		for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
			for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ W10 (
				for /f "tokens=1,2,3,4 delims=-" %%r in ("%%g") do (
					if %%t equ %kbarch% echo Integrating : %%s-%%t to Index: !ix! of %count3%&&call :ServiceWIM %workpath%, %ext%, %%s-%kbarch%, %mountfolder%\!ix!
					if %%u equ %kbarch% echo Integrating : %%s-%%t-%%u to Index: !ix! of %count3%&&call :ServiceWIM %workpath%, %ext%, %%s-%%t-%kbarch%, %mountfolder%\!ix!
					call :Footer
)))))
::===============================================================================================================
::.NET 4.5.2
call :Header "INTEGRATING .NET 4.5.2 UPDATE TO %count3% INDEX(ICES)"
echo Be patient ...
call :Footer
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	for /f "tokens=1" %%A in ('%dism% /english /Get-WimInfo /WimFile:"%wimfile%" /Index:!ix! ^| findstr /i Default') do set langid=%%A
		for /f "tokens=*" %%a in (%murphylist%) do echo %%a | findstr /i "%kbarch%" 1>nul && (
			for /f "tokens=1,2,3,4,5 delims=\" %%e in ("%%a") do if %%f equ NETFX452 if %%g equ !langid! (
				for /f "tokens=1,2,3,4 delims=-" %%r in ("%%h") do (
					if %%t equ %kbarch% echo Integrating : %%s-%%t to Index: !ix! of %count3%&&call :ServiceWIM %workpath%, %ext%, %%s-%kbarch%, %mountfolder%\!ix!
					if %%u equ %kbarch% echo Integrating : %%s-%%t-%%u to Index: !ix! of %count3%&&call :ServiceWIM %workpath%, %ext%, %%s-%%t-%kbarch%, %mountfolder%\!ix!
					call :Footer
))))
::===============================================================================================================
::CLEANUP
if "%command%"=="2" (
	for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
		set ix=%%z
		call set ix=%%ix:"=%%
		call :Header "CLEANING INDEX !ix! OF %count3%"
		call :CleanupModule image:%mountfolder%\!ix!
))
::===============================================================================================================
::RESETBASE
if "%command%"=="3" (
	for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
		set ix=%%z
		call set ix=%%ix:"=%%
		call :Header "RESETBASING INDEX !ix! OF %count3%"
		call :ResetbaseModule image:%mountfolder%\!ix!
))
::===============================================================================================================
::UNMOUNT/COMMIT
:UnMountMurphList
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	call :Header "UNMOUNTING/COMMITTING INDEX !ix! OF %count3%"
	call :UnMountWIM %mountfolder%\!ix!
	if exist "%mountfolder%\!ix!" rd /s /q "%mountfolder%\!ix!" >nul
)
::===============================================================================================================
::BOOT.WIM INTEGRATION
if not "%bootwimfile%"=="1" (
	for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%bootwimfile%" /english ^| findstr /i Index') do (
		set ix=%%z
		call set ix=%%ix:"=%%
		call :Header "MOUNTING BOOT.WIM INDEX !ix! OF 2"
		if not exist "%mountfolder%\!ix!" md "%mountfolder%\!ix!" >nul
		call :MountWIM %bootwimfile%, !ix!, %mountfolder%\!ix!
))
::===============================================================================================================
::SERVICING BOOT.WIM I
if not "%bootwimfile%"=="1" (
	set "bootwimlist=KB3000850, KB2962409, KB3013769, KB3013410, KB3006958, KB2974735"
	for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%bootwimfile%" /english ^| findstr /i Index') do (
		set ix=%%z
		call set ix=%%ix:"=%%
		call :Header "SERVICING BOOT.WIM INDEX !ix! OF 2"
		for /d %%a in (!bootwimlist!) do (
			for /r "%workpath%" %%i in (*.%ext%) do echo "%%~ni" | findstr /i "%%a-%kbarch%" 1>nul && %dism% /english /image:"%mountfolder%\!ix!" /Add-Package /PackagePath:%%i
)))
::===============================================================================================================
::SERVICING BOOT.WIM II
if not "%bootwimfile%"=="1" (
	set "bootwimlist=KB3005608"
	for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%bootwimfile%" /english ^| findstr /i Index') do (
		set ix=%%z
		call set ix=%%ix:"=%%
		call :Header "KB3005608 TO INDEX !ix! OF 2"
		for /d %%a in (!bootwimlist!) do (
			for /r "%workpath%" %%i in (*.cab) do echo "%%~ni" | findstr /i "%%a%-kbarch%" 1>nul && %dism% /english /image:"%mountfolder%\!ix!" /Add-Package /PackagePath:%%i
)))
::===============================================================================================================
::SETUP FILES COPY
if not "%bootwimfile%"=="1" if not "%setupfilespath%"=="1" (
	call :Header "SETUP FILES COPY"
	xcopy "%mountfolder%\2\sources\*.*" /s /q "%setupfilespath%\sources\" /y
	xcopy "%mountfolder%\2\setup.exe" /s /q "%setupfilespath%\" /y
)
::===============================================================================================================
::RESETBASE BOOT.WIM
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%bootwimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	call :Header "RESETBASING BOOT.WIM Index !ix! OF 2"
	call :ResetbaseModule image:%mountfolder%\!ix!
)
::===============================================================================================================
::UNMOUNTING/COMMITTING WINRE.WIM
if not "%bootwimfile%"=="1" (
	for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%bootwimfile%" /english ^| findstr /i Index') do (
		set ix=%%z
		call set ix=%%ix:"=%%
		call :Header "UNMOUNTING/COMMITTING %mountfolder%\!ix!"
		call :UnMountWIM %mountfolder%\!ix!
		if exist "%workpath%\wimre" rd /s /q "%workpath%\wimre" >nul
))
::===============================================================================================================
::EXPORT BOOT.WIM
if not "%bootwimfile%"=="1" (
	set "targetwimfile2=%bootwimfile:~0,-4%.#2.wim%"
	for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%bootwimfile%" /english ^| findstr /i Index') do (
		set ix=%%z
		call set ix=%%ix:"=%%
		call :Header "EXPORTING BOOT.WIM INDEX !ix! OF 2"
		call :ExportWIMWithDism %bootwimfile%, !ix!, !targetwimfile2!
	)
	del /s /q "%bootwimfile%" >nul
	ren "!targetwimfile2!" "boot.wim" >nul
)
::===============================================================================================================
::SLIM DOWN EXPORT
call :Header "DONE INTEGRATING UPDATES TO %count3% INDEX(ICES)"
echo:
CHOICE /C EB /N /M "[E]xport for Slim-Down or [B]ack to Menu ?:"
if %errorlevel%==1 goto :SlimDownMurphy
if %errorlevel%==2 goto:MurphIntegrationMenu
:SlimDownMurphy
echo:
set "targetwimfile=%wimfile:~0,-4%.#2.wim"
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do (
	set ix=%%z
	call set ix=%%ix:"=%%
	call :Header "EXPORTING INDEX !ix! of %count3%"
	echo Exporting to: %targetwimfile%
	call :Footer
	call :ExportWIMWithDism %wimfile%, !ix!, %targetwimfile%
)
del /s /q "%wimfile%" >nul
ren "!targetwimfile!" "install.wim" >nul
call :Footer
pause
goto:MurphIntegrationMenu
:================================================================================================================
::===============================================================================================================
::DISCARD WIM
:Discard
cls
call :Header "DISCARD MOUNTED WIM"
echo Path to Mount Folder: %mountfolder%
call :Footer
set /p mountfolder=Set Path to Mount Folder:
cls
call :Header "DISCARD MOUNTED WIM"
echo Discarding: %mountfolder%
call :Footer
%dism% /unmount-wim /English /mountdir:"%mountfolder%" /discard	
call :Footer
pause
goto:CheckMenu
::===============================================================================================================
::DISCARD WIM
:DiscardAll
cls
for /f "tokens=4 delims= " %%a in ('%dism% /Get-MountedWimInfo /english ^| findstr /i Dir') do (
	call :Header "DISCARDING %%a"
	echo:
	%dism% /unmount-wim /English /mountdir:"%%a" /discard
)
if %errorlevel% neq 0 (
	call :Header "DISCARD"
	echo No mounted Images found.
)
call :Footer
pause
goto:CheckMenu
:================================================================================================================
::===============================================================================================================
::EXPORT WIM WITH DISM
:ExportIndex
cls
call :Header "EXPORT WIM INDEX"
echo Path to Source: %wimfile%
echo Path to Target: %targetwimfile% Using '*.esd' will convert to ESD.
echo Index to Export: %indexlist% : Use like '2' '5,3,1' or '*' for all.
call :Footer
set /p wimfile=Set Path to Source:
set /p targetwimfile=Set Path to Target:
set /p indexlist=Set Index to Export:
if not "%indexlist%"=="*" goto :ExportSingleIndex
if /i "%indexlist%"=="*" (
	cls
	set "z=0"
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%wimfile%" ^| findstr /i Index') do set /a z+=1
	call :Header "EXPORTING %z% INDEX/INDICES"
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%wimfile%" ^| findstr /i Index') do (
		set ix=%%a
		call set ix=%%ix:"=%%
		call :BigHeader !ix!, %z%, %wimfile%, %targetwimfile%
		call :ExportWIMWithDism "%wimfile%", !ix!, "%targetwimfile%"
		call :Footer
))
pause
goto:ExportMenu
:ExportSingleIndex
cls
for /d %%a in (%indexlist%) do (
	call :Header "EXPORT WIM INDEX %%a of %wimfile%"
	call :ExportWIMWithDism "%wimfile%", %%a, "%targetwimfile%"
	call :Footer
)
pause
goto:ExportMenu
::===============================================================================================================
::EXPORT WIM WITH WIMLIB-IMAGEX
:WimlibExport
cls
call :Header "EXPORT WIM INDEX"
echo Path to Source: %wimfile%
echo Path to Target: %targetwimfile% Using '*.esd' will convert the WIM.
echo Index to Export: %indexlist% : Use like '2' '5,3,1' or '*' for all.
call :Footer
set /p wimfile=Set Path to Source:
set /p targetwimfile=Set Path to Target:
set /p indexlist=Set Index to Export:
if not "%indexlist%"=="*" goto :WimlibExportSingleIndex
if /i "%indexlist%"=="*" (
	cls
	set "z=0"
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%wimfile%" ^| findstr /i Index') do set /a z+=1
	call :Header "EXPORTING %z% INDEX/INDICES"
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%wimfile%" ^| findstr /i Index') do (
		set ix=%%a
		call set ix=%%ix:"=%%
		call :BigHeader !ix!, %z%, %wimfile%, %targetwimfile%
		call :ExportWIMWithWimlib "%wimfile%", !ix!, "%targetwimfile%"
		call :Footer
))
pause
goto:ExportMenu
:WimlibExportSingleIndex
cls
for /d %%a in (%indexlist%) do (
	call :Header "EXPORT WIM INDEX %%a of %wimfile%"
	call :ExportWIMWithWimlib "%wimfile%", %%a, "%targetwimfile%"
	call :Footer
)
pause
goto:ExportMenu
::===============================================================================================================
::SPLIT WIM WITH DISM
:SplitWithDISM
cls
call :Header "SPLIT WIM"
if "%size%"=="" set size=4000
echo Size of chunks in MB: %size%
echo Path to Source WIM: %wimfile%
echo Path to Target SWM: %swmfile%
call :Footer
set /p size=Set Size of chunks:
set /p wimfile=Set Path to Source WIM:
set /p swmfile=Set Path to Target SWM:
cls
call :Header "SPLIT WIM"
%dism% /Split-Image /English /ImageFile:"%wimfile%" /SWMFile:"%swmfile%" /FileSize:%size% /CheckIntegrity
call :Footer
pause
goto:ExportMenu
::===============================================================================================================
::JOIN WIM WITH DISM
:JoinWithDISM
cls
call :Header "JOIN SWM"
echo Path to Source SWM: %swmfile%
echo Path to Target WIM: %wimfile%
echo Index to Join: %index% : Use Wildcard '*' to service all.
call :Footer
set /p swmfile=Set Path to Source SWM:
set /p wimfile=Set Path to Target WIM:
set /p index=Set Index to Join:
if not "%index%"=="*" goto :JoinSWMWithDISMSingleIndex
if /i "%index%"=="*" (
	cls
	set "z=0"
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%swmfile%" ^| findstr /i Index') do set /a z+=1
	call :Header "JOINING %z% INDEX/INDICES"
	for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%swmfile%" ^| findstr /i Index') do (
		set ix=%%a
		call set ix=%%ix:"=%%
		call :BigHeader !ix!, %z%, %swmfile%, %wimfile%
		call :JoinSWMWithDISM "%swmfile%", !ix!, "%wimfile%"
		call :Footer
))
pause
goto:ExportMenu
:JoinSWMWithDISMSingleIndex
call :Header "JOIN SWM"
call :JoinSWMWithDISM "%swmfile%", %index%, "%wimfile%"
call :Footer
pause
goto:ExportMenu
::===============================================================================================================
::SPLIT WIM WITH WIMLIB-IMAGEX
:SplitWithWimlib
cls
call :Header "SPLIT WIM"
if "%size%"=="" set size=4000
echo Size of chunks in MB: %size%
echo Path to Source WIM: %wimfile%
echo Path to Target SWM: %swmfile%
call :Footer
set /p size=Set Size of chunks:
set /p wimfile=Set Path to Source WIM:
set /p swmfile=Set Path to Target SWM:
cls
call :Header "SPLIT WIM"
%wimlib% split "%wimfile%" "%swmfile%" %size% --check
call :Footer
pause
goto:ExportMenu
::===============================================================================================================
::JOIN WIM WITH WIMLIB-IMAGEX
:JoinWithWimlib
cls
call :Header "JOIN SWM"
echo Path to Source SWM: %swmfile%
echo Path to Target WIM: %wimfile%
echo Index to Join: %index% : Use Wildcard '*' to service all.
call :Footer
set /p swmfile=Set Path to Source SWM:
set /p wimfile=Set Path to Target WIM:
set /p index=Set Index to Join:
cls
call :Header "JOIN SWM"
%wimlib% export "%swmfile%" --ref="%swmfile:~0,-4%*.swm" %index% "%wimfile%" --check
call :Footer
pause
goto:ExportMenu
::===============================================================================================================
::OPTIMIZE WIM WITH WIMLIB-IMAGEX
:WimlibOptimize
cls
set "compression=LZX"
call :Header "OPTIMIZE WIM WITH WIMLIB-IMAGEX"
echo Path to Source WIM: %wimfile%
call :Footer
set /p wimfile=Set Path to Source WIM:
call :Footer
CHOICE /C RWM /N /M "[R]e-compress, [W]ithout or [M]anual compression ?:"
if %errorlevel%==1 set "compress=--recompress"&&goto :Optimization
if %errorlevel%==2 set "compress="&&goto :Optimization
if %errorlevel%==3 goto :ManualCompress
:ManualCompress
call :Footer
echo Set Compression Level: 'XPRESS' =fast, 'LZX' =maximum, 'LZMS' =recovery
echo Default: %compression%
echo:
echo Ratio can be added: ':20' =quick, ':50' =medium, ':100' =high
call :Footer
set /p compression=Set Compression Level:
set "compress=--compress=%compression%"
:Optimization
cls
call :Header "OPTIMIZE WIM WITH WIMLIB-IMAGEX"
%wimlib% optimize "%wimfile%" --check %compress%
call :Footer
pause
goto:ExportMenu
::===============================================================================================================
::WIN SKU CONVERSION
:WinSKUConversion
cls
set "count=0"&&set "count2=0"&&set "count3=0"
call :Header "WIN SKU CONVERSION"
echo Path to WIM: %wimfile%
echo:
echo Path to Mount Folder: %mountfolder%
echo:
call :Footer
set /p wimfile=Set Path to WIM:
set /p mountfolder=Set Path to Mount Folder:
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do set /a count3+=1
if %count3% gtr 12 (set "offset= ") else (set "offset=")
call :Header "IND!offset2!  MODIFIED    LANG   ARC  BUILD           INDEX NAME"
call :WIMCheckLoop1 %wimfile%, !count3!
call :Footer
if !count3! equ 0 (
	cls
	call :Header "CONVERSION FAILED"
	echo There is no WIM.
	call :Footer
	timeout /t 5
	goto:ExportMenu
)
call :Header "%wimedition% CONVERSION INDEX CHOICE"
echo Found %wimedition% : Index = %index%
echo:
echo Use found one or another?
call :Footer
set /p index=Set Index:
call :Header "EXPORTING INDEX %index%"
set "targetwimfile=%wimfile:~0,-4%new.wim"
set "targetwimfile2=%targetwimfile:~0,-4%2.wim"
call :ExportWIMWithDism "%wimfile%", %index%, "%targetwimfile%"
echo:
call :Header "MOUNTING %targetwimfile%"
if not exist "%mountfolder%" md "%mountfolder%" >nul
call :MountWIM %targetwimfile%, 1, %mountfolder%
call :Footer
if "%arch%"=="---" (
	echo No Windows Image Found.
	call :Footer
	timeout /t 5
	goto:UnMountUselessSKU
)
echo:
call :Header "CHECKING %mountfolder%"
%dism% /English /Image:"%mountfolder%" /Get-TargetEditions
call :Footer
set /p flag=Set New SKU EditionID:
set /p name=Set New SKU Name:
set /p desc=Set New SKU Description:
call :Header "CONVERTING TO %flag%"
%dism% /English /Image:"%mountfolder%" /Set-Edition:%flag%
echo:
:UnMountUselessSKU
call :Header "UNMOUNT/COMITTING %mountfolder%"
call :UnMountWIM %mountfolder%
call :Footer
if exist "%mountfolder%" rd /s /q "%mountfolder%" >nul
call :Header "SETTING FLAGS for %flag%"
%imagex% /info "%targetwimfile%" 1 "%name%" "%desc%" /flags "%flag%"
call :Footer
CHOICE /C RE /N /M "[R]e-integrate or [E]xport for Slim-Down ?:"
if %errorlevel%==1 goto :ReintegrateSKU
if %errorlevel%==2 goto :SlimDownExportSKU
:ReintegrateSKU
call :Header "REINTEGRATING"
call :ExportWIMWithDism "%targetwimfile%", 1, "%wimfile%"
call :Footer
pause
goto:ExportMenu
:SlimDownExportSKU
call :Header "EXPORTING"
call :ExportWIMWithDism "%targetwimfile%", 1, "%targetwimfile2%"
del /s /q "%targetwimfile%" >nul
ren "%targetwimfile2%" "installnew.wim" >nul
call :Footer
pause
goto:ExportMenu
::===============================================================================================================
::ProfessionalWMC CREATION
:ProfessionalWMCCreation
cls
set "count=0"&&set "count2=0"&&set "count3=0"
call :Header "ProfessionalWMC CREATION"
echo Path to WIM: %wimfile%
echo:
echo Path to Mount Folder: %mountfolder%
echo:
if not defined command set "command=1"
echo Integrate Tokens [0=N,1=Y] ?: %command%
call :Footer
set /p wimfile=Set Path to WIM:
set /p mountfolder=Set Path to Mount Folder:
set /p command=Set Integrate Tokens:
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do set /a count3+=1
if %count3% gtr 12 (set "offset= ") else (set "offset=")
call :Header "IND!offset2!  MODIFIED    LANG   ARC  BUILD           INDEX NAME"
call :WIMCheckLoop1 %wimfile%, !count3!
call :Footer
if !count3! equ 0 (
	cls
	call :Header "ProfessionalWMC CREATION FAILED"
	echo There is no WIM.
	call :Footer
	timeout /t 5
	goto:ExportMenu
)
if !count3! geq 1 (
	call :Header "%wimedition%WMC CREATION INDEX CHOICE"
	echo Found %wimedition% : Index = %index%
	echo:
	echo Use found one or another?
	call :Footer
	set /p index=Set Index:
)
call :Header "EXPORTING INDEX %index%"
set "targetwimfile=%wimfile:~0,-4%prowmc.wim"
set "targetwimfile2=%targetwimfile:~0,-4%2.wim"
call :ExportWIMWithDism "%wimfile%", %index%, "%targetwimfile%"
call :Footer
echo:
call :Header "MOUNTING %targetwimfile%"
if not exist "%mountfolder%" md "%mountfolder%" >nul
call :MountWIM %targetwimfile%, 1, %mountfolder%
call :Footer
if "%arch%"=="---" (
	echo No Windows Image Found.
	call :Footer
	timeout /t 5
	goto:UnMountUselessPROWMC
)
if %b1% EQU 6.2.9200 (
	call :Header "COPYING ACTIVATION TOKENS"
	del /AH "%mountfolder%\Windows\System32\spp\store\data.dat" /S /Q
	xcopy "files\wmc\tokens.dat" "%mountfolder%\Windows\System32\spp\Store\" /S /Q /Y 
	xcopy /H "files\wmc\data.dat" "%mountfolder%\Windows\System32\spp\Store\" /S /Q /Y
	xcopy "files\wmc\cache.dat" "%mountfolder%\Windows\System32\spp\Store\Cache\" /S /Q /Y
	call :Footer
	set "name=Windows 8 ProfessionalWMC"
	set "desc=Windows 8 ProfessionalWMC"
	set "flag=ProfessionalWMC"
)
if %b1% EQU 6.3.9600 (
	call :Header "COPYING ACTIVATION TOKENS"
	del /AH "%mountfolder%\Windows\System32\spp\store\2.0\data.dat" /S /Q
	xcopy "files\wmc\tokens.dat" "%mountfolder%\Windows\System32\spp\Store\2.0\" /S /Q /Y 
	xcopy /H "files\wmc\data.dat" "%mountfolder%\Windows\System32\spp\Store\2.0\" /S /Q /Y
	xcopy "files\wmc\cache.dat" "%mountfolder%\Windows\System32\spp\Store\Cache\2.0\" /S /Q /Y
	call :Footer
	set "name=Windows 8.1 ProfessionalWMC"
	set "desc=Windows 8.1 ProfessionalWMC"
	set "flag=ProfessionalWMC"
)
echo:
call :Header "CHECKING %mountfolder%"
%dism% /English /Image:"%mountfolder%" /Get-TargetEditions
echo:
call :Header "CONVERTING TO %flag%"
%dism% /English /Image:"%mountfolder%" /Set-Edition:ProfessionalWMC
echo:
:UnMountUselessPROWMC
call :Header "UNMOUNT/COMITTING %mountfolder%"
call :UnMountWIM %mountfolder%
if exist "%mountfolder%" rd /s /q "%mountfolder%" >nul
call :Header "SETTING FLAGS for %flag%"
%imagex% /info "%targetwimfile%" 1 "%name%" "%desc%" /flags "%flag%"
call :Footer
CHOICE /C RE /N /M "[R]e-integrate or [E]xport for Slim-Down ?:"
if %errorlevel%==1 goto :Reintegrate
if %errorlevel%==2 goto :SlimDownExport
:Reintegrate
call :Header "REINTEGRATING INDEX %index%"
call :ExportWIMWithDism "%targetwimfile%", 1, "%wimfile%"
call :Footer
pause
goto:ExportMenu
:SlimDownExport
call :Header "EXPORTING INDEX %index%"
call :ExportWIMWithDism "%targetwimfile%", 1, "%targetwimfile2%"
del /s /q "%targetwimfile%" >nul
ren "%targetwimfile2%" "installprowmc.wim" >nul
call :Footer
pause
goto:ExportMenu
::===============================================================================================================
::TOKENS INJECTION
:TokensInjection
cls
call :Header "INJECT TOKENS INTO WIM WITH WIMLIB-IMAGEX"
echo Path to Source WIM: %wimfile%
call :Footer
set /p wimfile=Set Path to Source WIM:
call :Footer
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do set /a count3+=1
if %count3% gtr 12 (set "offset= ") else (set "offset=")
call :Header "IND!offset2!  MODIFIED    LANG   ARC  BUILD           INDEX NAME"
call :WIMCheckLoop1 %wimfile%, !count3!
call :Footer
pause
if not "%wimedition%"=="ProfessionalWMC" (
	call :Header "NO PROWMC FOUND."
	echo Offer a different WIM.
	call :Footer
	pause
	goto:ExportMenu
)
:Inject
call :Header "INJECT TOKENS INTO %wimedition% : %index%"
echo Index of PROWMC: %index%
call :Footer
set /p index=Set Index of WIM:
call :Footer
if %b1% EQU 6.2.9200 set file=files\wmc\prowmc8.txt
if %b1% EQU 6.3.9600 set file=files\wmc\prowmc81.txt
call :Header "INJECTING TOKENS INTO %wimedition% : %index%"
%wimlib% update "%wimfile%" %index% < %file%
call :Footer
pause
goto:ExportMenu
:================================================================================================================
::===============================================================================================================
::CREATE ISO
:CreateISO
cls
call :Header "Create ISO from Folder"
echo Default: %setupfilespath%
echo Value  : Path to Setup Files Folder 'X:\...'
call :Footer
set /p setupfilespath=Path to Setup Files Folder ^>
call :Header "Create ISO from Folder"
set "ext="
if exist "%setupfilespath%\sources\install.wim" set "ext=wim"
if exist "%setupfilespath%\sources\install.esd" set "ext=esd"
echo Default: %ext%
echo Value  : Extension of Install File
call :Footer
set /p ext=Extension of Install File ^>
if not exist "%setupfilespath%\sources\install.%ext%" if not exist "%setupfilespath%\sources\boot.wim" (
	call :Header "Install files are missing."
	CHOICE /C CE /N /M "[C]opy to folder or [E]xit ?"
	if !errorlevel!==1 (
		cls
		call :Header "Copy ISO to Folder"
		echo Value  : Path to DVD/Mounted ISO 'x' [without colon]
		call :Footer
		set /p mountpath=Path to DVD/Mounted ISO ^>
		echo:
		call :Header "Copy ISO to Folder"
		if not exist "%setupfilespath%" md "%setupfilespath%" >nul
		xcopy "%mountpath%:\*.*" /s /q "%setupfilespath%\" /Y
		call :Footer
		timeout /t 5
	)
	if !errorlevel!==2 goto:ExportMenu
)
goto :WIMCheckPass
:WIMCheckPass
set "count3=0"
call :Header "Create ISO with install.%ext%"
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%setupfilespath%\sources\install.%ext%" /english ^| findstr /i Index') do set /a count3+=1
if %count3% gtr 12 (set "offset= ") else (set "offset=")
call :Header "IND!offset2!  MODIFIED    LANG   ARC  BUILD           INDEX NAME"
call :Footer
call :WIMCheckLoop1 "%setupfilespath%\sources\install.%ext%", !count3!
:AddFilesCopyChoice
call :Header "Copy additional files to new Image"
CHOICE /C CS /N /M "[C]opy additional files or [S]kip ?"
if %errorlevel%==1 goto :AddFilesCopy
if %errorlevel%==2 goto :CreateCFG
:AddFilesCopy
call :Header "Copying additional files"
echo Default: %sourcepath%
echo Value  : Path to Source Folder 'X:\...'
echo:
set "targetpath=%setupfilespath%"
echo Default: %targetpath%
echo Value  : Path to Target Folder
call :Footer
set /p sourcepath=Path to Source Folder ^>
set /p targetpath=Path to Target Folder ^>
if not exist %targetpath% md %targetpath%
call :Header "Copying additional files"
xcopy "%sourcepath%\*.*" /s /q "%targetpath%\" /y
:CreateCFG
if exist "%setupfilespath%\sources\ei.cfg" (set exist=Rec) else (set exist=C)
call :Header "%exist%reating: %setupfilespath%\sources\ei.cfg"
CHOICE /C CS /N /M "[C]ontinue or [S]kip ?"
if %errorlevel%==1 del /s /q "%setupfilespath%\sources\ei.cfg" >nul&&goto :furtherCreateCFG
if %errorlevel%==2 goto :ProWMCCheck
:furtherCreateCFG
call :Header "%exist%reating: %setupfilespath%\sources\ei.cfg"
for /f "tokens=2 delims=: " %%a in ('%dism% /english /Get-WimInfo /WimFile:"%setupfilespath%\sources\install.%ext%" ^| findstr /i Index') do (
	set ix=%%a
	call set ix=%%ix:"=%%
	for /f "tokens=2 delims=: " %%m in ('%dism% /english /Get-WimInfo /WimFile:"%setupfilespath%\sources\install.%ext%" /Index:!ix! ^| findstr /i Edition') do (
		set index=!ix!
		set edition=%%m
))
if %index% equ 1 (
	echo Default: %edition%
	echo Value  : Single Index Image Edition
	call :Footer
	set /p edition=Single Index Image Edition ^>
	call :Footer
)
set "file=%setupfilespath%\sources\ei.cfg"
if /i "%cfgchannel%"=="" set cfgchannel=Retail
echo Default: %cfgchannel%
echo Value  : Channel to Use 'Retail/Volume/OEM'
call :Footer
set /p cfgchannel=Channel to Use ^>
call :Footer
if %index% equ 1 (
	echo [EditionID]
	echo %edition%
)
echo [Channel]
echo %cfgchannel%
echo [VL]
echo 0
call :Footer
echo Writing ei.cfg
call :Footer
if %index% equ 1 (
	echo [EditionID] >%file%
	echo %edition% >>%file%
	echo echo: >>%file%
	echo [Channel] >>%file%
	echo %cfgchannel% >>%file%
	echo echo: >>%file%
	echo [VL] >>%file%
	echo 0 >>%file%
	goto :ProWMCCheck
)
echo [Channel] >%file%
echo %cfgchannel% >>%file%
echo echo: >>%file%
echo [VL] >>%file%
echo 0 >>%file%
:ProWMCCheck
for /f "tokens=2 delims=: " %%a in ('%dism% /english /Get-WimInfo /WimFile:"%setupfilespath%\sources\install.%ext%" ^| findstr /i Index') do (
	set ix=%%a
	call set ix=%%ix:"=%%
	for /f "tokens=2 delims=: " %%m in ('%dism% /english /Get-WimInfo /WimFile:"%setupfilespath%\sources\install.%ext%" /Index:!ix! ^| findstr /i Edition') do (
		set index=!ix!
		if %%m equ ProfessionalWMC (
			call :Header "PROFESSIONALWMC DETECTED"
			CHOICE /C IS /N /M "[I]nject Tokens or [S]kip ?"
			if !errorlevel!==1 (
				if %b1% EQU 6.2.9200 set file=files\wmc\prowmc8.txt
				if %b1% EQU 6.3.9600 set file=files\wmc\prowmc81.txt
				call :Header "INJECTING TOKENS INTO %%m : %%a"
				%wimlib% update "%setupfilespath%\sources\install.%ext%" !ix! < !file!
				call :Footer
			)
			if !errorlevel!==2 goto :ISOWriteProcess
)))
:ISOWriteProcess
for /f "tokens=2 delims=: " %%a in ('%dism% /english /Get-WimInfo /WimFile:"%setupfilespath%\sources\install.%ext%" ^| findstr /i Index') do set index=%%a
call :Header "Creating ISO ..."
echo Default: %isopath%
echo Values: Path to ISO creation folder 'X:\...'
echo:
set "langid="
for /f "tokens=2 delims=: " %%i in ('%dism% /english /Get-WimInfo /WimFile:"%setupfilespath%\sources\install.%ext%" /Index:%index% ^| findstr /i Architecture') do set arch=%%i
for /f "tokens=1" %%m in ('%dism% /english /Get-WimInfo /WimFile:"%setupfilespath%\sources\install.%ext%" /Index:%index% ^| findstr /i Default') do set langid=%%m
for /f "skip=1 tokens=4 delims=:." %%g in ('%dism% /english /Get-WimInfo /WimFile:"%setupfilespath%\sources\install.%ext%" /Index:%index% ^| findstr /i Version') do set verbuild=%%g
for /f "tokens=2 delims=: " %%m in ('%dism% /english /Get-WimInfo /WimFile:"%setupfilespath%\sources\install.%ext%" /Index:%index% ^| findstr /i Edition') do set edition=%%m
for /f "tokens=3 delims=: " %%p in ('%dism% /english /get-wiminfo /wimfile:"%setupfilespath%\sources\install.%ext%" /index:%index% ^| findstr /i "ServicePack Build"') do set svcbuild=%%p
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
echo Default: %label%
echo Values: DVD Label
call :Footer
set /p isopath=Path to ISO creation folder ^>
set /p label=DVD Label ^>
call :Header "Creating: %isopath%\%label%.iso"
%oscdimg% -bootdata:2#p0,e,b"%setupfilespath%\boot\etfsboot.com"#pEF,e,b"%setupfilespath%\efi\Microsoft\boot\efisys.bin" ^
-o -h -m -u2 -udfver102 ^
-t03/18/2014,09:09:28 -g ^
-l%label% ^
%setupfilespath% ^
%isopath%\%label%.iso
call :Footer
CHOICE /C DB /N /M "[D]elete DVD Folder or [B]ack ?"
if %errorlevel%==1 rd /s /q "%setupfilespath%"&&goto:ExportMenu
if %errorlevel%==2 goto:ExportMenu
:================================================================================================================
::===============================================================================================================
::CREATE USB
:CreateUSB
cls
::===============================================================================================================
set "file=%temp%\diskpart.txt"
set "type=ntfs"
set "label=Winsetup"
::===============================================================================================================
call :Header "Create USB from Folder"
echo Default: %setupfilespath%
echo Value  : Path to Setup Files Folder 'X:\...'
call :Footer
set /p setupfilespath=Path to Setup Files Folder ^>
cls
call :Header "Create USB from Folder"
echo list disk > %file%
%windir%\system32\diskpart.exe < %file%
if exist "%file%" del /s /q "%file%" >nul
call :Footer
echo Select Volume Number
echo:
echo Set Volume Format 'fat32' or 'ntfs'
echo Default: %type%
echo:
echo Set Volume Name
echo Default: %label%
call :Footer
set /p dl=Set Volume Number :^>
set /p type=Set Volume Format :^>
set /p label=Set Volume Name :^>
call :Footer
echo SELECTED VOLUME WILL BE FORMATTED NOW...!!!
call :Footer
CHOICE /C CE /N /M "[C]ontinue or [E]xit?:"
if %errorlevel%==1 goto :furtherUSB
if %errorlevel%==2 goto:ExportMenu
:furtherUSB
echo select disk %dl% > %file%
echo clean >> %file%
echo create partition primary >> %file%
echo select partition 1 >> %file%
echo active >> %file%
echo format fs=%type% label="%label%" quick >> %file%
echo assign >> %file%
cls
call :Header "Create USB from Folder"
echo Processing the Task...
call :Footer
%windir%\system32\diskpart.exe < %file%
call :Footer
if exist "%file%" del /s /q "%file%" >nul
call :Header "Copying Setupfiles to USB"
for /f %%D in ('wmic volume get DriveLetter^, Label ^| find "%label%"') do set usb=%%D
xcopy "%setupfilespath%" /s /q "%usb%\" /y
call :Footer
pause
goto:ExportMenu
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
if "%state%"=="DISABLED" goto:MainMenu
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
goto:MainMenu
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
if %errorlevel%==2 goto:MainMenu
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
:================================================================================================================
:================================================================================================================
:================================================================================================================
:================================================================================================================
::===============================================================================================================
::WIM CHECK LOOP 1
:WIMCheckLoop1
set "z2=0"
for /f "tokens=2 delims=: " %%a in ('%dism% /English /Get-WimInfo /WimFile:"%~1" ^| findstr /i Index') do (
	set ix=%%a
	call set ix=%%ix:"=%%
	set "lang="
	set "checkindex=0"
	set "targetindex=0"
	for /f "tokens=2 delims=: " %%z in ('%dism% /English /Get-WimInfo /WimFile:"%~1" /Index:!ix! ^| findstr /i Edition') do if "%%z"=="Professional" set wimedition=%%z&&set index=%%a
	for /f "tokens=2 delims=: " %%z in ('%dism% /English /Get-WimInfo /WimFile:"%~1" /Index:!ix! ^| findstr /i Edition') do if "%%z"=="ProfessionalWMC" set wimedition=%%z&&set index=%%a
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
	if %~2 gtr 12 (set "offset=rem ") else (set "offset=")
	if !z2! gtr 9 set "offset2="
	echo [!offset2!!ix!] !mod! !lang!  !arch!  !b1!.!b2! %%g
	!offset!echo:
))
goto:eof
:================================================================================================================
::===============================================================================================================
::WIM CHECK LOOP 2
:WIMCheckLoop2
for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%~1" ^| findstr /i Index') do set /A z+=1
for /f "tokens=2 delims=: " %%a in ('%dism% /Get-WimInfo /WimFile:"%~1" ^| findstr /i Index') do (
	set ix=%%a
	call set ix=%%ix:"=%%
	echo:
	call :Header "Checking Index !ix! of %z%"
	echo Details for image : %~1
	echo:
	set "offset="
	for /f "skip=5 tokens=*" %%g in ('%dism% /English /Get-WimInfo /WimFile:"%~1" /Index:!ix!') do (
		if "%%g"=="The operation completed successfully." (set offset=rem ) else (set offset=)
		!offset!echo %%g
)
call :Footer
pause
)
goto:eof
:================================================================================================================
::===============================================================================================================
::WU CHECK LOOP
:WUCheckLoop
::if %win% geq 10240 set "store=DownloadManager"
::if %win% leq 9600 
set "store=DtaStor"
for /f "delims=" %%c in ('type "%~1" ^| findstr /i "%~2" ^| findstr /i "%store%" ^| findstr /i ".msu"') do set "var=%%c"
for /f "tokens=1,2,3,4,5,6,7,8,9,10,11,12 delims= " %%g in ("%var%") do set "search=%%m"
echo %search%>>%loadlist%
goto:eof
:================================================================================================================
::===============================================================================================================
::LINK LIST CHECK LOOP
:LinkListCheckLoop
for /f "tokens=*" %%z in ('type "%~1" ^| findstr /i "%~2"') do echo "%%z" | findstr /i "%~3" 1>nul && (
	echo %%z>>%~4
)
goto:eof
:================================================================================================================
::===============================================================================================================
::CLEAN LOOP
:CleanProcess1
powershell gc "%~1" ^| sort ^| get-unique > "%~2"
del /s /q "%~1" >nul
ren "%~2" "%~3" >nul
goto:eof
:================================================================================================================
::===============================================================================================================
::CLEAN DOUBLES FROM WU LIST BY KEEPING ORIGINAL LIST ORDER
:CoolCleanProcess
if exist %~1 (
	if exist "%templist%" del /s /q "%templist%" >nul
	if exist "%cleanupdatelist%" del /s /q "%cleanupdatelist%" >nul
	type %~1>>%templist%
	echo $hash = @{}>%clean%
	echo gc "%templist%" ^| %%{ if ^($hash.$_ -eq $nqull^) { $_ }; $hash.$_ = 1 } ^> "%cleanupdatelist%">>%clean%
	powershell -executionpolicy bypass -File %clean% 
	del /s /q "%~1" >nul
	del /s /q "%clean%" >nul
	type %cleanupdatelist%>>%~1
)
goto:eof
:================================================================================================================
::===============================================================================================================
::PS WU MODULE
:PSWUModule
powershell Set-ExecutionPolicy Bypass
powershell Import-Module PSWindowsUpdate
powershell %~1%~2
powershell Set-ExecutionPolicy Restricted
goto:eof
:================================================================================================================
::===============================================================================================================
::SHOW INSTALLED UPDATES TALKATIVE WITH WMIC
:ShowInstalledWMICModule
set "count=0"
for /f "tokens=1,2,3,4,5,6,7,8 delims=," %%a in ('"wmic qfe get /format:csv"') do (
	echo %%a | findstr /i "%computername%" 1>nul && echo %%c | findstr /i "%computername%" 1>nul && (
		echo %computername%: %%e ^| %%d ^| %%g ^| %%f
		set /a count+=1
))
goto:eof
:================================================================================================================
::===============================================================================================================
::SHOW INSTALLED UPDATES DISM
:ShowInstalledModule
set "count=0"
for /f "tokens=5,6,7,8 delims=:_~ " %%a in ('"dism /online /Get-Packages /english | findstr /i "kb""') do (
	set /a count+=1
	for /f "tokens=3 delims=." %%A in ("%%d") do if %%A gtr 1 (set "name=%%a-v%%A") else (set "name=%%a")
	echo !name!>>%~1
)
goto:eof
:================================================================================================================
::===============================================================================================================
::SHOW INSTALLED UPDATES DISM VERBOSE
:ShowInstalledVerboseModule
set "count=0"
for /f "tokens=1,2,3,4,5,6,7,8 delims=:_~ " %%a in ('"%dism% /online /Get-Packages /english" ^| findstr /i Identity') do (
	echo %%c | findstr /i "Microsoft" 1>nul && echo %%c ^| %%f&&set /a count+=1
	echo %%d | findstr /i "for" 1>nul && echo %%c: %%e ^| %%h&&set /a count+=1
)
goto:eof
:================================================================================================================
::===============================================================================================================
::CHECK LIST AGAINST FOLDER 
:ListAgainstFolderCheck
for /f "tokens=* delims= " %%a in (%~1) do (
	for /r "%~2" %%i in (*.%~3) do echo %%~ni | findstr /i "%%a" 1>nul && (
		set /a count+=1
		set "updatetemp=%%~ni"
		for /f "tokens=2 delims=-_" %%m in ("!updatetemp!") do echo !updatetemp! | findstr /i "%kbarch%" 1>nul && echo %%m>>%~4&&echo %%m
))
goto:eof
:================================================================================================================
::===============================================================================================================
::FOLDER CHECK
:FolderCheck
for /r %%i in (*.%~1) do (
	set /a count+=1
	set "updatetemp=%%~ni"
	for /f "tokens=2 delims=-_" %%m in ("!updatetemp!") do echo %%m>>%~2&&echo %%m
)
goto:eof
::===============================================================================================================
:ActiveFolderCheck
for /r "%~1" %%I in (*.%~2) do (
	set /a count+=1
	for /f "tokens=1,2,3,4,5 delims=-_ " %%m in ('echo %%~nI ^| findstr /i "%vera%"') do (
		echo %%m | findstr /i "Windows" 1>nul && (
			set "kbtemp=%%n"
			if [%%o]==[%vera%] (echo KB!kbtemp:~2!>>"%~3"&&echo Found: KB!kbtemp:~2! [%vera%])
			if [%%p]==[%vera%] (echo KB!kbtemp:~2!-%%o>>"%~3"&&echo Found: KB!kbtemp:~2!-%%o [%vera%])
		)
		echo %%m | findstr /v /i "Windows" 1>nul && (
			set "kbtemp=%%o"
			if [%%p]==[%vera%] (echo KB!kbtemp:~2!>>"%~3"&&echo Found: KB!kbtemp:~2! [%vera%])
			if [%%q]==[%vera%] (echo KB!kbtemp:~2!-%%p>>"%~3"&&echo Found: KB!kbtemp:~2!-%%p [%vera%])
		)
))
goto:eof
::===============================================================================================================
:ActiveFolderIntegrationCheck
for /r "%~1" %%I in (*.%~2) do (
	set /a count+=1
	for /f "tokens=2,3,4 delims=-_ " %%m in ('echo %%~nI ^| findstr /i "%kbarch%"') do (
		set "kbtemp=%%m"
		if [%%n]==[%kbarch%] (echo KB!kbtemp:~2!>>"%~3"&&echo Found: KB!kbtemp:~2! [%kbarch%])
		if [%%o]==[%kbarch%] (echo KB!kbtemp:~2!-%%n>>"%~3"&&echo Found: KB!kbtemp:~2!-%%n [%kbarch%])
))
goto:eof
:================================================================================================================
::===============================================================================================================
::murphy78 FOLDER CHECK
:MurphyFolderCheck
for /r "%~1" %%z in (*.%~2) do echo %%z | findstr /i "%~3" 1>nul && (
	set "updatetemp=%%~nz"
	for /f "tokens=2,3 delims=-_" %%c in ("!updatetemp!") do (
		if %%t equ %kbarch% echo %%c>>%~4
		if %%u equ %kbarch% echo %%c-%%t>>%~4
))
goto:eof
:================================================================================================================
::===============================================================================================================
::COMPARE LISTS WITH POWERSHELL
:CompareWithPowershell
pushd %~dp0
if %win% geq 9200 for /f "tokens=* delims= " %%a in ('"powershell Compare-Object -ReferenceObject (Get-Content %~1) -DifferenceObject (Get-Content %~2) ^| where-object SideIndicator -eq =^> ^| select -Expand InputObject ^| fl"') do (
	%~4
	%~5echo %%a
	echo %%a>>%~3
)
if %win% lss 9200 (
	findstr /v /i /g:%~1 %~2>%~3
	for /f %%a in (%~3) do %~4
)
goto:eof
:================================================================================================================
::===============================================================================================================
::INSTALL UPDATES
:MasterInstallUpdates
set /a "count2+=1"
echo Installing: %~2  : !count2! of %count%
WUSA "%~1" /quiet /norestart
goto:eof
:================================================================================================================
::===============================================================================================================
::INTEGRATE UPDATES
:MasterIntegrateUpdates
for /f "tokens=* delims= " %%a in (%~1) do (
for /r "%~2" %%i in (*.%~3) do echo %%~ni | findstr /i "%%a-%kbarch%" 1>nul && %dism% /image:%~4 /Add-Package /PackagePath:%%i
)
goto:eof
:================================================================================================================
::===============================================================================================================
::SERVICE WIM
:ServiceWIM
for /r "%~1" %%v in (*.%~2) do echo %%~nv | findstr /i "%~3" 1>nul && %dism% /image:%~4 /Add-Package /PackagePath:%%v
goto:eof
:================================================================================================================
::===============================================================================================================
::MOUNT WIM
:MountWIM
%dism% /English /mount-wim /wimfile:"%~1" /index:%~2 /mountdir:"%~3"
goto:eof
:================================================================================================================
::===============================================================================================================
::UNMOUNT WIM
:UnMountWIM
%dism% /English /unmount-wim /mountdir:"%~1" /commit /checkintegrity
goto:eof
:================================================================================================================
::===============================================================================================================
::EXPORT WIM WITH DISM
:ExportWIMWithDism
if /i "!targetwimfile:~-3!"=="esd" (set "comp=recovery") else (set "comp=max")
%dism% /Export-Image /English /SourceImageFile:"%~1" /SourceIndex:%~2 /DestinationImageFile:"%~3" /compress:!comp! /CheckIntegrity
goto:eof
:================================================================================================================
::===============================================================================================================
::EXPORT WIM WITH DISM
:ExportWIMWithWimlib
%wimlib% export "%~1" %~2 "%~3" --check --compress=max
goto:eof
:================================================================================================================
::===============================================================================================================
::JOIN WIM WITH DISM
:JoinSWMWithDISM
set "breakpath=%~1"
%dism% /Export-Image /English /SourceImageFile:"%~1" /SWMFile:"!breakpath:~0,-4!*.swm" /SourceIndex:%~2 /DestinationImageFile:"%~3" /CheckIntegrity
goto:eof
:================================================================================================================
::===============================================================================================================
::CHECK WIM
:CheckMountedWIM
if exist %checklist% del /s /q %checklist% >nul
for /f "tokens=5,6,7 delims=:_~ " %%a in ('"dism /image:%~1 /Get-Packages /english" ^| findstr /i Package') do if not %%a equ amd64 if not %%a equ x86 echo %%a>>%~2
goto:eof
:================================================================================================================
::===============================================================================================================
::CLEANUP WIM
:CleanupModule
%dism% /%~1 /cleanup-image /%~2
goto:eof
:================================================================================================================
::===============================================================================================================
::RESETBASE WIM
:ResetbaseModule
%dism% /%~1 /cleanup-image /startcomponentcleanup /resetbase
goto:eof
:================================================================================================================
::===============================================================================================================
::SCAN SYSTEM HEALTH
:ScanModule
%dism% /online /cleanup-image /%~1health
goto:eof
:================================================================================================================
::===============================================================================================================
::WGET LOOP
:WgetSingleLoop
%wget% -nc "%~1" -P "%~2" --no-check-certificate
goto:eof
:================================================================================================================
::===============================================================================================================
::WGET LOOP
:WgetLoop
for /f "tokens=*" %%a in (%~1) do (
	%wget% -nc "%%a" -P "%~2" --no-check-certificate
)
goto:eof
:================================================================================================================
::===============================================================================================================
::WU CATALOG QUERY LOOP
:QueryCatalogLoop
echo Checking Catalog for : Win %versvar% %buildsvar% %~1
call :Footer
set "kbtemp="
set "kblink="
set "kbid="
set "getlist=winup\getlist.cmd"
set "getlink=winup\getlink.cmd"
if not exist "%downpath%\_temp" md "%downpath%\_temp"
set "kbtemplist=%downpath%\_temp\kbtemplist.txt"
if "%versvar%"=="10" if "%buildsvar%"=="1507" set "searchstr=10"
if "%versvar%"=="10" if "%buildsvar%"=="1511" set "searchstr=10 1511"
if "%versvar%"=="10" if "%buildsvar%"=="1607" set "searchstr=10 1607"
if "%versvar%"=="10" if "%buildsvar%"=="1703" set "searchstr=10 1703"
if "%versvar%"=="8.1" set "searchstr="
if "%versvar%"=="8.1" set "buildsvar="
if "%versvar%"=="7" set "searchstr=7"
if "%versvar%"=="7" set "buildsvar="
if "%versvar%"=="Embedded" set "searchstr=Embedded"
if "%versvar%"=="2012" set "searchstr=Server 2012"
if "%versvar%"=="2012 R2" set "searchstr=Server 2012 R2"
if "%versvar%"=="2016" set "searchstr=Server 2016"
for /f "tokens=*" %%G in ('!getlist! "%~1 !searchstr!"') do if not %%G equ NO_RESULTS (
	if "%versvar%"=="10" if "!buildsvar!"=="1703" if "%archsvar%"=="x64" echo %%G | findstr /v "Server" | findstr /v "Delta" | findstr /i "x64" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="10" if "!buildsvar!"=="1703" if "%archsvar%"=="x86" echo %%G | findstr /v "Server" | findstr /v "Delta" | findstr /v "x64" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="10" if "!buildsvar!"=="1607" if "%archsvar%"=="x64" echo %%G | findstr /v "Server" | findstr /v "Delta" | findstr /i "x64" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="10" if "!buildsvar!"=="1607" if "%archsvar%"=="x86" echo %%G | findstr /v "Server" | findstr /v "Delta" | findstr /v "x64" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="10" if "!buildsvar!"=="1511" if "%archsvar%"=="x64" echo %%G | findstr /v "Server" | findstr /v "Delta" | findstr /i "x64" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="10" if "!buildsvar!"=="1511" if "%archsvar%"=="x86" echo %%G | findstr /v "Server" | findstr /v "Delta" | findstr /v "x64" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="10" if "!buildsvar!"=="1507" if "%archsvar%"=="x64" echo %%G | findstr /v "Server" | findstr /v "Delta" | findstr /i "x64" | findstr /v "1511" | findstr /v "1607" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="10" if "!buildsvar!"=="1507" if "%archsvar%"=="x86" echo %%G | findstr /v "Server" | findstr /v "Delta" | findstr /v "1511 x64" | findstr /v "1607 x64" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="8.1" if "%archsvar%"=="x64" echo %%G | findstr /c:"Windows 8.1" | findstr /v "Server" | findstr /i "x64" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="8.1" if "%archsvar%"=="x86" echo %%G | findstr /c:"Windows 8.1" | findstr /v "Server" | findstr /v "x64" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="7" if "%archsvar%"=="x64" echo %%G | findstr /i "x64" | findstr /v "Embedded" | findstr /v "Server" | findstr /v "Vista" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="7" if "%archsvar%"=="x86" echo %%G | findstr /v "x64" | findstr /v "Embedded" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="Embedded" if "%archsvar%"=="x86" echo %%G | findstr /v "x64" | findstr /v "X64" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="Embedded" if "%archsvar%"=="x64" echo %%G | findstr /i "x64" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="2012" if "%archsvar%"=="x64" echo %%G | findstr /v "x64" | findstr /v "R2" | findstr /v "Delta" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="2012" if "%archsvar%"=="x86" echo %%G | findstr /v "x64" | findstr /v "R2" | findstr /v "Delta" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="2012 R2" if "%archsvar%"=="x64" echo %%G | findstr /v "x64" | findstr /v "Delta" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="2012 R2" if "%archsvar%"=="x86" echo %%G | findstr /v "x64" | findstr /v "Delta" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="2016" if "%archsvar%"=="x64" echo %%G | findstr /i "x64" | findstr /v "Delta" 1>nul && set "kbtemp=%%G"
	if "%versvar%"=="2016" if "%archsvar%"=="x86" echo %%G | findstr /v "x64" | findstr /v "Delta" 1>nul && set "kbtemp=%%G"
)
if defined kbtemp (
	for /f "tokens=1,2* delims== " %%A in ("!kbtemp!") do (
			set "kbid=%%A"
			set "kbinfo=%%B %%C"
	))
	for /f "tokens=* delims= " %%G in ('!getlink! "!kbid!"') do (
		echo %%G | findstr /i "%~1" 1>nul && set "kblink=%%G"
	)
	if defined kblink echo !kblink!>>%loadlist%
	echo INFO : !kbinfo!>>%kbtemplist%
	if "%versvar%"=="10" echo KB NR: %~1 ^| VERSION: %versvar% ^| BUILD: %buildsvar% ^| KB ID: !kbid!>>%kbtemplist%
	if not "%versvar%"=="10" echo KB NR: %~1 ^| VERSION: %versvar% ^| KB ID: !kbid!>>%kbtemplist%
	if defined kblink echo !kblink!>>%kbtemplist%
	if  not defined kblink echo No Link found:>>%kbtemplist%
	if %win% geq 10240 echo.>>%kbtemplist%
	if %win% lss 10240 echo.>>%kbtemplist%
)
if not defined kbtemp (
	if "%versvar%"=="10" echo KB NR: %~1 ^| VERSION: %versvar% ^| BUILD: %buildsvar% ^| KB ID: !kbid!>>%kbtemplist%
	if not "%versvar%"=="10" echo KB NR: %~1 ^| VERSION: %versvar% ^| KB ID: !kbid!>>%kbtemplist%
	echo Invalid Query. [Defender Definitons and/or MRT].>>%kbtemplist%
	if %win% geq 10240 echo.>>%kbtemplist%
	if %win% lss 10240 echo.>>%kbtemplist%
)
goto:eof
:================================================================================================================
::===============================================================================================================
::WU CATALOG FREE-ROAM INFO QUERY LOOP
:QueryCatalogFRInfoLoop
echo Checking Catalog for : %~1
call :Footer
set "kbtemp="
set "kblink="
set "kbid="
set "getlist=winup\getlist.cmd"
set "getlink=winup\getlink.cmd"
set "searchstrvar=%~1"
if not exist "%downpath%\_temp" md "%downpath%\_temp"
set "kbtemplist=%downpath%\_temp\kbtemplist.txt"
echo KB-NR: %~1>>%kbtemplist%
if %win% geq 10240 echo.***************************************************************************************************>>%kbtemplist%
if %win% lss 10240 echo.*******************************************************************************>>%kbtemplist%
for /f "tokens=1,2* delims== " %%G in ('!getlist! "%~1"') do if not %%G equ NO_RESULTS (
	set "kbid=%%G"
	set "kbinfo=%%H %%I"
	echo INFO : !kbinfo!>>%kbtemplist%
	echo KB ID: !kbid!>>%kbtemplist%
	for /f "tokens=* delims= " %%W in ('!getlink! "!kbid!"') do (
		set "kblink=%%W"
		echo !kblink!>>%kbtemplist%
	)
	if %win% geq 10240 echo.***************************************************************************************************>>%kbtemplist%
	if %win% lss 10240 echo.*******************************************************************************>>%kbtemplist%
)
	if "!kblink!"=="" echo INVALID QUERY.>>%kbtemplist%
	if %win% geq 10240 if "!kblink!"=="" echo.***************************************************************************************************>>%kbtemplist%
	if %win% lss 10240 if "!kblink!"=="" echo.*******************************************************************************>>%kbtemplist%
goto:eof
:================================================================================================================
::===============================================================================================================
::SET INTEGRATION DATA
:IntegrationSetData
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo INTEGRATING UPDATES FROM LIST
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:
echo Path to WIM: %wimfile%
echo:
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:
set /p wimfile=Set Path to WIM:
echo:
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:
set "count=0"&&set "count2=0"&&set "count3=0"
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do set /a count3+=1
if %count3% gtr 12 (set "offset= ") else (set "offset=")
call :Header "IND!offset2!  MODIFIED    LANG   ARC  BUILD           INDEX NAME"
call :WIMCheckLoop1 %wimfile%, !count3!
call :Footer
echo Path to TXT List: %installist%
echo Script assumes names in list to be 'KBXXXXXXX'.
echo:
echo Path to Update Folder: %workfolder%
echo:
echo Path to Mount Folder: %mountfolder%
echo:
if "%index%"=="" set index=1
echo Index to Mount: %index%, not needed for all indices run.
echo:
set "kbarch=%arch%"
echo WIM Architechture: %kbarch% : 'x64' or 'x86'
echo:
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:
set /p installist=Set Path to TXT List:
set /p workfolder=Set Path to Update Folder:
set /p mountfolder=Set Path to Mount Folder:
set /p index=Set Index to Mount:
set /p kbarch=Enter Architecture:
call :Footer
CHOICE /C CRW /N /M "[C]leanup, [R]esetbase or [W]ithout ?:"
if %errorlevel%==1 set "command=cleanup"
if %errorlevel%==2 set "command=resetbase"
if %errorlevel%==3 set "command="
goto:eof
:================================================================================================================
::===============================================================================================================
::SET INTEGRATION DATA II
:IntegrationSetDataTwo
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo INTEGRATING UPDATES FROM FOLDER
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:
echo Path to WIM: %wimfile%
echo:
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:
set /p wimfile=Set Path to WIM:
echo:
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:
set "count=0"&&set "count2=0"&&set "count3=0"
for /f "tokens=2 delims=: " %%z in ('%dism% /Get-WimInfo /WimFile:"%wimfile%" /english ^| findstr /i Index') do set /a count3+=1
if %count3% gtr 12 (set "offset= ") else (set "offset=")
call :Header "IND!offset2!  MODIFIED    LANG   ARC  BUILD           INDEX NAME"
call :WIMCheckLoop1 %wimfile%, !count3!
call :Footer
echo Path to Update Folder: %workfolder%
echo:
echo Path to Mount Folder: %mountfolder%
echo:
if "%index%"=="" set index=1
echo Index to Mount: %index%, not needed for all indices run.
echo:
set "kbarch=%arch%"
echo WIM Architechture: %kbarch% : 'x64' or 'x86'
echo:
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:
set /p workfolder=Set Path to Update Folder:
set /p mountfolder=Set Path to Mount Folder:
set /p index=Set Index to Mount:
set /p kbarch=Enter Architecture:
call :Footer
CHOICE /C CRW /N /M "[C]leanup, [R]esetbase or [W]ithout ?:"
if %errorlevel%==1 set "command=cleanup"
if %errorlevel%==2 set "command=resetbase"
if %errorlevel%==3 set "command="
goto:eof
:================================================================================================================
::===============================================================================================================
:: COLOROUT
:COLOROUT
powershell "Write-Host '%~1' -foreground %~2"
goto:eof
:================================================================================================================
::===============================================================================================================
::MENU HEADER
:MenuHeader
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:%~1
if %win% geq 10240 echo.
if %win% lss 10240 echo.
goto:eof
:================================================================================================================
::===============================================================================================================
::MENU HEADER 02
:MenuHeader02
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:%~1
if %win% geq 10240 echo.
if %win% lss 10240 echo.
goto:eof
:================================================================================================================
::===============================================================================================================
:: HEADER
:Header
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:%~1
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:
goto:eof
:================================================================================================================
::===============================================================================================================
:: HEADER
:BigHeader
if /i "!targetwimfile:~-3!"=="esd" (set "comp=recovery") else (set "comp=max")
echo INDEX : %~1 of %~2
echo Source: %~3
echo Target: %~4
echo Comp. : !comp!
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:
goto:eof
:================================================================================================================
::===============================================================================================================
::MENU FOOTER
:MenuFooter
if %win% geq 10240 echo.
if %win% lss 10240 echo.
goto:eof
:================================================================================================================
::===============================================================================================================
:: FOOTER
:Footer
echo:
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:
goto:eof
:================================================================================================================
::===============================================================================================================
:: NOT FOUND
:NotFound
echo %~1
echo:
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:
pause
goto:eof
:================================================================================================================
::===============================================================================================================
:: NO UPDATES TO INSTALL FOUND
:NoUpdatesToInstallFound
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo NO UPDATES FOUND
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:
echo:
echo No Updates to %~1 found.
echo:
if %win% geq 10240 echo.
if %win% lss 10240 echo.
echo:
pause
goto:eof
:================================================================================================================
::===============================================================================================================
::TITLE
:TITLE
title s1ave77s þ S-M-R-T WU TOOL þ v.1.11.29
goto:eof
:================================================================================================================
::===============================================================================================================
::EXIT
:Exit
ENDLOCAL
exit
:================================================================================================================
::===============================================================================================================
:ExitDelete
call :CleanTempFiles
ENDLOCAL
exit
:================================================================================================================
::===============================================================================================================
::RESTART
:Restart
cls
call :Header "!!!REBOOT IMMINENT!!!"
CHOICE /C PB /N /M "[P]ROCEED or [B]ack to Menu ?:"
if %errorlevel%==2 goto :MainMenu
ENDLOCAL
start shutdown.exe /r /t 0
:================================================================================================================
::===============================================================================================================
:RestartDelete
cls
call :Header "!!!REBOOT IMMINENT!!!"
CHOICE /C PB /N /M "[P]ROCEED or [B]ack to Menu ?:"
if %errorlevel%==2 goto :MainMenu
call :CleanTempFiles
ENDLOCAL
start shutdown.exe /r /t 0
:================================================================================================================
::===============================================================================================================
::SET SYSTEM VARIABLES
:SystemCheckVariables
for /f "tokens=2* delims= " %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "CurrentVersion"') do set "version=%%a"
if "%version%"=="6.1" set "updatename=Windows6.1"
if "%version%"=="6.2" set "updatename=Windows8-RT"
if "%version%"=="6.3" set "updatename=Windows8.1"
if "%version%"=="10.0" set "updatename=Windows10.0"
for /f "tokens=2* delims= " %%a in ('reg query "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /v "PROCESSOR_ARCHITECTURE"') do (
if "%%b"=="AMD64" set vera=x64
if "%%b"=="x86" set vera=x86
)
set sls=SoftwareLicensingService
for /f "tokens=2,3 delims=.=" %%a in ('"wmic path %sls% get version /format:list"') do set build=%%a.%%b
FOR /F "tokens=3,4 delims=. " %%I IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" ^| findstr ReleaseId') DO (SET relid=%%I)
FOR /F "tokens=3,4 delims=. " %%I IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" ^| findstr BuildLabEx') DO (SET build1=%%I)
FOR /F "tokens=3,4 delims=. " %%I IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" ^| findstr UBR') DO for /f "tokens=*" %%a in ('set /A "DEC=%%I"') do (SET build1=%build1%.%%a)
for /F "tokens=3* delims= " %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" ^| findstr EditionID') do (SET edition=%%i)
for /f "tokens=6 delims=[]. " %%g in ('ver') do set win=%%g
FOR /F "tokens=3* delims= " %%I IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" ^| findstr ProductName') DO SET ver=%%I %%J
goto:eof
:================================================================================================================
::===============================================================================================================
::CLEAN TEMP FILES
:CleanTempFiles
if exist "%wuoffer%" del /s /q "%wuoffer%" >nul
if exist "%updatelist%" del /s /q "%updatelist%" >nul
if exist "%installedupdatelist%" del /s /q "%installedupdatelist%" >nul
if exist "%cleanupdatelist%" del /s /q "%cleanupdatelist%" >nul
if exist "%todolist%" del /s /q "%todolist%" >nul
if exist "%templist%" del /s /q "%templist%" >nul
if exist "%checklist%" del /s /q "%checklist%" >nul
if exist "%downloadlist%" del /s /q "%downloadlist%" >nul
if exist "%loadlist%" del /s /q "%loadlist%" >nul
if exist "%cleanloadlist%" del /s /q "%cleanloadlist%" >nul
if exist "%cleandownloadlist%" del /s /q "%cleandownloadlist%" >nul
if exist "%wucheck%" del /s /q "%wucheck%" >nul
if exist "%clean%" del /s /q "%clean%" >nul
if exist "%pfile%" del /s /q "%pfile%" >nul
if exist "%cleanloadlist%" del /s /q "%cleanloadlist%" >nul
if exist "%templist%" del /s /q "%templist%" >nul
if exist "%murphy78content%" del /s /q "%murphy78content%" >nul
if exist "%wimupdatelist%" del /s /q "%wimupdatelist%" >nul
if exist "%folderupdatelist%" del /s /q "%folderupdatelist%" >nul
if exist "%integrateupdatelist%" del /s /q "%integrateupdatelist%" >nul
goto:eof
:================================================================================================================
