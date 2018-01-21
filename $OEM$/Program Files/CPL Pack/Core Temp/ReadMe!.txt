DISCLAIMER:
USE THIS PROGRAM AT YOUR OWN RISK!
"Core Temp" IS A HARDWARE MONITOR, AND THERE IS A POSSIBILITY OF CRASHES OR OTHER UNEXPECTED BEHAVIOR.
THE AUTHOR OR DISTRIBUTOR OF "Core Temp" CAN NOT BE HELD RESPONSIBLE FOR ANY DATA LOSS OR ANY OTHER
DAMAGE WHICH MAY OCCUR DUE TO THE USE OF "Core Temp".
----------------------------------------------------------------------------------------------------------

IMPORTANT:
In Vista you may have to go to Core Temp.exe properties and select the "Run this program as an
Administrator" option under the "Compatibility" tab for Core Temp to work properly.
----------------------------------------------------------------------------------------------------------
CPU Support list:

All AMD K8 CPUs are supported starting with the early SH-C0 stepping and up. The latest 65nm BH-G1 and DH-G1
revisions give inaccurate readings.

Intel CPUs based on the 'Core' architecture, meaning all CPUs on the Core Duo/Solo and Core 2 Duo
architecture.
-------------------------------------
-Pentium 4/D CPUs ARE NOT SUPPORTED!-
-------------------------------------

----------------------------------------------------------------------------------------------------------

This a very straight forward program. Just run it and it reads your Yonah or next gen (Conroe/Merom etc.)
Die temperature.
Here's how to use it. When you launch it the main window will appear, along with a system tray icon:

1) Hover the mouse over the icon with enumerate all cores and show their temperature.
2) Double-Left click will either show or hide the main window.
3) Minimizing the main window will minimize it to system tray.
4) Single-Right click will bring up the "File" menu.

There are also settings that you can adjust:

1) Set the interval between each temperature read (10 - 9999ms).
2) Set the interval between each write to the log file (Equal to read interval and up to 99999ms).
3) Toggle the logging On/Off.
4) Prevent from the "CPU is overheating!" message from appearing in case of overheating.
5) Show temperature in Fahrenheit - self explanatory.
6) Start minimzed - when checked will start Core Temp with the main window hidden.
7) Show Delta to Tj.Max. - Will display the output of the DTS value on Intel CPUs.
8) Start Core Temp with Windows - Check the checkbox to make Core Temp start together with Windows.

You can also adjust the settings for the system tray icons.

There is support for the Logitech G15 keyboard.
Core Temp will automatically launch a G15 applet, and display temperature on the G15 display.
It currently only supports single processor (up to 4 cores) systems.
Core Reacts to the Soft-Buttons:
Button1: Show current temperature.
Button2: Show high\low temperature per core.
Button3: Reserved, currently does nothing.
Button4: Closes the G15 applet (doesn't quit Core Temp, just disconnects it from the G15.
To get it back to the G15, rerun Core Temp).

To adjust the Tj.Max value on Intel processors (not recommended due to potential inaccurate readings)
Simply edit the 'TjMaxOffset'S entry in Settings.ini file that comes in CoreTemp.zip.
To add 5C simply type the number 5 after the '=' sign.
To subtract 5C simply type -5 after the '=' sign.

----------------------------------------------------------------------------------------------------------
Some chips either don't support this feature or might fail to provide a "Valid Reading"
If this happens you'll see a "(?)" right after the temperature value in question.