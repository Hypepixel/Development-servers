@echo off
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
pause
java -jar BuildTools.jar --rev latest
pause
for /r %startdir% %%a in (*) do if "%%~nxa"=="spigot" set p=%%~nx0
if defined p (
ren  %p% "Spigot.jar"
) else (
echo Unable to find Spigot!
)
