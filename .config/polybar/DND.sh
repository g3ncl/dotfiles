#!/bin/bash
#go=0
#pause=1

switch_mode(){
	case $status in
	0)
	print_mode
        notify-send "DUNST_COMMAND_RESUME" &
	> ~/.config/polybar/lastDND 
        echo "$status" > ~/.config/polybar/lastDND
	
	;;
	1)
	print_mode
        notify-send "DUNST_COMMAND_PAUSE" &
	> ~/.config/polybar/lastDND 
        echo "$status" > ~/.config/polybar/lastDND
	
	;;
	esac
}

print_mode(){
	case $status in
	0)
	echo "  "
	;;
	1)
	echo "  "
	;;
	esac
}

reset_mode(){
	> ~/.config/polybar/lastDND 
        echo "0" > ~/.config/polybar/lastDND

} 

status=$(cat ~/.config/polybar/lastDND)

if [ $1 = "--change" ]
then 
	status=$((1-status))
	switch_mode
elif [ $1 = "--reset" ]
then
	reset_mode
else    
	print_mode
fi

