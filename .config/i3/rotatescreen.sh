#!/bin/bash

if [[ $# -ne 1 ]]
then
	echo "You need to specify which way to rotate."
	echo "EX: normal, left, right, inverted"
	exit 1
fi

DEFAULTCTM="1 0 0 0 1 0 0 0 1"	#default Coordinate Transformation Matrix
leftr="0 -1 1 1 0 0 0 0 1"
rightr="0 1 0 -1 0 1 0 0 1"
upsider="-1 0 1 0 -1 1 0 0 1"

CTM=$DEFAULTCTM
rotation=$1

if [[ $rotation == "left" ]]
then
	CTM=$leftr
	xrandr_action="left"
elif [[ $rotation == "right" ]]
then
	CTM=$rightr
	xrandr_action="right"
elif [[ $rotation == "normal" ]]
then
	CTM=$DEFAULTCTM
	xrandr_action="normal"
elif [[ $rotation == "inverted" ]]
then
	CTM=$upsider
	xrandr_action="inverted"
fi

xinput set-prop "ATML1000:00 03EB:8A10" "Coordinate Transformation Matrix" $CTM
xrandr --output eDP-1 --rotate $xrandr_action
