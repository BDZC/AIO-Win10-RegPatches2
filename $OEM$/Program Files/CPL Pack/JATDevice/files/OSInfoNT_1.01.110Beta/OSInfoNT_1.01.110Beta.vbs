' Operating System Information
' WinNT - WinVer: 5.0 and Above
' Script By: 38956
'             21140512.1 - 15:45 Alpha

rL1 = "Operating System Information (OSInfoNT)"
rL2 = "for Windows Version 5.0 and above"
rL4 = "WinNT - WinVer: 5.0 and Above"
sBy  = "Script by: 38956"
sVer = "1.01.110Beta : 21140512.1"
sVerF = "1.01.110Beta"

oFileName1   = "OSInfoNT" 
eMsgBoxTitle = "OSInfoNT > Save to file?"

const HKEY_LOCAL_MACHINE = &H80000002

Dim objFS, objShell
Dim strXPKey
Set colNamedArguments = WScript.Arguments.Named

strComputer = "."
strUsername = ""
strPWD = ""

strComputer = colNamedArguments.Item("ip")
strUsername = colNamedArguments.Item("usr")
strPWD = colNamedArguments.Item("pwd")
strOutput = colNamedArguments.Item("output")
strH = colNamedArguments.Item("h")
 If strH = "about" Then 
  hAbout 
  End If

 If strH = "switches" Then 
  hSwitches 
  End If

        Set objSWbemLocator = CreateObject("WbemScripting.SWbemLocator") 
        Set objSWbemServices = objSWbemLocator.ConnectServer(strComputer, "root\default", strUsername, strPWD)
        Set objWMIService = objSWbemLocator.ConnectServer(strComputer, "root\cimv2", strUsername, strPWD)
        Set objShell = CreateObject("WScript.Shell")

        Set oReg = objSWbemServices.Get("StdRegProv")

On Error Resume Next 

'// Set variables gathered from the Registry:

        keyNTCurrentVersion = "SOFTWARE\Microsoft\Windows NT\CurrentVersion"
          oReg.GetStringValue HKEY_LOCAL_MACHINE,keyNTCurrentVersion,"CurrentVersion",strRegWinVersion

'// // Check Windows Version :

 If Not strRegWinVersion => 5.0 Then
   WScript.Echo "WINDOWS VERSION ERROR:" & vbCR _
    & "-----------------------------------------------------------------" & vbCR _
    & "  This script requires Windows Version 5.0 ( 2000 ) or above!" & vbCR _
    & "-----------------------------------------------------------------"
   WScript.Quit
 End If

'// // Set variables gathered from the Registry - continue :

        oReg.GetStringValue HKEY_LOCAL_MACHINE,keyNTCurrentVersion,"EditionID",strRegEditionID
        oReg.GetStringValue HKEY_LOCAL_MACHINE,keyNTCurrentVersion,"BuildLab",strRegWinBuildLab

 If strRegWinVersion => 6.0 Then

        oReg.GetStringValue HKEY_LOCAL_MACHINE,keyNTCurrentVersion,"BuildLabEx",strRegWinBuildLabEx
 End If

'// // Set variables for Windows Product Key:

        oReg.GetBinaryValue HKEY_LOCAL_MACHINE,keyNTCurrentVersion,"DigitalProductId",pidBinary

        strProductKey = GetKey(pidBinary)
        strPartialPK = Right("0" & strProductKey, 5)

'// Set wMI connections for scripting against:

    Set colOS = objWMIService.ExecQuery("SELECT * FROM Win32_OperatingSystem",,48)
    Set colCS = objWMIService.ExecQuery("SELECT * FROM Win32_ComputerSystem",,48)
    Set colBB = objWMIService.ExecQuery("SELECT * FROM Win32_BaseBoard",,48)
    Set dtmConvertedDateTime = CreateObject("WbemScripting.SWbemDateTime")

 If strRegWinVersion => 6.0 Then

    Set colSLP = objWMIService.ExecQuery("SELECT * FROM SoftwareLicensingProduct WHERE PartialProductKey = '" & strPartialPK & "'",,48) 
    Set colSLS = objWMIService.ExecQuery("SELECT * FROM SoftwareLicensingService")

   ElseIf strRegWinVersion => 5.1 Then

    Set colWPA = objWMIService.ExecQuery("SELECT * FROM Win32_WindowsProductActivation",,48) 

 End If

'// Set variables gathered from Win32_ComputerSystem class:

      For Each objCS in colCS
         strCSManufacturer = objCS.Manufacturer
         strCSModel = objCS.Model
         strCSName = objCS.Name
         strCSSystemType = objCS.SystemType

 If strRegWinVersion => 6.0 Then
    Select Case objCS.PCSystemType
       Case  "0" strCSPCSystemType = "Unspecified"
       Case  "1" strCSPCSystemType = "Desktop"
       Case  "2" strCSPCSystemType = "Mobile"
       Case  "3" strCSPCSystemType = "Workstation"
       Case  "4" strCSPCSystemType = "Enterprise Server"
       Case  "5" strCSPCSystemType = "Small Office and Home Office (SOHO) Server"
       Case  "6" strCSPCSystemType = "Appliance PC"
       Case  "7" strCSPCSystemType = "Performance Server"
       Case  "8" strCSPCSystemType = "Maximum"
     Case Else
	strCSPCSystemType = objCS.PCSystemType
    End Select
 End If

      Next

'// Set variables gathered from Win32_BaseBoard class:

      For Each objBB in colBB
         strBBManufacturer = objBB.Manufacturer
         strBBProduct = objBB.Product
         strBBVersion = objBB.Version

	Next

'// Set variables gathered from Win32_OperatingSystem class:

      For Each objOS in colOS 

        strOSCaption = objOS.Caption
        strOSCSDVersion = objOS.CSDVersion
        strOSBuildNumber = objOS.BuildNumber
        strOSBuildType = objOS.BuildType
        strOSSerialNumber = objOS.SerialNumber

	strCountryCode = objOS.CountryCode
        strOSPrimary = objOS.Primary
        strOSWinDir = objOS.WindowsDirectory

        strOSRegOwner = objOS.RegisteredUser
        strOSOrganization = objOS.Organization
        strOSCSName = objOS.CSName

'// // Get OS Install Date & Last Boot Up Time from Win32_OperatingSystem class:

      dtmConvertedDateTime.Value = objOS.InstallDate
      strOSInstallDate = dtmConvertedDateTime.GetVarDate

      dtmConvertedDateTime.Value = objOS.LastBootUpTime
      strOSLastBootUpTime = dtmConvertedDateTime.GetVarDate

'// //  OS Architecture:


 If strRegWinVersion => 6.0 Then

        strOSArchitecture = objOS.OSArchitecture

   Else

      If InStrB(strCSSystemType,"86") <> 0 Then
             strOSArchitecture = "32-bit"
        ElseIf InStrB(strCSSystemType,"64") <> 0 Then
             strOSArchitecture = "64-bit"
      End If

 End If

'// // Get OS SKU from Win32_OperatingSystem class:

If strRegWinVersion => 6.0 Then

  Select Case objOS.OperatingSystemSKU
       Case  "0" strOSSKU = "Undefined"
       Case  "1" strOSSKU = "Ultimate Edition"
       Case  "2" strOSSKU = "Home Basic Edition"
       Case  "3" strOSSKU = "Home Premium Edition"
       Case  "4" strOSSKU = "Enterprise Edition"
       Case  "5" strOSSKU = "Home Basic N Edition"
       Case  "6" strOSSKU = "Business Edition"
       Case  "7" strOSSKU = "Standard Server Edition"
       Case  "8" strOSSKU = "Datacenter Server Edition"
       Case  "9" strOSSKU = "Small Business Server Edition"
       Case "10" strOSSKU = "Enterprise Server Edition"
       Case "11" strOSSKU = "Starter Edition"
       Case "12" strOSSKU = "Datacenter Server Core Edition"
       Case "13" strOSSKU = "Standard Server Core Edition"
       Case "14" strOSSKU = "Enterprise Server Core Edition"
       Case "15" strOSSKU = "Enterprise Server Edition for Itanium-Based Systems"
       Case "16" strOSSKU = "Business N Edition"
       Case "17" strOSSKU = "Web Server Edition"
       Case "18" strOSSKU = "Cluster Server Edition"
       Case "19" strOSSKU = "Home Server Edition"
       Case "20" strOSSKU = "Storage Express Server Edition"
       Case "21" strOSSKU = "Storage Standard Server Edition"
       Case "22" strOSSKU = "Storage Workgroup Server Edition"
       Case "23" strOSSKU = "Storage Enterprise Server Edition"
       Case "24" strOSSKU = "Server For Small Business Edition"
       Case "25" strOSSKU = "Small Business Server Premium Edition"
       Case "26" strOSSKU = "Home Premium N Edition"
       Case "27" strOSSKU = "Enterprise N Edition"
       Case "28" strOSSKU = "Ultimate N Edition"
       Case "29" strOSSKU = "Web Server Core Edition"
       Case "30" strOSSKU = "Essential Business Server Management Edition"
       Case "31" strOSSKU = "Essential Business Server Security Edition"
       Case "32" strOSSKU = "Essential Business Server Messaging Edition"
       Case "33" strOSSKU = "Server Foundation Edition"
       Case "34" strOSSKU = "Home Server 2011 Edition"
       Case "35" strOSSKU = "Server 2008 without Hyper-V for Windows Essential Server Solutions"
       Case "36" strOSSKU = "Server Standard without Hyper-V"
       Case "37" strOSSKU = "Server Datacenter without Hyper-V Full Edition"
       Case "38" strOSSKU = "Server Enterprise without Hyper-V Full Edition"
       Case "39" strOSSKU = "Server Datacenter without Hyper-V Core Edition"
       Case "40" strOSSKU = "Server Standard without Hyper-V Core Edition"
       Case "41" strOSSKU = "Server Enterprise without Hyper-V Core Edition"
       Case "42" strOSSKU = "Hyper-V Server Edition"
       Case "43" strOSSKU = "Storage Server Express Core Edition"
       Case "44" strOSSKU = "Storage Server Standard Core Edition"
       Case "45" strOSSKU = "Storage Server Workgroup Core Edition"
       Case "46" strOSSKU = "Storage Server Enterprise Core Edition"
       Case "47" strOSSKU = "Starter N Edition"
       Case "48" strOSSKU = "Professional Edition"
       Case "49" strOSSKU = "Professional N Edition"
       Case "50" strOSSKU = "Small Business Server 2011 Essentials Edition"
       Case "51" strOSSKU = "Server For SB Solutions"
       Case "52" strOSSKU = "Server Solutions Premium Edition"
       Case "53" strOSSKU = "Server Solutions Premium Core Edition"
       Case "54" strOSSKU = "Server For SB Solutions EM"
       Case "55" strOSSKU = "Server For SB Solutions EM"
       Case "56" strOSSKU = "MultiPoint Server Edition"
       Case "59" strOSSKU = "Essential Server Solution Management Edition"
       Case "60" strOSSKU = "Essential Server Solution Additional Edition"
       Case "61" strOSSKU = "Essential Server Solution Management SVC Edition"
       Case "62" strOSSKU = "Essential Server Solution Additional SVC Edition"
       Case "63" strOSSKU = "Small Business Server Premium Core Edition"
       Case "64" strOSSKU = "Server Hyper Core V Edition"
       Case "66" strOSSKU = "Starter E Edition"
       Case "67" strOSSKU = "Home Basic E Edition"
       Case "68" strOSSKU = "Home Premium E Edition"
       Case "69" strOSSKU = "Professional E Edition"
       Case "70" strOSSKU = "Enterprise E Edition"
       Case "71" strOSSKU = "Ultimate E Edition"
       Case "72" strOSSKU = "Server Enterprise Evaluation Edition"
       Case "74" strOSSKU = "Prerelease Edition"
       Case "76" strOSSKU = "MultiPoint Server Standard Full Edition"
       Case "77" strOSSKU = "MultiPoint Server Premium Full Edition"
       Case "79" strOSSKU = "Server Standard Evaluation Edition"
       Case "80" strOSSKU = "Server Datacenter Evaluation Edition"
       Case "84" strOSSKU = "Enterprise N Evaluation Edition"
       Case "95" strOSSKU = "Storage Server Workgroup Evaluation Edition"
       Case "96" strOSSKU = "Storage Server Standard Evaluation Edition"
       Case "97" strOSSKU = "Core ARM Edition"
       Case "98" strOSSKU = "Core N Edition"
       Case "99" strOSSKU = "Core Country Specific Edition"
       Case "100" strOSSKU = "Core Single Language Edition"
       Case "101" strOSSKU = "Core Edition"
       Case "103" strOSSKU = "Professional Edition with Windows Media Center"
    Case Else
	strOSSKU = objOS.OperatingSystemSKU
  End Select

