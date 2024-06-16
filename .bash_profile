script_path="/home/ic768/Scripts"

alias webDev="$script_path/Web/workspace.sh" # Server + vim
alias serve="$script_path/Web/hotServer.sh" # Simple server
alias aop="$script_path/Opacity/alacrittyOpacity.sh"
alias rc="$script_path/SSH/RC.sh"
alias react="$script_path/Web/watchReload.sh" # Watch + Reload
alias fandom="$script_path/Web/simpleFandom.sh" # Curl and view fandom page
alias scsh="$script_path/Screen/streamScreen.sh"
alias swap="$script_path/Utility/swapKeys.sh"
alias unswap="setxkbmap"
alias kinesis="$script_path/Utility/kinesis.sh"
alias fcd="$script_path/Utility/fzcd.sh"
alias fvi='vi $(fzf)'
alias addFeed="$script_path/Utility/addFeed.sh" # add url to liferea
alias bdays="cat $script_path/Birthdays/bdayList"
alias vimgrep="$script_path/Utility/vimgrep.sh" # recursively grep and edit files in vim
alias twoRemotes="$script_path/Utility/twoRemotes.sh" # recursively grep and edit files in vim
alias TODO="vi ~/Desktop/Code/tasks.md"
alias component="$script_path/Web/react-component.sh"
alias wifiCon="$script_path/Utility/wifiCon.sh"

alias gdcenter="curl -X POST -H 'Content-Type: application/json' -d'{\"content\":\"center\"}' http://192.168.1.14:3001/mouse"
alias gdmirror="curl -X POST -H 'Content-Type: application/json' -d'{\"content\":\"mirror\"}' http://192.168.1.14:3001/mouse"
alias gddouble="curl -X POST -H 'Content-Type: application/json' -d'{\"content\":\"double\"}' http://192.168.1.14:3001/mouse"

alias clearSwap="rm /home/ic768/.local/state/nvim/swap/*"
alias ngs="source <( ng completion script)"

alias j='z'

spray(){ # Spam number of terminals
  for i in {1..$1};
  do
    alacritty & disown;
  done;
}

. "$HOME/.cargo/env"


