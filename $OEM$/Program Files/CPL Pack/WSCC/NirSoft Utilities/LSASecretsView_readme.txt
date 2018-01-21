


LSASecretsView v1.21
Copyright (c) 2006 - 2009 Nir Sofer
Web Site: http://www.nirsoft.net



Description
===========

LSASecretsView is a small utility that displays the list of all LSA
secrets stored in the Registry on your computer.
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
  external instance of Windows 2000/XP/2003. (In Advanced Options).
* Version 1.13 - Fixed bug: The main window lost the focus when the
  user switched to another application and then returned back to
  LSASecretsView.
* Version 1.12 - The configuration is now saved to a file, instead of
  the Registry.
* Version 1.11 - Under Vista, LSASecretsView now automatically requires
  to run as administrator.
* Version 1.10 - Added support for Windows Vista (both 32-bit and x64
  versions)
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



Using LSASecretsView
====================

LSASecretsView doesn't require any installation process or additional
DLLs. Just copy the executable file (LSASecretsView.exe) to any folder
you like, and run it.
The main window of LSASecretsView contains 2 panes: The upper pane
displays the list of all LSA secret entries. When you select one or more
items in the upper pane, the lower pane displays the LSA data of the
selected items, in Hex and Ascii formats.



Reading LSA secrets from external instance of Windows (Windows
2000/XP/2003)

Starting from version 1.20, LSASecretsView allows you to read the LSA
secrets from external instance of Windows. This feature can be useful if
you have a dead system that cannot boot anymore. You can use this feature
from the user-interface, by using the 'Advanced Options' in the File
menu, or from command-line, by using /external parameter, for example:
LSASecretsView.exe /external g:\windows



System Requirement
==================

This utility works on 2000/XP/2003/2008/Vista/7. Windows 98/ME is not
supported.



Translating LSASecretsView to other languages
=============================================

In order to translate LSASecretsView to other language, follow the
instructions below:
1. Run LSASecretsView with /savelangfile parameter:
   LSASecretsView.exe /savelangfile
   A file named LSASecretsView_lng.ini will be created in the folder of
   LSASecretsView utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run LSASecretsView, and all
   translated strings will be loaded from the language file.
   If you want to run LSASecretsView without the translation, simply
   rename the language file, or move it to another folder.



Feedback
========

If you have any problem, suggestion, comment, or you found a bug in my
utility, you can send a message to nirsofer@yahoo.com
