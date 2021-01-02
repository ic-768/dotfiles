#!/bin/bash
#Utility to view fandom wikis without bloat

curl $1 > $HOME/localWebPage/rawPage.html ;

#HTML tags to get rid of
perl -0777 -pe '
s|.*body class.*?mw-parser-output||sg;
s|<script.*?</script>||sg; s|<svg.*?svg>||sg;
s|<noscript.*?</noscript>||sg;' $HOME/localWebPage/rawPage.html > $HOME/localWebPage/localwebPage.html;
rm $HOME/localWebPage/rawPage.html;

cd $HOME/localWebPage
alacritty -e $HOME/Scripts/Web/hotServer.sh & disown
$HOME/Scripts/Web/goPage.sh 
