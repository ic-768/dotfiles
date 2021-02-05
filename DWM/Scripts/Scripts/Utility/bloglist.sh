#!/bin/bash

notify-send "Onion lover:iLoveCas" 

alacritty --working-directory ~/React/blog -e npm run dev & 
alacritty --working-directory ~/React/bloglist-frontend -e npm start &
alacritty -e vi ~/React/blog &
alacritty --working-directory ~/React/blog
