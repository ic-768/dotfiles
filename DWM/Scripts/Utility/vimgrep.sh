#!/bin/bash
# Scan for files containing text and edit them in vim
vim $(grep -rl "$1")
