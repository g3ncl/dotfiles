#!/bin/python3
#disabled=0
#enabled=1


import i3ipc
import os


i3 = i3ipc.Connection()
focused = i3.get_tree().find_focused()
print(i3.get_tree().find_fullscreen())
if i3.get_tree().find_fullscreen() is None:
    os.system( "killall polybar && polybar void & polybar top &")
    focused.command('fullscreen')
else: 
    focused.command('fullscreen')

i3.on("window::focus", os.system(exec urxvt))








