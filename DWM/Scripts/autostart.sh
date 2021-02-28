sxhkd & disown;
feh --bg-scale "/home/ic768/Pictures/Wallpapers/japaneseGirl.jpg" & disown;
/home/ic768/Scripts/DWM/dwmbar & disown;
/home/ic768/Scripts/Birthdays/birthdayChecker.sh & disown;
redshift -O 4800 & disown;
compton & disown;
dunst & disown;

#Swap alt and control to mimic mac layout
xmodmap -e "remove mod1 = Alt_L" ;
xmodmap -e "remove control = Control_L" ;
xmodmap -e "add control = Alt_L" ;
xmodmap -e "add mod1 = Control_L";
