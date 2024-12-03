#!/bin/bash
# This is a bash script designed to run a Minecraft 1.20.1 server on an Arch Linux Machine. It comes packaged with the "Minecraft RCon Client", made by "stefanodriussi". (https://github.com/stefanodriussi/minecraft-remote-controller)

MIN_MEMORY=4G
MAX_MEMORY=10G
JAR_FILE=minecraft_1-20-1_Server.jar
DOWNLOAD_URL=https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar

if [ ! -f "$JAR_FILE" ]; then
    echo "$JAR_FILE not found, downloading..."
    curl -o "$JAR_FILE" "$DOWNLOAD_URL"
fi

echo "Starting Minecraft server..."
echo "Minimum Memory: $MIN_MEMORY"
echo "Maximum Memory: $MAX_MEMORY"
echo "Jar File: $JAR_FILE"
echo

java -Xms$MIN_MEMORY -Xmx$MAX_MEMORY -jar $JAR_FILE nogui