#!/bin/bash

lang=`setxkbmap -query |grep layout |awk '{ print $2 }'`;
[ "$lang" = "us" ]&&lang="gr"||lang="us";
setxkbmap $lang;
