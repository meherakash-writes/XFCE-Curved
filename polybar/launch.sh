#!/usr/bin/env bash

DIR="$HOME/.config/polybar"
# Terminate already running bar instances
killall -q mpc
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


# Launch the bar
curTheme=`cat /home/meher/.env`

if [ "$curTheme" == "dark" ]
then
    #polybar -q main -c "$DIR"/config.ini & polybar -q main2 -c "$DIR"/config_quote.ini &
    #polybar -q mybar -c "$DIR"/config_quote.ini 2>&1 | tee -a /tmp/polybar.log & disown
    polybar -q main -c "$DIR"/config.ini & 
    polybar-msg action theme hook 1
fi

if [ "$curTheme" == "light" ]
then
     #polybar -q main -c "$DIR"/config_l.ini & polybar -q main2 -c "$DIR"/config_quotel.ini &
     polybar -q main -c "$DIR"/config_l.ini & 
     polybar-msg action theme hook 0
fi
