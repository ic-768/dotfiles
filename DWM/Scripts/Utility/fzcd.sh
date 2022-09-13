#!/bin/sh

dir=$(find ~ -type d | fzf)

if [ -z "$dir" ]; then
	exit 1
fi
cd "$dir" || exit;

$SHELL
