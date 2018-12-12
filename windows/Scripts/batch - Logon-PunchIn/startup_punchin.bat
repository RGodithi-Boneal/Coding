@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

REM		Created by Matt Cavallo <mcavallo@boneal.com>, 2018-11-28

SET BGINFO_UPDATER=C:\ISO\UpdateBGInfo.lnk
SET SAGE_PUNCHIN_BNL=C:\ISO\BNL-Time.lnk
SET SAGE_PROCESS_NAME=pvxwin32.exe

SET RUNTIME_HOSTNAME=%COMPUTERNAME%
SET RUNTIME_USERDOMAIN=%USERDOMAIN%
SET RUNTIME_USERNAME=%USERNAME%

ECHO.
ECHO  RUNTIME_USERDOMAIN: %RUNTIME_USERDOMAIN%
ECHO  RUNTIME_USERNAME:   %RUNTIME_USERNAME%
ECHO.

SET TARGET_HOSTNAME=%COMPUTERNAME%
SET TARGET_USERNAME=
SET TARGET_USERDOMAIN=

SET SECONDS_TO_CLOSE_SAGE_PUNCHIN_AFTER=180

IF "%1"=="" (
	REM ERROR - Require a specific userdomain to target
	ECHO.
	ECHO ERROR - Please set target userdomain as Parameter #1
	ECHO.
	TIMEOUT /T %SECONDS_TO_CLOSE_SAGE_PUNCHIN_AFTER%
	EXIT
) ELSE (
	SET TARGET_USERDOMAIN=%1
)

IF "%2"=="" (
	REM ERROR - Require a specific username to target
	ECHO.
	ECHO ERROR - Please set target username as Parameter #2
	ECHO.
	TIMEOUT /T %SECONDS_TO_CLOSE_SAGE_PUNCHIN_AFTER%
	EXIT
) ELSE (
	SET TARGET_USERNAME=%2
)

ECHO  TARGET_USERDOMAIN:  %TARGET_USERDOMAIN%   (Param #1)
ECHO  TARGET_USERNAME:    %TARGET_USERNAME%     (Param #2)
ECHO.

REM	 Find Session-ID tied to [target-user]
SET USER_SESSION_ID=NOTFOUND
FOR /F "tokens=3-4" %%a IN ('QUERY SESSION %TARGET_USERNAME%') DO (
	@IF "%%b"=="Active" (
		SET USER_SESSION_ID=%%a
	)
)

REM	 Determine if [target-user] is logged-in or not
IF NOT "%USER_SESSION_ID%"=="NOTFOUND" (

	IF NOT "%3"=="" (
		SET CLIPBOARD_TEXT=%3
		ECHO %CLIPBOARD_TEXT%| clip
		ECHO  CLIPBOARD_TEXT:     %CLIPBOARD_TEXT%   (Param #3)
		ECHO.
	) ELSE (
		ECHO  Nothing copied to the Clipboard        (Param #3)
		ECHO.
	)
	
	IF EXIST %BGINFO_UPDATER% (
		START %BGINFO_UPDATER%
	)

	IF EXIST %SAGE_PUNCHIN_BNL% (
	
		START %SAGE_PUNCHIN_BNL%
	
		TIMEOUT /T %SECONDS_TO_CLOSE_SAGE_PUNCHIN_AFTER%
	
		REM	 Safely end SAGE sessions which were started by [target-user]
		ECHO "Killing Images equal to '%SAGE_PROCESS_NAME%' for User: '%TARGET_USERDOMAIN%\%TARGET_USERNAME%'"
		ECHO.
		TASKKILL /FI "USERNAME eq %TARGET_USERDOMAIN%\%TARGET_USERNAME%" /FI "IMAGENAME eq %SAGE_PROCESS_NAME%"
	
	)

)

EXIT

REM Logs 2018-11-28 - Batch file created
REM Logs 2018-12-12 - Updated to separate RUNTIME from TARGET domain & user