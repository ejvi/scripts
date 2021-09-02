#!/bin/bash
cd "$(dirname "$(readlink -f "$0")")"
. ./dir.txt
cd "$dir"
shopt -s nullglob
set -- *
printf "%s\n" "$1"
xdg-open "$1"
