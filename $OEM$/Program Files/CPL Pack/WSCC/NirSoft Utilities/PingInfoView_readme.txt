


PingInfoView v1.70
Copyright (c) 2008 - 2017 Nir Sofer
Web site: http://www.nirsoft.net



Description
===========

PingInfoView is a small utility that allows you to easily ping multiple
host names and IP addresses, and watch the result in one table. It
automatically ping to all hosts every number of seconds that you specify,
and displays the number of succeed and failed pings, as well as the
average ping time. You can also save the ping result into text/html/xml
file, or copy it to the clipboard.



System Requirements
===================

This utility works under Windows 2000, Windows XP, Windows Server 2003,
Windows Server 2008, Windows Vista, Windows 7, Windows 8, and Windows 10.
Older versions of Windows are not supported.



Versions History
================


* Version 1.70
  o Automatic export feature: You can now choose to generate a new
    filename on every session (When you close the program and then run it
    again) or on every save. You can also generate a filename with
    date/time (e.g: ping20170925112130.csv) instead of numeric counter.

* Version 1.65
  o The 'Consecutive Failed Count' column now keeps the last value
    when pings are ok again.
  o Added 'Max Consecutive Failed Count' column which displays the
    maximum number of consecutive failed pings and 'Max Consecutive
    Failed Time' which displays the date/time that the maximum number of
    consecutive failed pings was detected.
  o Added 'Add only failed pings' option to the 'Lower Pane Mode' in
    'Advanced Options' window.

