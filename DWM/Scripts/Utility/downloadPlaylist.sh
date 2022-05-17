#!/bin/bash
#Download youtube playlist as mp3 tracks
youtube-dl --ignore-errors -x --audio-format mp3 --yes-playlist "$1"
