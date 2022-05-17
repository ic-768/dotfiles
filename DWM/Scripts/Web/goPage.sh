#!/bin/sh
# Focus on Firefox and navigate to webpage

if [ -z "$*" ] ; then #if no argument
	website='localHost:8000'
else
	website=$1;
fi

win=$(xdotool search --onlyvisible --class firefox | head -1) #target Firefox
xdotool search --onlyvisible --class "firefox" windowfocus key \
	--delay 100 --window %@ 'ctrl+l' || {  #hit key combo
	1>&2 echo "unable to signal an application named \"$app\""
}
sleep 0.2
xdotool type --window $win $website
xdotool key --window $win "Return"
