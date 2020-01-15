ECHO OFF
set source=E:\Folder
set destination=E:\OutsideFolder

if exist %destination% goto GO
:GO

xcopy %source% %destination% /M /E /G /H /Y
echo. 
echo Finished copying %source% to %destination%
echo.
echo Created %destination%
pause
