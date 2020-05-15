@echo off

set buildpath=%~dp0build\
set serverpath=%~dp0server\
if not exist %buildpath% md %buildpath%
if not exist %serverpath% md %serverpath%

cd %buildpath%
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
set /p version=Which version would you like to install? (e.g. latest, 1.15.2, etc.):
java -Xms1G -Xmx1G -jar BuildTools.jar --rev %version%
for /r %%a in (*spigot-*) do (
    ren %%~nxa spigot.jar
    echo renaming %%~nxa
)

cd %serverpath%
del spigot.jar
cd ..
move %buildpath%spigot.jar %serverpath%spigot.jar
pause
