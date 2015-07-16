@ECHO off
SET WINDOW_TITLE=Jmeter via Gradle launcher
TITLE=%WINDOW_TITLE%
ECHO Closing this window will close Jmeter...
::IF NOT DEFINED GRADLE_HOME ECHO You need to define GRADLE_HOME var on your system.
IF NOT DEFINED JAVA_HOME ECHO You need to define JAVA_HOME on your system.

.\gradlew.bat clean printBuildScriptClasspath jmeterRun --info %1 %2 %3

::-------------------------------------------------------------------
::  End script
::-------------------------------------------------------------------
:END
FOR /l %%a IN (10,-1,1) DO (TITLE %WINDOW_TITLE% -- Closing in %%as&PING.exe -n 2 -w 1 127.0.0.1>nul)
