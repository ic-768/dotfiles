firefox_command(){
xdotool search --onlyvisible --class "firefox" windowfocus key \
  --delay 35 --window %@ $1 
}
