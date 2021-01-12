#!/bin/bash
# Increment Season by 1 on putlocker

. firefox_command.sh 

# Copy url to clipboard
firefox_command 'ctrl+l';
firefox_command 'ctrl+c'; 

# \K => match season- but don't be part of matched portion
# \d+ match digits
# e flag= allow logic instead of string in replacement
# $&+1 add 1 to matched portion

NEWURL=$(xclip -o | perl -pe 's/season-\K\d+/$&+1/e')

 #Paste new url in and go
echo "$NEWURL" | xclip -i -selection "clipboard";
firefox_command 'ctrl+l'
firefox_command 'ctrl+v'
firefox_command 'Return'