End If

'// // Get OS Type from Win32_OperatingSystem class:

  Select Case objOS.OSType
       Case "0" strOSOSType = "Unknown"
       Case "1" strOSOSType = "Other"
       Case "2" strOSOSType = "MACROS"
       Case "3" strOSOSType = "ATTUNIX"
       Case "4" strOSOSType = "DGUX"
       Case "5" strOSOSType = "DECNT"
       Case "6" strOSOSType = "Digital UNIX"
       Case "7" strOSOSType = "OpenVMS"
       Case "8" strOSOSType = "HPUX"
       Case "9" strOSOSType = "AIX"
       Case "10" strOSOSType = "MVS"
       Case "11" strOSOSType = "OS400"
       Case "12" strOSOSType = "OS/2"
       Case "13" strOSOSType = "JavaVM"
       Case "14" strOSOSType = "MS-DOS"
       Case "15" strOSOSType = "Win3x"
       Case "16" strOSOSType = "Win95"
       Case "17" strOSOSType = "Win98"
       Case "18" strOSOSType = "WinNT"
       Case "19" strOSOSType = "WinCE"
       Case "20" strOSOSType = "NCR3000"
       Case "21" strOSOSType = "NetWare"
       Case "22" strOSOSType = "OSF"
       Case "23" strOSOSType = "DC/OS"
       Case "24" strOSOSType = "Reliant UNIX"
       Case "25" strOSOSType = "SCO UnixWare"
       Case "26" strOSOSType = "SCO OpenServer"
       Case "27" strOSOSType = "Sequent"
       Case "28" strOSOSType = "IRIX"
       Case "29" strOSOSType = "Solaris"
       Case "30" strOSOSType = "SunOS"
       Case "31" strOSOSType = "U6000"
       Case "32" strOSOSType = "ASERIES"
       Case "33" strOSOSType = "TandemNSK"
       Case "34" strOSOSType = "TandemNT"
       Case "35" strOSOSType = "BS2000"
       Case "36" strOSOSType = "LINUX"
       Case "37" strOSOSType = "Lynx"
       Case "38" strOSOSType = "XENIX"
       Case "39" strOSOSType = "VM/ESA"
       Case "40" strOSOSType = "Interactive UNIX"
       Case "41" strOSOSType = "BSDUNIX"
       Case "42" strOSOSType = "FreeBSD"
       Case "43" strOSOSType = "NetBSD"
       Case "44" strOSOSType = "GNU Hurd"
       Case "45" strOSOSType = "OS9"
       Case "46" strOSOSType = "MACH Kernel"
       Case "47" strOSOSType = "Inferno"
       Case "48" strOSOSType = "QNX"
       Case "49" strOSOSType = "EPOC"
       Case "50" strOSOSType = "IxWorks"
       Case "51" strOSOSType = "VxWorks"
       Case "52" strOSOSType = "MiNT"
       Case "53" strOSOSType = "BeOS"
       Case "54" strOSOSType = "HP MPE"
       Case "55" strOSOSType = "NextStep"
       Case "56" strOSOSType = "PalmPilot"
       Case "57" strOSOSType = "Rhapsody"
    Case Else
	strOSOSType = objOS.OSType
  End Select

'// // Get OS Product Type from Win32_OperatingSystem class:

  Select Case objOS.ProductType
       Case "1" strOSProductType = "Workstation"
       Case "2" strOSProductType = "Domain Controller"
       Case "3" strOSProductType = "Server"
    Case Else
	strOSProductType = objOS.ProductType
  End Select

'// // Get OS Language from Win32_OperatingSystem class:

  Select Case objOS.OSLanguage
       Case     "1" strOSLanguage = "Arabic"
       Case     "4" strOSLanguage = "Chinese (Simplified)– China"
       Case     "9" strOSLanguage = "English"
       Case  "1025" strOSLanguage = "Arabic – Saudi Arabia"
       Case  "1026" strOSLanguage = "Bulgarian"
       Case  "1027" strOSLanguage = "Catalan"
       Case  "1028" strOSLanguage = "Chinese (Traditional) – Taiwan"
       Case  "1029" strOSLanguage = "Czech"
       Case  "1030" strOSLanguage = "Danish"
       Case  "1031" strOSLanguage = "German – Germany"
       Case  "1032" strOSLanguage = "Greek"
       Case  "1033" strOSLanguage = "English - United States"
       Case  "1034" strOSLanguage = "Spanish – Traditional Sort"
       Case  "1035" strOSLanguage = "Finnish"
       Case  "1036" strOSLanguage = "French – France"
       Case  "1037" strOSLanguage = "Hebrew"
       Case  "1038" strOSLanguage = "Hungarian"
       Case  "1039" strOSLanguage = "Icelandic"
       Case  "1040" strOSLanguage = "Italian – Italy"
       Case  "1041" strOSLanguage = "Japanese"
       Case  "1042" strOSLanguage = "Korean"
       Case  "1043" strOSLanguage = "Dutch – Netherlands"
       Case  "1044" strOSLanguage = "Norwegian – Bokmal"
       Case  "1045" strOSLanguage = "Polish"
       Case  "1046" strOSLanguage = "Portuguese – Brazil"
       Case  "1047" strOSLanguage = "Rhaeto-Romanic"
       Case  "1048" strOSLanguage = "Romanian"
       Case  "1049" strOSLanguage = "Russian"
       Case  "1050" strOSLanguage = "Croatian"
       Case  "1051" strOSLanguage = "Slovak"
       Case  "1052" strOSLanguage = "Albanian"
       Case  "1053" strOSLanguage = "Swedish"
       Case  "1054" strOSLanguage = "Thai"
       Case  "1055" strOSLanguage = "Turkish"
       Case  "1056" strOSLanguage = "Urdu"
       Case  "1057" strOSLanguage = "Indonesian"
       Case  "1058" strOSLanguage = "Ukrainian"
       Case  "1059" strOSLanguage = "Belarusian"
       Case  "1060" strOSLanguage = "Slovenian"
       Case  "1061" strOSLanguage = "Estonian"
       Case  "1062" strOSLanguage = "Latvian"
       Case  "1063" strOSLanguage = "Lithuanian"
       Case  "1065" strOSLanguage = "Persian"
       Case  "1066" strOSLanguage = "Vietnamese"
       Case  "1069" strOSLanguage = "Basque"
       Case  "1070" strOSLanguage = "Serbian"
       Case  "1071" strOSLanguage = "Macedonian (F.Y.R.O. Macedonia)"
       Case  "1072" strOSLanguage = "Sutu"
       Case  "1073" strOSLanguage = "Tsonga"
       Case  "1074" strOSLanguage = "Tswana"
       Case  "1076" strOSLanguage = "Xhosa"
       Case  "1077" strOSLanguage = "Zulu"
       Case  "1078" strOSLanguage = "Afrikaans"
       Case  "1080" strOSLanguage = "Faeroese"
       Case  "1081" strOSLanguage = "Hindi"
       Case  "1082" strOSLanguage = "Maltese"
       Case  "1084" strOSLanguage = "Scottish Gaelic"
       Case  "1085" strOSLanguage = "Yiddish"
       Case  "1086" strOSLanguage = "Malay – Malaysia"
       Case  "2049" strOSLanguage = "Arabic – Iraq"
       Case  "2052" strOSLanguage = "Chinese (Simplified) – PRC"
       Case  "2055" strOSLanguage = "German – Switzerland"
       Case  "2057" strOSLanguage = "English - United Kingdom"
       Case  "2058" strOSLanguage = "Spanish – Mexico"
       Case  "2060" strOSLanguage = "French – Belgium"
       Case  "2064" strOSLanguage = "Italian – Switzerland"
       Case  "2067" strOSLanguage = "Dutch – Belgium"
       Case  "2068" strOSLanguage = "Norwegian – Nynorsk"
       Case  "2070" strOSLanguage = "Portuguese – Portugal"
       Case  "2072" strOSLanguage = "Romanian – Moldova"
       Case  "2073" strOSLanguage = "Russian – Moldova"
       Case  "2074" strOSLanguage = "Serbian – Latin"
       Case  "2077" strOSLanguage = "Swedish – Finland"
       Case  "3073" strOSLanguage = "Arabic – Egypt"
       Case  "3076" strOSLanguage = "Chinese (Traditional) – Hong Kong SAR"
       Case  "3079" strOSLanguage = "German – Austria"
       Case  "3081" strOSLanguage = "English - Australia"
       Case  "3082" strOSLanguage = "Spanish – International Sort"
       Case  "3084" strOSLanguage = "French – Canada"
       Case  "3098" strOSLanguage = "Serbian – Cyrillic"
       Case  "4097" strOSLanguage = "Arabic – Libya"
       Case  "4100" strOSLanguage = "Chinese (Simplified) – Singapore"
       Case  "4103" strOSLanguage = "German – Luxembourg"
       Case  "4105" strOSLanguage = "English - Canada"
       Case  "4106" strOSLanguage = "Spanish – Guatemala"
       Case  "4108" strOSLanguage = "French – Switzerland"
       Case  "5121" strOSLanguage = "Arabic – Algeria"
       Case  "5127" strOSLanguage = "German – Liechtenstein"
       Case  "5129" strOSLanguage = "English - New Zealand"
       Case  "5130" strOSLanguage = "Spanish – Costa Rica"
       Case  "5132" strOSLanguage = "French – Luxembourg"
       Case  "6145" strOSLanguage = "Arabic – Morocco"
       Case  "6153" strOSLanguage = "English - Ireland"
       Case  "6154" strOSLanguage = "Spanish – Panama"
       Case  "7169" strOSLanguage = "Arabic – Tunisia"
       Case  "7177" strOSLanguage = "English – South Africa"
       Case  "7178" strOSLanguage = "Spanish – Dominican Republic"
       Case  "8193" strOSLanguage = "Arabic – Oman"
       Case  "8201" strOSLanguage = "English – Jamaica"
       Case  "8202" strOSLanguage = "Spanish – Venezuela"
       Case  "9217" strOSLanguage = "Arabic – Yemen"
       Case  "9226" strOSLanguage = "Spanish – Colombia"
       Case "10241" strOSLanguage = "Arabic – Syria"
       Case "10249" strOSLanguage = "English – Belize"
       Case "10250" strOSLanguage = "Spanish – Peru"
       Case "11265" strOSLanguage = "Arabic – Jordan"
       Case "11273" strOSLanguage = "English – Trinidad"
       Case "11274" strOSLanguage = "Spanish – Argentina"
       Case "12289" strOSLanguage = "Arabic – Lebanon"
       Case "12298" strOSLanguage = "Spanish – Ecuador"
       Case "13313" strOSLanguage = "Arabic – Kuwait"
       Case "13322" strOSLanguage = "Spanish – Chile"
       Case "14337" strOSLanguage = "Arabic – U.A.E."
       Case "14346" strOSLanguage = "Spanish – Uruguay"
       Case "15361" strOSLanguage = "Arabic – Bahrain"
       Case "15370" strOSLanguage = "Spanish – Paraguay"
       Case "16385" strOSLanguage = "Arabic – Qatar"
       Case "16394" strOSLanguage = "Spanish – Bolivia"
       Case "17418" strOSLanguage = "Spanish – El Salvador"
       Case "18442" strOSLanguage = "Spanish – Honduras"
       Case "19466" strOSLanguage = "Spanish – Nicaragua"
       Case "20490" strOSLanguage = "Spanish – Puerto Rico"
    Case Else
	strOSLanguage = objOS.OSLanguage
  End Select

