#!/bin/bash
#night=0
#day=1

switch_mode(){
	case $status in
	0)
	wal  --backend colorz --saturate 0.1 -q -i "$(< ~/.cache/wal/wal)"
	~/.config/zathura/genzathurarc
	;;
	1)
	wal  --backend colorz --saturate 0.1 -q -l -i "$(< ~/.cache/wal/wal)"
        ~/.config/zathura/genzathurarc

	;;
	esac
}

print_mode(){
	case $status in
	0)
	echo "    "
	;;
	1)
	echo "    "
	;;
	esac
}

status=$(cat ~/.config/polybar/laststatus)

if [ $1 = "--change" ]; then 
	status=$((1-status))
	switch_mode
fi
print_mode
> ~/.config/polybar/laststatus
echo "$status" > ~/.config/polybar/laststatus
