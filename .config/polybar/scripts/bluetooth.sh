#!/bin/bash

# power is on
icon_enabled=""
# power is off
icon_disabled=""
# power is on and device is connected
icon_connected=""

# status=`systemctl is-active bluetooth.service`
powered=$(echo -e 'show' | bluetoothctl | grep Powered | tr -d ' ' | cut -d ':' -f2)

if [ "$powered"  == "no" ]
then 
    echo "$icon_disabled"
else
    connected=$(echo -e 'info' | bluetoothctl | grep Connected | tr -d ' ' | cut -d ':' -f2)

    if [ "$connected" == "yes" ]
    then
        echo "$icon_connected"
    else
        echo "$icon_enabled"
    fi
fi

