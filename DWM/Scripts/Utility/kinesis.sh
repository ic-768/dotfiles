#!/bin/sh
xmodmap -e "remove Lock = Caps_Lock";
xmodmap -e "keysym Escape = Caps_Lock"
xmodmap -e "keysym Caps_Lock = Escape"
xmodmap -e "add Lock = Caps_Lock"
xmodmap -e "keycode 115 = Super_L"
xmodmap -e "keysym Next = Tab"
