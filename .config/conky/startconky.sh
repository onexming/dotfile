#!/bin/fish
killall conky
#sleep 10 #time (in s) for the DE to start; use ~20 for Gnome or KDE, less for Xfce/LXDE etc
conky -c ~/.config/conky/rings -d -q & # the main conky with rings
#sleep 1 #time for the main conky to start; needed so that the smaller ones draw above not below (probably can be lower, but we still have to wait 5s for the rings to avoid segfaults)
conky -c ~/.config/conky/cpu -d -q &
conky -c ~/.config/conky/mem -d -q &
conky -c ~/.config/conky/network -d -q &
conky -c ~/.config/conky/disk -d -q &
#conky -c ~/.config/conky/clock -d -q &
conky -c ~/.config/conky/arch_logo -d -q &
#conky -c ~/.config/conky/notes &
