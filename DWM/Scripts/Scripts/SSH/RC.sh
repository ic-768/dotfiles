#!/bin/bash

#if no argument -> shell | otherwise -> VLC
[ -z "$1" ] && ssh -t grandDaddy "export DISPLAY=:0; bash -i" || ssh grandDaddy "export DISPLAY=:0; cvlc --fullscreen -I rc  --extrai    ntf qt $1; bash -i"
