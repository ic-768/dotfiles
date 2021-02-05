#!/bin/sh
# http://eradman.com/entrproject/scripts/

cw=$(xdotool getwindowfocus -f)
xdotool search --onlyvisible --class "$1" windowfocus key \
  --delay 100 --window %@ 'ctrl+shift+r' || {
  1>&2 echo "unable to signal an application named \"$1\""
}
xdotool windowfocus $cw