'// // Get current OS locale setting from Win32_OperatingSystem class:

  Select Case objOS.Locale
       Case "0436" strOSLocale = "Afrikaans - South Africa"
       Case "041c" strOSLocale = "Albanian - Albania"
       Case "0484" strOSLocale = "Alsatian"
       Case "045e" strOSLocale = "Amharic - Ethiopia"
       Case "0401" strOSLocale = "Arabic - Saudi Arabia"
       Case "1401" strOSLocale = "Arabic - Algeria"
       Case "3c01" strOSLocale = "Arabic - Bahrain"
       Case "0c01" strOSLocale = "Arabic - Egypt"
       Case "0801" strOSLocale = "Arabic - Iraq"
       Case "2c01" strOSLocale = "Arabic - Jordan"
       Case "3401" strOSLocale = "Arabic - Kuwait"
       Case "3001" strOSLocale = "Arabic - Lebanon"
       Case "1001" strOSLocale = "Arabic - Libya"
       Case "1801" strOSLocale = "Arabic - Morocco"
       Case "2001" strOSLocale = "Arabic - Oman"
       Case "4001" strOSLocale = "Arabic - Qatar"
       Case "2801" strOSLocale = "Arabic - Syria"
       Case "1c01" strOSLocale = "Arabic - Tunisia"
       Case "3801" strOSLocale = "Arabic - U.A.E."
       Case "2401" strOSLocale = "Arabic - Yemen"
       Case "042b" strOSLocale = "Armenian - Armenia"
       Case "044d" strOSLocale = "Assamese"
       Case "082c" strOSLocale = "Azeri (Cyrillic)"
       Case "042c" strOSLocale = "Azeri (Latin)"
       Case "046d" strOSLocale = "Bashkir"
       Case "042d" strOSLocale = "Basque"
       Case "0423" strOSLocale = "Belarusian"
       Case "0445" strOSLocale = "Bengali (India)"
       Case "0845" strOSLocale = "Bengali (Bangladesh)"
       Case "141A" strOSLocale = "Bosnian (Bosnia/Herzegovina)"
       Case "047e" strOSLocale = "Breton"
       Case "0402" strOSLocale = "Bulgarian"
       Case "0455" strOSLocale = "Burmese"
       Case "0403" strOSLocale = "Catalan"
       Case "045c" strOSLocale = "Cherokee - United States"
       Case "0804" strOSLocale = "Chinese - People's Republic of China"
       Case "1004" strOSLocale = "Chinese - Singapore"
       Case "0404" strOSLocale = "Chinese - Taiwan"
       Case "0c04" strOSLocale = "Chinese - Hong Kong SAR"
       Case "1404" strOSLocale = "Chinese - Macao SAR"
       Case "1483" strOSLocale = "Corsican"
       Case "041a" strOSLocale = "Croatian"
       Case "101a" strOSLocale = "Croatian (Bosnia/Herzegovina)"
       Case "0405" strOSLocale = "Czech"
       Case "0406" strOSLocale = "Danish"
       Case "048c" strOSLocale = "Dari"
       Case "0465" strOSLocale = "Divehi"
       Case "0413" strOSLocale = "Dutch - Netherlands"
       Case "0813" strOSLocale = "Dutch - Belgium"
       Case "0466" strOSLocale = "Edo"
       Case "0409" strOSLocale = "English - United States"
       Case "0809" strOSLocale = "English - United Kingdom"
       Case "0c09" strOSLocale = "English - Australia"
       Case "2809" strOSLocale = "English - Belize"
       Case "1009" strOSLocale = "English - Canada"
       Case "2409" strOSLocale = "English - Caribbean"
       Case "3c09" strOSLocale = "English - Hong Kong SAR"
       Case "4009" strOSLocale = "English - India"
       Case "3809" strOSLocale = "English - Indonesia"
       Case "1809" strOSLocale = "English - Ireland"
       Case "2009" strOSLocale = "English - Jamaica"
       Case "4409" strOSLocale = "English - Malaysia"
       Case "1409" strOSLocale = "English - New Zealand"
       Case "3409" strOSLocale = "English - Philippines"
       Case "4809" strOSLocale = "English - Singapore"
       Case "1c09" strOSLocale = "English - South Africa"
       Case "2c09" strOSLocale = "English - Trinidad"
       Case "3009" strOSLocale = "English - Zimbabwe"
       Case "0425" strOSLocale = "Estonian"
       Case "0438" strOSLocale = "Faroese"
       Case "0429" strOSLocale = "Farsi"
       Case "0464" strOSLocale = "Filipino"
       Case "040b" strOSLocale = "Finnish"
       Case "040c" strOSLocale = "French - France"
       Case "080c" strOSLocale = "French - Belgium"
       Case "2c0c" strOSLocale = "French - Cameroon"
       Case "0c0c" strOSLocale = "French - Canada"
       Case "240c" strOSLocale = "French - Democratic Rep. of Congo"
       Case "300c" strOSLocale = "French - Cote d'Ivoire"
       Case "3c0c" strOSLocale = "French - Haiti"
       Case "140c" strOSLocale = "French - Luxembourg"
       Case "340c" strOSLocale = "French - Mali"
       Case "180c" strOSLocale = "French - Monaco"
       Case "380c" strOSLocale = "French - Morocco"
       Case "e40c" strOSLocale = "French - North Africa"
       Case "200c" strOSLocale = "French - Reunion"
       Case "280c" strOSLocale = "French - Senegal"
       Case "100c" strOSLocale = "French - Switzerland"
       Case "1c0c" strOSLocale = "French - West Indies"
       Case "0462" strOSLocale = "Frisian - Netherlands"
       Case "0467" strOSLocale = "Fulfulde - Nigeria"
       Case "042f" strOSLocale = "FYRO Macedonian"
       Case "0456" strOSLocale = "Galician"
       Case "0437" strOSLocale = "Georgian"
       Case "0407" strOSLocale = "German - Germany"
       Case "0c07" strOSLocale = "German - Austria"
       Case "1407" strOSLocale = "German - Liechtenstein"
       Case "1007" strOSLocale = "German - Luxembourg"
       Case "0807" strOSLocale = "German - Switzerland"
       Case "0408" strOSLocale = "Greek"
       Case "046f" strOSLocale = "Greenlandic"
       Case "0474" strOSLocale = "Guarani - Paraguay"
       Case "0447" strOSLocale = "Gujarati"
       Case "0468" strOSLocale = "Hausa - Nigeria"
       Case "0475" strOSLocale = "Hawaiian - United States"
       Case "040d" strOSLocale = "Hebrew"
       Case "0439" strOSLocale = "Hindi"
       Case "040e" strOSLocale = "Hungarian"
       Case "0469" strOSLocale = "Ibibio - Nigeria"
       Case "040f" strOSLocale = "Icelandic"
       Case "0470" strOSLocale = "Igbo - Nigeria"
       Case "0421" strOSLocale = "Indonesian"
       Case "045d" strOSLocale = "Inuktitut"
       Case "083c" strOSLocale = "Irish"
       Case "0410" strOSLocale = "Italian - Italy"
       Case "0810" strOSLocale = "Italian - Switzerland"
       Case "0411" strOSLocale = "Japanese"
       Case "0486" strOSLocale = "K'iche"
       Case "044b" strOSLocale = "Kannada"
       Case "0471" strOSLocale = "Kanuri - Nigeria"
       Case "0860" strOSLocale = "Kashmiri"
       Case "0460" strOSLocale = "Kashmiri (Arabic)"
       Case "043f" strOSLocale = "Kazakh"
       Case "0453" strOSLocale = "Khmer"
       Case "0487" strOSLocale = "Kinyarwanda"
       Case "0457" strOSLocale = "Konkani"
       Case "0412" strOSLocale = "Korean"
       Case "0440" strOSLocale = "Kyrgyz (Cyrillic)"
       Case "0454" strOSLocale = "Lao"
       Case "0476" strOSLocale = "Latin"
       Case "0426" strOSLocale = "Latvian"
       Case "0427" strOSLocale = "Lithuanian"
       Case "046e" strOSLocale = "Luxembourgish"
       Case "043e" strOSLocale = "Malay - Malaysia"
       Case "083e" strOSLocale = "Malay - Brunei Darussalam"
       Case "044c" strOSLocale = "Malayalam"
       Case "043a" strOSLocale = "Maltese"
       Case "0458" strOSLocale = "Manipuri"
       Case "0481" strOSLocale = "Maori - New Zealand"
       Case "0471" strOSLocale = "Mapudungun"
       Case "044e" strOSLocale = "Marathi"
       Case "047c" strOSLocale = "Mohawk"
       Case "0450" strOSLocale = "Mongolian (Cyrillic)"
       Case "0850" strOSLocale = "Mongolian (Mongolian)"
       Case "0461" strOSLocale = "Nepali"
       Case "0861" strOSLocale = "Nepali - India"
       Case "0414" strOSLocale = "Norwegian (Bokmål)"
       Case "0814" strOSLocale = "Norwegian (Nynorsk)"
       Case "0482" strOSLocale = "Occitan"
       Case "0448" strOSLocale = "Oriya"
       Case "0472" strOSLocale = "Oromo"
       Case "0479" strOSLocale = "Papiamentu"
       Case "0463" strOSLocale = "Pashto"
       Case "0415" strOSLocale = "Polish"
       Case "0416" strOSLocale = "Portuguese - Brazil"
       Case "0816" strOSLocale = "Portuguese - Portugal"
       Case "0446" strOSLocale = "Punjabi"
       Case "0846" strOSLocale = "Punjabi (Pakistan)"
       Case "046B" strOSLocale = "Quecha - Bolivia"
       Case "086B" strOSLocale = "Quecha - Ecuador"
       Case "0C6B" strOSLocale = "Quecha - Peru"
       Case "0417" strOSLocale = "Rhaeto-Romanic"
       Case "0418" strOSLocale = "Romanian"
       Case "0818" strOSLocale = "Romanian - Moldava"
       Case "0419" strOSLocale = "Russian"
       Case "0819" strOSLocale = "Russian - Moldava"
       Case "043b" strOSLocale = "Sami (Lappish)"
       Case "044f" strOSLocale = "Sanskrit"
       Case "043c" strOSLocale = "Scottish Gaelic"
       Case "046c" strOSLocale = "Sepedi"
       Case "0c1a" strOSLocale = "Serbian (Cyrillic)"
       Case "081a" strOSLocale = "Serbian (Latin)"
       Case "0459" strOSLocale = "Sindhi - India"
       Case "0859" strOSLocale = "Sindhi - Pakistan"
       Case "045b" strOSLocale = "Sinhalese - Sri Lanka"
       Case "041b" strOSLocale = "Slovak"
       Case "0424" strOSLocale = "Slovenian"
       Case "0477" strOSLocale = "Somali"
       Case "042e" strOSLocale = "Sorbian"
       Case "0c0a" strOSLocale = "Spanish - Spain (Modern Sort)"
       Case "040a" strOSLocale = "Spanish - Spain (Traditional Sort)"
       Case "2c0a" strOSLocale = "Spanish - Argentina"
       Case "400a" strOSLocale = "Spanish - Bolivia"
       Case "340a" strOSLocale = "Spanish - Chile"
       Case "240a" strOSLocale = "Spanish - Colombia"
       Case "140a" strOSLocale = "Spanish - Costa Rica"
       Case "1c0a" strOSLocale = "Spanish - Dominican Republic"
       Case "300a" strOSLocale = "Spanish - Ecuador"
       Case "440a" strOSLocale = "Spanish - El Salvador"
       Case "100a" strOSLocale = "Spanish - Guatemala"
       Case "480a" strOSLocale = "Spanish - Honduras"
       Case "580a" strOSLocale = "Spanish - Latin America"
       Case "080a" strOSLocale = "Spanish - Mexico"
       Case "4c0a" strOSLocale = "Spanish - Nicaragua"
       Case "180a" strOSLocale = "Spanish - Panama"
       Case "3c0a" strOSLocale = "Spanish - Paraguay"
       Case "280a" strOSLocale = "Spanish - Peru"
       Case "500a" strOSLocale = "Spanish - Puerto Rico"
       Case "540a" strOSLocale = "Spanish - United States"
       Case "380a" strOSLocale = "Spanish - Uruguay"
       Case "200a" strOSLocale = "Spanish - Venezuela"
       Case "0430" strOSLocale = "Sutu"
       Case "0441" strOSLocale = "Swahili"
       Case "041d" strOSLocale = "Swedish"
       Case "081d" strOSLocale = "Swedish - Finland"
       Case "045a" strOSLocale = "Syriac"
       Case "0428" strOSLocale = "Tajik"
       Case "045f" strOSLocale = "Tamazight (Arabic)"
       Case "085f" strOSLocale = "Tamazight (Latin)"
       Case "0449" strOSLocale = "Tamil"
       Case "0444" strOSLocale = "Tatar"
       Case "044a" strOSLocale = "Telugu"
       Case "041e" strOSLocale = "Thai"
       Case "0851" strOSLocale = "Tibetan - Bhutan"
       Case "0451" strOSLocale = "Tibetan - People's Republic of China"
       Case "0873" strOSLocale = "Tigrigna - Eritrea"
       Case "0473" strOSLocale = "Tigrigna - Ethiopia"
       Case "0431" strOSLocale = "Tsonga"
       Case "0432" strOSLocale = "Tswana"
       Case "041f" strOSLocale = "Turkish"
       Case "0442" strOSLocale = "Turkmen"
       Case "0480" strOSLocale = "Uighur - China"
       Case "0422" strOSLocale = "Ukrainian"
       Case "0420" strOSLocale = "Urdu"
       Case "0820" strOSLocale = "Urdu (India)"
       Case "0843" strOSLocale = "Uzbek (Cyrillic)"
       Case "0443" strOSLocale = "Uzbek (Latin)"
       Case "0433" strOSLocale = "Venda"
       Case "042a" strOSLocale = "Vietnamese"
       Case "0452" strOSLocale = "Welsh"
       Case "0434" strOSLocale = "Xhosa"
       Case "0485" strOSLocale = "Yakut"
       Case "0478" strOSLocale = "Yi"
       Case "043d" strOSLocale = "Yiddish"
       Case "046a" strOSLocale = "Yoruba"
       Case "0435" strOSLocale = "Zulu"
    Case Else
        strOSLocale = objOS.Locale
  End Select

