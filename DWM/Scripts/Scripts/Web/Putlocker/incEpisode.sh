#!/bin/sh
# Increment episode by 1 on putlocker

firefox_command(){
xdotool search --onlyvisible --class "firefox" windowfocus key \
  --delay 35 --window %@ $1 
}

# Target Firefox
firefox_command 'ctrl+l';
# Remove trailing /

firefox_command 'Right';
firefox_command 'BackSpace';

# Copy url to clipboard
firefox_command 'ctrl+l';
firefox_command 'ctrl+c';

url=$(xclip -o);
NUMBER=$(echo $url | sed 's/^.*season-.*-episode-/ /g')
NEWURL=$(echo $url | sed "s/-episode-.*$/-episode-$((NUMBER + 1))/")

echo $NEWURL | xclip -i -selection "clipboard";

#Paste new url in and go
firefox_command 'ctrl+l'
firefox_command 'ctrl+v'
firefox_command 'Return'
