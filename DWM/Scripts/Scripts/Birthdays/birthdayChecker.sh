#!/bin/bash
SOUND_FILE="/home/ic768/Scripts/Birthdays/party.wav"
BDAY_FILE="/home/ic768/Scripts/Birthdays/bdayList"
TODAY=$(date '+%d %b')
BIRTHDAY=$(awk "/$TODAY/"'{print $3 " " $4}' $BDAY_FILE)

if [ "$BIRTHDAY" ]
then
  notify-send -u critical "It's $BIRTHDAY's birthday!";
  aplay $SOUND_FILE;
fi

