#!/bin/bash
# This is a bash script designed to run a Minecraft 1.20.1 server on an Arch Linux Machine. It comes packaged with the "Minecraft RCon Client", made by "stefanodriussi". (https://github.com/stefanodriussi/minecraft-remote-controller)

MIN_MEMORY=4G
MAX_MEMORY=10G

while true
	git pull
	./mcsleepingserverstarter.sh
	sleep 10
endwhile
