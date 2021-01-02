#!/usr/bin/env bash
#Serve webpage and reload browser on source change
python -m SimpleHTTPServer 8000 &> /dev/null &
PID=$!
/home/ic768/Scripts/Web/watchReload.sh;
trap  "kill ${PID}" EXIT #Stop server

