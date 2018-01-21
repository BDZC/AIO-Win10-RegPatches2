


AdvancedRun v1.05
Copyright (c) 2015 - 2016 Nir Sofer
Web site: http://www.nirsoft.net



Description
===========

AdvancedRun is a simple tool for Windows that allows you to run a program
with different settings that you choose, including - low or high
priority, start directory, main window state (Minimized/Maximized), run
the program with different user or permissions, Operating system
compatibility settings, and environment variables. You can also save the
desired settings into a configuration file and then run the program
automatically from command-line with the desired settings.



Examples of what you can do with AdvancedRun
============================================


* Run the RegEdit of Windows as normal user on Windows 10/8/7/Vista,
  without elevation. In this mode, you'll not be able to access or modify
  Registry keys that require admin rights.
* Run the RegEdit of Windows as SYSTEM user on Windows 10/8/7/Vista. In
  this mode, you'll be able to access the HKEY_LOCAL_MACHINE\SECURITY key.
* Run a program with a user of another running process.
* Run a program in high priority.
* Run a specific instance of program in Windows XP compatibility mode,
  without making global changes in the Registry.
* Run a specific instance of program with different PATH environment
  string, but without modifying the PATH string of the entire system and
  without using batch files or command prompt window.
* Run a program with a full set of environment variables you choose,
  ignoring the system environment variables completely.



System Requirements
===================

This utility works on any version of Windows, starting from Windows XP
and up to Windows 10. Both 32-bit and 64-bit systems are supported. Some
of the features, like 'Run As SYSTEM User' and 'Run As user of selected
process' are not supported on Windows XP.



Versions History
================


* Version 1.05
  o Added option to run a process as a child of the specified process.
  o You can now drag a file from Explorer into the window of
    AdvancedRun in order to easily fill the 'Program To Run' field.

* Version 1.03
  o Fixed the Environment Variables text-box to handle Ctrl+A (Select
    All).

* Version 1.02
  o Fixed to store the process name of the 'User of the selected
    process' option inside the .cfg file.

* Version 1.01
  o Fixed bug: AdvancedRun crashed while working with environment
    variables.

* Version 1.00 - First release.



Start Using AdvancedRun
=======================

AdvancedRun doesn't require any installation process or additional dll
files. In order to start using it, simply run the executable file -
AdvancedRun.exe
After running AdvancedRun, you can choose the .exe file you want to run
and all other settings and then click the 'Run' button to run the program
with the settings you chose.



AdvancedRun Options
===================


* Program to Run: The .exe filename that you want to run. You can also
  specify environment variables here, for example:
  %windir%\system32\regedit.exe
* Command-Line Arguments: The command-line string to pass to the
  program.
* Start Directory: Specifies the start directory of the program. If you
  don't specify it, the directory of the .exe file will be used. You can
  also specify environment variables here, for example:
  %appdata%\Microsoft
* Use search path to find the program location if the full path is not
  specified: If you specify only a filename (without a directory) in the
  'Program To Run' field and this option is turned on, AdvancedRun will
  try to locate the .exe file in all directories specified in your PATH
  environment variable.
* Parse the environment variables inside the command-line string before
  passing it to the program: If this option is turned on, any environment
  variable inside the command-line string will be parsed before passing
  it to the program. If it's turned off, AdvancedRun will not parse the
  environment variables inside the command-line string, allowing the
  running program to do the parsing.
  For example if you specify '%windir%\system32' in command-line string,
  the program will receive it as C:\Windows\System32 if this option is
  turned on. If it's turned off, the program will receive it as
  %windir%\system32
* Set the process affinity mask (space-delimited list): Allows you to
  specify the CPUs that the program can use , first CPU is 0, second CPU
  is 1, and so on... For example:
  0 1 2 3
* Priority Class: Specifies the priority to run the program: Normal,
  Idle, High, RealTime, Below Normal, Above Normal.
* Main Window State: Runs the program with the specified window state -
  Normal, Minimized, Maximized or Hidden. Be aware that this option only
  affects programs that support it.
* Window Position (X,Y): Runs the program with the main window in the
  specified position. only affects programs that support it.
* Window Size (W,H): Runs the program with the main window in the
  specified size. only affects programs that support it.
