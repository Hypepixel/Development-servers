@echo off
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
pause
set /p version=Which version would you like to install? (latest, 1.15.1, etc.):
java -Xms1G -Xmx1G -jar BuildTools.jar --rev %version%
pause
del spigot.jar
pause
for /r %%a in (*spigot-*) do (
    ren %%~nxa spigot.jar
    echo renaming %%~nxa
)
pause
