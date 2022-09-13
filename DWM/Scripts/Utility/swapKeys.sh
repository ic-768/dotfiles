#!/bin/sh
xmodmap -e "remove Lock = Caps_Lock";
xmodmap -e "keysym Escape = Caps_Lock"
xmodmap -e "keysym Caps_Lock = Escape"
xmodmap -e "add Lock = Caps_Lock"

xmodmap -e "remove mod1 = Alt_L" ;
xmodmap -e "remove control = Control_L" ;
xmodmap -e "add control = Alt_L" ;
xmodmap -e "add mod1 = Control_L";
