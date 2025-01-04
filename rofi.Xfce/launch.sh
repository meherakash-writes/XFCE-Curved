#!/usr/bin/env bash

DIR="$HOME/.config/rofi"
# Terminate already running bar instances
killall -q rofi

# Wait until the processes have been shut down
while pgrep -u $UID -x rofi >/dev/null; do sleep 1; done

# Launch the bar
curTheme=`cat /home/meher/.env`

if [ "$curTheme" == "dark" ]
then
    rofi -show drun -config ~/.config/rofi.Xfce/menu.rasi
fi
#polybar -q main2 -c "$DIR"/config.ini &
if [ "$curTheme" == "light" ]
then
    rofi -show drun -config ~/.config/rofi.Xfce/menu_l.rasi
fi
