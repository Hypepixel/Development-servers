@echo on
set /p bashdir=Please paste the absolute path to bash.exe: 
set startdir=%~dp0
%bashdir% --login -i -c "java -jar ""%startdir%\Server\BuildTools.jar"" --rev latest
pause
for /r %startdir% %%a in (*) do if "%%~nxa"=="spigot" set p=%%~nx0
if defined p (
ren  %p% "Spigot.jar"
) else (
echo Unable to find Spigot!
)
