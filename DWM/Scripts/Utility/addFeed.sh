#!/bin/bash

#Take an invidious URL and format it for use with liferea


var=$(echo "$1" | sed -Ee "s/(yewtu.be|invidious).*channel\//www.youtube.com\/feeds\/videos.xml?channel_id=/")
liferea -a "$var"
