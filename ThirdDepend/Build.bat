REM /////////////////////////////////////////////////////////////
REM
REM 
REM
REM /////////////////////////////////////////////////////////////

Set DEVINSTALL=
for /F "tokens=1,2*" %%i in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\VisualStudio\SxS\VS7" /v "12.0"') DO (
	if "%%i"=="12.0" (
		SET DEVINSTALL=%%k
	)
)

Set DevenvPath=%DEVINSTALL%Common7\IDE\devenv.exe
if not exist "%DevenvPath%" set DevenvPath=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe
set TinyxmlPath=%~dp0tinyxml\tinyxml.sln
set Tinyxml2Path=%~dp0tinyxml2\vs\tinyxml2.sln
if not exist "BuildLog\" mkdir "BuildLog\"

REM /////////////////////////////////////////////////////////////
echo "build tinyxml" 
"%DevenvPath%" "%TinyxmlPath%" /Project "tinyxml" /Build "Debug_Unicode|Win32" /out BuildLog\tinyxml.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml Failed!
	type %~dp0BuildLog\tinyxml.log
	pause & exit
)
"%DevenvPath%" "%TinyxmlPath%" /Project "tinyxml" /Build "Debug_Unicode_MT|Win32" /out BuildLog\tinyxml.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml Failed!
	type %~dp0BuildLog\tinyxml.log
	pause & exit
)
"%DevenvPath%" "%TinyxmlPath%" /Project "tinyxml" /Build "Release_Unicode|Win32" /out BuildLog\tinyxml.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml Failed!
	type %~dp0BuildLog\tinyxml.log
	pause & exit
)
"%DevenvPath%" "%TinyxmlPath%" /Project "tinyxml" /Build "Release_Unicode_MT|Win32" /out BuildLog\tinyxml.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml Failed!
	type %~dp0BuildLog\tinyxml.log
	pause & exit
)

"%DevenvPath%" "%TinyxmlPath%" /Project "tinyxml" /Build "Debug_Unicode|x64" /out BuildLog\tinyxml.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml Failed!
	type %~dp0BuildLog\tinyxml.log
	pause & exit
)
"%DevenvPath%" "%TinyxmlPath%" /Project "tinyxml" /Build "Debug_Unicode_MT|x64" /out BuildLog\tinyxml.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml Failed!
	type %~dp0BuildLog\tinyxml.log
	pause & exit
)
"%DevenvPath%" "%TinyxmlPath%" /Project "tinyxml" /Build "Release_Unicode|x64" /out BuildLog\tinyxml.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml Failed!
	type %~dp0BuildLog\tinyxml.log
	pause & exit
)
"%DevenvPath%" "%TinyxmlPath%" /Project "tinyxml" /Build "Release_Unicode_MT|x64" /out BuildLog\tinyxml.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml Failed!
	type %~dp0BuildLog\tinyxml.log
	pause & exit
)

REM /////////////////////////////////////////////////////////////
echo "build tinyxml2" 
"%DevenvPath%" "%Tinyxml2Path%" /Project "tinyxml2" /Build "Debug|x86" /out BuildLog\tinyxml2.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml2 Failed!
	type %~dp0BuildLog\tinyxml2.log
	pause & exit
)
"%DevenvPath%" "%Tinyxml2Path%" /Project "tinyxml2" /Build "Debug_MT|x86" /out BuildLog\tinyxml2.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml2 Failed!
	type %~dp0BuildLog\tinyxml2.log
	pause & exit
)
"%DevenvPath%" "%Tinyxml2Path%" /Project "tinyxml2" /Build "Release|x86" /out BuildLog\tinyxml2.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml2 Failed!
	type %~dp0BuildLog\tinyxml2.log
	pause & exit
)
"%DevenvPath%" "%Tinyxml2Path%" /Project "tinyxml2" /Build "Release_MT|x86" /out BuildLog\tinyxml2.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml2 Failed!
	type %~dp0BuildLog\tinyxml2.log
	pause & exit
)

"%DevenvPath%" "%Tinyxml2Path%" /Project "tinyxml2" /Build "Debug|x64" /out BuildLog\tinyxml2.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml2 Failed!
	type %~dp0BuildLog\tinyxml2.log
	pause & exit
)
"%DevenvPath%" "%Tinyxml2Path%" /Project "tinyxml2" /Build "Debug_MT|x64" /out BuildLog\tinyxml2.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml2 Failed!
	type %~dp0BuildLog\tinyxml2.log
	pause & exit
)
"%DevenvPath%" "%Tinyxml2Path%" /Project "tinyxml2" /Build "Release|x64" /out BuildLog\tinyxml2.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml2 Failed!
	type %~dp0BuildLog\tinyxml2.log
	pause & exit
)
"%DevenvPath%" "%Tinyxml2Path%" /Project "tinyxml2" /Build "Release_MT|x64" /out BuildLog\tinyxml2.log
if %ERRORLEVEL% NEQ 0 (
	echo Build tinyxml2 Failed!
	type %~dp0BuildLog\tinyxml2.log
	pause & exit
)