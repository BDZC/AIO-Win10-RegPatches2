If using WinPE v1/BartPE/USBCD4WIN...

PROBLEM 1: No USB drives listed in RMPrepUSB.?
If you are using BartPE or any other WinPE OS you may need to copy MSVBVM60.DLL to the same folder that already contains RMPrepUSB.exe and RMPartUSB.exe. 

PROBLEM 2: After formatting using RMPrepUSB, the new USB drive does not have a drive letter or appear in Explorer?
If new removable drives are not auto-detected by WinPE, also copy over the showdrive.exe file to the same folder that already contains RMPrepUSB.exe and RMPartUSB.exe.

WARNING: If using Windows XP or later - do NOT copy over the showdrive.exe file or you may get multiple drive letters for the same USB drive!
