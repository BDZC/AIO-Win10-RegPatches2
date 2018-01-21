	@echo off
	title ˛ DISKPART ˛ by s1ave77
:: Code by s1ave77
	color 4F
	mode con cols=87 lines=50
	setlocal ENABLEDELAYEDEXPANSION
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Diskpart
	cls
	echo:
	echo    €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
	echo:
	echo    ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛  D I S K P A R T  ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
	echo:
	echo    €ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€ﬂ€
	echo    €‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€‹€
	echo:
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo:   ∞   CAUTION ###             THIS MODULE USES DISKPART             ### CAUTION   ∞
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo:   ∞  CAUTION: Once the drive is selected, DISKPART will ask no further            ∞
	echo:   ∞                                                                               ∞
	echo:   ∞  questions an wipe the drive instantly.                                       ∞
	echo:   ∞                                                                               ∞
	echo:   ∞  You must be sure, you selected the proper device from the list.              ∞
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo:   ∞  Pen Drives can be determined best by their size.                             ∞
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    == (C) Check Disks ====================== (F) Files Copy  =======================
	echo:   ∞                                                                               ∞
	echo    == (S) Scan for Operating Systems ======= (R) Repair MBR  =======================
	echo:   ∞                                                                               ∞
	echo    ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	echo:   ∞                                                                               ∞
	echo    == (1) Format existing Layout =========== (2) Create Bootable Pen Drive =========
	echo:   ∞                                                                               ∞
	echo    == (3) Create MBR Layout ================ (4) Create GPT Layout =================
	echo:   ∞                                                                               ∞
	echo    == (5) Create VHD ======================= (6) Detach VHD ========================
	echo:   ∞                                                                               ∞
	echo:   ∞                                                                               ∞
	echo    ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ (B) Exit ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤
	echo:
 	CHOICE /C CFSR123456B /N /M " ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛‹/  YOUR CHOICE  \‹˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛                                        ˛>"
	if %errorlevel%==1 goto :Check
    if %errorlevel%==2 goto :FileCopy
    if %errorlevel%==3 goto :ScanOS
    if %errorlevel%==4 goto :RepairMBR
	if %errorlevel%==5 goto :FormatLayout
	if %errorlevel%==6 goto :BootPenDrive
    if %errorlevel%==7 goto :CreateMBR
    if %errorlevel%==8 goto :CreateGPT
    if %errorlevel%==9 goto :CreateVHD
    if %errorlevel%==10 goto :DetachVHD
	if %errorlevel%==11 (pushd %~dp0)&&(systemtools.cmd)
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Check
	cls
	call :HEADER "CHECK DISKS", " "
	set file=%~dp0diskpart.txt
	set type=ntfs
	set label=New Volume
	echo list disk > %file%
	%windir%\system32\diskpart.exe < %file%
	if exist "%file%" del /s /q "%file%" >nul
	echo:
	echo Select Disk
	set /p dl=Set Disk :^>
	echo:
	echo select disk %dl% > %file%
	echo list partition >> %file%
	%windir%\system32\diskpart.exe < %file%
	if exist "%file%" del /s /q "%file%" >nul
	call :FOOTER
	pause
	goto:Diskpart
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:ScanOS
	cls
	call :HEADER "SCAN FOR OPERATING SYSTEMS", " "
	bootrec /ScanOs
	call :FOOTER
	pause
	goto:Diskpart
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:RepairMBR
	cls
	call :HEADER "REPAIR MBR", " "
	echo    [R] Run MBR Repair
	echo:
	echo    [S] /nt60 SYS
	echo    [A] /nt60 ALL
	echo:
	echo    [B] BACK
	call :FOOTER
	CHOICE /C RSAB /N /M "   YOUR CHOICE:"
	if %errorlevel%==1 goto :StartRepairMBR
    if %errorlevel%==2 goto :nt60SYS
    if %errorlevel%==3 goto :nt60ALL
    if %errorlevel%==4 goto:Diskpart
:StartRepairMBR
	cls
	call :HEADER "REPAIR MBR", " "
	bootrec /RebuildBcd
	bootrec /fixMbr
	bootrec /fixboot
	call :FOOTER
	pause
	goto:RepairMBR
