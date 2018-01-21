rem These commands copy the selected image file to
rem predefined hard disk partitions on a BIOS-based computer.

rem Usage:   ApplyImage WimFileName 
rem Example: ApplyImage E:\Images\ThinImage.wim

rem === Copy the image to the recovery image partition =======================
copy %1 R:\install.wim

rem === Apply the image to the Windows partition =============================
dism /Apply-Image /ImageFile:R:\install.wim /Index:1 /ApplyDir:W:\

rem === Copy the Windows RE Tools to the system partition ====================
md S:\Recovery\WindowsRE
copy W:\windows\system32\recovery\winre.wim S:\Recovery\WindowsRE\winre.wim

rem === Copy boot files from the Windows partition to the System partition ===
bcdboot W:\Windows

rem === In the System partition, set the location of the Windows partition ===
W:\Windows\System32\reagentc /setosimage /path R:\Recovery-Image /index 1 /target C:\Windows 

rem === In the System partition, set the location of the WinRE tools =========
W:\Windows\System32\reagentc /setreimage /path S:\Recovery\WindowsRE /target W:\Windows