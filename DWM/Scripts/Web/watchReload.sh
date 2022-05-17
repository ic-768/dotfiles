#!/usr/bin/env bash
#If watched files edited, reload browser 

find $1 | entr /home/ic768/Scripts/Web/reload-browser.sh Firefox
