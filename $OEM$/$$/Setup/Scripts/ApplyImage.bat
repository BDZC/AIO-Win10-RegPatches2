rem These commands copy the selected image file to
rem predefined hard disk partitions on a UEFI-based computer.

rem Usage:   ApplyImage WimFileName 
rem Example: ApplyImage E:\Images\ThinImage.wim

rem === Copy the image to the recovery image partition =======================
copy %1 R:\install.wim

rem === Apply the image to the Windows partition =============================
dism /Apply-Image /ImageFile:R:\install.wim /Index:1 /ApplyDir:W:\

rem === Dism /apply-image /imagefile:install.swm /swmfile:install*.swm /index:1 /applydir:D:\

rem === Copy the Windows RE Tools to the Windows RE Tools partition ==========
md T:\Recovery\WindowsRE
copy W:\windows\system32\recovery\winre.wim T:\Recovery\WindowsRE\winre.wim

rem === Copy boot files from the Windows partition to the System partition ===
bcdboot W:\Windows /s s: /f UEFI

rem === In the System partition, set the location of the Windows partition ===
W:\Windows\System32\reagentc /setosimage /path R:\Recovery\WindowsRE /target W:\Windows /index 1

rem === In the System partition, set the location of the WinRE tools =========
W:\Windows\System32\reagentc /setreimage /path T:\Recovery\WindowsRE /target W:\Windows