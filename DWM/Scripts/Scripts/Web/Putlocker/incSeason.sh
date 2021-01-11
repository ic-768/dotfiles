#!/bin/sh
# Increment episode by 1 on putlocker

firefox_command(){
xdotool search --onlyvisible --class "firefox" windowfocus key \
  --delay 35 --window %@ $1 
}
firefox_command 'ctrl+l';
firefox_command 'ctrl+c';

url=$(xclip -o);

#Replace everything with whatever is inside \( \) 
# in this case, ( season-number ) 
NUMBER=$(echo $url | sed -n -e 's/.*season-\([0-9]\)*.*/\1/p')
NEWURL=$(echo $url | sed "s/season-.*/season-$((NUMBER + 1))-episode-1/") 

echo $NEWURL | xclip -i -selection "clipboard";

##Paste new url in and go
firefox_command 'ctrl+l'
firefox_command 'ctrl+v'
firefox_command 'Return'
