@ECHO off
SET WINDOW_TITLE=Jmeter via Gradle launcher
TITLE=%WINDOW_TITLE%
ECHO Closing this window will close Jmeter...
IF NOT DEFINED GRADLE_HOME ECHO It appears you are missing the Gradle installation on your system.
IF NOT DEFINED JAVA_HOME ECHO You need to define JAVA_HOME on your system.

CALL gradle clean printBuildScriptClasspath jmeterEditor --info %1 %2 %3

::-------------------------------------------------------------------
::  End script
::-------------------------------------------------------------------
:END
FOR /l %%a IN (60,-1,1) DO (TITLE %WINDOW_TITLE% -- Closing in %%as&PING.exe -n 2 -w 1 127.0.0.1>nul)
