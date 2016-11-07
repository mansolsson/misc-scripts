#!/bin/bash

for directory in */; do
    if [[ -d "${directory}/.git" ]] and [[ -z $(git -C $directory status -s) ]]; then
        git -C $directory pull;
    fi
done
