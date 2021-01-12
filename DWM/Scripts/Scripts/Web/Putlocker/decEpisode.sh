#!/bin/bash
# Decrement episode by 1 on putlocker

. firefox_command.sh

# Copy url to clipboard
firefox_command 'ctrl+l';
firefox_command 'ctrl+c'; 

# \K => match episode- but keep.
# \d+ match digits
# e flag at end = use programming expression instead of string in replacement
# $&-1 subtract 1 to matched portion

NEWURL=$(xclip -o | perl -pe "s/-episode-\K\d+/$&-1/e") 

#Paste new url in and go
echo "$NEWURL" | xclip -i -selection "clipboard"; 
firefox_command 'ctrl+l'
firefox_command 'ctrl+v'
firefox_command 'Return'
