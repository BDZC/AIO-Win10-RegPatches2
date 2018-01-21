--------------------------------------------------------
PC Wizard
Copyright (C) 1996-2011 Laurent KUTIL & Franck DELATTRE
All rights reserved
--------------------------------------------------------


Summary :
1. Running in Batch Mode
2. Paremeters List
3. How to desinstall PC Wizard
4. Contacts
5. Privacy Policy


1. Running in Batch Mode (or Silent Mode)
---------------------------------------------------------------------------------------------------------

Usage:
PC Wizard.exe /R T[x] C[y] filename[.ext] /I /Z
	      /H
	      /?
	      /D
			
[/?], [/H] - Commands Help

T[x] - with x from 1 to 4 (1=Hardware Tab, 2=System Tab, 3=Files Tab, 4=Resources Tab).
C[y] - with y to specify which category to include with the report.
	T1 C[y]  with y from 1 to 13 or 14 (see 2. Parameters List)
	T2 C[y]  with y from 1 to 22 (see 2. Parameters List)
	T3 C[y]  with y from 1 to 22 (see 2. Parameters List)
	T4 C[y]  with y from 1 to 4 (see 2. Parameters List)

/I - To include detailed information.

/Z - To compress the report with a .zip file format (only with Inventory Version)
	
You may specify different extension for different types of reports
[.ext] = .TXT for report in TEXT format
[.ext] = .CVS for report in CVS format
[.ext] = .HTM for report in HTML format
[.ext] = .XML for report in XML format


/D - To execute PC Wizard in debug mode (a debug file will be created on the desktop user)


Example 1:
  PC Wizard.exe /R T1 C3 c:\reports\report.txt /I
Result:
  Save plain text report for Hardware Tab - Processor category in the report.txt file into the c:\reports folder, 
  with detailed information.


Example 2:
  PC Wizard.exe /R T1 c:\reports\report.htm
Result:
  Save HTML report for all categories of the Hardware Tab in the report.htm file into the c:\reports folder, 
  without detailed information.


Example 3:
  PC Wizard.exe /R T1 C3 c:\reports\report.txt /I, /R T2 C1 c:\reports\report2.txt
Result:
  Save plain text report for Hardware Tab - Processor category in the report.txt file into the c:\reports folder, 
  with detailed information. And save also plain text report for Operating System Tab - Windows category in the report2.txt file 
  into the the c:\reports folder without detailed information.


Example 4:
  PC Wizard.exe /R T1 C2 c:\reports\report.txt /I, /R T1 C2 /I
Result:
  Save plain text report for Hardware Tab - Mainboard and Processor categories in the same file report.txt into the c:\reports folder, 
  with both detailed information.


Example 5:
  PC Wizard.exe /R T1 c:\reports\report.txt
Result:
  Save plain text report for Hardware Tab - all categories in the report.txt file into the c:\reports folder, 
  without detailed information.


Example 6:
  PC Wizard.exe /D
Result:
  A debug file called pcwdbg.log will be created on the user desktop.
  This parameter is not compatible with others commands to create reports.


	
2. Paremeters List
---------------------------------------------------------------------------------------------------------

for T1 you can use following values :
1 = Summary
2 = Motherboard
3 = Processor
4 = Video
5 = Ports
6 = Disks
7 = Printers
8 = Devices
9 = Multimedia
10 = Network
11 = Power
12 = Voltage, Temperature and Fans
13 = Vista Hardware Performance (or Gigabyte ODIN, nVIDIA ESA, APC UPS Monitoring with system earlier Vista)
14 = Gigabyte ODIN, nVIDIA ESA, APC UPS Monitoring

for T2 you can use following values :
1 = Operating System
2 = DOS
3 = Internet
4 = Control Panel
5 = Desktop
6 = Process and Threads
7 = Library DLL
8 = OLE Inscription
9 = Microsoft Applications
10 = Fonts
11 = UnInstall and MSI
12 = Boot-Start Applications
13 = Associated Files Extensions
14 = DirectX
15 = ODBC Data Source
16 = Passwords
17 = Security
18 = Multimedia
19 = Services
20 = UpTime Statistics
21 = ActiveX controls
22 = .NET Framework Global Assembly Cache

for T3 you can use following values :
1 = Config.nt
2 = Boot.ini
3 = Autoexec.nt
4 = Detlog.txt
5 = Bootlog.txt
6 = System.ini
7 = Win.ini
8 = DosStart.bat
9 = CMOS values
10 = Config.dos
11 = Autoexec.dos
12 = Environment Variables
13 = Event Log (Applications)
14 = Event Log (System)
15 = Event Log (Security)
16 = Protected Files
17 = Cookies
18 = GPO Startup
19 = GPO Shutdown
20 = Host Config
21 = Windows Error Report (WER)
22 = Internet Explorer History

for T4 you can use following values :
1 = Interruption Request (IRQ)
2 = Direct memory Access (DMA)
3 = I/O Ports
4 = memory Resources
5 = Network Realtime Resources 


3. How to desinstall PC Wizard
---------------------------------------------------------------------------------------------------------

In order to remove PC Wizard from your system, select Programs from Windows Start button, CPUID, PC Wizard, and choose "Uninstall PC Wizard".
You can do the same from Control Panel with "Add and Remove Programs" applet. (only available with the Setup Package)


4. Contacts
---------------------------------------------------------------------------------------------------------
Web: http://www.cpuid.com
e-mail: pcwizard@cpuid.com


5. Privacy Policy
---------------------------------------------------------------------------------------------------------
See Privacy Policy at http://www.cpuid.com/privacy-policy.html