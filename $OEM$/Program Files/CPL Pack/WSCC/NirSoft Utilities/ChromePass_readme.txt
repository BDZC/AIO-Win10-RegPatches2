


ChromePass v1.25
Copyright (c) 2008 - 2013 Nir Sofer
Web site: http://www.nirsoft.net



Description
===========

ChromePass is a small password recovery tool that allows you to view the
user names and passwords stored by Google Chrome Web browser. For each
password entry, the following information is displayed: Origin URL,
Action URL, User Name Field, Password Field, User Name, Password, and
Created Time.
You can select one or more items and then save them into text/html/xml
file or copy them to the clipboard.



Versions History
================


* Version 1.25:
  o ChromePass now automatically reads the passwords from all
    profiles of Chrome Web browser.
  o Fixed issue: The properties dialog-box and other windows opened
    in the wrong monitor, on multi-monitors system.

* Version 1.22:
  o Fixed bug: ChromePass failed to read the password file if the
    file path contained non-English characters.

* Version 1.21:
  o Added support for Chrome Canary.

* Version 1.20:
  o Fixed ChromePass to work properly when the password file is
    locked by Chrome.

* Version 1.16:
  o Added an option to export the passwords into KeePass csv file (In
    'Save Selected Items'). You can use the created csv file to easily
    import your Web site passwords into KeePass password manager.
  o Fixed issue: removed the wrong encoding from the xml string,
    which caused problems to some xml viewers.

* Version 1.15: Added 'Password Strength' column, which calculates the
  strength of the password and displays it as Very Weak, Weak, Medium,
  Strong, or Very Strong.
* Version 1.10: Fixed ChromePass to work with the latest versions of
  Chrome.
* Version 1.05: Added support for recovering Chrome passwords from
  external drive. (In Advanced Options)
* Version 1.00: First release.



Using ChromePass
================

ChromePass doesn't require any installation process or additional DLL
files. In order to start using ChromePass, simply run the executable file
- ChromePass.exe After running it, the main window will display all
passwords that are currently stored in your Google Chrome browser.



Reading ChromePass passwords from external drive
================================================

Starting from version 1.05, you can also read the passwords stored by
Chrome Web browser from an external profile in your current operating
system or from another external drive (For example: from a dead system
that cannot boot anymore). In order to use this feature, you must know
the last logged-on password used for this profile, because the passwords
are encrypted with the SHA hash of the log-on password, and without that
hash, the passwords cannot be decrypted.
You can use this feature from the UI, by selecting the 'Advanced Options'
in the File menu, or from command-line, by using /external parameter. The
user profile path should be something like "C:\Documents and
Settings\admin" in Windows XP/2003 or "C:\users\myuser" in Windows
Vista/2008.




Command-Line Options
====================



/stext <Filename>
Save the list of passwords into a regular text file.

/stab <Filename>
Save the list of passwords into a tab-delimited text file.

/scomma <Filename>
Save the list of passwords into a comma-delimited text file.

/stabular <Filename>
Save the list of passwords into a tabular text file.

/shtml <Filename>
Save the list of passwords into HTML file (Horizontal).

/sverhtml <Filename>
Save the list of passwords into HTML file (Vertical).

/sxml <Filename>
Save the list of passwords to XML file.

/skeepass <Filename>
Save the list of passwords to KeePass csv file.

/external <User Profile Path> <Last Log-On Password>
Load the Chrome passwords from external drive/profile. For example:
chromepass.exe /external "C:\Documents and Settings\admin" "MyPassword"



Translating ChromePass to other languages
=========================================

In order to translate ChromePass to other language, follow the
instructions below:
1. Run ChromePass with /savelangfile parameter:
   ChromePass.exe /savelangfile
   A file named ChromePass_lng.ini will be created in the folder of
   ChromePass utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run ChromePass, and all
   translated strings will be loaded from the language file.
   If you want to run ChromePass without the translation, simply rename
   the language file, or move it to another folder.



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



Feedback
========

If you have any problem, suggestion, comment, or you found a bug in my
utility, you can send a message to nirsofer@yahoo.com
