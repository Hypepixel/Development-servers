@echo off
set /p source=Please provide the absolute source path (where Spigot.jar is located):
set /p destination=Please provide the absolute destination path:

if exist %destination% goto GO
:GO

xcopy %source% %destination% /M /E /G /H /Y
echo. 
echo Finished copying %source% to %destination%
echo.
echo Created %destination%
pause
