#!/bin/bash
# Increment Season by 1 on putlocker

. firefox_command.sh 

# Copy url to clipboard
firefox_command 'ctrl+l';
firefox_command 'ctrl+c'; 
url=$(xclip -o);

#Replace everything with whatever is inside \( \) 
# in this case, ( season-number ) 
NUMBER=$(echo $url | sed -n -e 's/.*season-\([0-9]\)*.*/\1/p')
NEWURL=$(echo $url | sed "s/season-.*/season-$((NUMBER + 1))-episode-1/") 


#Paste new url in and go
echo $NEWURL | xclip -i -selection "clipboard";
firefox_command 'ctrl+l'
firefox_command 'ctrl+v'
firefox_command 'Return'
