#!/bin/sh
LAYOUT=$(setxkbmap -query | grep layout | tr -d ' ' | cut -d ':' -f2)
VARIANT=$(setxkbmap -query | grep variant | tr -d ' ' | cut -d ':' -f2)

if [[ "$VARIANT" == "eurkey-cmk-dpghk-ansi" ]]
then 
    echo " EurKEY (Colemak-DPGHK)"
elif [[ "$LAYOUT" == "eu" ]] && [[ -z "$VARIANT" ]]
then
    echo " EurKEY"
else 
    echo " $LAYOUT $VARIANT"
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

