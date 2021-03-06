#!/bin/bash
cd "$(dirname "$(readlink -f "$0")")"
. ./dir.txt
cd "$dir"
shopt -s nullglob
set -- *
trash-put "$1" #trash-cli required
tput civis #hides blinking cursor in terminal
echo -e "\e[41mFILE $1 WAS MOVED TO TRASH\e[0m"
echo -e "\e[5mPRESS ANY KEY TO EXIT\e[0m"
read -n 1 -s
exit
