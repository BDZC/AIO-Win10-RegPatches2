


FullEventLogView v1.25
Copyright (c) 2016 - 2017 Nir Sofer
Web site: http://www.nirsoft.net



Description
===========

FullEventLogView is a simple tool for Windows 10/8/7/Vista that displays
in a table the details of all events from the event logs of Windows,
including the event description. It allows you to view the events of your
local computer, events of a remote computer on your network, and events
stored in .evtx files. It also allows you to export the events list to
text/csv/tab-delimited/html/xml file from the GUI and from command-line.



System Requirements
===================

This utility works on any version of Windows, starting from Windows Vista
and up to Windows 10. Both 32-bit and 64-bit systems are supported. For
Windows XP and older systems, you can use the MyEventViewer tool.



FullEventLogView vs MyEventViewer
=================================

MyEventViewer is a very old tool originally developed for Windows
XP/2000/2003. Starting from Windows Vista, Microsoft created a new event
log system with completely new programming interfaces. The old
programming interface still works even on Windows 10, but it cannot
access the new event logs added on Windows Vista and newer systems.
MyEventViewer uses the old programming interface, so it cannot display
many event logs added on Windows 10/8/7/Vista. FullEventLogView uses the
new programming interface, so it displays all events.



Versions History
================


* Version 1.25:
  o Added 'Show Event Strings In Columns' option (Under the Options
    menu). When it's turned on, 10 new event string columns are added to
    the main table ('String 1', 'String 2', 'String 3'...). These columns
    display the strings from the event decsription and you can click the
    column header in order to sort the events according to the event
    strings.

* Version 1.22:
  o Fixed bug: On some systems, FullEventLogView missed some of the
    events when using a time filter.

* Version 1.21:
  o Added /cfg command-line option, which instructs FullEventLogView
    to use a config file in another location instead if the default
    config file, for example:
    FullEventLogView.exe /cfg "%AppData%\FullEventLogView.cfg"

* Version 1.20:
  o Added option to filter according to strings of the event
    description (In 'Advanced Options' window).
  o Added 'Quick Filter' feature (View -> Use Quick Filter or
    Ctrl+Q). When it's turned on, you can type a string in the text-box
    added under the toolbar and FullEventLogView will instantly filter
    the events table, showing only lines that contain the string you
    typed.
  o Fixed the lower pane to switch focus when pressing tab key.

* Version 1.12:
  o Added option to specify time range in GMT ('Advanced Options'
    window).
  o Fix bug: When using /SaveDirect command-line option, the file was
    always saved according to the default encoding, instead of using the
    selected encoding in Options -> Save File Encoding.

* Version 1.11:
  o Fixed bug: the process of exporting large amount of event log
    items from command-line was very slow, even when using /SaveDirect.

* Version 1.10:
  o Added option to automatically read archive log files (In 'Choose
    Data Source' window). This option works only when you run
    FullEventLogView as administrator.

* Version 1.06:
  o Fixed FullEventLogView to display event description properly when
    reading .evtx files from shadow copy (e.g:
    \\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy3\Windows\System32\winevt
    \Logs )
  o Fixed bug: FullEventLogView displayed error message when trying
    to read .etl files.

* Version 1.05:
  o FullEventLogView now displays an error message if it fails to
    load events from external evtx file or from remote computer.
  o Added 'Choose Data Source' icon to the toolbar.

* Version 1.00 - First release.



Start Using FullEventLogView
============================

FullEventLogView doesn't require any installation process or additional
DLL files. In order to start using it, simply run the executable file -
FullEventLogView.exe
After running FullEventLogView, the main window loads and displays all
events from the last 7 days. You can change the default 7-days time
filter and set other filters by using the 'Advanced Options' window (F9)

If you want to load the events from remote computer on your network or
from event log files (.evtx), you should use the 'Choose Data Source'
window (F7).



Lower Pane Display Mode
=======================

When you select an event in the upper pane, the lower pane displays the
details of the selected event, depending on the display mode that you
choose (Options -> Lower Pane Display Mode):
* Show Event Description: Displays the full description of the event.
  Some event descriptions are too long for watching them in the
  'Description' column, so you can view the long event description in the
  lower pane.
* Show Event Data + Description: Displays the full description of the
  event and additional data stored in this event.
* Show Event XML: Displays the full XML of the event.



Refresh (F5) And Smooth Refresh (F8)
====================================

FullEventLogView provides 2 types of refresh actions:
* Refresh (F5): Reloads the entire event log
* Smooth Refresh (F8): FullEventLogView only adds the new event items
  that have been created since the previous refresh.



Auto Refresh Mode
=================

When Auto Refresh mode is turned on (Options -> Auto Refresh -> Every x
seconds), FullEventLogView automatically executes a smooth refresh
according to the refresh interval you choose, so you'll be able to see
when a new event log item is created.



Run As Administrator
====================

By default, FullEventLogView doesn't request elevation (Run As
Administrator). If you want to watch events thar are only available with
administrator privilege (like the security log), you have to run
FullEventLogView as administrator by press Ctrl+F11.



