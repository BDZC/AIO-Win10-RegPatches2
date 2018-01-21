
CPU-Z Readme file
------------------

Version 1.52.2
August 2009
Contact : cpuz@cpuid.com
Web page: http://www.cpuid.com/cpuz.php
Validation page : http://valid.canardpc.com
Hall of Fame : http://valid.canardpc.com/records.php
Forum : http://forum.canardpc.com/forumdisplay.php?f=74
CPUID SDK : http://www.cpuid-pro.com/devkits.php


Configuration file (cpuz.ini)
------------------------------

The configuration file must be named cpuz.ini and be present at the same directory level
as cpuz.exe. It contains the following :

[CPU-Z]
TextFontName=Verdana
TextFontSize=13
TextFontColor=000060
LabelFontName=Verdana
LabelFontSize=13
PCI=1
MaxPCIBus=256
DMI=1
Sensor=1
SMBus=1
Display=1
ShowDutyCycles=0

- TextFontName : Font used for the information boxes. 
- TextFontSize : Size of the font used for the information boxes. 
- TextFontColor : Color of the font used for the information boxes. Value is expressed in hexadecimal, and consists in a classic Red/Green/Blue color code : RRGGBB 
- LabelFontName : Font used for the label boxes. 
- LabelFontSize : Size of the font used for the label boxes. 
- Sensor : Set to OFF (or 0) disables sensor chip detection and voltages measurement. 1 to enable.
- PCI : Set to OFF (or 0) disables the PCI information. This disables chipset, SPD and, depending on the hardware, sensoring information. 1 to enable.
- MaxPCIBus : Sets the maximum PCI bus to scan. Default value is 256.
- DMI : Set to OFF (or 0) disables the DMI (Desktop Management Interface) information. This concerns BIOS vendor and version, motherboard vendor and revision. 1 to enable. 
- SMBus : Set to OFF (or 0) disables SMBus information : SPD, and, depending on the hardware, sensoring information. 1 to enable.
- Display : Set to OFF (or 0) disables the video card information reported in the validator. 1 to enable.
- ShowDutyCycles : Set to 1, switches the alternate clock computation method based on duty cycles. 0 to disable.

Parameters
----------

-txt=filename : Launch CPU-Z in ghost mode (no interface appears) and generates the register dump file (.txt) 
in the same directory as the exe file.

-html=filename : Same as "-txt" except it generates the html report.

-core=id : Displays clock speed of core #id (id can be set from 0 to Number of cores minus one).


Keys
----

F5 : save the current tab in a bmp file
F6 : save the current tab in the clipboard
F7 : save cvf file in the current directory


Cache Latency Tool
------------------

The cache latency tool can be downloaded at that address : http://www.cpuid.com/download/latency.zip


History
-------

--------------------------------------------------------------------------------------------------
1.52 - July 2009
- Fix Core i7 clock bug (1.52.2)
- New design with "Graphics" tab.
- NVIDIA nForce 980a chipset support.
- Intel Core i5 and Core i3 processors.
- Intel Atom Z530, Pentium DC E6300 (2.8GHz) and Core 2 Solo processors.
- Intel P55 and US15W chipsets preliminary support.
- AMD Phenom TWKR support.
- AMD Phenom X2 "Callisto" and Athlon X2 "Regor" processors.
- AMD Opteron 6-core "Istanbul" processor.
- Improved support for Windows 7.
- New Intel logos.

MD5 checksum : please refer to http://www.cpuid.com/cpuz.php#history

--------------------------------------------------------------------------------------------------
1.51 - April 2009
- New version with installer.
- NVIDIA ION platform.
- Intel "Clarkdale" processor preliminary support.

MD5 checksum : please refer to http://www.cpuid.com/cpuz.php#history

--------------------------------------------------------------------------------------------------
1.50 - February 2009
- Improved support for AMD Phenom II processor.
- Support for NVIDIA 740i chipset.
- Several bug fixes.

