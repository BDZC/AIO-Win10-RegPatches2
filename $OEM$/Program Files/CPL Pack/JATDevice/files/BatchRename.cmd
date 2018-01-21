	@echo off
	TITLE þ BATCH RENAME þ by s1ave77
::Code by s1ave77
:Menu
	CLS
	mode con cols=87 lines=50
	color 2F
	echo:
	echo    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
	echo:
	echo    þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ  BATCH RENAME  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
	echo:
	echo    ÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛßÛ
	echo    ÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛÜÛ
	echo:
	echo    °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
	echo:   °                                                                               °
	echo    == (1) Batch Rename name.000n =========== (2) Batch Rename 000n.name ============
	echo:   °                                                                               °
	echo    °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
	echo:   °                                                                               °
	echo    °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
	echo:   °                                                                               °
	echo    == (3) Batch Rename name.Date.000n ====== (4) Batch Rename 000n.Date.name =======
	echo:   °                                                                               °
	echo    °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
	echo:   °                                                                               °
	echo    °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
	echo:   °                                                                               °
	echo    == (5) Batch Rename name.000n.Date ====== (6) Batch Rename Date.000n.name =======
	echo:   °                                                                               °
	echo    °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
	echo:   °                                                                               °
	echo    °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
	echo:   °                                                                               °
	echo:   °                                                                               °
	echo:   °                                                                               °
	echo:   °                                                                               °
	echo    °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
	echo:   °                                                                               °
	echo    °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
	echo:   °                                                                               °
	echo    == (R) Restore Original Names =========== (X) Delete OriginalNames.txt ==========
	echo:   °                                                                               °
	echo    °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
	echo:   °                                                                               °
	echo    °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
	echo:   °                                                                               °
	echo:   °                                                                               °
	echo:   °                                                                               °
	echo:   °                                                                               °
	echo:   °                                                                               °
	echo    ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²² (B) BACK ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
	echo:
 	CHOICE /C 123456RXB /N /M " þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþÜ/  YOUR CHOICE  \Üþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ                                        þ>"
	if %errorlevel%==1 goto :BatchRename
	if %errorlevel%==2 goto :BatchRename1
	if %errorlevel%==3 goto :BatchRename2
	if %errorlevel%==4 goto :BatchRename3
	if %errorlevel%==5 goto :BatchRename4
	if %errorlevel%==6 goto :BatchRename5
	if %errorlevel%==7 goto :RestoreNames
	if %errorlevel%==8 goto :Delete
	if %errorlevel%==9 (pushd %~dp0)&&(systemtools.cmd)
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:BatchRename
	CLS
	pushd "%~dp0"
	call :HEADER "%username% on %ver% %vera%", "Set path for files Folder"
	set z=
	set file=%~dp0OrininalNames.txt
	set file2=%~dp0NewNames.txt
	echo Actual Path: %cd%
	echo:
	echo Files Folder Path: %p%
	echo:
	echo NOTE: You must specify folder path here!
	echo:
	SET /p p=Enter Folder Path here: 
	if /i "%p:~-1%"=="\" set "p=%p:~0,-1%"
	echo:
	echo Specify File Extension in form 'ext'.
	echo:
	SET /p end=Specify File Extension here: 
	echo:
	echo Specify New File Name
	echo:
	SET /p fname=Specify File Name here: 
	echo:
	echo Specify Number of Values to show in Counter (3-6)
	echo:
	SET /p v=Specify Value Number here: 
	if "%v%"=="3" set cnt=1000
	if "%v%"=="4" set cnt=10000
	if "%v%"=="5" set cnt=100000
	if "%v%"=="6" set cnt=1000000
	CLS
	set z=0
	for /R "%p%" %%A in (*.%end%) do set /a z+=1
	if "%z%" LSS "1" goto :Failure
	call :HEADER "files (.%end%) found: %z%", "Path: %p%"
	CHOICE /C RB /N /M ">          [R]ename or [B]ack ?:"
	if %errorlevel%==1 goto :furtherBR
	if %errorlevel%==2 goto :Menu