:nt60SYS
	cls
	call :HEADER "REPAIR MBR /nt60 SYS", " "
	bootrec /nt60 SYS
	call :FOOTER
	pause
	goto:RepairMBR
:nt60ALL
	cls
	call :HEADER "REPAIR MBR /nt60 ALL", " "
	bootrec /nt60 ALL
	call :FOOTER
	pause
	goto:RepairMBR
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:FormatLayout
	cls
	set file=%temp%\list.txt
	set file1=%temp%\boot.txt
	set file2=%temp%\windows.txt
	set sizeboot=350
	set sizewindows=61440
	set bootletter=S
	set systemletter=C
	cls
	call :HEADER "FORMATTING BOOT ENVIRONMENT", " "
	echo Select Disk
	echo:
	set /p dl=Set Disk :^>
	echo:
	echo select disk %dl% > %file%
	echo list partition >> %file%
	%windir%\system32\diskpart.exe < %file%
	if exist "%file%" del /s /q "%file%" >nul
	echo:
	echo +++ NOTE: BOTH DRIVES WILL BE WIPED +++
	echo:
	echo Select Boot Partition. To Skip enter 0.
	echo:
	set /p boot=Set Boot Partition :^>
	if "%boot%"=="0" goto :WinPartition
	echo:
	echo Select Drive Letter
	echo Default: %bootletter%
	echo:
	set /p bootletter=Set Drive Letter :^>
	echo select disk %dl% > %file1%
	echo select partition %boot% >> %file1%
	echo format quick fs=ntfs label="Boot" >> %file1%
	echo assign letter="%bootletter%" >> %file1%
	echo active >> %file1%
	cls
	call :HEADER "FORMATTING BOOT PARTITION", "Processing the Task..."
	%windir%\system32\diskpart.exe < %file1%
	call :FOOTER
	timeout /t 5
	if exist "%file1%" del /s /q "%file1%" >nul
:WinPartition
	cls
	call :HEADER "FORMATTING WINDOWS PARTITION", " "
	echo Select Windows Partition
	echo:
	set /p windows=Set Windows Partition :^>
	echo:
	echo Select Drive Letter
	echo Default: %systemletter%
	echo:
	set /p systemletter=Set Drive Letter :^>
	set "trigger="
	CHOICE /C AN /N /M "Make [A]ctive or [N]ot ?:"
	if %errorlevel%==1 set trigger=1
    if %errorlevel%==2 set trigger=2
	echo select disk %dl% > %file2%
	echo select partition %windows% >> %file2%
	echo format quick fs=ntfs label="Windows" >> %file2%
	echo assign letter="%systemletter%" >> %file2%
	if "%trigger%"=="1" echo active >> %file2%
	cls
	call :HEADER "CREATING WINDOWS PARTITION", "Processing the Task..."
	%windir%\system32\diskpart.exe < %file2%
	call :FOOTER
	pause
	if exist "%file2%" del /s /q "%file2%" >nul
	echo:
	CHOICE /C AE /N /M "[A]gain or [E]xit?:"
	if %errorlevel%==1 goto :FormatLayout
    if %errorlevel%==2 goto:Diskpart
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CreateMBR
	cls
	set file=%temp%\list.txt
	set file1=%temp%\boot.txt
	set file2=%temp%\windows.txt
	set sizeboot=350
	set sizewindows=61440
	set bootletter=S
	set systemletter=C
	call :HEADER "SETUP MBR BOOT ENVIRONMENT", " "
	echo list disk > %file%
	%windir%\system32\diskpart.exe < %file%
	if exist "%file%" del /s /q "%file%" >nul
	echo:
	echo +++ NOTE: DRIVE WILL BE WIPED COMPLETELY +++
	echo:
	echo Select Disk
	echo:
	set /p dl=Set Disk :^>
	echo:
	echo select disk %dl% > %file1%
	echo clean >> %file1%
	echo Select Boot Partition Size. Enter 0 to Skip.
	echo Default: %sizeboot%
	echo:
	set /p sizeboot=Set Boot Partition Size :^>
	if "%sizeboot%"=="0" goto :WinPartition2
	echo:
	echo Select Drive Letter
	echo Default: %bootletter%
	echo:
	set /p bootletter=Set Drive Letter :^>
	echo create partition primary size=%sizeboot% >> %file1%
	echo format quick fs=ntfs label="Boot" >> %file1%
	echo assign letter="%bootletter%" >> %file1%
	echo active >> %file1%
