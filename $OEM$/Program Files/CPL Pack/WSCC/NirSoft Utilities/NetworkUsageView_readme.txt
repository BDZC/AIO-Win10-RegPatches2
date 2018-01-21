


NetworkUsageView v1.07
Copyright (c) 2017 Nir Sofer
Web site: http://www.nirsoft.net



Description
===========

NetworkUsageView extracts and displays the network usage information
stored in the SRUDB.dat database of Windows 8 and Windows 10. The network
usage data is collected every hour by Windows operating systems and
includes the following information: The name and description of the
service or application, the name and SID of the user, the network
adapter, and the total number of bytes sent and received by the specified
service/application.



System Requirements
===================

This tools works on Windows 8 and Windows 10. Previous versions of
Windows are not supported because the operating system doesn't collect
the network usage information.



Versions History
================


* Version 1.07:
  o Added new options to the 'Quick Filter' feature.

* Version 1.06:
  o Added option to choose another font (name and size) to display in
    the main window.

* Version 1.05:
  o You can now use any variable inside the .cfg file as command-line
    parameter in order to set the configuration from command line, for
    example - the following command processes external SRUDB.dat database
    and exports the result into .csv file:
    NetworkUsageView.exe /LoadFrom 2 /ExternalFilename
    "c:\temp\SRUDB64.dat" /scomma c:\temp\nuv.csv

* Version 1.00 - First release.



Start Using NetworkUsageView
============================

NetworkUsageView doesn't require any installation process or additional
DLL files. In order to start using it, simply run the executable file -
NetworkUsageView.exe

After running NetworkUsageView - if the SRUDB.dat database file is locked
, NetworkUsageView will ask you whether you want to run it as
administrator in order to access the locked file. If the file is not
locked, NetworkUsageView will load it instantly.



'Advanced Options' Window
=========================

In the 'Advanced Options' window (F9), you can choose to load the
SRUDB.dat database from external drive or from a remote computer on your
network. Be aware that loading the network usage information from a
remote computer works only when the database file on the remote computer
is not locked.

You can also choose to load the network usage data from the last xx days
hours or from the specified date/time range.



NetworkUsageView Columns
========================


* Record ID: The ID of the record in the SRUDB.dat database.
* Timestamp: The date/time that this record was created.
* App Name: The name if the application or service.
* App Description: The description of application or service. If the
  'App Name' is .exe filename, the description is taken from the version
  resource of the .exe file. if the 'App Name' is a service, the
  description is taken from the description string of the service.
* User Name: The name of the user according to the user SID specified
  in the SRUDB.dat database. This field is empty when reading a file from
  external drive.
* User SID: SID of the user.
* Bytes Sent: Total number of bytes that the specifies app/service sent.
* Bytes Received: Total number of bytes that the specifies app/service
  received.
* Network Adapter: The name of the network adapter that was used to
  send/receive data (This field is empty for remote and external drive
  modes).



Command-Line Options
====================



/stext <Filename>
Save the network usage information into a simple text file.

/stab <Filename>
Save the network usage information into a tab-delimited text file.

/scomma <Filename>
Save the network usage information into a comma-delimited text file (csv).

/stabular <Filename>
Save the network usage information into a tabular text file.

/shtml <Filename>
Save the network usage information into HTML file (Horizontal).

/sverhtml <Filename>
Save the network usage information into HTML file (Vertical).

/sxml <Filename>
Save the network usage information into XML file.


/LoadFrom [1 - 3]
/ExternalFilename [External File]
/RemoteComputer [Computer Name]
.
.
.
You can use any variable inside the .cfg file as command-line parameter
in order to set the configuration from command line, For example:
NetworkUsageView.exe /LoadFrom 2 /ExternalFilename "c:\temp\SRUDB64.dat"
/scomma c:\temp\nuv.csv

NetworkUsageView.exe /LoadFrom 3 /RemoteComputer "192.168.0.50"



Translating NetworkUsageView to other languages
===============================================

In order to translate NetworkUsageView to other language, follow the
instructions below:
1. Run NetworkUsageView with /savelangfile parameter:
   NetworkUsageView.exe /savelangfile
   A file named NetworkUsageView_lng.ini will be created in the folder of
   NetworkUsageView utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run NetworkUsageView, and all
   translated strings will be loaded from the language file.
   If you want to run NetworkUsageView without the translation, simply
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
