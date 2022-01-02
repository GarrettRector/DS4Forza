@ECHO OFF

SET /P fh5path=ForzaHorizon5.exe Path: 
SET /P ds4path=DS4Windows Path: 

TASKKILL /IM steam.exe
ECHO Killed Steam

START %path%
ECHO Started FH5

TASKKILL /IM DS4Windows.exe
ECHO Quit DS4Windows

ECHO Waiting to start DS4Windows...
timeout 40 >nul

START %ds4windows%
ECHO Started DS4Windows

PAUSE