:furtherBR
	if exist %file% del %file% /s /q >nul
	if exist %file2% del %file2% /s /q >nul
	for /R "%p%" %%A in (*.%end%) do echo %%~nA.%end% >> %file%
	for /R "%p%" %%A in (*.%end%) do ( SET /A cnt+=1 ) & ( echo %fname%.!cnt:~1!.%end% >> %file2% )
	for /R "%p%" %%A in (*.%end%) do (
		for /F "tokens=*" %%G in (%~dp0NewNames.txt) do (
			ren "%%A" "%%G" >nul 2>&1
		)
	)	
	pause
	if exist %file2% del %file2% /s /q >nul
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:BatchRename1
	CLS
	pushd "%~dp0"
	call :HEADER "%username% on %ver% %vera%", "Set path for files Folder"
	set z=
	set file=%~dp0OrininalNames.txt
	set file2=%~dp0NewNames.txt
	echo Actual Path: %cd%
	echo:
	echo Files Folder Path: %p%
	echo:
	echo NOTE: You must specify folder path here!
	echo:
	SET /p p=Enter Folder Path here: 
	if /i "%p:~-1%"=="\" set "p=%p:~0,-1%"
	echo:
	echo Specify File Extension in form 'ext'.
	echo:
	SET /p end=Specify File Extension here: 
	echo:
	echo Specify New File Name
	echo:
	SET /p fname=Specify File Name here: 
	echo:
	echo Specify Number of Values to show in Counter (3-6)
	echo:
	SET /p v=Specify Value Number here: 
	if "%v%"=="3" set cnt=1000
	if "%v%"=="4" set cnt=10000
	if "%v%"=="5" set cnt=100000
	if "%v%"=="6" set cnt=1000000
	CLS
	set z=0
	for /R "%p%" %%A in (*.%end%) do set /a z+=1
	if "%z%" LSS "1" goto :Failure
	call :HEADER "files (.%end%) found: %z%", "Path: %p%"
	CHOICE /C RB /N /M ">          [R]ename or [B]ack ?:"
	if %errorlevel%==1 goto :furtherBR
	if %errorlevel%==2 goto :Menu
:furtherBR
	if exist %file% del %file% /s /q >nul
	if exist %file2% del %file2% /s /q >nul
	for /R "%p%" %%A in (*.%end%) do echo %%~nA.%end% >> %file%
	for /R "%p%" %%A in (*.%end%) do ( SET /A cnt+=1 ) & ( echo !cnt:~1!.%fname%.%end% >> %file2% )
	for /R "%p%" %%A in (*.%end%) do (
		for /F "tokens=*" %%G in (%~dp0NewNames.txt) do (
			ren "%%A" "%%G" >nul 2>&1
		)
	)	
	pause
	if exist %file2% del %file2% /s /q >nul
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:BatchRename2
	CLS
	pushd "%~dp0"
	call :HEADER "%username% on %ver% %vera%", "Set path for files Folder"
	call :SystemTime
	set stime=%D.MONTH%.%D.DAY%.%D.YEAR%
	set z=
	set file=%~dp0OrininalNames.txt
	set file2=%~dp0NewNames.txt
	echo Actual Path: %cd%
	echo:
	echo Files Folder Path: %p%
	echo:
	echo NOTE: You must specify folder path here!
	echo:
	SET /p p=Enter Folder Path here: 
	if /i "%p:~-1%"=="\" set "p=%p:~0,-1%"
	echo:
	echo Specify File Extension in form 'ext'.
	echo:
	SET /p end=Specify File Extension here: 
	echo:
	echo Specify New File Name
	echo:
	SET /p fname=Specify File Name here: 
	echo:
	echo Specify Number of Values to show in Counter (3-6)
	echo:
	SET /p v=Specify Value Number here: 
	if "%v%"=="3" set cnt=1000
	if "%v%"=="4" set cnt=10000
	if "%v%"=="5" set cnt=100000
	if "%v%"=="6" set cnt=1000000
	CLS
	set z=0
	for /R "%p%" %%A in (*.%end%) do set /a z+=1
	if "%z%" LSS "1" goto :Failure
	call :HEADER "files (.%end%) found: %z%", "Path: %p%"
	CHOICE /C AS /N /M ">          [A]ctual or [S]pecific Date ?:"
	if %errorlevel%==1 goto :furtherBR2
	if %errorlevel%==2 goto :furtherBR3
