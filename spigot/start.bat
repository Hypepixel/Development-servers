@echo off
java -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005 -Xms1G -Xmx1G -XX:+UseConcMarkSweepGC -jar server/spigot.jar nogui
pause
