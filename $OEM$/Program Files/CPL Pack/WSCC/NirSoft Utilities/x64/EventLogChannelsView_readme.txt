


EventLogChannelsView v1.13
Copyright (c) 2016 - 2017 Nir Sofer
Web site: http://www.nirsoft.net



Description
===========

EventLogChannelsView is a simple tool for Windows 10/8/7/Vista that shows
the list of all event log channels on your system, including the channel
name, event log filename, enabled/disabled status, current number of
events in the channel, and more...
It also allows you to easily make some actions on multiple channels at
once: enable/disable channels, set their maximum file size, and clear all
events stored in the channels.



System Requirements
===================

This utility works on any version of Windows, starting from Windows Vista
and up to Windows 10. Both 32-bit and 64-bit systems are supported.
Windows XP and older systems are not supported.



Versions History
================


* Version 1.13:
  o Added option to choose another font (name and size) to display in
    the main window.

* Version 1.12:
  o Added 'Quick Filter' feature (View -> Use Quick Filter or
    Ctrl+Q). When it's turned on, you can type a string in the text-box
    added under the toolbar and EventLogChannelsView will instantly
    filter the event log channels, showing only lines that contain the
    string you typed.

* Version 1.11:
  o Added 'Set Retention/Backup Mode' to the context menu.

* Version 1.10:
  o You can now set the retention/backup mode of the selected
    channels (File -> Set Retention/Backup Mode): 'Overwrite events as
    needed' , 'Archive the log when full', or 'Do not overwrite events'.

* Version 1.05:
  o Added 'Hide Channels With 0 Events' option.

* Version 1.00 - First release.



Start Using EventLogChannelsView
================================

EventLogChannelsView doesn't require any installation process or
additional DLL files. In order to start using it, simply run the
executable file - EventLogChannelsView.exe
After running EventLogChannelsView, the main window displays the list of
all event log channels currently available on your system. If you want to
connect a remote computer on your network, press F7 (Choose Data Source),
choose to load the event channels from a remote computer and type the
computer name.

You can select one or more channels and then disable them (F2), enable
them (F3), set their maximum file size or clear all events stored in the
channel. You can use the 'Save Selected Items' option to export the
channels list to html/xml/csv/tab-delimited file.



Columns Description
===================


* Channel Name: Name of the event log channel.
* Publisher: Name of the channel publisher.
* Filename: Name of the event log filename ( .evtx and .etl files)
* Full Path: Full path of the event log filename
* Enabled: Displays 'Yes' if the event log channel is enabled and 'No'
  if it's disabled.
* Classic: Displays 'Yes' if it's a classic event log existed in older
  versions of Windows (Application, System, Security)
* Maximum Size: Maximum size of the event log file in KB.
* File Reached Maximum Size: Displays 'Yes' if the file size reached
  the maximum file size (As displayed in the 'Maximum Size' column)
* File Modified Time: Modified time of the event log file.
* File Created Time: Created time of the event log file.
* File Size: Size of the event log file.
* Channel Type: Type of channel - Admin, Analytic, Debug, or
  Operational.
* Channel Isolation: Isolation mode of the channel - System,
  Application, or Custom.
* Events Count: Current number of events stored in this event log
  channel.
* Oldest Record Number: The oldest record number stored in this event
  log channel.
* AutoBackup Mode: If this value is 'Yes', the log will be backed up
  automatically when it reaches the maximum size.
* Retention Mode: If an event log reaches its maximum size and the
  Retention Mode is 'Yes', existing events are retained and incoming
  events are discarded. If the Retention Mode is 'No', incoming events
  overwrite the oldest events in the log.



Command-Line Options
====================



/stext <Filename>
Save the event log channels into a simple text file.

/stab <Filename>
Save the event log channels into a tab-delimited text file.

/scomma <Filename>
Save the event log channels into a comma-delimited text file (csv).

/stabular <Filename>
Save the event log channels into a tabular text file.

/shtml <Filename>
Save the event log channels into HTML file (Horizontal).

/sverhtml <Filename>
Save the event log channels into HTML file (Vertical).

/sxml <Filename>
Save the event log channels into XML file.

/sort <column>
This command-line option can be used with other save options for sorting
by the desired column. The <column> parameter can specify the column
index (0 for the first column, 1 for the second column, and so on) or the
name of the column, like "Publisher" and "Channel Name". You can specify
the '~' prefix character (e.g: "~Maximum Size") if you want to sort in
descending order. You can put multiple /sort in the command-line if you
want to sort by multiple columns.





Translating EventLogChannelsView to other languages
===================================================

In order to translate EventLogChannelsView to other language, follow the
instructions below:
1. Run EventLogChannelsView with /savelangfile parameter:
   EventLogChannelsView.exe /savelangfile
   A file named EventLogChannelsView_lng.ini will be created in the
   folder of EventLogChannelsView utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run EventLogChannelsView, and all
   translated strings will be loaded from the language file.
   If you want to run EventLogChannelsView without the translation,
   simply rename the language file, or move it to another folder.



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
