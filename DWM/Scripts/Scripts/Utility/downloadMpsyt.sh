#!/bin/bash
#Download a playlist made with MPSYT

cat $1 | while read LINE # Read line-by-line
do
	DOWNLOADABLE=$(grep "http" $LINE) # If a link
	youtube-dl --ignore-errors -x --audio-format mp3 --yes-playlist $DOWNLOADABLE 
done
