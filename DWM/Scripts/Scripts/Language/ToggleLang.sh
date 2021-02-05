#!/bin/bash

LANG=$(setxkbmap -query |grep layout |awk '{ print $2 }');
[ "$LANG" = "gr" ]&&LANG="us"||LANG="gr";
setxkbmap $LANG;
