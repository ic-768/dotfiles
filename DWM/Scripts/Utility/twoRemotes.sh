#!/bin/bash
# Take two SSH git locations and add them both as a remote
# Can push to both simultaneously by running `git push all $branch `

git remote add all "$1"
git remote set-url --add --push all "$1"
git remote set-url --add --push all "$2"