:furtherBR2
	if exist %file% del %file% /s /q >nul
	if exist %file2% del %file2% /s /q >nul
	for /R "%p%" %%A in (*.%end%) do echo %%~nA.%end% >> %file%
	for /R "%p%" %%A in (*.%end%) do ( SET /A cnt+=1 ) & ( echo %fname%.%stime%.!cnt:~1!.%end% >> %file2% )
	for /R "%p%" %%A in (*.%end%) do (
		for /F "tokens=*" %%G in (%~dp0NewNames.txt) do (
			ren "%%A" "%%G" >nul 2>&1
		)
	)	
	pause
	if exist %file2% del %file2% /s /q >nul
	goto :Menu
:furtherBR3
	echo:
	echo Specify Month i.e '01'.
	echo:
	SET /p m=Specify Month here: 
	echo Specify Day i.e. '01'.
	echo:
	SET /p d=Specify Day here: 
	echo Specify Year i.e. '2013'.
	echo:
	SET /p y=Specify Year here: 
	if exist %file% del %file% /s /q >nul
	if exist %file2% del %file2% /s /q >nul
	for /R "%p%" %%A in (*.%end%) do echo %%~nA.%end% >> %file%
	for /R "%p%" %%A in (*.%end%) do ( SET /A cnt+=1 ) & ( echo %fname%.%m%.%d%.%y%.!cnt:~1!.%end% >> %file2% )
	for /R "%p%" %%A in (*.%end%) do (
		for /F "tokens=*" %%G in (%~dp0NewNames.txt) do (
			ren "%%A" "%%G" >nul 2>&1
		)
	)	
	pause
	if exist %file2% del %file2% /s /q >nul
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:BatchRename3
	CLS
	pushd "%~dp0"
	call :HEADER "%username% on %ver% %vera%", "Set path for files Folder"
	call :SystemTime
	set stime=%D.MONTH%.%D.DAY%.%D.YEAR%
	set z=
	set file=%~dp0OrininalNames.txt
	set file2=%~dp0NewNames.txt
	echo Actual Path: %cd%
	echo:
	echo Files Folder Path: %p%
	echo:
	echo NOTE: You must specify folder path here!
	echo:
	SET /p p=Enter Folder Path here: 
	if /i "%p:~-1%"=="\" set "p=%p:~0,-1%"
	echo:
	echo Specify File Extension in form 'ext'.
	echo:
	SET /p end=Specify File Extension here: 
	echo:
	echo Specify New File Name
	echo:
	SET /p fname=Specify File Name here: 
	echo:
	echo Specify Number of Values to show in Counter (3-6)
	echo:
	SET /p v=Specify Value Number here: 
	if "%v%"=="3" set cnt=1000
	if "%v%"=="4" set cnt=10000
	if "%v%"=="5" set cnt=100000
	if "%v%"=="6" set cnt=1000000
	CLS
	set z=0
	for /R "%p%" %%A in (*.%end%) do set /a z+=1
	if "%z%" LSS "1" goto :Failure
	call :HEADER "files (.%end%) found: %z%", "Path: %p%"
	CHOICE /C AS /N /M ">          [A]ctual or [S]pecific Date ?:"
	if %errorlevel%==1 goto :furtherBR2
	if %errorlevel%==2 goto :furtherBR3
:furtherBR2
	if exist %file% del %file% /s /q >nul
	if exist %file2% del %file2% /s /q >nul
	for /R "%p%" %%A in (*.%end%) do echo %%~nA.%end% >> %file%
	for /R "%p%" %%A in (*.%end%) do ( SET /A cnt+=1 ) & ( echo !cnt:~1!.%stime%.%fname%.%end% >> %file2% )
	for /R "%p%" %%A in (*.%end%) do (
		for /F "tokens=*" %%G in (%~dp0NewNames.txt) do (
			ren "%%A" "%%G" >nul 2>&1
		)
	)	
	pause
	if exist %file2% del %file2% /s /q >nul
	goto :Menu
