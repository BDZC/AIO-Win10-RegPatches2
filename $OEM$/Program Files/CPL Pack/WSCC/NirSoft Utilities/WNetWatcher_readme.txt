


Wireless Network Watcher v2.15
Copyright (c) 2011 - 2017 Nir Sofer
Web site: http://www.nirsoft.net



Description
===========

Wireless Network Watcher is a small utility that scans your wireless
network and displays the list of all computers and devices that are
currently connected to your network.
For every computer or device that is connected to your network, the
following information is displayed: IP address, MAC address, the company
that manufactured the network card, and optionally the computer name.
You can also export the connected devices list into html/xml/csv/text
file, or copy the list to the clipboard and then paste into Excel or
other spreadsheet application.



System Requirements And Limitations
===================================


* This utility works on Windows 2000, Windows XP, Windows Server
  2003/2008, Windows Vista, Windows 7, Windows 8, and Windows 10.
* This utility can only scan a wireless network that you're currently
  connected to. It cannot scan other wireless networks.
* In rare cases, it's possible that Wireless Network Watcher won't
  detect the correct wireless network adapter, and then you should go to
  'Advanced Options' window (F9), and manually choose the correct network
  adapter.
* although this utility is officially designed for wireless networks,
  you can also use it to scan a small wired network.



Versions History
================


* Version 2.15
  o Automatic export feature: You can now choose to generate a new
    filename on every session (When you close the program and then run it
    again) or on every save. You can also generate a filename with
    date/time (e.g: wnw20170920123320.csv) instead of numeric counter.

* Version 2.13
  o Added 'Reset Selected Items Dates' option, which resets the
    'First Detected On' and 'Last Detected On' fields.

* Version 2.12
  o Fixed bug: On some systems with multiple network adapters,
    Wireless Network Watcher failed to automatically detect the active
    wireless network adapter.

* Version 2.11
  o Updated the internal MAC addresses database.

* Version 2.10
  o Added option to export the current network devices list to a file
    (csv/tab-delimited/html/xml) every xx seconds (In 'Advanced Options'
    window).

* Version 2.05
  o Fixed bug with 'Execute the following command when a new device
    is detected': command was executed for previously detected device
    even when the 'only if the device is detected in the first time'
    option was turned on.
  o Fixed bug: 'Detection Count' did not work when the 'Show All
    Previous Devices' option was turned on.

* Version 2.03
  o Added 'Advanced Options' icon to the toolbar.

* Version 2.02
  o Updated the internal MAC addresses database.

* Version 2.01
  o The connect name is now displayed in the network adapters list.
    ('Advanced Options' window)

* Version 2.00
  o Added option to delete devices from the list (File -> Delete
    Selected Items )

* Version 1.99
  o Added file-AutoComplete feature to the fields that require to
    type a filename, inside the 'Advanced Options' window.

* Version 1.98
  o Fixed bug: The 'execute command on disconnect' and the 'Tray
    Balloon On Disconnected Device' options worked only when 'Beep On
    Disconnected Device' option was turned on.

* Version 1.97
  o Added 'Automatic Sort On Every Scan' option. When it's turned on,
    Wireless Network Watcher sorts the devices list on every scan,
    according to the last sorting you chose by clicking the column header.

* Version 1.96
  o Added 'Save All Items'.

* Version 1.95
  o Added 'Show All Previous Devices' option (Under the Options menu)
    to display all devices that Wireless Network Watcher detected in the
    past (The information is stored inside the .cfg file).
  o Wireless Network Watcher now stores the IP address and name of
    the detected devices inside the .cfg file, so these fields will be
    displayed when using the 'Show All Previous Devices' option.

* Version 1.91
  o Updated the internal MAC addresses database.

* Version 1.90
  o Made some changes in the internal scanning mechanism of Wireless
    Network Watcher, in order to fix bugs and problems that occurred when
    a device got a different IP address.
  o Be aware that due to this mechanism change, detected devices will
    appear only after their MAC address is found (In previous versions,
    the device name was displayed even before the MAC address was found)

* Version 1.85
  o Added 'Auto Size Columns On Every Scan' option.
  o Added 'Auto Size Columns+Headers' option.

* Version 1.83
  o Added 'Tray Balloon On Disconnected Device' option.

* Version 1.82
  o Updated the internal MAC addresses database.

* Version 1.81
  o Added 'Last Detected On' column.

* Version 1.80
  o Added 'Beep On Disconnected Device' option.
  o Added option to execute a command when a device is disconnected
    (On 'Advanced Options' window).

* Version 1.79
  o Updated the internal MAC addresses database.

* Version 1.78
  o Fixed the feature added on v1.76: Wireless Network Watcher now
    displays the 'Advanced Options' window only if it fails on the first
    scan and the 'Show Advanced Options Automatically' option is turned
    on.

* Version 1.77
  o Fixed bug: Wireless Network Watcher failed to remember the last
    size/position of the main window if it was not located in the primary
    monitor.
  o Updated the internal MAC addresses database.

* Version 1.76
  o When Wireless Network Watcher fails to detect the network to
    scan, it now automatically displays the 'Advanced Options' window.

