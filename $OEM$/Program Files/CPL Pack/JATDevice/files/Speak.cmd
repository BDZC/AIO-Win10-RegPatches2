	@echo off
	title þ SPEECH GENERATION MODULE þ by s1ave77
::Code by s1ave77
:Menu
	cls
	color 4F
	set vbs=%tmp%\vox.vbs
:SpeakLoud
	cls
	echo:
	echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
	echo SPEECH GENERATION
	echo:
	echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
	echo Pick a Name to speak.
	echo:
	echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
	set "count=0"
	set "file=%temp%\speech.ps1
	echo Add-Type -AssemblyName System.speech>%file%
	echo $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer>>%file%
	echo $speak.GetInstalledVoices().VoiceInfo>>%file%
	for /f "tokens=1,2,3,4 delims=: " %%a in ('powershell -executionpolicy bypass -file %file%') do (
		if %%a equ Gender set "gender=%%b" && echo Gender__: %%b
		if %%a equ Age set "age=%%b" && echo Age_____: %%b
		if %%a equ Name set "voicename=%%b %%c %%d" && echo Name____: %%b %%c %%d
		if %%a equ Culture set "location=%%b" && echo Location: %%b
		if %%a equ AdditionalInfo echo: && echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
	)
	if exist "%file%" del /s /q "%file%" >nul
	title þ SPEECH GENERATION MODULE þ by s1ave77
	echo:
	echo Specify Name.
	echo Last used Name: %voicename%
	echo:
	SET /p voicename=Specify Name here: 
:TellIt
	cls
	echo:
	echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
	echo SPEECH GENERATION
	echo:
	echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
	echo:
	echo Specify Phrase. '0' To Return to Menu, '1' to change voice
	echo Last used Phrase: %phrase%
	echo:
	SET /p phrase=Specify Phrase here: 
	if "%phrase%"=="0" systemtools.cmd
	if "%phrase%"=="1" goto:SpeakLoud
	echo Add-Type -AssemblyName System.speech>%file%
	echo $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer>>%file%
	echo $speak.SelectVoice('%voicename%')>>%file%
	echo $speak.Speak("%phrase%")>>%file%
	powershell -executionpolicy bypass -file %file%
	if exist "%file%" del /s /q "%file%" >nul
	goto :TellIt
	echo:
	echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
	echo:
	title þ SPEECH GENERATION MODULE þ by s1ave77
	pause
	