:furtherBR3
	echo:
	echo Specify Month i.e '01'.
	echo:
	SET /p m=Specify Month here: 
	echo Specify Day i.e. '01'.
	echo:
	SET /p d=Specify Day here: 
	echo Specify Year i.e. '2013'.
	echo:
	SET /p y=Specify Year here: 
	if exist %file% del %file% /s /q >nul
	if exist %file2% del %file2% /s /q >nul
	for /R "%p%" %%A in (*.%end%) do echo %%~nA.%end% >> %file%
	for /R "%p%" %%A in (*.%end%) do ( SET /A cnt+=1 ) & ( echo !cnt:~1!.%m%.%d%.%y%.%fname%.%end% >> %file2% )
	for /R "%p%" %%A in (*.%end%) do (
		for /F "tokens=*" %%G in (%~dp0NewNames.txt) do (
			ren "%%A" "%%G" >nul 2>&1
		)
	)	
	pause
	if exist %file2% del %file2% /s /q >nul
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:BatchRename4
	CLS
	pushd "%~dp0"
	call :HEADER "%username% on %ver% %vera%", "Set path for files Folder"
	call :SystemTime
	set stime=%D.MONTH%.%D.DAY%.%D.YEAR%
	set z=
	set file=%~dp0OrininalNames.txt
	set file2=%~dp0NewNames.txt
	echo Actual Path: %cd%
	echo:
	echo Files Folder Path: %p%
	echo:
	echo NOTE: You must specify folder path here!
	echo:
	SET /p p=Enter Folder Path here: 
	if /i "%p:~-1%"=="\" set "p=%p:~0,-1%"
	echo:
	echo Specify File Extension in form 'ext'.
	echo:
	SET /p end=Specify File Extension here: 
	echo:
	echo Specify New File Name
	echo:
	SET /p fname=Specify File Name here: 
	echo:
	echo Specify Number of Values to show in Counter (3-6)
	echo:
	SET /p v=Specify Value Number here: 
	if "%v%"=="3" set cnt=1000
	if "%v%"=="4" set cnt=10000
	if "%v%"=="5" set cnt=100000
	if "%v%"=="6" set cnt=1000000
	CLS
	set z=0
	for /R "%p%" %%A in (*.%end%) do set /a z+=1
	if "%z%" LSS "1" goto :Failure
	call :HEADER "files (.%end%) found: %z%", "Path: %p%"
	CHOICE /C AS /N /M ">          [A]ctual or [S]pecific Date ?:"
	if %errorlevel%==1 goto :furtherBR2
	if %errorlevel%==2 goto :furtherBR3
:furtherBR2
	if exist %file% del %file% /s /q >nul
	if exist %file2% del %file2% /s /q >nul
	for /R "%p%" %%A in (*.%end%) do echo %%~nA.%end% >> %file%
	for /R "%p%" %%A in (*.%end%) do ( SET /A cnt+=1 ) & ( echo %fname%.!cnt:~1!.%stime%.%end% >> %file2% )
	for /R "%p%" %%A in (*.%end%) do (
		for /F "tokens=*" %%G in (%~dp0NewNames.txt) do (
			ren "%%A" "%%G" >nul 2>&1
		)
	)	
	pause
	if exist %file2% del %file2% /s /q >nul
	goto :Menu
:furtherBR3
	echo:
	echo Specify Month i.e '01'.
	echo:
	SET /p m=Specify Month here: 
	echo Specify Day i.e. '01'.
	echo:
	SET /p d=Specify Day here: 
	echo Specify Year i.e. '2013'.
	echo:
	SET /p y=Specify Year here: 
	if exist %file% del %file% /s /q >nul
	if exist %file2% del %file2% /s /q >nul
	for /R "%p%" %%A in (*.%end%) do echo %%~nA.%end% >> %file%
	for /R "%p%" %%A in (*.%end%) do ( SET /A cnt+=1 ) & ( echo %fname%.!cnt:~1!.%m%.%d%.%y%.%end% >> %file2% )
	for /R "%p%" %%A in (*.%end%) do (
		for /F "tokens=*" %%G in (%~dp0NewNames.txt) do (
			ren "%%A" "%%G" >nul 2>&1
		)
	)	
	pause
	if exist %file2% del %file2% /s /q >nul
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:BatchRename5
	CLS
	pushd "%~dp0"
	call :HEADER "%username% on %ver% %vera%", "Set path for files Folder"
	call :SystemTime
	set stime=%D.MONTH%.%D.DAY%.%D.YEAR%
	set z=
	set file=%~dp0OrininalNames.txt
	set file2=%~dp0NewNames.txt
	echo Actual Path: %cd%
	echo:
	echo Files Folder Path: %p%
	echo:
	echo NOTE: You must specify folder path here!
	SET /p p=Enter Folder Path here: 
	if /i "%p:~-1%"=="\" set "p=%p:~0,-1%"
	echo Specify File Extension in form 'ext'.
	SET /p end=Specify File Extension here: 
	echo Specify New File Name
	SET /p fname=Specify File Name here: 
	echo Specify Number of Values to show in Counter (3-6)
	SET /p v=Specify Value Number here: 
	if "%v%"=="3" set cnt=1000
	if "%v%"=="4" set cnt=10000
	if "%v%"=="5" set cnt=100000
	if "%v%"=="6" set cnt=1000000
	CLS
	set z=0
	for /R "%p%" %%A in (*.%end%) do set /a z+=1
	if "%z%" LSS "1" goto :Failure
	call :HEADER "files (.%end%) found: %z%", "Path: %p%"
	CHOICE /C AS /N /M ">          [A]ctual or [S]pecific Date ?:"
	if %errorlevel%==1 goto :furtherBR2
	if %errorlevel%==2 goto :furtherBR3
