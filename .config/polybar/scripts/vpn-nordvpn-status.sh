#!/bin/sh
STATUS=$(nordvpn status)

if [ "$STATUS" = "transport is closing" ]; then
    echo ""
else 
    STATUS=$(nordvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)
fi


if [ "$STATUS" = "Connected" ]; then
    # ip=$(nordvpn status | grep IP | tr -d ' ' | cut -d ':' -f2) 
    # echo " $ip"
    country=$(nordvpn status | grep Country | tr -d ' ' | cut -d ':' -f2) 
    echo " $country"
elif [ "$STATUS" = "Connecting" ] || [ "$STATUS" = "AutoConnecting" ]; then
    echo " "
else
    echo " "

fi
