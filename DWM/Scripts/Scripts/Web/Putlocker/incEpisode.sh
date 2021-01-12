#!/bin/bash
# Increment episode by 1 on putlocker

. firefox_command.sh

# Copy url to clipboard
firefox_command 'ctrl+l';
firefox_command 'ctrl+c'; 
url=$(xclip -o);

NUMBER=$(echo $url | sed 's/^.*episode-\([0-9]*\).*/\1 /g');
NEWURL=$(echo $url | sed "s/-episode-.*$/-episode-$((NUMBER + 1))/")

#Paste new url in and go
echo $NEWURL | xclip -i -selection "clipboard"; 
firefox_command 'ctrl+l'
firefox_command 'ctrl+v'
firefox_command 'Return'
