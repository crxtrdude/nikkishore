@ECHO OFF

@ECHO.
@ECHO Now baking NikkiShore.pk3
@ECHO.

tools\7za\7za.exe a -tzip bin\nikkishore.pk3 @listfile.txt >nul

@ECHO.
@ECHO Finished baking NikkiShore.pk3
@ECHO Check at 'bin' folder.
@ECHO.
pause