MD5 cpuz.exe (1.50) : E1C827C54F527404EDDA6D65DA0280D8

--------------------------------------------------------------------------------------------------
1.49 - December 2008
- AMD Phenom II processor.
- New Intel Core 2 models.
- Improved loading time.
- New online validation process.

MD5 cpuz.exe (1.49) : B836E86B40D7AFAF99D9C512E8CC9FEF

--------------------------------------------------------------------------------------------------
1.48 - October 2008
- Improved support for Intel Core i7 (Bloomfield & Gainestown).
- Intel Atom dual-core version support.
- AMD Athlon "Kuma" processor support.
- Alternate clock computation method based on "duty cycles" for Intel Core 2 processors (see ShowDutyCycles in cpuz.ini)

MD5 cpuz.exe (1.48) : DB78FBF1F99B7709240B495E59758CCE

--------------------------------------------------------------------------------------------------
1.47 - August 2008
- Intel Core i7 processor.
- Intel Core 2 Duo S Mobile processors.
- NVIDIA MCP79/7A chipset.
- AMD 790GX / SB750 chipset. 

MD5 cpuz.exe (1.47) : A7484EFA3C32BC968C248CB1237FF493

--------------------------------------------------------------------------------------------------
1.46 - June 2008
- AMD Puma platform (Turion & Turion Ultra "Griffin");
- AMD Black Edition processors.
- Intel Xeon EX "Dunnington".

MD5 cpuz.exe (1.46) : C47432C41EC26156128F7B8E09E884CF

--------------------------------------------------------------------------------------------------
1.45 - May 2008
- Intel Atom Z500/Z510/Z520/Z530/Z540 processors.
- Intel Core 2 Duo E7x00 processor.
- AMD 45 nm Phenom (Dened & Shanghai) processors.
- Intel P45 chipset.

MD5 cpuz.exe (1.45) : DD4E540C04297CF93DC721166C13446E

--------------------------------------------------------------------------------------------------
1.44.2 - Mars 2008
- NVIDIA 650i, 680i, 750a/780a, 750i, 780i, 790i chipsets (1.44.2)
- Intel G35 chipset (1.44.2)
- Updated support for VIA chipsets (1.44.2)
- Support for the new validator (1.44.1)
- Preliminary support for VIA Isaiah processor.
- Support for all VIA Model D processors: VIA C7-M, VIA C7-D, VIA Eden, VIA Eden.
- Memory timings on Intel 5400A/B MCH (Skulltrail).
- Fix AMD Phenom detection issue on Windows Vista 64.

MD5 (1.44.2) : 81FB48A6EC7355E8D0DD71ADC2157CF6

--------------------------------------------------------------------------------------------------
1.43 - January 2008
- Intel Skulltrail platform support (Core 2 Extreme QX9775 + 5400B MCH).
- Intel X48 chipset detection.
- AMD Athlon 64-LE 1600 and 1620 support.
- Fix detection issues on unlocked Phenom (ES/BE).

--------------------------------------------------------------------------------------------------
1.42 - November 2007
- Intel Wolfdale/Yorkfield/Penryn CPUs support.
- AMD Phenom and Opteron Barcelona support improved.
- Current core selection menu (right click on the CPU page).
- Loading progress.

--------------------------------------------------------------------------------------------------
1.41 - September 2007
- New CPU voltage monitoring.
- Intel Xeon Tigerton support.
- Intel IA64 CPUs support (Itanium / Itanium2)(special thanks to Rami Radi and Ray Hinchliffe).
- AMD K10 Phenom preliminary support.
- NVIDIA MCP73 support.
- Intel XMP profiles support.
- Memory modules nominal voltage.

--------------------------------------------------------------------------------------------------
1.40.5 - July 2007
- NVIDIA nForce 560 chipset support.
- Intel Dynamic FSB technology support.
- Athlon 64 X2 BE & Sempron LE (TDP 45W).
- SiS671/FX/DX/MX northbridge support.
- SiS968 southbridge support.

