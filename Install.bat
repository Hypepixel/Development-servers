@echo on
set /p bashdir=Please paste the absolute path to bash.exe: 
set startdir=%~dp0
set bashdir=%bashdir%
%bashdir% --login -i -c "java -jar ""%startdir%\BuildTools.jar"" --rev latest
pause
