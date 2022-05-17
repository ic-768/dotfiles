#!/bin/bash
#Utility to periodically scrape website 

website=$(curl "https://www.lenovo.com/gb/en/laptops/legion-laptops/legion-5-series/Legion-5-Pro-16ACH6H/p/88GMY501578"); 

while  true;
do 

 if (echo $website | grep -q "inc. VAT")  
 then #on successful grep
	 notify-send "TIME TO BUYY YOUR LAPTOP BITCH"
else
	 notify-send "No laptop"
fi

sleep 5s;
done
