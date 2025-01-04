#!/usr/bin/bash

curTheme=`cat /home/meher/.env`

if [ "$curTheme" == "light" ]
then
    xfconf-query -c xsettings -p /Net/ThemeName -s Tokyonight-Dark-BL
    xfconf-query -c xfwm4 -p /general/theme -s ZorinGrey
    xfconf-query -c xsettings -p /Net/IconThemeName -s Papirus-Dark-Blue
    xfconf-query -c xsettings -p /Gtk/FontName -s "Envy Code R VS Regular"
    xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Layan-white
    xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /home/meher/Pictures/dark.png
   
    rm -rf /home/meher/.env
    touch /home/meher/.env
    echo "dark" >> /home/meher/.env
fi

if [ "$curTheme" == "dark" ] 
then
    xfconf-query -c xsettings -p /Net/ThemeName -s Sweetly
    xfconf-query -c xfwm4 -p /general/theme -s ZorinBlue
    xfconf-query -c xsettings -p /Net/IconThemeName -s Catppuccin-SE
    xfconf-query -c xsettings -p /Gtk/FontName -s "Envy Code R VS Regular"
    xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Layan-white
    xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /home/meher/Pictures/light.png
    
    rm -rf /home/meher/.env
    touch /home/meher/.env
    echo "light" >> /home/meher/.env
fi

/home/meher/.config/polybar/launch.sh