Command-Line Options
====================




/ChannelFilter [1 - 3]
/EventIDFilter [1 - 3]
/ProviderFilter [1 - 3]
/ChannelFilterStr [Filter String]
/EventIDFilterStr [Filter String]
/ProviderFilterStr [Filter String]
.
.
.
You can use any variable inside the .cfg file in order to set the
configuration from command line, here's some examples:

In order to show only events with Event ID 8000 and 8001:
FullEventLogView.exe /EventIDFilter 2 /EventIDFilterStr "8000,8001"

In order show only events from Microsoft-Windows-Dhcp-Client/Admin
channel:
FullEventLogView.exe /ChannelFilter 2 /ChannelFilterStr
"Microsoft-Windows-Dhcp-Client/Admin"

In order to read events from .evtx files stored in c:\temp\logs :
FullEventLogView.exe /DataSource 3 /LogFolder "c:\temp\logs"
/LogFolderWildcard "*"

In order to read events from remote computer:
FullEventLogView.exe /DataSource 2 /ComputerName "192.168.0.70"

/cfg <Filename>
Start FullEventLogView with the specified configuration file. For example:
FullEventLogView.exe /cfg "c:\config\felv.cfg"
FullEventLogView.exe /cfg "%AppData%\FullEventLogView.cfg"

/stext <Filename>
Save the event log items into a simple text file.

/stab <Filename>
Save the event log items into a tab-delimited text file.

/scomma <Filename>
Save the event log items into a comma-delimited text file (csv).

/stabular <Filename>
Save the event log items into a tabular text file.

/shtml <Filename>
Save the event log items into HTML file (Horizontal).

/sverhtml <Filename>
Save the event log items into HTML file (Vertical).

/sxml <Filename>
Save the event log items into XML file.

/SaveDirect
Save the event log items in SaveDirect mode. For using with the other
save command-line options ( /scomma, /stab, /sxml, and so on...) When you
use the SaveDirect mode, the event log items are saved directly to the
disk, without loading them into the memory first. Be aware that the
sorting feature is not supported in SaveDirect mode.

/sort <column>
This command-line option can be used with other save options for sorting
by the desired column. The <column> parameter can specify the column
index (0 for the first column, 1 for the second column, and so on) or the
name of the column, like "Record ID" and "Event ID". You can specify the
'~' prefix character (e.g: "~Channel") if you want to sort in descending
order. You can put multiple /sort in the command-line if you want to sort
by multiple columns.





Translating FullEventLogView to other languages
===============================================

In order to translate FullEventLogView to other language, follow the
instructions below:
1. Run FullEventLogView with /savelangfile parameter:
   FullEventLogView.exe /savelangfile
   A file named FullEventLogView_lng.ini will be created in the folder of
   FullEventLogView utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run FullEventLogView, and all
   translated strings will be loaded from the language file.
   If you want to run FullEventLogView without the translation, simply
   rename the language file, or move it to another folder.



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
