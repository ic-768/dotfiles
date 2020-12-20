#!/bin/bash
sound_file="/home/ic768/Scripts/Birthdays/party.wav"
Bday_file="/home/ic768/Scripts/Birthdays/bdayList"
Today=`date '+%d %b'`
Birthday=`awk "/$Today/"'{print $3 " " $4}' $Bday_file`

if [ "$Birthday" ]
then
  notify-send -u critical "It's $Birthday's birthday!";
  aplay $sound_file;
fi

