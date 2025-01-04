#!/usr/bin/env bash
curTheme=`cat /home/meher/.env`

if [ "$curTheme" == "dark" ]
then
@import "~/.config/rofi/colors/paper.rasi"
fi

if [ "$curTheme" == "light" ]
then
@import "~/.config/rofi/colors/paper.rasi"
fi
