#!/bin/bash
cd "$(dirname "$(readlink -f "$0")")"
. ./dir.txt
cd "$dir"
shopt -s nullglob
set -- *
xdg-open "$1"
echo -e "\e[42mFILE $1 WAS OPENED\e[0m"
echo -e "\e[5mPRESS ANY KEY TO EXIT\e[0m"
read -n 1 -s
exit
