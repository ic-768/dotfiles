#!/bin/bash
### Run backend & frontend & open vim

projectDir="/home/ic768/Desktop/Code/Web/React/custom-forms"

alacritty  -e npm --prefix "$projectDir/client" run start & disown
alacritty  -e npm --prefix "$projectDir/server" run start & disown

vi -p "$projectDir/server/src/app.ts" "$projectDir/client/src"

