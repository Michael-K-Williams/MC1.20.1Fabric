// This is a bash file designed to run a Minecraft 1.20.1 server on a Windows Machine. It comes packaged with the "Minecraft RCon Client", made by "stefanodriussi". (https://github.com/stefanodriussi/minecraft-remote-controller)
@echo off
set MIN_MEMORY=4G
set MAX_MEMORY=10G
set JAR_FILE=minecraft_1-20-1_Server.jar
set DOWNLOAD_URL=https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar

if not exist %JAR_FILE% (
    echo %JAR_FILE% not found, downloading...
    powershell -Command "Invoke-WebRequest -Uri %DOWNLOAD_URL% -OutFile %JAR_FILE%"
)

echo Starting Minecraft server...
echo Minimum Memory: %MIN_MEMORY%
echo Maximum Memory: %MAX_MEMORY%
echo Jar File: %JAR_FILE%
echo
echo on
java -Xms%MIN_MEMORY% -Xmx%MAX_MEMORY% -jar %JAR_FILE% nogui