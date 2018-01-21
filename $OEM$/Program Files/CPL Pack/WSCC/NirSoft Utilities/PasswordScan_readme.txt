


Password Security Scanner v1.20
Copyright (c) 2011 - 2013 Nir Sofer
Web site: http://www.nirsoft.net



Description
===========

This utility scans the passwords stored by popular Windows applications
(Microsoft Outlook, Internet Explorer, Mozilla Firefox, and more...) and
displays security information about all these passwords. The security
information of every stored password includes the total number of
characters, number of numeric characters, number of lowercase/uppercase
characters, number of repeating characters, and password strength. You
can use this tool to determine whether the passwords used by other users
are secured enough, without watching the passwords themselves.



System Requirements
===================

This utility works on any version of Windows, starting from Windows 2000
and up to Windows 7.



Supported Applications
======================

Currently, Password Security Scanner scans the passwords of the following
applications:
* Internet Explorer 4.0 - 6.0
* Internet Explorer 7.0 - 10.0
* Mozilla Firefox (All Versions)
* Google Chrome
* Dialup/VPN passwords of Windows
* MSN/Windows Messenger
* Microsoft Outlook
* Windows Live Mail
* SeaMonkey Web browser.

Support for more applications will be added in future versions.



Known Limitations
=================


* Password Security Scanner cannot scan the passwords of Firefox if
  they are protected by a master password.
* The dialup passwords of Windows can only be detected if you run
  Password Security Scanner with administrator privileges.



Versions History
================


* Version 1.20:
  o Added support for SeaMonkey Web browser.

* Version 1.19:
  o Fixed to work with Firefox 22.

* Version 1.18:
  o Improved the password decryption on IE10 / Windows 7.

* Version 1.17:
  o Added support for the passwords of Internet Explorer 10

* Version 1.16:
  o Added support for Outlook 2013.

* Version 1.15:
  o Added support for Chrome Web browser.

* Version 1.10:
  o Password Security Scanner now extracts the passwords from all
    profiles of Firefox Web browser and reads the profiles.ini file of
    Firefox to get the correct profile folders.
  o Added 'Mark Odd/Even Rows' option, under the View menu. When it's
    turned on, the odd and even rows are displayed in different color, to
    make it easier to read a single line.

* Version 1.07:
  o Added 'Auto Size Columns+Headers' option, which allows you to
    automatically resize the columns according to the row values and
    column headers.
  o Fixed issue: The properties and 'Advanced Options' windows opened
    in the wrong monitor, on multi-monitors system.

* Version 1.06:
  o Fixed bug: Password Security Scanner failed to scan the password
    of Firefox if the password file contained non-English characters.

* Version 1.05:
  o Added 'Stop' menu item displayed while scanning the passwords,
    which allows you to stop the passwords scanning process.

* Version 1.00 - First release.



Start Using Password Security Scanner
=====================================

Password Security Scanner doesn't require any installation process or
additional dll files. In order to start using it, simply run the
executable file - PasswordScan.exe
After you run PasswordScan.exe, Password Security Scanner scans the
passwords stored on your system, and then displays the security
information of all found passwords inside the main window.
You can also go to the 'Advanced Options' window (F9) and choose to
displays only insecure passwords with low number of characters or with
low password strength value.



Columns Description
===================


* Item Name: The name of the item. For Web site passwords, the address
  of the Web site is displayed. For email passwords, the email address is
  displayed.
* Password Type: The type of the password: Web Browser, Messenger,
  Email, or Dialup/VPN.
* Application: The application that stores the specified password item:
  Microsoft Outlook, Firefox, Internet Explorer, and so on...
* User Name: The user name that is used with the specified password
  item.
* Password Length: The total number of characters in the password.
* Numeric: The total number of numeric characters (0 - 9) in the
  password.
* Lowercase: The total number of lowercase characters (a - z) in the
  password.
* Uppercase: The total number of uppercase characters (A - Z) in the
  password.
* Other Ascii: The total number of non-alphanumeric characters in the
  password.
* Non-English: The total number of non-English characters in the
  password.
* Repeating: The total number of repeating characters in the password.
  For example, if the password is abcdab, then the 'Repeating' value will
  be 2, because both a and b characters appears more than once.
* Password Strength: The strength of the password, calculated according
  to number of parameters, including the total number of characters,
  number of repeating characters, type of characters used in the
  passwords, and more...
  The numeric value displayed in this column represents the strength of
  the password, according to the following list:
  o 1 - 7: Very Weak
  o 8 - 14: Weak
  o 15 - 25: Medium
  o 26 - 45: Strong
  o 46 and above: Very Strong

* Windows User: The Windows user that owns the password. For most
  passwords, this column will display the current logged-on user.
  However, for Dialup passwords of Windows, you might also see the
  passwords of other Windows users, and in those cases, this column will
  display the Windows users that created the dialup password.



Translating Password Security Scanner to other languages
========================================================

In order to translate Password Security Scanner to other language, follow
the instructions below:
1. Run Password Security Scanner with /savelangfile parameter:
   PasswordScan.exe /savelangfile
   A file named PasswordScan_lng.ini will be created in the folder of
   PasswordScan utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run PasswordScan.exe, and all
   translated strings will be loaded from the language file.
   If you want to run PasswordScan without the translation, simply rename
   the language file, or move it to another folder.



License
=======

This utility is released as freeware. You are allowed to freely
distribute this utility via floppy disk, CD-ROM, Internet, or in any
other way, as long as you don't charge anything for this and you don't
sell it or distribute it as a part of commercial product. If you
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