'// // Get OS Current Time Time from Win32_OperatingSystem class:

  Select Case objOS.CurrentTimeZone
       Case "-765" strOSCurrentTimeZone = "UTC / GMT -12.75 [ Yankee -0.75 ]"
       Case "-750" strOSCurrentTimeZone = "UTC / GMT -12.5 [ Yankee -0.5]"
       Case "-735" strOSCurrentTimeZone = "UTC / GMT -12.25 [ Yankee -0.25]"
       Case "-720" strOSCurrentTimeZone = "UTC / GMT -12 [ Yankee ]"
       Case "-705" strOSCurrentTimeZone = "UTC / GMT -11.75   [ X-ray -0.75]"
       Case "-690" strOSCurrentTimeZone = "UTC / GMT -11.5   [ X-ray -0.5]"
       Case "-675" strOSCurrentTimeZone = "UTC / GMT -11.25   [ X-ray -0.25]"
       Case "-660" strOSCurrentTimeZone = "UTC / GMT -11   [ X-ray ]"
       Case "-645" strOSCurrentTimeZone = "UTC / GMT -10.75   [ Whiskey -0.75]"
       Case "-630" strOSCurrentTimeZone = "UTC / GMT -10.5   [ Whiskey -0.5]"
       Case "-615" strOSCurrentTimeZone = "UTC / GMT -10.25   [ Whiskey -0.25]"
       Case "-600" strOSCurrentTimeZone = "UTC / GMT -10   [ Whiskey ]"
       Case "-585" strOSCurrentTimeZone = "UTC / GMT -9.75   [ Victor -0.75]"
       Case "-570" strOSCurrentTimeZone = "UTC / GMT -9.5   [ Victor -0.5]"
       Case "-555" strOSCurrentTimeZone = "UTC / GMT -9.25   [ Victor -0.25]"
       Case "-540" strOSCurrentTimeZone = "UTC / GMT -9   [ Victor ]"
       Case "-525" strOSCurrentTimeZone = "UTC / GMT -8.75   [ Uniform -0.75]"
       Case "-510" strOSCurrentTimeZone = "UTC / GMT -8.5   [ Uniform -0.5]"
       Case "-495" strOSCurrentTimeZone = "UTC / GMT -8.25   [ Uniform -0.25]"
       Case "-480" strOSCurrentTimeZone = "UTC / GMT -8   [ Uniform ]"
       Case "-465" strOSCurrentTimeZone = "UTC / GMT -7.75   [ Tango -0.75]"
       Case "-450" strOSCurrentTimeZone = "UTC / GMT -7.5   [ Tango -0.5]"
       Case "-435" strOSCurrentTimeZone = "UTC / GMT -7.25   [ Tango -0.25]"
       Case "-420" strOSCurrentTimeZone = "UTC / GMT -7   [ Tango ]"
       Case "-405" strOSCurrentTimeZone = "UTC / GMT -6.75   [ Sierra -0.75]"
       Case "-390" strOSCurrentTimeZone = "UTC / GMT -6.5   [ Sierra -0.5]"
       Case "-375" strOSCurrentTimeZone = "UTC / GMT -6.25   [ Sierra -0.25]"
       Case "-360" strOSCurrentTimeZone = "UTC / GMT -6   [ Sierra ]"
       Case "-345" strOSCurrentTimeZone = "UTC / GMT -5.75   [ Romeo -0.75]"
       Case "-330" strOSCurrentTimeZone = "UTC / GMT -5.5   [ Romeo -0.5]"
       Case "-315" strOSCurrentTimeZone = "UTC / GMT -5.25   [ Romeo -0.25]"
       Case "-300" strOSCurrentTimeZone = "UTC / GMT -5   [ Romeo ]"
       Case "-285" strOSCurrentTimeZone = "UTC / GMT -4.75   [ Quebec -0.75]"
       Case "-270" strOSCurrentTimeZone = "UTC / GMT -4.5   [ Quebec -0.5]"
       Case "-255" strOSCurrentTimeZone = "UTC / GMT -4.25   [ Quebec -0.25]"
       Case "-240" strOSCurrentTimeZone = "UTC / GMT -4   [ Quebec ]"
       Case "-225" strOSCurrentTimeZone = "UTC / GMT -3.75   [ Papa -0.75]"
       Case "-210" strOSCurrentTimeZone = "UTC / GMT -3.5   [ Papa -0.5]"
       Case "-195" strOSCurrentTimeZone = "UTC / GMT -3.25   [ Papa -0.25]"
       Case "-180" strOSCurrentTimeZone = "UTC / GMT -3   [ Papa ]"
       Case "-165" strOSCurrentTimeZone = "UTC / GMT -2.75   [ Oscar -0.75]"
       Case "-150" strOSCurrentTimeZone = "UTC / GMT -2.5   [ Oscar -0.5]"
       Case "-135" strOSCurrentTimeZone = "UTC / GMT -2.25   [ Oscar -0.25]"
       Case "-120" strOSCurrentTimeZone = "UTC / GMT -2   [ Oscar ]"
       Case "-105" strOSCurrentTimeZone = "UTC / GMT -1.75   [ November -0.75]"
       Case "-90" strOSCurrentTimeZone = "UTC / GMT -1.5   [ November -0.5]"
       Case "-75" strOSCurrentTimeZone = "UTC / GMT -1.25   [ November -0.25]"
       Case "-60" strOSCurrentTimeZone = "UTC / GMT -1   [ November ]"
       Case "0" strOSCurrentTimeZone = "UTC / GMT   [ Zulu ]"
       Case "15" strOSCurrentTimeZone = "UTC / GMT +0.25   [ Zulu +0.25 ]"
       Case "30" strOSCurrentTimeZone = "UTC / GMT +0.5   [ Zulu +0.5 ]"
       Case "45" strOSCurrentTimeZone = "UTC / GMT +0.75   [ Zulu +0.75 ]"
       Case "60" strOSCurrentTimeZone = "UTC / GMT +1   [ Alpha ]"
       Case "75" strOSCurrentTimeZone = "UTC / GMT +1.25   [ Alpha + 0.25 ]"
       Case "90" strOSCurrentTimeZone = "UTC / GMT +1.5   [ Alpha + 0.5 ]"
       Case "105" strOSCurrentTimeZone = "UTC / GMT +1.75   [ Alpha + 0.75 ]"
       Case "120" strOSCurrentTimeZone = "UTC / GMT +2   [ Bravo ]"
       Case "135" strOSCurrentTimeZone = "UTC / GMT +2.25   [ Bravo + 0.25 ]"
       Case "150" strOSCurrentTimeZone = "UTC / GMT +2.5   [ Bravo + 0.5 ]"
       Case "165" strOSCurrentTimeZone = "UTC / GMT +2.75   [ Bravo + 0.75 ]"
       Case "180" strOSCurrentTimeZone = "UTC / GMT +3   [ Charlie ]"
       Case "195" strOSCurrentTimeZone = "UTC / GMT +3.25   [ Charlie + 0.25 ]"
       Case "210" strOSCurrentTimeZone = "UTC / GMT +3.5   [ Charlie + 0.5 ]"
       Case "225" strOSCurrentTimeZone = "UTC / GMT +3.75   [ Charlie + 0.75 ]"
       Case "240" strOSCurrentTimeZone = "UTC / GMT +4   [ Delta ]"
       Case "255" strOSCurrentTimeZone = "UTC / GMT +4.25   [ Delta + 0.25 ]"
       Case "270" strOSCurrentTimeZone = "UTC / GMT +4.5   [ Delta + 0.5 ]"
       Case "285" strOSCurrentTimeZone = "UTC / GMT +4.75   [ Delta + 0.75 ]"
       Case "300" strOSCurrentTimeZone = "UTC / GMT +5   [ Echo ]"
       Case "315" strOSCurrentTimeZone = "UTC / GMT +5.25   [ Echo + 0.25 ]"
       Case "330" strOSCurrentTimeZone = "UTC / GMT +5.5   [ Echo + 0.5 ]"
       Case "345" strOSCurrentTimeZone = "UTC / GMT +5.75   [ Echo + 0.75 ]"
       Case "360" strOSCurrentTimeZone = "UTC / GMT +6   [ Foxtrot ]"
       Case "375" strOSCurrentTimeZone = "UTC / GMT +6.25   [ Foxtrot + 0.25 ]"
       Case "390" strOSCurrentTimeZone = "UTC / GMT +6.5   [ Foxtrot + 0.5 ]"
       Case "405" strOSCurrentTimeZone = "UTC / GMT +6.75   [ Foxtrot + 0.75 ]"
       Case "420" strOSCurrentTimeZone = "UTC / GMT +7   [ Golf ]"
       Case "435" strOSCurrentTimeZone = "UTC / GMT +7.25   [ Golf + 0.25 ]"
       Case "450" strOSCurrentTimeZone = "UTC / GMT +7.5   [ Golf + 0.5 ]"
       Case "465" strOSCurrentTimeZone = "UTC / GMT +7.75   [ Golf + 0.75 ]"
       Case "480" strOSCurrentTimeZone = "UTC / GMT +8   [ Hotel ]"
       Case "595" strOSCurrentTimeZone = "UTC / GMT +8.25   [ Hotel + 0.25 ]"
       Case "510" strOSCurrentTimeZone = "UTC / GMT +8.5   [ Hotel + 0.5 ]"
       Case "525" strOSCurrentTimeZone = "UTC / GMT +8.75   [ Hotel + 0.75 ]"
       Case "540" strOSCurrentTimeZone = "UTC / GMT +9   [ India ]"
       Case "555" strOSCurrentTimeZone = "UTC / GMT +9.25   [ India + 0.25 ]"
       Case "570" strOSCurrentTimeZone = "UTC / GMT +9.5   [ India + 0.5 ]"
       Case "585" strOSCurrentTimeZone = "UTC / GMT +9.75   [ India + 0.75 ]"
       Case "600" strOSCurrentTimeZone = "UTC / GMT +10   [ Kilo ]"
       Case "615" strOSCurrentTimeZone = "UTC / GMT +10.25   [ Kilo + 0.25 ]"
       Case "630" strOSCurrentTimeZone = "UTC / GMT +10.5   [ Kilo + 0.5 ]"
       Case "645" strOSCurrentTimeZone = "UTC / GMT +10.75   [ Kilo + 0.75 ]"
       Case "660" strOSCurrentTimeZone = "UTC / GMT +11   [ Lima ]"
       Case "675" strOSCurrentTimeZone = "UTC / GMT +11.25   [ Lima + 0.25 ]"
       Case "690" strOSCurrentTimeZone = "UTC / GMT +11.5   [ Lima + 0.5 ]"
       Case "705" strOSCurrentTimeZone = "UTC / GMT +11.75   [ Lima + 0.75 ]"
       Case "765" strOSCurrentTimeZone = "UTC / GMT +12 [ Mike ]"
       Case "825" strOSCurrentTimeZone = "UTC / GMT +13 [ Mike +1 ]"

    Case Else
	strOSCurrentTimeZone = objOS.CurrentTimeZone
  End Select

