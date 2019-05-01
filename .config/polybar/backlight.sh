#!/bin/bash

if [ $1 = 1 ] 
then
	exec light -A 5 &
	echo $(light | cut -d. -f1)
else

	if [ $1 = 2 ] 
	then
		exec light -U 5 &
		echo $(light | cut -d. -f1)
	else
		echo $(light | cut -d. -f1) &
 		sleep 20m
	fi
fi


