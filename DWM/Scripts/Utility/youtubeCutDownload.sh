#!/bin/bash
#Download just a portion of a youtube video
#Usage: youtubeCutDownload.sh $URL $START_TIME $DURATION

ffmpeg -i $(youtube-dl -f best --get-url "$1") -ss "$2" -t "$3" output.mp4
