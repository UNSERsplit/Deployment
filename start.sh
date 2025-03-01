#! /bin/bash
cd "$(dirname "$0")"
screen -dmS split_deploy ./_start.sh
sleep 1
./restart.sh