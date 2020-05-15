@echo off

set buildpath=%~dp0build\
set serverpath=%~dp0server\
if not exist %buildpath% md %buildpath%
if not exist %serverpath% md %serverpath%

cd %buildpath%
set /p version=Which version would you like to install? (e.g. 1.15.2):
curl -o paper.jar https://papermc.io/api/v1/paper/%version%/latest/download
for /r %%a in (*paper-*) do (
    ren %%~nxa paper.jar
    echo renaming %%~nxa
)

cd %serverpath%
del paper.jar
cd ..
move %buildpath%paper.jar %serverpath%paper.jar
pause