:WinPartition2
	echo:
	echo Select Windows Partition Size
	echo Default: %sizewindows%
	echo:
	set /p sizewindows=Set Windows Partition Size :^>
	echo:
	echo Select Drive Letter
	echo Default: %systemletter%
	echo:
	set /p systemletter=Set Drive Letter :^>
	echo:
	set "trigger="
	CHOICE /C AN /N /M "Make [A]ctive or [N]ot ?:"
	if %errorlevel%==1 set trigger=1
    if %errorlevel%==2 set trigger=2
	echo create partition primary size=%sizewindows% >> %file1%
	echo format quick fs=ntfs label="Windows" >> %file1%
	echo assign letter="%systemletter%" >> %file1%
	if "%trigger%"=="1" echo active >> %file1%
	cls
	call :HEADER "CREATING BOOT AND WINDOWS PARTITION", "Processing the Task..."
	%windir%\system32\diskpart.exe < %file1%
	call :FOOTER
	if exist "%file%" del /s /q "%file%" >nul
	if exist "%file1%" del /s /q "%file1%" >nul
	CHOICE /C AE /N /M "[A]gain or [E]xit?:"
	if %errorlevel%==1 goto :SetWinBoot
    if %errorlevel%==2 goto:Diskpart
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CreateGPT
	cls
	set file=%temp%\list.txt
	set file1=%temp%\boot.txt
	set file2=%temp%\windows.txt
	set sizewindows=61440
	set efiletter=S
	set systemletter=W
	call :HEADER "SETUP GPT BOOT ENVIRONMENT", " "
	echo list disk > %file%
	%windir%\system32\diskpart.exe < %file%
	if exist "%file%" del /s /q "%file%" >nul
	echo:
	echo +++ NOTE: DRIVE WILL BE WIPED COMPLETELY +++
	echo:
	echo Select Disk
	echo:
	set /p dl=Set Disk :^>
	echo:
	echo Select EFI Letter
	echo Default: %efiletter%
	echo:
	set /p efiletter=Set EFI Letter :^>
	echo:
	echo Select Windows Partition Size
	echo Default: %sizewindows%
	echo:
	set /p sizewindows=Set Windows Partition Size :^>
	echo:
	echo Select Drive Letter
	echo Default: %systemletter%
	echo:
	set /p systemletter=Set Drive Letter :^>
	echo:
	echo select disk %dl% > %file1%
	echo clean >> %file1%
	echo convert gpt >> %file1%
	echo create partition primary size=300 >> %file1%
	echo format quick fs=ntfs label="Windows RE tools" >> %file1%
	echo assign letter="T" >> %file1%
	echo set id="de94bba4-06d1-4d40-a16a-bfd50179d6ac" >> %file1%
	echo gpt attributes=0x8000000000000001 >> %file1%
	echo create partition efi size=100 >> %file1%
	echo format quick fs=fat32 label="System" >> %file1%
	echo assign letter="%efiletter%" >> %file1%
	echo create partition msr size=128 >> %file1%
	echo create partition primary size=%sizewindows% >> %file1%
	echo format quick fs=ntfs label="Windows" >> %file1%
	echo assign letter="%systemletter%" >> %file1%
	cls
	call :HEADER "CREATING GPT PARTITION", "Processing the Task..."
	%windir%\system32\diskpart.exe < %file1%
	call :FOOTER
	if exist "%file%" del /s /q "%file%" >nul
	if exist "%file1%" del /s /q "%file1%" >nul
	CHOICE /C AE /N /M "[A]gain or [E]xit?:"
	if %errorlevel%==1 goto :CreateGPT
    if %errorlevel%==2 goto:Diskpart
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:CreateVHD
	cls
	set file=%temp%\list.txt
	set file1=%temp%\boot.txt
	set file2=%temp%\windows.txt
	set maxsize=30720
	set label=VHD
	call :HEADER "SETUP VHD", " "
	echo Select Path to VHD
	echo Default: %pathvhd%
	echo:
	set /p pathvhd=Set Path to VHD :^>
	echo:
	echo Select VHD Size in MB [30GB=30720,40GB=40960]
	echo Default: %maxsize%
	echo:
	set /p maxsize=Set VHD Size in MB :^>
	echo:
	echo Select Label Name
	echo Default: %label%
	echo:
	set /p label=Set Label Name :^>
	echo:
	echo Select Drive Letter
	echo Default: %vhdletter%
	echo:
	set /p vhdletter=Set Drive Letter :^>
	echo:
	set "trigger="
	CHOICE /C AN /N /M "Make [A]ctive or [N]ot ?:"
	if %errorlevel%==1 set trigger=1
    if %errorlevel%==2 set trigger=2
	echo create vdisk file="%pathvhd%" maximum=%maxsize% type=expandable > %file1%
	echo attach vdisk >> %file1%
	echo create partition primary >> %file1%
	echo format quick fs=ntfs label="%label%" >> %file1%
	echo assign letter=%vhdletter% >> %file1%
	if "%trigger%"=="1" echo active >> %file1%
	cls
	call :HEADER "CREATING BOOT AND WINDOWS PARTITION", "Processing the Task..."
	%windir%\system32\diskpart.exe < %file1%
	call :FOOTER
	if exist "%file%" del /s /q "%file%" >nul
	if exist "%file1%" del /s /q "%file1%" >nul
	CHOICE /C AE /N /M "[A]gain or [E]xit?:"
	if %errorlevel%==1 goto :CreateVHD
    if %errorlevel%==2 goto:Diskpart
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:DetachVHD
	cls
	set file=%temp%\list.txt
	call :HEADER "DETACH VHD", " "
	echo Select Path to VHD
	echo Default: %pathvhd%
	echo:
	set /p pathvhd=Set Path to VHD :^>
	echo select vdisk file="%pathvhd%" > %file%
	echo detach vdisk >> %file%
	call :HEADER "DETACH VHD", "Processing the Task..."
	%windir%\system32\diskpart.exe < %file%
	call :FOOTER
	if exist "%file%" del /s /q "%file%" >nul
	CHOICE /C AE /N /M "[A]gain or [E]xit?:"
	if %errorlevel%==1 goto :DetachVHD
    if %errorlevel%==2 goto:Diskpart
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:BootPenDrive
	cls
	call :HEADER "CREATE BOOTABLE PEN DRIVE", " "
	set file=%temp%\diskpart.txt
	set type=ntfs
	set label=New Volume
	echo list disk > %file%
	%windir%\system32\diskpart.exe < %file%
	if exist "%file%" del /s /q "%file%" >nul
	echo:
	echo Select Disk
	set /p dl=Set Disk :^>
	echo:
	echo Default: %type%
	set /p type=Set Disk Format :^>
	echo:
	echo Default: %label%
	set /p label=Set Volume Name :^>
	echo:
	echo Selected volume will be formatted now...!!!
	echo:
	CHOICE /C CE /N /M "[C]ontinue or [E]xit?:"
	if %errorlevel%==1 goto :furtherPD2
    if %errorlevel%==2 goto:Diskpart
