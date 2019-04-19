#!/bin/bash
#disabled=0
#enabled=1

switch_mode(){
        case $status in
        0)
        killall polybar
		polybar void & polybar top &
        status=$((1-status))
        ;;
        
        1)
	    killall polybar
        polybar void & polybar top_no_override &
	    status=$((1-status))
        ;;
        
        esac
}

status=$(cat ~/.config/polybar/overridestatus)
switch_mode
python3 ~/.config/polybar/override.py
> ~/.config/polybar/overridestatus
echo "$status" > ~/.config/polybar/overridestatus

