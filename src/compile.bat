@ECHO OFF

@ECHO.
@ECHO Cleaning ACS folder
@ECHO.
cd ..\acs
del /S *.acs
cd ..\src

@ECHO.
@ECHO Initializing scripts
@ECHO.
xcopy /s carcontrol.txt ..\acs\
xcopy /s qcommon.txt ..\acs\
cd ..\acs
del /S *.acs
ren carcontrol.txt carcontrol.acs
ren qcommon.txt qcommon.acs
cd ..\src\acc
cls

@ECHO.
@ECHO Compiling scripts.
@ECHO.
acc.exe -i ".." ..\..\acs\carcontrol.acs
acc.exe -i ".." ..\..\acs\qcommon.acs
cd ..\..\acs

pause