@ECHO OFF

@ECHO.
@ECHO NOTE: Compiling without music will result in two
@ECHO types of files, nikkishore.pk3 (main file) and
@ECHO nikkimusic.pk3 (music).
@ECHO.

:choice
@ECHO Do you want to compile the pk3 with music?
set /P c=[Y/N]?
if /I "%c%" EQU "Y" goto :withmusic
if /I "%c%" EQU "N" goto :nomusic
goto :choice

:withmusic
@ECHO.
@ECHO Now baking NikkiShore.pk3
@ECHO.
tools\7za\7za.exe a -tzip bin\nikkishore.pk3 @listfile.txt

:nomusic
@ECHO.
@ECHO Now baking NikkiShore.pk3
@ECHO.
tools\7za\7za.exe a -tzip bin\nikkishore.pk3 @listfile_nomusic.txt
tools\7za\7za.exe a -tzip bin\nikkimusic.pk3 music\*.ogg

@ECHO.
@ECHO Finished baking NikkiShore.pk3
@ECHO Check at 'bin' folder.
@ECHO.
pause