Next

'// Set variables gathered from SoftwareLicensingProduct:
      For Each objSLP in colSLP 

If strRegWinVersion => 6.0 Then

        strSLPName = objSLP.Name
        strSLPDesc = objSLP.Description
         strSLPGracePeriodRemaining = RemainingMinutes(objSLP.GracePeriodRemaining)
         strSLPExtendedGrace = RemainingMinutes(objSLP.ExtendedGrace)
End If

'// // Get License Type / Channel from objSLP.Description:

If strRegWinVersion => 6.0 Then

       If InStrB(strSLPDesc,"OEM_SLP") <> 0 then 
           strLicTypeChannel = "2 - OEM SLP / OEM_SLP"

       ElseIf InStrB(strSLPDesc,"OEM_COA_SLP") <> 0 then 
           strLicTypeChannel = "8 - COA SLP / OEM_COA_SLP"

       ElseIf InStrB(strSLPDesc,"OEM_DM") <> 0 then 
           strLicTypeChannel = "9 - OEM Digital Marker / OEM_DM"

       ElseIf InStrB(strSLPDesc,"OEM_COA_NSLP") <> 0 then 
           strLicTypeChannel = "3 - OEM System Builder / OEM_COA_NSLP"

       ElseIf InStrB(strSLPDesc,"RETAIL") <> 0 then 
           strLicTypeChannel = "5 - Retail / RETAIL"

       ElseIf InStrB(strSLPDesc,"VOLUME_MAK") <> 0 then 
           strLicTypeChannel = "6 - Volume MAK / VOLUME_MAK"

       ElseIf InStrB(strDesc,"VOLUME_KMSCLIENT") <> 0 then 
           strLicTypeChannel = "1 - KMS Client / VOLUME_KMSCLIENT"

       ElseIf InStrB(strDesc,"VOLUME_KMS") <> 0 then 
           strLicTypeChannel = "7 - Volume KMS Server / VOLUME_KMS"

       ElseIf InStrB(strDesc,"TIMEBASED_EVAL") <> 0 then 
           strLicTypeChannel = " Timebased evaluation / TIMEBASED_EVAL"

       Else strLicTypeChannel = "Unknown"

      End If

End If

'// // Get License Status from SoftwareLicensingProduct:

If strRegWinVersion => 6.0 Then

 	Const HR_S_OK                                 = 0
	Const HR_ERROR_FILE_NOT_FOUND                 = &H80070002
	Const HR_SL_E_GRACE_TIME_EXPIRED              = &HC004F009
	Const HR_SL_E_NOT_GENUINE                     = &HC004F200

  Select Case objSLP.LicenseStatus
       Case "0" strSLPLicenseStatus = "Unlicensed"
       Case "1" strSLPLicenseStatus = "Licensed"
       Case "2" strSLPLicenseStatus = "Out-Of-Box Grace Period"
       Case "3" strSLPLicenseStatus = "Out-Of-Tolerance Grace Period"
       Case "4" strSLPLicenseStatus = "Non-Genuine Grace Period"
       Case "5" strSLPLicenseStatus = "Notification"
		 Select Case objSLP.LicenseStatusReason
		 Case HR_SL_E_GRACE_TIME_EXPIRED : strSLPLicenseStatus = strSLPLicenseStatus & ", grace time expired [code &HC004F009]"
		 Case HR_SL_E_NOT_GENUINE : strSLPLicenseStatus = strSLPLicenseStatus & ", not genuine [code &HC004F200]"
		 Case Else : strSLPLicenseStatus = strSLPLicenseStatus + " [code " & objSLP.LicenseStatusReason & "]"
		 End Select
       Case "6" strSLPLicenseStatus = "Extended Grace"
    Case Else
	strSLPLicenseStatus = objSLP.LicenseStatus
  End Select


  Select Case objSLP.GenuineStatus
       Case "0" : strSLPGenuineStatus = "Genuine   [ code 0 ]"
       Case "1" : strSLPGenuineStatus = "Not Activated   [ code 1 ]"
       Case "3" : strSLPGenuineStatus = "Blocked VLK   [ code 3 ]"
       Case "4" : strSLPGenuineStatus = "No Check PID   [ code 4 ]"
       Case "5" : strSLPGenuineStatus = "PID is invalid   [ code 5 ]"
       Case "6" : strSLPGenuineStatus = "Genuine / WGA unsupported OS   [ code 6 ]"
       Case "8" : strSLPGenuineStatus = "Invalid Product Key   [ code 8 ]"
       Case "10" : strSLPGenuineStatus = "Clock sync error   [ code 10 ]"
       Case "11" : strSLPGenuineStatus = "Blocked PID   [ code 11 ]"
       Case "12" : strSLPGenuineStatus = "License store error   [ code 12 ]"
       Case "13" : strSLPGenuineStatus = "Geographically blocked PID   [ code 13 ]"
       Case "50" : strSLPGenuineStatus = "Invalid License   [ code 50 ]"
       Case "51" : strSLPGenuineStatus = "Tampered Binary   [ code 51 ]"
    Case Else : strSLPGenuineStatus = "Code " & sobjSLP.GenuineStatus
  End Select