* Version 1.75
  o Added 'Copy As Hosts File' option. (Ctrl+H)

* Version 1.73
  o Updated the internal MAC addresses database.

* Version 1.72
  o The 'Background Scan' option is now turned on by default.

* Version 1.71
  o Added 'Always On Top'.

* Version 1.70
  o Added 'Reset Selected Items Counter' option.

* Version 1.68
  o Added /cfg command-line option, which instructs Wireless Network
    Watcher to use a config file in another location instead if the
    default config file, for example:
    WNetWatcher.exe /cfg "%AppData%\WNetWatcher.cfg"

* Version 1.67
  o Updated the internal MAC addresses database.

* Version 1.66
  o Added option to choose another font (name and size) to display in
    the main window.

* Version 1.65
  o Added 'Show Inactive Devices' option (Under the Options menu).
    When it's turned on, Wireless Network Watcher continues to display
    devices when they are not detected anymore, but their 'Active' value
    is changed from 'Yes' to 'No' and they also have a red X icon.

* Version 1.60
  o When you choose to scan specific IP addresses range, Wireless
    Network Watcher now automatically skips the broadcast addresses,
    according to the IP addresses/Subnet masks settings of every network
    adapter.
  o Fixed issue: On some network adapters, Wireless Network Watcher
    added items with empty MAC address - 00-00-00-00-00-00

