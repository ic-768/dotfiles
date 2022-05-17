# DWM 
`MOD+,/.` 
toggle screen

# Remote VLC
`ssh` 
grandDaddy

`export DISPLAY=:0` 
( or whatever $DISPLAY is on remote host )

`cvlc -I rc  --fullscreen ${fileOrFolder}`
`vlc --intf rc --extraintf qt ${fileOrFolder}`

# FINDING STUFF
`xev`  
find key press keysyms

`locate ${string}`

`find / -name ${fileNameToLocate}`    
find where named file is located

`dpkg-query -L ${package}`    
find where package is installed

`type -a ${executable}`    
find where executable is

`apropos ${keyword}`    
search man files for keyword

`ctrl + R`    
backwards search

`xprop | grep PID`
get PID of window

`ps -ef | grep "that PID"`    
get terminal command for that window

# UTILITY
`qmv * -f do` 
rename

`find <ParentFolder> -name '*.extension' -exec mv -it <FolderToMoveTo> {} + `
move all *.extension files from subfolders in ParentFolder to FolderToMoveTo*

`sftp grandDaddy >> put/get "filename"`
Send or Receive file / alias in /etc/hosts

`ln -s $fullTargetDirectory $fullLinkDirectory`  
create fullLinkDIrectory to fullTargetDirectory

# INTERNET
`nmcli device wifi rescan && nmcli device wifi list` 
scan and print networks

`nmcli device wifi connect $NETWORK password $PASSWORD`
connect to a wifi

# MEDIA
`ffmpeg -i $(youtube-dl -f best --get-url "https://youtube.com/watch?v=mUq4bRxRffU") -ss 01:10 -t 40 test.mp4`  
download part of video

`grip`
markdown viewer
