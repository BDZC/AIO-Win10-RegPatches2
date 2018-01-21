RMPrepUSB and RMPartUSB
=======================

Web Site: http://www.rmprepusb.com  (for download and tutorials)
email:    RMPrep@google.com

LICENCE
=======
RMPrepUSB and RMPartUSB are for private, non-commercial use only.
Contact support@rm.com and ask for the 'Classroom Technologies RMPrepUSB licensing dept.' if you require a licence for commercial use.

REQUIREMENTS
============
RMPrepUSB and RMPartUSB both require MSVBVM60.dll (already present in Windows XP+) and also administrator access rights.

'helper' files used by RMPrepUSB are as follows:

grubinst.exe, grldr - used to apply grub4dos boot code
touchdrv.exe        - used after grub4dos under Win7/Vista to ensure Windows does not undo PBR changes
showdrive.exe       - assigns removable volumes a drive letter if they don't already have one (for WinPE v1 OS only)
syslinux.exe        - used to apply syslinux boot code
mke2fs.exe          - creates a file as a ext2 mountable filesystem
\LANG folder        - holds language ini help files and PDF files for RMPrepUSB (English.ini only is required)
\PEtoUSB folder     - the contents of this folder are copied to your USB stick if the BartPE checkbox is ticked.
\QEMU files         - these fies are only used when you press F11 to emulate booting from you USB drive
\WinContig          - WinContig is included with kind permission of the author Marco
USB_Disk_Eject.exe  - freeware utility from http://quick-and-easy-software.software.informer.com
7zg.exe             - 7Zip
weesetup.exe        - installs wee to a drive

The \SYSLINUX, \TESTMBR, WINPE_EXTRA and \FREEDOS_USB_BOOT folders are provided for user convenience - see \LANG pdf files for more details.

WINPE_EXTRA\SHOWDRIVE.EXE
For BartPE/WinPE v1 environments, RMPrepUSB will attempt to call ShowDrive.exe to remount new removable drives after partitioning and formatting them.
ShowDrive.exe must be in a 'pathed' folder (e.g. Windows\system32) or in the same folder as RMPrepUSB. 
If you are only using RMPartUSB you may need to run showdrive.exe before and after use. 
Move showdrive.exe from the WINPE_EXTRA folder to the same folder as RMPrepUSB.exe if you are using a BartPE/WinPE v1 environment.

WINPE_EXTRA\MSVBVM60.DLL
NOTE: if no USB drives are listed when running WinPE, copy MSVBVM60.DLL from the \DLL folder to the RMPrepUSB folder.
Required to list drives (normally already present in XP/VISTA/Win7/2003/2008+ OS's)
Copy this file to the same folder as RMPrepUSB/RMPartUSB if no USB drives are listed.

Please visit reboot.pro for help and advice with all forms of USB booting.

Click on the RMPrepUSB help button for more links and information.

Some of the other programs included with RMPrepUSB are covered by GNU General Public licence.
Please read RMPrepUSB.pdf and GPL.txt for details.

