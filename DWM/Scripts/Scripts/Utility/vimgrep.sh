#!/bin/bash
# Scan for files containing text and edit them in vim. For regex surround argument with ' '
#vim `grep -rl $1 | cut -d ':' -f1` 
vim `grep -rl $1` 
