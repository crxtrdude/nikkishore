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
cd ..\acs
del /S *.acs
ren carcontrol.txt carcontrol.acs
cd ..\..\..\doomtools\acc
cls

@ECHO.
@ECHO Compiling scripts.
@ECHO.
acc.exe -i ".." ..\..\Projects\Nikki\acs\carcontrol.acs
cd ..\..\Projects\Nikki\acs

@ECHO.
@ECHO Now clearing ACS files.
@ECHO.
del /S *.acs
pause
cd ..\src\zkvn-master
make_pk3.bat