--------------------------------------------------------------------------------------------------
1.40 - May 2007
- VIA P4M800CE chipset support.
- Preliminary support for Intel Penryn CPUs family (45 nm).
- Intel Core 2 Duo E6x20, Pentium E2140/2160 processors recognition.
- Intel P35, G33, G31, Q35, Q33, X38 chipsets support.
- Intel GL960/GM965/PM965 chipsets support.
- AMD Athlon 64 "Lima" processor support.
- AMD Geode LX processor support.
- NVIDIA nForce 520 chipset support.
- New parameter "-console" to generate output in a command prompt (Windows XP only).
- New icon.

--------------------------------------------------------------------------------------------------
1.39 - February 2007
- Windows Vista 64 support.
- VIA CX700/VX700 chipset.	
- Added Merom XE (X7900/X7800)
- Added "PCI" and "MaxPCIBus" in the ini file to configure PCI scanning.
- Added "-core" parameter to display the clock speed of the specified core.
- Lot of bug fixes.

--------------------------------------------------------------------------------------------------
1.38 - November 2006
- VIA P4M890 and P4M900 chipsets.
- NVIDIA 650i and 680i chipset.
- AMD Athlon 64 FX-7x processor.
- Core 2 Duo E6850, E6750, E6650 processors.
- socket 775 Xeon processor.
- New parameters "-txt" and "-html" (see above).
- Lot of bug fixes.

--------------------------------------------------------------------------------------------------
1.37 - October 2006
- Intel Core 2 Quad, Celeron 360, Mobile Core 2 Duo T5200 support.
- Changed SSE4 to SSSE3 (Supplemental SSE3).
- Added VIA VT8237A southbridge.
- New HTML report.
- Several bug fixes.

--------------------------------------------------------------------------------------------------
1.36 - August 2006
- New processor information display.
- Intel 5000X/P/Z/V SPD support.
- Intel Pentium D 925 & 945.

--------------------------------------------------------------------------------------------------
1.35 - June 2006
- ATI RS350, RS400, RS480/RX480, RS482, RD580/RX580, RS600/RD600, RS690, RS700 chipsets support.
- ATI SB600 southbridge support.
- Intel P965 chipset support.
- Engineering samples Core based CPUs report.
- Windows Vista product line report.

--------------------------------------------------------------------------------------------------
1.34.1 - May 2006
- AMD socket AM2/S1/F (rev F.) CPUs support.
- Enhanced Performance Profile (EPP) memory information report.
- Added Trc (bank cycle time) in DDR2 SPD report.
- Added Trc (bank cycle time) on i925, i945, i955, i975 chipsets.
- FB-DIMM DDR2 SPD information report.
- Core 2 Duo names and logos added.
- Turion 64 X2 logo added.
- Several bug fixed.

--------------------------------------------------------------------------------------------------
1.33.1 - April 2006
- Intel i965 chipset support added.
- Fix SPD detection problem on SiS 964/965/966 southbridges.
- ODC (Odd Divisor Correct) for Athlon64 rev E.

--------------------------------------------------------------------------------------------------
1.33 - April 2006
- Memory Command Rate timing added.
- Improved support for Intel Conroe/Merom CPUs.
- Celeron M 420/430 Yonah.
- Xeon Dual core Dempsey.
- VIA C7-M CPU detection added.
- VIA PT880, PT880 Pro, K8T900 chipsets support.
- nVidia nForce 550/560/570 (MCP55) chipset support.
- VIA VT8251 southbridge support.
- Fixed HyperTransport information misreports (in dump file).
- Added K6-2 and K6-III logos.

--------------------------------------------------------------------------------------------------
1.32.1 - March 2006
- New Intel logos.
- Added Pentium D 925, Pentium EE 965.
- Several bugs fixed.

