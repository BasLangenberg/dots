#!/usr/bin/env bash

# Checks if file is edited in another local branch
#

for i in `git branch`; do
    if [ "$i" != "*" ] || [ "$i" != "master" ]; then
        git diff --name-only $i | grep -q "$1"
        if [ $? -eq 0 ]; then
            echo "File $1 is edited in branch $i"
            exit 0
        fi
    fi
done