'// // Get & Convert EvaluationEndDate from SoftwareLicensingProduct:

      dtmConvertedDateTime.Value = objSLP.EvaluationEndDate
      strSLPEvaluationEndDate = dtmConvertedDateTime.GetVarDate

   If strSLPEvaluationEndDate = "01/01/1601" Then
      strSLPEvaluationEndDate = "."
   End If

End If

Next

'// Set variables gathered from SoftwareLicensingService:
      For Each objSLS in colSLS 

If strRegWinVersion => 6.0 Then
	strSLSRemainingWindowsReArmCount = objSLS.RemainingWindowsReArmCount

   If strSLSRemainingWindowsReArmCount = "999" OR strSLSRemainingWindowsReArmCount = "1000" Then
      strSLSRemainingWindowsReArmCount = "."
   End If

End IF


'// Detect XP Media Center Edition:

Set objFSO = CreateObject("Scripting.FileSystemObject")
set envProcess = objShell.Environment("process")  
  windir = envProcess("windir")

If objFSO.FileExists(windir & "\ehome\ehshell.exe") Then
     MCEver = objFSO.GetFileVersion(windir & "\ehome\ehshell.exe")

       If InStr(1,MCEver,"5.1.2600") = 1 then 
        MCEbuild = Right("0" & MCEver, 4)

         If MCEbuild < "1217" then
           strOSCaption = "Microsoft Windows XP Media Center Edition 2002"
         ElseIf MCEbuild => "1217" then
           strOSCaption = "Microsoft Windows XP Media Center Edition 2004"
 
         End If

       ElseIf InStr(1,MCEver,"5.1.27") = 1 then 
           strOSCaption = "Microsoft Windows XP Media Center Edition 2005"

      End If
End If

'// Detect XP Tablet PC Edition:
If strRegWinVersion = 5.1 Then
          oReg.GetStringValue HKEY_LOCAL_MACHINE,"SOFTWARE\Microsoft\Windows\CurrentVersion\Tablet PC","Ident",strRegTPCIdent

 If strRegTPCIdent => 1.7 Then
           strOSCaption = "Microsoft Windows XP Tablet PC Edition 2005"
           strRegEditionID = "TabletPC2005"
         ElseIf strRegTPCIdent < "1.7" then
           strOSCaption = "Microsoft Windows XP Tablet PC Edition"
           strRegEditionID = "TabletPC"
 End If

End If

'// Get Channel ID:

 If strRegWinVersion => 5.0 Then

  strPartialPID = Mid(strOSSerialNumber,7,3)

   If strPartialPID = "OEM" Then 
	strOSChannelID = "OEM"
     ElseIf strPartialPID <= 652 AND strPartialPID >= 640 Then
	strOSChannelID = "Volume"
     Else
       Select Case strPartialPID
          Case 000 strOSChannelID = ""
          Case 270 strOSChannelID = "Volume"
          Case 335 strOSChannelID = "Retail"

        Case Else
            strOSChannelID = strPartialPID
       End Select
   End If
 End If

Next


'// Windows Product Activation

 For Each objWPA in colWPA 

'// // XP Activation Status

 If strRegWinVersion => 5.1 Then

    strWPARemainingGracePeriod = objWPA.RemainingGracePeriod

    Select Case objWPA.ActivationRequired
      Case "0"
	strWPAActivationStatus = "Activated"
      Case "1"
	strWPAActivationStatus = "Not Activated"
      Case Else
	strWPAActivationStatus = objWPA.ActivationRequired
    End Select

'// // XP - Is Notification On:

    Select Case objWPA.IsNotificationOn
      Case "0"
	strWPAIsNotificationOn = "No"
      Case "1"
	strWPAIsNotificationOn = "Yes"
      Case Else
	strWPAIsNotificationOn = objWPA.IsNotificationOn
      End Select
 End If

 Next

 If strRegWinVersion => 6.0 And strOutput = "file" Then
      Win6File
    ElseIf strRegWinVersion => 5.1 And strOutput = "file" Then
      Win51File
    ElseIf strRegWinVersion => 5.0 And strOutput = "file" Then
      Win50File
 End If

 If strRegWinVersion => 6.0 Then
      Win6Echo
    ElseIf strRegWinVersion => 5.1 Then
      Win51Echo
    ElseIf strRegWinVersion => 5.0 Then
      Win50Echo
 End If

