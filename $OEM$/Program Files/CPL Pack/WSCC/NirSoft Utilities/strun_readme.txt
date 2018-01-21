


StartupRun v1.22
Copyright (c) 2003 - 2004 Nir Sofer



Description
===========

The StartupRun utility displays the list of all applications that are
loaded automatically when Windows boots. For each application, additional
information is displayed (Product Name, File Version, Description, and
Company Name), in order to allow you to easily identify the applications
that are loaded at Windows startup. if StartupRun identifies a spyware or
adware program that runs at startup, it automatically paints it in pink
color. In addition, you are allowed to Edit, disable, enable and delete
the selected startup entries. You can also save the list of startup items
into a text or html files, and even add a new startup entry to the
Registry.



Versions History
================




07/11/2004
1.22

* New column: File Created Date


28/05/2004
1.21

* Fixed bug: All items under the startup folder are now displayed, not
  only shortcut files.
* The 'Copy Selected Items' option now copies the information in
  tab-delimited format, so you can instantly paste it to Excel.
* Minor changes in HTML report.


07/11/2003
1.20

* Delete action in popup menu.
* Choose columns dialog-box.
* Auto-size columns.
* Save as XML file.
* Save files according to the columns order that you choose.
* Some small bugs have been fixed.


22/07/2003
1.10

* Added support for Browser Helper Objects
* Save as HTML file - Vertical.
* HTML Reports
* Gator and some other adware/spyware programs are painted in pink if
  they are recognized by StartupRun utility.


29/06/2003
1.00
First Release.



System Requirements
===================

This utility can work in all 32-bit Windows operating systems: Windows
9x, Windows NT, Windows 2000, and Windows XP.



Using StartupRun
================

This utility is standalone executable, and it doesn't require any
installation process or additional DLLs. Just put the executable
(strun.exe) in any folder you want and run it.
Immediately after you run it, StartupRun displays the list of programs
that are loaded when Windows boots.
You can select one or more startup items, and do the following operations:
* Save Selected Items: Save the selected items into text or html files.
* Copy Selected Items: Copy the details of the selected items to the
  clipboard.
* Enable/Disable Selected Items: If startup item is disabled, the
  application won't be executed at Windows startup.
* Delete Selected Items: Do not use this option, unless you're 100%
  sure that you don't need the selected items anymore !!
* Edit Selected Item: Edit the command of the selected item. If the
  item is in the Startup folder, the properties window of the shortcut
  will be displayed.
* Execute Command: Execute the command of the selected item.
* File Properties: View the properties of the executable file that is
  loaded on at Windows startup.
* Open File Folder: Open the folder of the executable file that is
  loaded on at Windows startup.
* HTML Report: View the selected startup items in your browser.



About Browser Helper Objects (BHOs)
===================================

Browser Helper Object is an ActiveX object that automatically created
when you run the Internet Explorer browser. It usually run as hidden
component in the background, and It has full access to all events and
properties of your browser. Some applications, like "Download
Accelerator" (DAP), use this feature for "good" purpose - in order to
make an integration with Internet Explorer browser. However, there are
some spywares and adwares that install themselves as Browser Helper
Object without your permission, and use it to spy your browsing habits or
to bother you with unwanted ad popups. Moreover, BHO also might crash
your browser, or to cause it to run slower than normal.
Starting from version 1.10, StartupRun displays that list of "Browser
Helper Objects" that are installed on your system. If there is any
"Browser Helper Object" that you don't know what it does, I recommend you
to disable it, especially if you experience some strange browsing
problems. The "Company" and the "Product Name" fields can help you to
identify the application behind the installed BHO.



Command-Line Options
====================



/stext <Filename>
Save the list of all startup items into a regular text file.

/stab <Filename>
Save the list of all startup items into a tab-delimited text file.

/stabular <Filename>
Save the list of all startup items into a tabular text file.

/shtml <Filename>
Save the list of all startup items into HTML file (Horizontal).

/sverhtml <Filename>
Save the list of all startup items into HTML file (Vertical).

/sxml <Filename>
Save the list of all startup items to XML file.

/NoLoadSettings
Run StartupRun without loading your last settings. (window position,
columns size, etc. )



License
=======

This utility is released as freeware for personal and non-commercial use.
You are allowed to freely distribute this utility via floppy disk,
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