--------------------------------------------------------------------------------------------------
1.32 - February 2006
- Athlon FX-60 detection added.
- Athlon64 new memory dividers.
- Celeron 35x Cedar Mill, Pentium D 805.
- Core Solo & Core Duo detection improved.
- VIA C7 CPU detection added.
- Intel i975X, i945GT chipsets support.
- ATI RD580 chipset support.
- ULi smbus support improved.
- Fix smbus conflict with ClockGen.

--------------------------------------------------------------------------------------------------
1.31 - November 2005
- Improved support for ATI RS480/482 chipsets.
- GeForce 6100/6150 (nForce 410/430) chipsets support.
- Intel E7520 chipset support.
- New CPUs support : AMD Opteron socket 939, Intel Pentium 4 Cedar Mill and Presler,
Intel Xeon Paxville, Intel Pentium M Yonah SC & DC.
- Several bug fixed.

--------------------------------------------------------------------------------------------------
1.30 - August 2005
- Latest Sempron and Turion support improved.
- Intel Xeon Potomac, Pentium M 780 support.
- Improved Windows version report.
- Support for SMBus on latest SiS bridges (964, 965, 966) and ULi bridges.
- Increased clocks refresh rate.
- Several bug fixed.

--------------------------------------------------------------------------------------------------
1.29 - June 2005
- New PCI devices report.
- Switch for VCore report in .ini file.
- VCore report on some uGuru mainboards.
- Improved clocks computation.
- Improved support for latest AMD CPUs, Celeron D 3x1 (EM64T).
- Improved support for SiS 649, 650 and 656 chipsets, Intel 915PM chipset.
- Improved stability when several instances of CPU-Z are running in the same time.
- Restored html report in ghost mode (see "Parameters" chapter above).

--------------------------------------------------------------------------------------------------
1.28.6 - March 2005
- Support for Athlon 64 X2 CPUs
- Support for i955X chipset
- Bunch of bugs

--------------------------------------------------------------------------------------------------
1.28 - March 2005
- Support for SiS chipsets improved : 648FX, 649, 655FX, 655TX, 656
- Support for nVidia nForce4 SLI Intel Edition
- Support for Intel Pentium D, Pentium XE, AMD Turion, Opteron 252
- New F7 key to simplifiy the creation of the validation file

--------------------------------------------------------------------------------------------------
1.27 - February 2005
- Support for Intel Pentium 4 6xx CPUs.
- New validation system.
- Hundred of bug fixes.

--------------------------------------------------------------------------------------------------
1.26 - December 2004
- VCore display on Pentium M CPUs.
- New CPU clock computation.
- Improved support of Transmeta CPUs.
- Several bugs fixed.

--------------------------------------------------------------------------------------------------
1.25 - November 2004
- nVidia nForce4 chipset support
- Intel Pentium 4J support
- New button to refresh memory timings
- Several bugs fixed

--------------------------------------------------------------------------------------------------
1.24 - September 2004
- AMD Sempron support
- New memory SPD page
- PCI-Express graphic interface support
- Configuration file
- External cache latency tool
- Restored html report
- Fix several bugs

--------------------------------------------------------------------------------------------------
1.23 - June 2004
- Intel i915P/G, i925X chipsets support
- Intel LGA775 CPUs support
- Intel's CPU number display
- New AMD Athlon 64 steppings
- New report in one file

--------------------------------------------------------------------------------------------------
1.22 - April 2004
- New CPUs : Xeon Nocona, Celeron Prescott
- DDR2 memory support
- Clock mode when iconized

--------------------------------------------------------------------------------------------------
1.21 -  January 2004
- one file package
- Windows 64 support
- new chipsets support
- new CPU support : Celeron M, Pentium 4 "Prescott"

--------------------------------------------------------------------------------------------------
1.20a -  October 2003
- memory frequency and ratio on nForce2
- KT600 support
- W83627THF VRM mode
- SPD read improvement
- Fix some memory leaks (DMI)
- Fix memory size report
- Fix AGP side band status

--------------------------------------------------------------------------------------------------