Sub Win6Echo
   WScript.Echo "--------------------------------------------------------------------------------------" & vbCR _
    & "  Operating System information" & vbCR _
    & "--------------------------------------------------------------------------------------" & vbCR _
    & "Product Name: " & vbTAB & strOSCaption & vbCR _
    & "SKU: " & vbTAB &VBTAB & strOSSKU  & vbCR _
    & "Edition ID: " & vbTAB & strRegEditionID & vbCR _
    & "CSD Version: " & vbTAB & strOSCSDVersion & vbCR _
    & "OS Architecture: " & vbTAB & strOSArchitecture & vbCR & vbCR _
    & "Windows Version:" & vbTAB & strRegWinVersion & vbTAB & vbTAB & vbTAB & "Build:" & vbTAB & strOSBuildNumber & vbCR _
    & "Build Lab:" & vbTAB & vbTAB & strRegWinBuildLab & vbCR _
    & "Build Lab Ex:" & vbTAB & strRegWinBuildLabEx & vbCR _
    & "Build Type:" & vbTAB & strOSBuildType & vbCR & vbCR _
    & "OS Type: "  & vbTAB & vbTAB & strOSOSType  & vbTAB & vbTAB & "Country Code:" & vbTAB & strCountryCode & vbCR _
    & "Product Type: "  & vbTAB & strOSProductType & vbCR _
    & "Primary OS: "  & vbTAB & strOSPrimary & vbCR _
    & "Windows Directory: "  & vbTAB & strOSWinDir & vbCR & vbCR _
    & "Language: " & vbTAB & strOSLanguage & vbCR _
    & "Locale: " & vbTAB & vbTAB & strOSLocale & vbCR & vbCR _
    & "Product ID: " & vbTAB & strOSSerialNumber & vbCR _   
    & "Product Key: "  & vbTAB & chr(34) & strProductKey & chr(34) & vbTAB & "[ " & strPartialPK & " ]" & vbCR _
    & "  Lic Type / Channel: " & vbTAB & "     " & strLicTypeChannel & vbCR & vbCR _
    & "Install Date: "  & vbTAB & strOSInstallDate & vbCR _
    & "Last Boot Time: " & vbTAB & "    " & strOSLastBootUpTime & vbCR _
    & "Local Date/Time: " & vbTAB & "    " & Now() & vbCR _
    & "Current Time Zone: " & vbTAB & "    " & strOSCurrentTimeZone & vbCR _
    & "--------------------------------------------------------------------------------------" & vbCR _
    & "Computer System:" & vbCR _
    & "   Manufacturer:" & vbTAB & strCSManufacturer & vbCR _ 
    & "   Model:" & vbTAB & vbTAB & strCSModel & vbTAb & "    " & "Name:" & vbTAB & vbTAB & strCSName & vbCR _
    & "   PC System Type:" & vbTAB & strCSPCSystemType & vbTAB & "    " & "System Type:" & vbTAB & strCSSystemType & vbCR _
    & "Base Board:" & vbCR _
    & "   Manufacturer:" & vbTAB & strBBManufacturer & vbCR _
    & "   Product:" & vbTAB & vbTAB & strBBProduct & vbTAB & vbTAB & "Version:" & vbTAB & strBBVersion & vbCR _
    & "--------------------------------------------------------------------------------------" & vbCR _
    & "Registered Owner: "  & vbTAB & strOSRegOwner & vbCR _
    & "Organization: "  & vbTAB & strOSOrganization & vbCR _
    & "--------------------------------------------------------------------------------------"
     
   WScript.Echo "-------------------------------------------------" & vbCR _
    & "  Software Licensing Product information" & vbCR _
    & "-------------------------------------------------" & vbCR _
    & "Name:  " & strSLPName & vbCR _
    & "Description: " & vbCR _ 
    & "  " & strSLPDesc  & vbCR & vbCR _
    & "License Status:  " & strSLPLicenseStatus & vbCR _
    & "Genuine Status:  " & strSLPGenuineStatus & vbCR & vbCR _
    & "Grace Period Remaining:" & vbTAB & vbTAB & strSLPGracePeriodRemaining & vbCR _ 
    & "Extended Grace:" & vbTAB & vbTAB & vbTAB & strSLPExtendedGrace & vbCR _
    & "Evaluation End Date:" & vbTAB & vbTAB & vbTAB & strSLPEvaluationEndDate & vbCR _
    & "Remaining Windows Rearm Count:" & vbTAB & strSLSRemainingWindowsReArmCount 

    exportFile6 = MsgBox ("Save to file?" & vbCR & vbCR _ 
      & "File: .\" & oFileName1 & strRegWinVersion & "-Report.txt", vbYesNo, eMsgBoxTitle)

Select Case exportFile6
Case 6, vbYes
    Win6File
    WScript.Quit
Case 7, vbNo
    WScript.Quit
  End Select

End Sub

Sub Win51Echo
   WScript.Echo "--------------------------------------------------------------------------------------" & vbCR _
    & "  Operating System information" & vbCR _
    & "--------------------------------------------------------------------------------------" & vbCR _
    & "Product Name: " & VBTAB & strOSCaption & VBCR _
    & "Edition ID: " & VBTAB & strRegEditionID & VBCR _
    & "CSD Version: " & VBTAB & strOSCSDVersion & VBCR _
    & "OS Architecture: " & VBTAB & strOSArchitecture & VBCR & VBCR _
    & "Windows Version:" & vbTab & strRegWinVersion & vbTab & vbTab & vbTAB & "       Build: " & strOSBuildNumber & VBCR _
    & "Build Lab:" & vbTab & vbTab & strRegWinBuildLab & VBCR _
    & "Build Type:" & vbTAB & strOSBuildType & vbCR & vbCR _
    & "OS Type: "  & vbTAB & vbTAB & strOSOSType  & vbTAB & vbTAB & "Country Code:" & vbTAB & strCountryCode & vbCR _
    & "Product Type: "  & vbTAB & strOSProductType & vbCR _
    & "Primary OS: "  & vbTAB & strOSPrimary & vbCR _
    & "Windows Directory: "  & vbTAB & strOSWinDir & vbCR & vbCR _
    & "Language: " & vbTAB & strOSLanguage & vbCR _
    & "Locale: " & vbTAB & vbTAB & strOSLocale & vbCR & vbCR _
    & "Product ID: " & vbTAB & strOSSerialNumber & vbCR _   
    & "Product Key: "  & vbTAB & chr(34) & strProductKey & chr(34) & vbCR _
    & "Channel ID: " & vbTAB & strOSChannelID & vbCR & vbCR _ 
    & "Activation Status:    " & strWPAActivationStatus & vbTAB & "   Is Notification On:   " & strWPAIsNotificationOn & vbCR _
    & "Remaining Grace Period:  " & vbTAB & strWPARemainingGracePeriod & " days" & VBCR & VBCR _
    & "Install Date: "  & vbTAB & strOSInstallDate & vbCR _
    & "Last Boot Time: " & vbTAB & "    " & strOSLastBootUpTime & vbCR _
    & "Local Date/Time: " & vbTAB & "    " & Now() & vbCR _
    & "Current Time Zone: " & vbTAB & "    " & strOSCurrentTimeZone & vbCR _
    & "--------------------------------------------------------------------------------------" & vbCR _
    & "Computer System:" & vbCR _
    & "   Manufacturer:" & vbTAB & strCSManufacturer & vbCR _ 
    & "   Model:" & vbTAB & vbTAB & strCSModel & vbTAb & "    " & "Name:" & vbTAB & vbTAB & strCSName & vbCR _
    & vbTAB & vbTAB & "System Type:" & vbTAB & strCSSystemType & vbCR _
    & "Base Board:" & vbCR _
    & "   Manufacturer:" & vbTAB & strBBManufacturer & vbCR _
    & "   Product:" & vbTAB & vbTAB & strBBProduct & vbTAB & vbTAB & "Version:" & vbTAB & strBBVersion & vbCR _
    & "--------------------------------------------------------------------------------------" & vbCR _
    & "Registered Owner: "  & vbTAB & strOSRegOwner & vbCR _
    & "Organization: "  & vbTAB & strOSOrganization & vbCR _
    & "--------------------------------------------------------------------------------------"


    exportFile51 = MsgBox ("Save to file?" & vbCR & vbCR _ 
      & "File: .\" & oFileName1 & strRegWinVersion & "-Report.txt", vbYesNo, eMsgBoxTitle)

Select Case exportFile51
Case 6, vbYes
    Win51File
    WScript.Quit
Case 7, vbNo
    WScript.Quit
  End Select

End Sub

Sub Win50Echo
   WScript.Echo "--------------------------------------------------------------------------------------" & vbCR _
    & "  Operating System information" & vbCR _
    & "--------------------------------------------------------------------------------------" & vbCR _
    & "Product Name: " & VBTAB & strOSCaption & VBCR _
    & "Edition ID: " & VBTAB & strRegEditionID & VBCR _
    & "CSD Version: " & VBTAB & strOSCSDVersion & VBCR _
    & "OS Architecture: " & VBTAB & strOSArchitecture & VBCR & VBCR _
    & "Windows Version:" & vbTab & strRegWinVersion & vbTab & vbTab & vbTAB & "       Build: " & strOSBuildNumber & VBCR _
    & "Build Lab:" & vbTab & vbTab & strRegWinBuildLab & VBCR _
    & "Build Type:" & vbTAB & strOSBuildType & vbCR & vbCR _
    & "OS Type: "  & vbTAB & vbTAB & strOSOSType  & vbTAB & vbTAB & "Country Code:" & vbTAB & strCountryCode & vbCR _
    & "Product Type: "  & vbTAB & strOSProductType & vbCR _
    & "Primary OS: "  & vbTAB & strOSPrimary & vbCR _
    & "Windows Directory: "  & vbTAB & strOSWinDir & vbCR & vbCR _
    & "Language: " & vbTAB & strOSLanguage & vbCR _
    & "Locale: " & vbTAB & vbTAB & strOSLocale & vbCR & vbCR _
    & "Product ID: " & vbTAB & strOSSerialNumber & vbCR _   
    & "Product Key: "  & vbTAB & chr(34) & strProductKey & chr(34) & vbCR _
    & "Channel ID: " & vbTAB & strOSChannelID & vbCR & vbCR _ 
    & "Install Date: "  & vbTAB & strOSInstallDate & vbCR _
    & "Last Boot Time: " & vbTAB & "    " & strOSLastBootUpTime & vbCR _
    & "Local Date/Time: " & vbTAB & "    " & Now() & vbCR _
    & "Current Time Zone: " & vbTAB & "    " & strOSCurrentTimeZone & vbCR _
    & "--------------------------------------------------------------------------------------" & vbCR _
    & "Computer System:" & vbCR _
    & "   Manufacturer:" & vbTAB & strCSManufacturer & vbCR _ 
    & "   Model:" & vbTAB & vbTAB & strCSModel & vbTAb & "    " & "Name:" & vbTAB & vbTAB & strCSName & vbCR _
    & vbTAB & vbTAB & "System Type:" & vbTAB & strCSSystemType & vbCR _
    & "Base Board:" & vbCR _
    & "   Manufacturer:" & vbTAB & strBBManufacturer & vbCR _
    & "   Product:" & vbTAB & vbTAB & strBBProduct & vbTAB & vbTAB & "Version:" & vbTAB & strBBVersion & vbCR _
    & "--------------------------------------------------------------------------------------" & vbCR _
    & "Registered Owner: "  & vbTAB & strOSRegOwner & vbCR _
    & "Organization: "  & vbTAB & strOSOrganization & vbCR _
    & "--------------------------------------------------------------------------------------"


    exportFile50 = MsgBox ("Save to file?" & vbCR & vbCR _ 
      & "File: .\" & oFileName1 & strRegWinVersion & "-Report.txt", vbYesNo, eMsgBoxTitle)

Select Case exportFile50
Case 6, vbYes
    Win50File
    WScript.Quit
Case 7, vbNo
    WScript.Quit
  End Select

End Sub

Sub Win6File
  Set fso = CreateObject("Scripting.FileSystemObject")
  Set outputTXT = fso.OpenTextFile(".\" & oFileName1 & strRegWinVersion & "-Report.txt", 2, True)
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  " & rL1
    outputTXT.WriteLine "     " & rL2
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  " & rL4
    outputTXT.WriteLine ""
    outputTXT.WriteLine "    " & sBy & "  |  " & sVer
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine "    Operating System information"
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine "  Product Name: " & vbTAB & strOSCaption
    outputTXT.WriteLine "  SKU: " & vbTAB & vbTAB &VBTAB & strOSSKU
    outputTXT.WriteLine "  Edition ID: " & vbTAB & vbTAB & strRegEditionID
    outputTXT.WriteLine "  CSD Version: " & vbTAB & vbTAB & strOSCSDVersion
    outputTXT.WriteLine "  OS Architecture: " & vbTAB & strOSArchitecture
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  Windows Version:" & vbTAB & strRegWinVersion & vbTAB & vbTAB & vbTAB & vbTAB & "Build:" & vbTAB & strOSBuildNumber
    outputTXT.WriteLine "  Build Lab:" & vbTAB & vbTAB & strRegWinBuildLab
    outputTXT.WriteLine "  Build Lab Ex:" & vbTAB & vbTAB & strRegWinBuildLabEx
    outputTXT.WriteLine "  Build Type:" & vbTAB & vbTAB & strOSBuildType
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  OS Type: "  & vbTAB & vbTAB & strOSOSType & vbTAB & vbTAB & vbTAB & "Country Code:" & vbTAB & strCountryCode
    outputTXT.WriteLine "  Product Type: " & vbTAB & strOSProductType
    outputTXT.WriteLine "  Primary OS: "  & vbTAB & vbTAB & strOSPrimary
    outputTXT.WriteLine "  Windows Directory: "  & vbTAB & strOSWinDir
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  Language: " & vbTAB & vbTAB & strOSLanguage
    outputTXT.WriteLine "  Locale: " & vbTAB & vbTAB & strOSLocale
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  Product ID: " & vbTAB & vbTAB & strOSSerialNumber
    outputTXT.WriteLine "  Product Key: " & vbTAB & vbTAB & chr(34) & strProductKey & chr(34)
    outputTXT.WriteLine "  Lic Type / Channel: " & vbTAB & strLicTypeChannel
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  Install Date: "  & vbTAB & strOSInstallDate
    outputTXT.WriteLine "  Last Boot Time: " & vbTAB & " " & strOSLastBootUpTime
    outputTXT.WriteLine "  Local Date/Time: " & vbTAB & " " & Now()
    outputTXT.WriteLine "  Current Time Zone: " & vbTAB & " " & strOSCurrentTimeZone
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine "  Computer System:"
    outputTXT.WriteLine "     Manufacturer:" & vbTAB & strCSManufacturer
    outputTXT.WriteLine "     Model:" & vbTAB & vbTAB & strCSModel & vbTAB & "    " & "Name:" & vbTAB & "   " & strCSName
    outputTXT.WriteLine "     PC System Type:" & vbTAB & strCSPCSystemType & vbTAB & vbTAB & "System Type:" & "   " & strCSSystemType
    outputTXT.WriteLine "  Base Board:"
    outputTXT.WriteLine "     Manufacturer:" & vbTAB & strBBManufacturer
    outputTXT.WriteLine "     Product:" & vbTAB & vbTAB & strBBProduct & vbTAB & vbTAB & "Version:" & vbTAB & strBBVersion
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine "  Registered Owner: "  & vbTAB & strOSRegOwner
    outputTXT.WriteLine "  Organization: "  & vbTAB & strOSOrganization
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine ""
    outputTXT.WriteLine ""    
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine "    Software Licensing Product"
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine "  Name:  " & strSLPName
    outputTXT.WriteLine "  Description: " 
    outputTXT.WriteLine "       " & strSLPDesc
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  License Status:  " & strSLPLicenseStatus
    outputTXT.WriteLine "  Genuine Status:  " & strSLPGenuineStatus
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  Grace Period Remaining: " & vbTAB & "   " & strSLPGracePeriodRemaining
    outputTXT.WriteLine "  Extended Grace: " & vbTAB & vbTAB & "   " & strSLPExtendedGrace
    outputTXT.WriteLine "  Evaluation End Date: " & vbTAB & vbTAB & "   " & strSLPEvaluationEndDate 
    outputTXT.WriteLine "  Remaining Windows Rearm Count:" & "   " & strSLSRemainingWindowsReArmCount 
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    WScript.Quit

End Sub

Sub Win51File
  Set fso = CreateObject("Scripting.FileSystemObject")
  Set outputTXT = fso.OpenTextFile(".\" & oFileName1 & strRegWinVersion & "-Report.txt", 2, True)
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  " & rL1
    outputTXT.WriteLine "     " & rL2
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  " & rL4
    outputTXT.WriteLine ""
    outputTXT.WriteLine "    " & sBy & "  |  " & sVer
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine "    Operating System information"
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine "  Product Name: " & VBTAB & strOSCaption
    outputTXT.WriteLine "  Edition ID: " & vbTAB & VBTAB & strRegEditionID
    outputTXT.WriteLine "  CSD Version: " & vbTAB & VBTAB & strOSCSDVersion
    outputTXT.WriteLine "  OS Architecture: " & VBTAB & strOSArchitecture
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  Windows Version:" & vbTab & strRegWinVersion & vbTab & vbTab & vbTAB & "       Build: " & strOSBuildNumber
    outputTXT.WriteLine "  Build Lab:" & vbTab & vbTab & strRegWinBuildLab
    outputTXT.WriteLine "  Build Type:" & vbTAB & vbTAB & strOSBuildType
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  OS Type: "  & vbTAB & vbTAB & strOSOSType & vbTAB & vbTAB & vbTAB & "Country Code:" & vbTAB & strCountryCode
    outputTXT.WriteLine "  Product Type: "  & vbTAB & strOSProductType
    outputTXT.WriteLine "  Primary OS: "  & vbTAB & vbTAB & strOSPrimary
    outputTXT.WriteLine "  Windows Directory: "  & vbTAB & strOSWinDir
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  Language: " & vbTAB & vbTAB & strOSLanguage
    outputTXT.WriteLine "  Locale: " & vbTAB & vbTAB & strOSLocale
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  Product ID: " & vbTAB & vbTAB & strOSSerialNumber
    outputTXT.WriteLine "  Product Key: " & vbTAB & vbTAB & chr(34) & strProductKey & chr(34)
    outputTXT.WriteLine "  Channel ID: " & vbTAB & vbTAB & strOSChannelID
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  Activation Status:    " & strWPAActivationStatus & vbTAB & "   Is Notification On:   " & strWPAIsNotificationOn
    outputTXT.WriteLine "  Remaining Grace Period:  " & vbTAB & vbTAB & strWPARemainingGracePeriod & " days"
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  Install Date: "  & vbTAB & strOSInstallDate
    outputTXT.WriteLine "  Last Boot Time: " & vbTAB & " " & strOSLastBootUpTime
    outputTXT.WriteLine "  Local Date/Time: " & vbTAB & " " & Now()
    outputTXT.WriteLine "  Current Time Zone: " & vbTAB & " " & strOSCurrentTimeZone
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine "  Computer System:"
    outputTXT.WriteLine "     Manufacturer:" & vbTAB & strCSManufacturer
    outputTXT.WriteLine "     Model:" & vbTAB & vbTAB & strCSModel & vbTAb & "    " & "Name:" & vbTAB & "   " & strCSName
    outputTXT.WriteLine vbTAB & vbTAB & "System Type:" & vbTAB & strCSSystemType 
    outputTXT.WriteLine "  Base Board:"
    outputTXT.WriteLine "     Manufacturer:" & vbTAB & strBBManufacturer
    outputTXT.WriteLine "     Product:" & vbTAB & vbTAB & strBBProduct & vbTAB & vbTAB & "Version:" & vbTAB & strBBVersion
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine "  Registered Owner: "  & vbTAB & strOSRegOwner
    outputTXT.WriteLine "  Organization: "  & vbTAB & strOSOrganization
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    WScript.Quit
End Sub

Sub Win50File
  Set fso = CreateObject("Scripting.FileSystemObject")
  Set outputTXT = fso.OpenTextFile(".\" & oFileName1 & strRegWinVersion & "-Report.txt", 2, True)
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  " & rL1
    outputTXT.WriteLine "     " & rL2
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  " & rL4
    outputTXT.WriteLine ""
    outputTXT.WriteLine "    " & sBy & "  |  " & sVer
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine "    Operating System information"
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine "  Product Name: " & VBTAB & strOSCaption
    outputTXT.WriteLine "  Edition ID: " & vbTAB & VBTAB & strRegEditionID
    outputTXT.WriteLine "  CSD Version: " & vbTAB & VBTAB & strOSCSDVersion
    outputTXT.WriteLine "  OS Architecture: " & VBTAB & strOSArchitecture
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  Windows Version:" & vbTab & strRegWinVersion & vbTab & vbTab & vbTAB & "       Build: " & strOSBuildNumber
    outputTXT.WriteLine "  Build Lab:" & vbTab & vbTab & strRegWinBuildLab
    outputTXT.WriteLine "  Build Type:" & vbTAB & vbTAB & strOSBuildType
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  OS Type: "  & vbTAB & vbTAB & strOSOSType & vbTAB & vbTAB & vbTAB & "Country Code:" & vbTAB & strCountryCode
    outputTXT.WriteLine "  Product Type: "  & vbTAB & strOSProductType
    outputTXT.WriteLine "  Primary OS: "  & vbTAB & vbTAB & strOSPrimary
    outputTXT.WriteLine "  Windows Directory: "  & vbTAB & strOSWinDir
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  Language: " & vbTAB & vbTAB & strOSLanguage
    outputTXT.WriteLine "  Locale: " & vbTAB & vbTAB & strOSLocale
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  Product ID: " & vbTAB & vbTAB & strOSSerialNumber
    outputTXT.WriteLine "  Product Key: " & vbTAB & vbTAB & chr(34) & strProductKey & chr(34)
    outputTXT.WriteLine "  Channel ID: " & vbTAB & vbTAB & strOSChannelID
    outputTXT.WriteLine ""
    outputTXT.WriteLine "  Install Date: "  & vbTAB & strOSInstallDate
    outputTXT.WriteLine "  Last Boot Time: " & vbTAB & " " & strOSLastBootUpTime
    outputTXT.WriteLine "  Local Date/Time: " & vbTAB & " " & Now()
    outputTXT.WriteLine "  Current Time Zone: " & vbTAB & " " & strOSCurrentTimeZone
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine "  Computer System:"
    outputTXT.WriteLine "     Manufacturer:" & vbTAB & strCSManufacturer
    outputTXT.WriteLine "     Model:" & vbTAB & vbTAB & strCSModel & vbTAb & "    " & "Name:" & vbTAB & "   " & strCSName
    outputTXT.WriteLine vbTAB & vbTAB & "System Type:" & vbTAB & strCSSystemType 
    outputTXT.WriteLine "  Base Board:"
    outputTXT.WriteLine "     Manufacturer:" & vbTAB & strBBManufacturer
    outputTXT.WriteLine "     Product:" & vbTAB & vbTAB & strBBProduct & vbTAB & vbTAB & "Version:" & vbTAB & strBBVersion
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    outputTXT.WriteLine "  Registered Owner: "  & vbTAB & strOSRegOwner
    outputTXT.WriteLine "  Organization: "  & vbTAB & strOSOrganization
    outputTXT.WriteLine "  ---------------------------------------------------------------------------------"
    WScript.Quit
End Sub

Sub hAbout
	Wscript.Echo _ 
	"  " & rL1 & vbCR & _
	"        " & rL2 & vbCR & vbCR & _
        "             " & rL4 & vbCR & vbCR & _
	vbTAB & sVer & vbCR & vbCR & vbCR & _
	sBy
	WScript.Quit
End Sub

Sub hSwitches
	Wscript.Echo _ 
	"Operating System Information (OSInfoNT)" & vbCR & vbCR & _
        "Command-Line Parameters:" & vbCR & vbCR & _
	"Usage:" & vbTAB & "OSInfoNT_" & sVerF & ".vbs" & vbCR & _
	vbTAB & "OSInfoNT_" & sVerF & ".vbs <Options>" & vbCR & vbCR & _
	"Help Options" & vbCR & _
	"/h:about" & vbCR & _
	"    Displays about information " & vbCR & _
	"/h:switches" & vbCR & _
	"    Displays information about command line switches" & vbCR & vbCR & _
	"Output Options" & vbCR & _
	"/output:file" & vbCR & _
	"    Creates report file only. (no echo) " & vbCR  & vbCR & _
	"Remote Machine Options" & vbCR & _
	"/ip:<IP Address>" & vbCR & _
	"    IP address of remote machine" & vbCR & _
	"  /usr:<Username>" & vbCR & _
	"      Account with required privilege on remote machine" & vbCR & _
	"  /pwd:<Password>" & vbCR & _
	"      password for the previous account"
	WScript.Quit
End Sub

Function GetKey(Key)
    Const KeyOffset = 52
    isWin8 = (Key(66) \ 6) And 1
    Key(66) = (Key(66) And &HF7) Or ((isWin8 And 2) * 4)
    i = 24
    Chars = "BCDFGHJKMPQRTVWXY2346789"
    Do
        Cur = 0
        X = 14
        Do
            Cur = Cur * 256
            Cur = Key(X + KeyOffset) + Cur
            Key(X + KeyOffset) = (Cur \ 24)
            Cur = Cur Mod 24
            X = X -1
        Loop While X >= 0
        i = i -1
        KeyOutput = Mid(Chars, Cur + 1, 1) & KeyOutput
        Last = Cur
    Loop While i >= 0
    If (isWin8 = 1) Then
        keypart1 = Mid(KeyOutput, 2, Last)
        insert = "N"
        KeyOutput = Replace(KeyOutput, keypart1, keypart1 & insert, 2, 1, 0)
        If Last = 0 Then KeyOutput = insert & KeyOutput
    End If
    a = Mid(KeyOutput, 1, 5)
    b = Mid(KeyOutput, 6, 5)
    c = Mid(KeyOutput, 11, 5)
    d = Mid(KeyOutput, 16, 5)
    e = Mid(KeyOutput, 21, 5)
    GetKey = a & "-" & b & "-" & c & "-" & d & "-" & e
End Function

Function RemainingMinutes(RmgMin)
 If RmgMin >= 60 And RmgMin < 1440 Then 
   RemainingMinutes = RmgMin \ 60 & " hour(s)"
  ElseIf RmgMin >= 1440 Then 
   RemainingMinutes = RmgMin \ 1440 & " day(s)"
  ElseIf RmgMin = 0 Or RmgMin = -1 Then 
   RemainingMinutes = "."
  Else RemainingMinutes = RmgMin & " minute(s)"
 End If
End Function