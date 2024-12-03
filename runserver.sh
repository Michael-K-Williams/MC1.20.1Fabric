#!/bin/bash
# This is a bash script designed to run a Minecraft 1.20.1 server on an Arch Linux Machine.

while true; do
    git pull
    ./mcsleepingserverstarter-linux-x64
    sleep 10
done