#!/bin/sh
# Increment episode by 1 on putlocker

firefox_command(){
xdotool search --onlyvisible --class "firefox" windowfocus key \
  --delay 50 --window %@ $1 
}
firefox_command 'ctrl+l';
firefox_command 'ctrl+c';

sleep 0.2
url=$(xclip -o);

NUMBER=$(echo $url | awk -F - '{print $7}')  #current season

NEWURL=$(echo $url | sed "s/season-.*/season-$((NUMBER - 1))-episode-1/") 

echo $NEWURL | xclip -i -selection "clipboard";

##Paste new url in and go
firefox_command 'ctrl+l'
firefox_command 'ctrl+v'
firefox_command 'Return'
