The contents of this folder is not used by RMPrepUSB.
These Files/Folders are only here for your convenience and may be deleted if not required.

RMPrepUSB uses syslinux.exe which is located in the same folder as RMPrepUSB.exe.
Syslinux version 4.06 is used by default by RMPrepUSB.
If you have problems with syslinux not displaying a menu on boot, it is probably 
because the vesamenu.c32 or menu.c32 files that are referenced in your syslinux.cfg 
file is pointing to an incompatible version.
You can copy the correct version to your USB drive from the syslinux_4.06 folder
or
you can overwrite the syslinux.exe file with a different version from one of these folders.

Source files can be obtained from http://www.kernel.org/pub/linux/utils/boot/syslinux/