:furtherPD2
	echo select disk %dl% > %file%
	echo clean >> %file%
	echo create partition primary >> %file%
	echo select partition 1 >> %file%
	echo active >> %file%
	echo format fs=%type% label="%label%" quick >> %file%
	echo assign >> %file%
	cls
	call :HEADER "CREATE BOOTABLE PEN DRIVE", "Processing the Task..."
	%windir%\system32\diskpart.exe < %file%
	echo:
	pause
	if exist "%file%" del /s /q "%file%" >nul
	echo:
	echo You can copy now files to new volume.
	echo:
	CHOICE /C CE /N /M "[C]opy or [E]xit?:"
	if %errorlevel%==1 goto :FileCopy
    if %errorlevel%==2 goto:Diskpart
:FileCopy
	cls
	call :HEADER "FILECOPY", "Copy Files to Pen Drive"
	echo Enter path as X:
	set /p source=Set Source Folder :^>
	echo:
	echo Enter path as X:
	set /p target=Set Target Folder :^>
	echo:
	xcopy "%source%\*.*" /s "%target%" /Y 
	echo:
	CHOICE /C AE /N /M "[A]gain or [E]xit?:"
	if %errorlevel%==1 goto :FileCopy
    if %errorlevel%==2 goto:Diskpart
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
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
