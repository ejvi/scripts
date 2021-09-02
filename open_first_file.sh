#!/bin/bash
source "./scripts/dir.txt"
echo $dir
cd "$dir"
shopt -s nullglob
set -- *
printf "%s\n" "$1"
xdg-open "$1"