* Run As: (For Windows Vista or later)
  Allows you to run the program with different users and/or permissions.
  You can choose one of the following options:

  o Current User - Allow UAC Elevation: Runs the program normally. If
    the program requires elevation ('Run As Administrator'), the UAC
    window will appear to confirm the elevation.
  o Current User - Without UAC Elevation: Runs the program without
    UAC elevation ('Run As Administrator'), even if the program requires
    it. For example... You can use this option to run RegEdit of Windows
    without admin permissions.
  o Administrator (Force UAC Elevation): Forces the program to run as
    administrator, even if it doesn't require it.
  o SYSTEM User: Runs a program as a SYSTEM user. SYSTEM user has the
    ability to access some data that normal admin user cannot access. For
    example, If you run RegEdit of Windows as SYSTEM user, you'll be able
    to access the HKEY_LOCAL_MACHINE\SECURITY key.
  o User of the selected process: Runs a program as a user of another
    process that you choose. For example, if you're logged on as user1,
    and there is a program running as user2, you can choose to run
    another program as user2. You can type the name of the process
    filename (e.g: myprogram.exe) or the process ID (e.g: 2543)
  o Child of selected process (Using code injection): Runs a program
    as a child of another process that you choose. The new process is
    created with the same user and privileges of the parent process. You
    can type the name of the process filename (e.g: myprogram.exe) or the
    process ID (e.g: 2543)
    Be aware that on 64-bit systems, you must use the 64-bit version of
    AdvancedRun if the parent process you choose is 64-bit process and
    you must use the 32-bit version of AdvancedRun if the parent process
    you choose is 32-bit process.

* Operating system compatibility mode: This option is identical to the
  Operating system compatibility mode provided by Windows, when you
  right-click on .exe file, choose 'Properties' and then go to the
  'Compatibility' tab. As opposed to the compatibility mode of Windows,
  AdvancedRun doesn't make any systemwide change in the Registry. It only
  sets the compatibility mode to the specific instance of program that
  you run.
* Disable Visual Themes: This option is identical to the 'Disable
  Visual Themes' option in the compatibility tab of Windows.
* Disable desktop composition: This option is identical to the 'Disable
  desktop composition' option in the compatibility tab of Windows.
* Run In 640 X 480 Resolution: This option is identical to the 'Run In
  640 X 480 Resolution' option in the compatibility tab of Windows.
* Disable display scaling on high DPI settings: This option is
  identical to the 'Disable display scaling on high DPI settings' option
  in the compatibility tab of Windows.
* Environment Variables:
  o Use current system environment variables without any change: This
    is the default option. The program will simply run with the current
    environment variables.
  o Merge the following environment variables with the system
    variables: In this option, the environment variables you specify in
    the text-box below will be merged with the current system variables.
    You should specify the environment variables in variable=value
    format, every variable in a separate line. Be aware that AdvancedRun
    will not make any change in the current system variables, it'll only
    set the merged environment variables to the specific instance of
    program that you run.
  o Use only the following environment variables (Ignore the system
    variables): In this option, only the environment variables you
    specify in the text-box below will be provided to the program you
    run, while the current system variables will be ignored. You should
    specify the environment variables in variable=value format, every
    variable in a separate line.




Command-Line Options
====================



/Run {Config File}
Runs a program according to the settings stored in the specified
configuration file.
If the config file is not specified, the default config file located in
the same folder of the .exe file is used (AdvancedRun.cfg).


/EXEFilename <value>
/CommandLine <value>
/StartDirectory <value>
/PriorityClass <value>
/RunAs <value>
/OSCompatMode <value>
.
.
.
You can use any variable stored in the config file as command-line
parameter. For example, in order to run RegEdit as system user:
AdvancedRun.exe /EXEFilename "%windir%\regedit.exe" /CommandLine ""
/StartDirectory "" /RunAs 4 /Run

In the above example, the '4' value of the /RunAs parameter sets the Run
As mode to SYSTEM user. If you don't know what is the right value to use
from command-line, simply choose the desired option from the user
interface, save it to config file, and then check the values stored in
the config file.

If you want to specify a value contains double quotes ("" ), you should
enclose the value with single quotes , for example:
AdvancedRun.exe /EXEFilename "c:\temp\myprog.exe" /CommandLine '
"c:\temp\my files\1234.txt" "hello" '



Translating AdvancedRun to other languages
==========================================

In order to translate AdvancedRun to other language, follow the
instructions below:
1. Run AdvancedRun with /savelangfile parameter:
   AdvancedRun.exe /savelangfile
   A file named AdvancedRun_lng.ini will be created in the folder of
   AdvancedRun utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run AdvancedRun, and all
   translated strings will be loaded from the language file.
   If you want to run AdvancedRun without the translation, simply rename
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