* Version 1.60
  o Added option to automatically export the current pings status to
    a file (csv/tab-delimited/html/xml) every xx seconds (In 'Advanced
    Options' window).
  o Added option to execute a command on ping failure.
  o Added option to specify the number of consecutive failed pings to
    trigger the sound/beep alert and the failed command executaion.
  o Added 'Consecutive Failed Count' column.

* Version 1.55
  o Added option to choose the type of beep/sound to use when a ping
    fails (In 'Advanced Options' window).
  o Added option to add all ping results or only the failed pings
    into a comma-delimited or tab-delimited log file (In 'Advanced
    Options' window).
  o Added option to stop adding the ping results into the lower pane
    (In 'Advanced Options' window). It's recommended to use this option
    if you have large amount of pings, because the accumulation of ping
    results consumes a lot of memory and eventually causes PingInfoView
    to crash.
  o When 'Use IP-Host Description format' option is turned on,
    PingInfoView now adds the IP address even if it doesn't have a
    description.

* Version 1.51
  o On IP-Host format, if you put '#' in the beginning of the line,
    PingInfoView will consider it as a remark line and ignore it.

* Version 1.50
  o Added option to specify the ping size (The default is 32 bytes).
  o Added 'Order' column, which specifies the original order of
    hosts, as you typed in the 'Ping Options' window.

* Version 1.45
  o Added option to control the maximum number of concurrent pings
    (In 'Advanced Options' window - F9). The default value is 500.
  o Fixed bug: PingInfoView failed to remember the last size/position
    of the main window if it was not located in the primary monitor.

* Version 1.43
  o Fixed bug: When using PingInfoView from command-line,
    /IPHostDescFormat and some other command-line options failed to work
    properly.

* Version 1.42
  o Fixed issue: When editing PingInfoView_hosts.txt with external
    editor that adds Byte order mark to the file, PingInfoView failed to
    handle the first host name.

* Version 1.41
  o Added 'Sort On Every Update' option.

* Version 1.40
  o Added 'Auto Scroll Lower Pane' option.
  o Fixed bug: In some circumstances, when using 'Copy Selected
    Items' on the lower pane, PingInfoView copied the wrong items or
    crashed.
  o Improved the ability of PingInfoView to handle hundreds or
    thousants of IP addresses in the same time.

* Version 1.36
  o Added 'Auto Size Columns+Headers' option, which allows you to
    automatically resize the columns according to the row values and
    column headers.
  o Fixed issue: The properties and the options windows opened in the
    wrong monitor, on multi-monitors system.

* Version 1.35
  o Added a lower pane that lists the result of all pings for the
    selected IP address in the upper pane. (You can disable this feature
    by unchecking the 'Show Lower Pane' option under the Options menu)

* Version 1.30
  o PingInfoView now resolves the IP addresses and displays the
    result under the 'Host Name' column.
  o Added 'Minimum Ping Time' and 'Maximum Ping Time' columns.

* Version 1.28
  o Fixed the sorting problem of 'IP Address' and 'Reply IP Address'
    column.

* Version 1.27
  o Made another workaround that hopefully will solve the mysterious
    problem that people report where PingInfoView stop pinging after
    hours of continuous work. PingInfoView now check the pinging status,
    and if the pings stoped from some reason, PingInfoView should start
    them again.

* Version 1.26
  o Added command-line options to make a single ping test and save it
    to html/text/xml/csv file.
  o Fixed some problems with the xml file.

* Version 1.25
  o New column: Last Succeed On.
  o New column: Last Failed On.
  o The % Failed value now shows the value in accuracy of 0.01%
    instead of interger values in previous versions.

* Version 1.20
  o New column: % Failed.
  o New option: Beep On Failed Pings.
  o New option: Put Icon On Tray.

* Version 1.18
  o Fixed bug: The size of addresses list text-box was limited to 32
    KB.

* Version 1.17
  o Added new option: Start pinging immediately without displaying
    this dialog-box.

* Version 1.16
  o Added more accelerator keys.

* Version 1.15
  o Added support for IP Range (For example:
    192.168.0.10-192.168.0.20)
  o Added support for IP-Host Description format. (See below)
  o Fixed bug: PingInfoView continued to ping even when 'Ping
    every...' option is unchecked.

* Version 1.10
  o Added command-line support.
  o Added 'Always On Top' option.
  o Added Drag & Drop support - You can drag a text file containing
    IP addresses into the main window of PingInfoView.
  o Added 'Start Pinging' option. (Start again after you previously
    used the Stop option)
  o Added 'Reset' option.
  o Added 'Load Addresses From File' option.

* Version 1.06
  o Fixed sorting problems in some columns.

* Version 1.05
  o Automatically save the hosts list and load it in the next time
    that you use PingInfoView utility.
  o Fixed the IP address sorting.
  o The 'Ping Options' dialog-box is now resizable.

* Version 1.01 - Fixed bug: The main window lost the focus when the
  user switched to another application and then returned back to
  PingInfoView.
* Version 1.00 - First release.



Using PingInfoView
==================

PingInfoView doesn't require any installation process or additional dll
files. In order to start using it, simply run the executable file
(PingInfoView.exe), type the host names and IP addresses that you want to
ping, and click the 'Ok' button to start pinging.



Known Issues
============


* By default, PingInfoView accumuates the result of all pings in memory
  for displaying the pings result in the lower pane. If you use
  PingInfoView to ping in very high rate (e.g: every 1 second) and leave
  it to ping for many hours, the accumuated ping result will consume a
  lot of memory, and eventually PingInfoView will respond very slowly or
  crash.
  In order to avoid this problem, you should go to the 'Advanced Options'
  window (F9) and change the 'Lower Pane Mode' to "Don't add pings to
  lower pane" or "Add only failed pings". If you want to keep the result
  of all pings, you can use the 'Add the ping results into the following
  log file' option for storing the result of all pings into a file. In
  this way, PingInfoView will not consume a lot of memory and it'll
  continue to work properly for hours and days.
* If you ping to a lot of hosts concurrently, PingInfoView may return a
  failed result to some of the hosts, even if the hosts are ok. In order
  to solve this issue, go to the 'Advanced Options' and decrease the
  maximum number of concurrent pings.



Use IP-Host Description format
==============================

When this option is selected, you should specify the IP addresses list in
the following format:

192.168.1.10 Main Server
192.168.1.11 Host 01
192.168.1.12 Host 02
#192.168.1.14 Host 03

The description of each IP address is automatically added to the
description column. If you add '#' character in the beginning of the
line, PingInfoView will ignore it.



Command-Line Options
====================



/stext <Filename>
Make a single ping test and save the result into a simple text file.

/stab <Filename>
Make a single ping test and save the result into a tab-delimited text
file.

/scomma <Filename>
Make a single ping test and save the result into a comma-delimited text
file (csv).

/stabular <Filename>
Make a single ping test and save the result into a tabular text file.

/shtml <Filename>
Make a single ping test and save the result into HTML file (Horizontal).

/sverhtml <Filename>
Make a single ping test and save the result into HTML file (Vertical).

/sxml <Filename>
Make a single ping test and save the result into XML file.

/loadfile <filename>
Load the specified filename that contains host names and/or IP addresses.
You can use this command-line option in conjunction with the above save
commands (/scomm, /stab, and so on)

/PingTimeout <value>
Specifies the ping timeout value, in ms.

/PingEvery <0 | 1>
Specifies whether to ping every xx seconds (0 - No, 1 - Yes)

/PingEverySeconds <value>
Specifies the number of seconds to wait between the pings.

/IPHostDescFormat <0 | 1>
Specifies whether to use the IP-Host Description mode (0 - No, 1 - Yes)



Translating PingInfoView to other languages
===========================================

In order to translate PingInfoView to other language, follow the
instructions below:
1. Run PingInfoView with /savelangfile parameter:
   PingInfoView.exe /savelangfile
   A file named PingInfoView_lng.ini will be created in the folder of
   PingInfoView utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run PingInfoView, and all
   translated strings will be loaded from the language file.
   If you want to run PingInfoView without the translation, simply rename
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
