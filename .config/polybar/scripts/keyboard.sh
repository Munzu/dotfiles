#!/bin/sh
LAYOUT=$(setxkbmap -query | grep layout | tr -d ' ' | cut -d ':' -f2)

if [ "$LAYOUT" = "eu" ]; then
    echo " EurKEY"
else 
    echo " Colemak"
fi


# if [ "$STATUS" = "Connected" ]; then
#     # ip=$(nordvpn status | grep IP | tr -d ' ' | cut -d ':' -f2) 
#     # echo " $ip"
#     country=$(nordvpn status | grep Country | tr -d ' ' | cut -d ':' -f2) 
#     echo " $country"
# elif [ "$STATUS" = "Connecting" ] || [ "$STATUS" = "AutoConnecting" ] || [ "$STATUS" = "Reconnecting" ]; then
#     echo " "
# else
#     echo " "

# fi

