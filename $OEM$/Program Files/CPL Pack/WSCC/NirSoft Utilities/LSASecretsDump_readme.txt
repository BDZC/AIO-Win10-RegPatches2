

LSASecretsDump v1.21
Copyright (c) 2006 - 2009 Nir Sofer
Web Site: http://www.nirsoft.net



Description
===========

LSASecretsDump is a small console application that extract the LSA
secrets from the Registry, decrypt them, and dump them into the console
window.
The LSA secrets key is located under
HKEY_LOCAL_MACHINE\Security\Policy\Secrets and may contain your RAS/VPN
passwords, Autologon password, and other system passwords/keys.



Versions History
================


* Version 1.21 - Fixed a problem with Application Compatibility Engine
  on Windows 7/Vista: In some rare circumstances, this utility was
  shimmed by Application Compatibility Engine, which means that
  apphelp.dll and AcLayers.DLL were loaded into the process and replaced
  the Windows API pointers in the exports table. This API replacement
  caused this utility to crash lsass.exe and restart the operating system
  after a minute.
  This problem occured when running this utility from NirLauncher
  package, because the executable of NirLauncher contains the word
  'launch', and from unknown reason, Microsoft automatically shim every
  executable that contains the word 'launch'.
* Version 1.20 - Added support for reading the LSA secrets from
  external drive.
* Version 1.10 - Added support for Windows Vista.
* Version 1.00 - First release.



License
=======

This utility is released as freeware. You are allowed to freely
distribute this utility via floppy disk, CD-ROM, Internet, or in any
other way, as long as you don't charge anything for this. If you
distribute this utility, you must include all files in the distribution
package, without any modification !



Disclaimer
==========

The software is provided "AS IS" without any warranty, either expressed
or implied, including, but not limited to, the implied warranties of
merchantability and fitness for a particular purpose. The author will not
be liable for any special, incidental, consequential or indirect damages
due to loss of data or any other reason.



Using LSASecretsDump
====================

LSASecretsDump is a console application, so in order the view the output,
you have to run it in console (Command-Prompt) window.
As with any console application, you dump the output into a file, for
example:
LSASecretsDump.exe > c:\temp\lsa.txt




Command-Line Options
====================



-external <Windows Directory>
Dump the LSA secrets from external instance of Windows installation. For
example:
LSASecretsDump.exe -external p:\windows

-empty
dump also empty items.



System Requirement
==================

This utility works on Windows 2000/XP/2003/2008/Vista/7. Windows 98/ME is
not supported.



Feedback
========

If you have any problem, suggestion, comment, or you found a bug in my
utility, you can send a message to nirsofer@yahoo.com
