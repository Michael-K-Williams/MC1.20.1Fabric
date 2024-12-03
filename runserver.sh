#!/bin/bash
# This is a bash script designed to run a Minecraft 1.20.1 server on an Arch Linux Machine.

MIN_MEMORY=4G
MAX_MEMORY=10G

while true; do
    git pull
    ./mcsleepingserverstarter.sh
    sleep 10
done