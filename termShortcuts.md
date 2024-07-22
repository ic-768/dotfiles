# Remote VLC

| Command                                        | Explanation                                |
| ---------------------------------------------- | ------------------------------------------ |
| `ssh`                                          | grandDaddy                                 |
| `export DISPLAY=:0`                            | (or whatever $DISPLAY is on remote host)   |
| `cvlc -I rc --fullscreen ${fileOrFolder}`      | Run VLC in fullscreen mode                 |
| `vlc --intf rc --extraintf qt ${fileOrFolder}` | Run VLC with RC interface and extra QT GUI |

# FINDING STUFF

| Command                            | Explanation                          |
| ---------------------------------- | ------------------------------------ |
| `xev`                              | Find key press keysyms               |
| `find / -name ${fileNameToLocate}` | Find where a named file is located   |
| `dpkg-query -L ${package}`         | Find where a package is installed    |
| `type -a ${executable}`            | Find where an executable is located  |
| `apropos ${keyword}`               | Search man pages for a keyword       |
| `ctrl + R`                         | Backwards search in the terminal     |
| `xprop \| grep PID`                | Get the PID of a window              |
| `ps -ef \| grep "that PID"`        | Get terminal command for that window |

# UTILITY

| Command                                                                      | Explanation                                                              |
| ---------------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| `qmv * -f do`                                                                | Rename files                                                             |
| `find <ParentFolder> -name '*.extension' -exec mv -it <FolderToMoveTo> {} +` | Move all `*.extension` files from subfolders to `FolderToMoveTo`         |
| `sftp grandDaddy >> put/get "filename"`                                      | Send or receive files; alias in `/etc/hosts`                             |
| `ln -s $fullTargetDirectory $fullLinkDirectory`                              | Create a symbolic link from `fullLinkDirectory` to `fullTargetDirectory` |

# INTERNET

| Command                                                 | Explanation                       |
| ------------------------------------------------------- | --------------------------------- |
| `nmcli device wifi rescan && nmcli device wifi list`    | Scan and print available networks |
| `nmcli device wifi connect $NETWORK password $PASSWORD` | Connect to a WiFi network         |

# MEDIA

| Command                                                                                                        | Explanation                        |
| -------------------------------------------------------------------------------------------------------------- | ---------------------------------- |
| `ffmpeg -i $(youtube-dl -f best --get-url "https://youtube.com/watch?v=mUq4bRxRffU") -ss 01:10 -t 40 test.mp4` | Download a part of a YouTube video |
| `grip`                                                                                                         | Markdown viewer                    |

# SCHEDULING

| Command            | Explanation                                                     |
| ------------------ | --------------------------------------------------------------- |
| `at 18:00`         | Run a command at this time; write command and save with Ctrl+d. |
| `atq`              | List scheduled jobs                                             |
| `at -c $JOBNUMBER` | View command for a specific job                                 |
