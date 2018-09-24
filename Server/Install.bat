@echo off
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
pause
set /p version=Which version would you like to install? (latest, 1.13.1, etc.):
java -jar BuildTools.jar --rev %version%
pause
for /r %%a in (*spigot-*) do (
    ren %%~nxa Spigot.jar
    echo renaming %%~nxa
)
pause
