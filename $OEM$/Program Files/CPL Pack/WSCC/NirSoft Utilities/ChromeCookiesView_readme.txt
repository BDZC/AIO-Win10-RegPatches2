


ChromeCookiesView v1.46
Copyright (c) 2011 - 2017 Nir Sofer
Web site: http://www.nirsoft.net



Description
===========

ChromeCookiesView is an alternative to the standard internal cookies
viewer of Google Chrome Web browser. it displays the list of all cookies
stored by Google Chrome Web browser, and allows you to easily delete
unwanted cookies. It also allows you export the cookies into
text/csv/html/xml file.
For every cookie, the following information is displayed: Host Name,
Path, Name, Value, Secure (Yes/No), HTTP Only Cookie (Yes/No), Last
Accessed Time, Creation Time, Expiration Time.



System Requirements
===================


* This utility works on any version of Windows, starting from Windows
  2000 and with any version of Google Chrome.



System Requirements
===================


* Version 1.46:
  o Added 'Auto Size Columns+Headers' option.

* Version 1.45:
  o Added 'Decrypt cookies from external drive' option (In 'Advanced
    Options' window). In order to decrypt the cookies from external
    drive, you have to specify the Protect folder of Windows (e.g:
    F:\Users\user1\AppData\Roaming\Microsoft\Protect ) and the login
    password of the user.

* Version 1.40:
  o Added option to specify the cookies file from command-line, for
    example:
    ChromeCookiesView.exe /CookiesFile "c:\temp\cookies"
  o Added Auto-Complete support for the cookies file text-box.

* Version 1.35:
  o Added 'Quick Filter' feature (View -> Use Quick Filter or
    Ctrl+Q). When it's turned on, you can type a string in the text-box
    added under the toolbar and ChromeCookiesView will instantly filter
    the cookies, showing only lines that contain the string you typed.

* Version 1.30:
  o Added option to save in cookies.txt format (In File -> Save
    Selected Items option)
  o Added /scookiestxt command-line option to save in cookies.txt
    format.

* Version 1.25:
  o Added new buttons to easily choose the cookies file of
    Chrome-base Web browsers: 'Vivaldi Cookies File', 'Yandex Cookies
    File' (Advanced Options window).

* Version 1.20:
  o Fixed ChromeCookiesView to display the value of encrypted cookies.

* Version 1.15:
  o Fixed to work properly with the latest version of Chrome.

* Version 1.12:
  o Added 'Opera Cookies File' button to the 'Advanced Options'
    window, which allows you to easily use this tool to view the cookies
    of Opera Web browser. (Opera is now based on the code of Chrome Web
    browser...)
  o Fixed the 'Default Cookies File' button in the 'Advanced Options'
    window.

* Version 1.11:
  o Fixed bug: ChromeCookiesView deleted cookies that are not
    selected if they had the same creation time.

* Version 1.10:
  o Added secondary sorting support: You can now get a secondary
    sorting, by holding down the shift key while clicking the column
    header. Be aware that you only have to hold down the shift key when
    clicking the second/third/fourth column. To sort the first column you
    should not hold down the Shift key.
  o Fixed to display date/time values according to daylight saving
    time settings.
  o Fixed a crash problem occurred in some systems.

* Version 1.05 - Added option to copy the selected cookies in Netscape
  cookies.txt format (Ctrl+N)
* Version 1.02 - Fixed a crash problem that occurred when loading the
  cookies.
* Version 1.01 - Fixed bug: The date/time columns displayed incorrect
  values.
* Version 1.00 - First release.



Using ChromeCookiesView
=======================

ChromeCookiesView doesn't require any installation process or additional
DLL files. In order to start using it, simply run the executable file -
ChromeCookiesView.exe
The main window of ChromeCookiesView displays the list of all cookies
stored in your Google Chrome Web browser. You can select one or more
chookie entries, and then use the 'Delete Selected Cookies' (Ctrl+Del) to
delete them.
If you want to view the cookies stored in another cookies file, go to
'Advanced Options' window (F9) and choose the desired cookies file.



Command-Line Options
====================



/CookiesFile <Filename>
Specifies the cookies file to load from command-line, for example:
ChromeCookiesView.exe /CookiesFile "c:\temp\Chrome\cookies"

/stext <Filename>
Save the cookies list into a regular text file.

/stab <Filename>
Save the cookies list into a tab-delimited text file.

/scomma <Filename>
Save the cookies list into a comma-delimited text file (csv).

/stabular <Filename>
Save the cookies list into a tabular text file.

/shtml <Filename>
Save the cookies list into HTML file (Horizontal).

/sverhtml <Filename>
Save the cookies list into HTML file (Vertical).

/sxml <Filename>
Save the cookies list into XML file.

/scookiestxt <Filename>
Save the cookies list in cookies.txt format.

/sort <column>
This command-line option can be used with other save options for sorting
by the desired column. If you don't specify this option, the list is
sorted according to the last sort that you made from the user interface.
The <column> parameter can specify the column index (0 for the first
column, 1 for the second column, and so on) or the name of the column,
like "Host Name" and "Path". You can specify the '~' prefix character
(e.g: "~Secure") if you want to sort in descending order. You can put
multiple /sort in the command-line if you want to sort by multiple
columns.

Examples:
ChromeCookiesView.exe /shtml "f:\temp\cookies.html" /sort 2 /sort ~1
ChromeCookiesView.exe /shtml "f:\temp\cookies.html" /sort "Host Name"
/sort "Path"

/nosort
When you specify this command-line option, the list will be saved without
any sorting.



Translating ChromeCookiesView to other languages
================================================

In order to translate ChromeCookiesView to other language, follow the
instructions below:
1. Run ChromeCookiesView with /savelangfile parameter:
   ChromeCookiesView.exe /savelangfile
   A file named ChromeCookiesView_lng.ini will be created in the folder
   of ChromeCookiesView utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run ChromeCookiesView, and all
   translated strings will be loaded from the language file.
   If you want to run ChromeCookiesView without the translation, simply
   rename the language file, or move it to another folder.



License
=======

This utility is released as freeware. You are allowed to freely use it at
your home or in your company. However, you are not allowed to make profit
from this software or to charge your customers for recovering their
passwords with this software, unless you got a permission from the
software author.
You are also allowed to freely distribute this utility via floppy disk,
CD-ROM, Internet, or in any other way, as long as you don't charge
anything for this. If you distribute this utility, you must include all
files in the distribution package, without any modification !



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
