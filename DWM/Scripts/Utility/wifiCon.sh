#!/bin/sh

bssid=$(nmcli device wifi list | sed -n '1!p' | cut -b 9- | dmenu -p "Select Wifi:" -l 20 -nb "#000000" -nf "#eeeeee" -sb "#507165" -sf "#eeeeee" | cut -d' ' -f1)

if [ -z "$bssid" ]
 then  exit;
fi

pass=$(echo "" | dmenu -p "Enter password:" -nb "#000000" -nf "#eeeeee" -sb "#507165" -sf "#eeeeee")

if [ -z "$pass" ]
 then  exit;
fi

nmcli device wifi connect "$bssid" password "$pass"
