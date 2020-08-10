#!/bin/sh

# updates=$(yay -Qu 2>/dev/null | wc -l); 
updates=$(checkupdates 2>/dev/null | wc -l); 

if [ $updates -gt 0 ]; then
    echo " # $updates"
else
    echo " "
fi
