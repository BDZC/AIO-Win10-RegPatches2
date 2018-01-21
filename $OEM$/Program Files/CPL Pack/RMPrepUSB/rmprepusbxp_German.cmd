@echo off

REM Script ändert BartPE oder WinPE zu XP bootfähig Dateien
REM ein entsprechend formatierte USB-Laufwerk
REM
REM Dieses Skript kann vom Benutzer geändert werden, falls REM gewünscht
REM
REM (c)2010 RM Education plc
REM 
REM Translated by René Prieß
REM Für den Einsatz mit RMPrepUSB

cls
SET SURE=
if "%1"=="" goto :USAGE
if "%2"=="SURE" SET SURE=1
if NOT "%2"=="" IF NOT "%2"=="SURE" goto :USAGE

SET PEN=%1

REM set PEN=F:
set FAIL=
REM Blue screen beim starten mit
color 9f

pushd %cd%


echo ********************************
echo *                              *
echo * RMPrepUsbXP.cmd              *
echo * ===============              *
echo *                              *
echo * Convertiere BartPE/XP Dateien*
echo * ins bottfähige USB Format    *
echo *                              *
echo ********************************
echo.

REM Prüfen
if NOT "%systemdrive%"=="%pen%" goto :AA
echo Fehler: Ziellaufwerk ist ihr Windows - Laufwerk!
goto :ERR 

:AA

REM Überprüfen ob benötigten Dateien vorhanden
set tf=%pen%\i386\setupldr.bin
call :tfile
set tf=%pen%\i386\ntdetect.com
call :tfile

if     exist %pen%\minint\nul   SET FAIL=2
if NOT exist %pen%\i386\nul     SET FAIL=3

IF NOT "%FAIL%"=="" dir %pen%\*.*
ECHO.
if "%FAIL%"=="2"   echo Achtung: %pen%\MININT Ordner ist bereits auf dem USB-Stick vorhanden!
if "%FAIL%"=="3"   echo Fehler:   %pen%\i386 Ordner ist bereits auf dem USB-Stick nicht vorhanden!
if "%FAIL%"=="3"   pause
if "%FAIL%"=="3"   goto :EOF

echo.
echo ÄNDERE XP PE DATEIEN UND ORDNER AUF %pen% 
echo.
IF NOT "%FAIL%"=="" color 2f
IF NOT "%FAIL%"=="" echo Press CTRL-C für Abbrechen oder Enter zum starten des Kopierprozesses...
IF NOT "%FAIL%"=="" PAUSE > nul

IF not "%FAIL%"=="" goto :ERR


:DOCOPY
color 9f
SET FAIL=

if not exist %pen%\NTLDR (
copy /y %pen%\i386\setupldr.bin %pen%\NTLDR
if errorlevel 1 goto :ERR
echo %pen%\NTLDR Erstellt
)
if not exist %pen%\NTDETECT.COM (
copy /y %pen%\i386\NTDETECT.COM %pen%\NTDETECT.COM
if errorlevel 1 goto :ERR
echo %pen%\NTDETECT.COM Erstellt
)
if not exist %pen%\MININT\nul (
echo Benenne i386 Ordner zu MININT um
ren %pen%\I386 MININT
if errorlevel 1 goto :ERR
echo %pen%\MININT Ordner Erstellt
)


set tf=%pen%\NTLDR
call :tfile
set tf=%pen%\ntdetect.com
call :tfile
if NOT exist %pen%\minint\nul   echo *** %pen%\MININT Ordner fehlt (Kopierfehler?)
if NOT exist %pen%\minint\nul  SET FAIL=1



REM Kopiere alle Dateien aus dem Ordner PeToUSB ins 
REM USB-Laufwerk
REM Pfade einstellen
xcopy /herky .\PEtoUSB\*.* %pen%\*.*



If NOT "%FAIL%"=="" echo *** Fehler - USB DRIVE KANN NICHT STARTEN!
If "%FAIL%"=="" echo ALLES OK - fertig zum booten!
If NOT "%FAIL%"=="" goto :ERR
color 2F
ECHO Fertig
echo.
if "%SURE%"=="" pause

goto :EOF

:ERR
color cf
echo Fehler - OPERATION ABGEBROCHEN!
pause
REM set errorlevel 0 if passed or NZ if failed
COLOR 00
goto :EOF

:USAGE
color cf
echo.
echo VERSUCHE: RMPrepUSB [Ziel_Drive] {SICHER}
echo.
echo RMPrepUSB %1 %2   -  IST EIN UNGÜLTIGER BEFEHL
echo.
goto :ERR



:tfile
SET ERR=
IF NOT EXIST %TF% SET ERR=1
IF "%ERR%"=="1" SET FAIL=1
IF "%ERR%"=="1" ECHO *** %tf% EXISTIERT NICHT ***
goto :EOF
