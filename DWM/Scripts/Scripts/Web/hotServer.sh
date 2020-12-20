#!/usr/bin/env bash

python -m SimpleHTTPServer 8000 &> /dev/null &
pid=$!


find $1 | entr /home/ic768/Scripts/Web/reload-browser.sh Firefox


trap  "kill ${pid}" EXIT
# Stop server

# Output on running script:
# My Test Page
