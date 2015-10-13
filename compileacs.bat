@ECHO OFF

:compile
cls
@ECHO.
@ECHO Cleaning ACS folder
@ECHO.
cd acs
del *.o

@ECHO.
cd ..\tools\acc
@ECHO Compiling scripts.
@ECHO.
acc.exe -i ".." ..\..\carcontrol.acs ..\..\acs\carcontrol.o
acc.exe -i ".." ..\..\qcommon.acs ..\..\acs\qcommon.o
acc.exe -i ".." ..\..\qmsg.acs ..\..\acs\qmsg.o
acc.exe -i ".." ..\..\qdialog.acs ..\..\acs\qdialog.o
acc.exe -i ".." ..\..\qobjectives.acs ..\..\acs\qobjectives.o
acc.exe -i ".." ..\..\qvn.acs ..\..\acs\qvn.o
@ECHO.
@ECHO Scripts Finished.
pause

:choice
cls
@ECHO.
@ECHO Do you want to compile again?
set /P c=[Y/N]?
if /I "%c%" EQU "Y" goto :compile
if /I "%c%" EQU "N" goto :exit
goto :choice

:exit
cls
@ECHO.
@ECHO Version 1.1
@ECHO.
pause