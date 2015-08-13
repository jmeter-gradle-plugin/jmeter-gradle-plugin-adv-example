@ECHO off
SET WINDOW_TITLE=Jmeter via Gradle launcher
TITLE=%WINDOW_TITLE%
ECHO Closing this window will close Jmeter...
IF NOT DEFINED JAVA_HOME ECHO You need to define JAVA_HOME on your system.

IF NOT EXIST gradle\wrapper\gradle-wrapper.jar (
  IF NOT DEFINED GRADLE_HOME ECHO You must define GRADLE_HOME on your system and add %%GRADLE_HOME%%\bin to your PATH.&&GOTO :ERROR
  :: installs gradle wrapper if you have another Gradle distro local on your machine
  CALL gradle wrapper
)

CALL gradle clean printBuildScriptClasspath jmGui --info %1 %2 %3

GOTO :END
:ERROR
ECHO.
ECHO There was an error!
:END
ECHO.
ECHO Closing in 10 seconds...
FOR /l %%a IN (10,-1,1) DO (TITLE %WINDOW_TITLE% -- Closing in %%as&PING.exe -n 2 -w 1 127.0.0.1>nul)