* Version 1.58
  o Fixed bug: Wireless Network Watcher failed to load the external
    MAC addresses file (oui.txt) when every line has 2 leading space
    characters. (Sometimes this file is provided with leading space
    characters, I don't really know why...)

* Version 1.57
  o Updated the internal MAC addresses database.

* Version 1.56
  o Added 'Mark Odd/Even Rows' option, under the View menu. When it's
    turned on, the odd and even rows are displayed in different color, to
    make it easier to read a single line.
  o Fixed issue: Dialog-boxes opened in the wrong monitor, on
    multi-monitors system.

* Version 1.55
  o Added option to set the interval of the background scan (In the
    'Advanced Options' window)

* Version 1.50
  o Added option to run .exe file when a new device is detected (In
    'Advanced Options' window)

* Version 1.47
  o Fixed bug: Wireless Network Watcher crashed on some systems when
    starting the scanning and the 'Clear ARP Cache On Every Scan' option
    is turned on.

* Version 1.46
  o Added 'Clear ARP Cache On Every Scan' option. This option is
    useful for Windows 2000/XP, because if the ARP cache is not cleared,
    a device might be displayed as connected even when it's not
    connected, because the ARP information is taken from the cache of
    Windows operating system. On Windows Vista/7, this option is
    irrelevant, because the ARP scanning is not affected by the cache.

* Version 1.45
  o Added 'Device Options' window (Ctrl+F9), which allows you to
    change the beep/tray balloon configuration for every device
    separately.

* Version 1.42
  o Add new option to 'Advanced Options' window: 'Activate the
    beep/tray balloon alert only if the device is detected in the first
    time'. If you turn on this option, you'll get a beep/tray balloon
    alert only if the device has not been detected before (Detection
    Count = 1).

* Version 1.41
  o The tooltip of the tray icon now shows the number of connected
    devices.

* Version 1.40
  o Added option to choose audio file to play when a new device is
    detected (In Advanced Options), instead of using the default beep
    sound of Windows.
  o Added 'Start As Hidden' option. When this option and 'Put Icon On
    Tray' option are turned on, the main window of Wireless Network
    Watcher will be invisible on start.

* Version 1.35
  o Added 'MAC Address Format' option, under the Options menu.
  o Copy MAC Address option now allows you to copy multiple MAC
    addresses.

* Version 1.32
  o Added new menu items to the tray context menu: Start Scanning,
    Stop Scanning, and Advanced Options.

* Version 1.31
  o Fixed the sorting of the IP Address column.

* Version 1.30
  o Added command-line options to scan your network and save the
    result into text/html/xml file, without displaying any user interface.

* Version 1.27
  o Added 'Automatically Copy Device Name To User Text' option. When
    it's turn on, the user text of new device is automatically filled
    with the name of the device.

* Version 1.26
  o Added 'Scan On Program Start' option. You can turn off this
    option if you don't want that Wireless Network Watcher will start
    scanning automatically when you run it.

* Version 1.25
  o Added option to choose the desired IP addresses range to scan.
    (In the 'Advanced Options' window)

* Version 1.20
  o Added 'Put Icon On Tray' option. When it's turned on, icon of
    Wireless Network Watcher is added to the system tray of Windows.
  o Added 'Tray Balloon On New Device' option. If it's turned on,
    Wireless Network Watcher displays a tray balloon when a new device is
    detected.

* Version 1.15
  o Added 'Background Scan', under the Options menu. When this option
    is turned on, Wireless Network Watcher make a continuous background
    scan to automatically discover new devices or computers that
    connected the network, without activating the scan again. The
    background scan is slower and less intensive then the regular scan,
    so it won't overload your computer.
  o Added 'Beep On New Device' option. When the background scan is
    turned on, you can use this option to get a 'beep' sound when a new
    device is detected.

* Version 1.10
  o Added 'User Text' column, which allows to enter your own text for
    a specific computer/device, from the Properties window (Alt+Enter).
    The text that you write will be displayed for the same device in
    future scans. (The devices information is stored in the .cfg file of
    Wireless Network Watcher)
  o Wireless Network Watcher now displays the first date/time that
    the specified device was found, and the number of times that the
    device was detected. (The information is saved in the .cfg file)
  o When there are multiple IP address blocks on a single network
    card, Wireless Network Watcher now scans all of them (In previous
    versions, it scanned only the first IP addresses block)
  o Fixed bug: In previous version, Wireless Network Watcher randomly
    skipped some devices after the scanning the first 64 IP addresses.

* Version 1.05
  o Fixed Wireless Network Watcher to scan the entire network when
    the subnet mask is not 255.255.255.0, for example, if the subnet mask
    is 255.255.254.0, Wireless Network Watcher will scan 512 addresses.
    For now, it's limited for up to 4096 IP addresses, to avoid from very
    long scanning.
  o Improved the scanning on slow computers or slow networks.

* Version 1.00 - First release.



Using Wireless Network Watcher
==============================

Wireless Network Watcher doesn't require any installation process or
additional dll files. In order to start using it, simply extract the
executable file (WNetWatcher.exe) from the zip file, and run it.
If you want, you can also download WNetWatcher with full
install/uninstall support (wnetwatcher_setup.exe), so a shortcut for
running WNetWatcher will be automatically added into your start menu.

After running WNetWatcher, it automatically locates your wireless
adapter, and scans your network. After a few seconds, you should start
see the list of computers that are currently connected to your network.

If from some reason, WNetWatcher failed to locate and scan your network,
you can try to manually choosing the correct network adapter, by pressing
F9 (Advanced Options) and choosing the right network adapter.



Columns Description
===================


* IP Address: IP Address of the device or computer.
* Device Name: The name of the device or computer. This field may
  remain empty if the computer or the device doesn't provide its name.
* MAC Address: The MAC address of the network adapter.
* Network Adapter Company: The company that manufactured the network
  adapter, according to the MAC Address. This column can help you to
  detect the type of the device or computer. For example, if the company
  name is Apple, the device is probably a Mac computer, iPhone, or iPad.
  if the company name is Nokia, the device is probably a cellular phone
  of Nokia.

  By default, this utility uses an internal MAC addresses database stored
  inside the .exe file, but it's not always updated with the latest MAC
  address assignments.
  You can manually download the latest MAC addresses file from
  http://standards.ieee.org/develop/regauth/oui/oui.txt and then put
  oui.txt in the same folder where WNetWatcher.exe is located. When you
  run WNetWatcher.exe, it'll automatically load and use the external
  oui.txt instead of the internal MAC addresses database.
* Device Information: This column displays 'Your Computer' if the
  device is the computer that you currently use. This column displays
  'Your Router' if the device is the wireless router.
* User Text: You can assign your own text to any device detected by
  WNetWatcher. By default, this field is filled with the device name. In
  order to change the User Text, simply double-click the item and type
  the desired text.
* Active: Specifies whether this device is currently active. When a
  device is not detected anymore, the 'Active' value is turned from 'Yes'
  to 'No'



Background Scan
===============

Starting from version 1.15, there is a new option under the Options menu
- 'Background Scan'.
When it's turned on, Wireless Network Watcher first make the regular fast
network scan to discover all current connected devices. After that, a
continuous background scan is activated to discover when new devices are
connected to your network. The background scan is slower and less
intensive then the regular scan, so it won't overload your computer and
you can leave it to run in the background while using other programs.
When the background scan is running, a counter of the scan process is
displayed in the second section of the bottom status bar.

When the background scan is used, you can use the 'Beep On New Device'
option to get a beep sound when a new device is detected.



Command-Line Options
====================



/cfg <Filename>
Start Wireless Network Watcher with the specified configuration file. For
example:
WNetWatcher.exe /cfg "c:\config\wnw.cfg"
WNetWatcher.exe /cfg "%AppData%\WNetWatcher.cfg"

/stext <Filename>
Scan your network, and save the network devices list into a regular text
file.

/stab <Filename>
Scan your network, and save the network devices list into a tab-delimited
text file.

/scomma <Filename>
Scan your network, and save the network devices list into a
comma-delimited text file (csv).

/stabular <Filename>
Scan your network, and save the network devices list into a tabular text
file.

/shtml <Filename>
Scan your network, and save the network devices list into HTML file
(Horizontal).

/sverhtml <Filename>
Scan your network, and save the network devices list into HTML file
(Vertical).

/sxml <Filename>
Scan your network, and save the network devices list into XML file.



Translating Wireless Network Watcher to other languages
=======================================================

In order to translate Wireless Network Watcher to other language, follow
the instructions below:
1. Run Wireless Network Watcher with /savelangfile parameter:
   WNetWatcher.exe /savelangfile
   A file named WNetWatcher_lng.ini will be created in the folder of
   WNetWatcher utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run WNetWatcher, and all
   translated strings will be loaded from the language file.
   If you want to run WNetWatcher without the translation, simply rename
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