:furtherBR2
	if exist %file% del %file% /s /q >nul
	if exist %file2% del %file2% /s /q >nul
	for /R "%p%" %%A in (*.%end%) do echo %%~nA.%end% >> %file%
	for /R "%p%" %%A in (*.%end%) do ( SET /A cnt+=1 ) & ( echo %stime%.!cnt:~1!.%fname%.%end% >> %file2% )
	for /R "%p%" %%A in (*.%end%) do (
		for /F "tokens=*" %%G in (%~dp0NewNames.txt) do (
			ren "%%A" "%%G" >nul 2>&1
		)
	)	
	pause
	if exist %file2% del %file2% /s /q >nul
	goto :Menu
:furtherBR3
	echo Specify Month i.e '01'.
	SET /p m=Specify Month here: 
	echo Specify Day i.e. '01'.
	SET /p d=Specify Day here: 
	echo Specify Year i.e. '2013'.
	SET /p y=Specify Year here: 
	if exist %file% del %file% /s /q >nul
	if exist %file2% del %file2% /s /q >nul
	for /R "%p%" %%A in (*.%end%) do echo %%~nA.%end% >> %file%
	for /R "%p%" %%A in (*.%end%) do ( SET /A cnt+=1 ) & ( echo %m%.%d%.%y%.!cnt:~1!.%fname%.%end% >> %file2% )
	for /R "%p%" %%A in (*.%end%) do (
		for /F "tokens=*" %%G in (%~dp0NewNames.txt) do (
			ren "%%A" "%%G" >nul 2>&1
		)
	)
	call :FOOTER
	pause
	if exist %file2% del %file2% /s /q >nul
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:RestoreNames
	set file=%~dp0OrininalNames.txt
	if not exist %file% echo No Backup found... & pause & goto :Menu
	pushd "%~dp0"
	CLS
	call :HEADER "%username% on %ver% %vera%", "Set path for files Folder"
	echo Actual Path: %cd%
	echo:
	echo Files Folder Path: %p%
	echo:
	echo NOTE: You must specify folder path here!
	SET /p p=Enter Folder Path here: 
	if /i "%p:~-1%"=="\" set "p=%p:~0,-1%"
	echo Specify File Extension in form 'ext'
	SET /p end=Specify File Extension here:	
	set z=0
	for /R "%p%" %%A in (*.%end%) do set /a z+=1
	for /R "%p%" %%A in (*.%end%) do (
		for /F "tokens=*" %%G in (%~dp0OrininalNames.txt) do (
			ren "%%A" "%%G" >nul 2>&1
		)
	)
	call :FOOTER
	pause
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::CALL TARGET LOOPS
:SystemTime
	set X=
	for /f "skip=1 delims=" %%x in ('wmic os get localdatetime') do if not defined X set X=%%x
	set D.YEAR=%X:~0,4%
	set D.MONTH=%X:~4,2%
	set D.DAY=%X:~6,2%
	set D.HOUR=%X:~8,2%
	set D.MINUTE=%X:~10,2%
	set D.SECOND=%X:~12,2%
	set D.FRACTIONS=%X:~15,6%
	set D.OFFSET=%X:~21,4%
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:HEADER
	echo:
	echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
	echo %~1 
	echo:%~2
	echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
	echo:
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:FOOTER
	echo:
	echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
	echo:
	goto:eof
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Failure
	CLS
	color 0C
	echo:
	echo:
	echo:
	echo:
	echo:
	echo:
	echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
	echo ### NO FILES FOUND ###
	echo:
	echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
	echo:
	pause
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Delete
	set file=%~dp0OrininalNames.txt
	if exist %file% del %file% /s /q >nul
	goto :Menu
:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:Exit
	ENDLOCAL
	exit
