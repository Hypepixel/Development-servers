@echo off

curl https://ci.appveyor.com/api/projects/cuberite/cuberite/artifacts/Cuberite.zip?job=Windows-x64 -O -J -L
pause
powershell Expand-Archive Cuberite.zip -DestinationPath %~dp0server/
del Cuberite.zip
pause