@ECHO OFF

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
@ECHO.
@ECHO Scripts Finished.
pause