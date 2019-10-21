#!/bin/sh

# if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
#     updates_arch=0
# fi

# if ! updates=$(yay -Qu | wc -l); then
# if ! updates_aur=$(yay -Qu 2> /dev/null | wc -l); then
# if ! updates_aur=$(cower -u 2> /dev/null | wc -l); then
# if ! updates_aur=$(trizen -Su --aur --quiet | wc -l); then
# if ! updates_aur=$(pikaur -Qua 2> /dev/null | wc -l); then
    # updates=0
# fi
updates=$(yay -Qu 2>/dev/null | wc -l); 
# updates=$(("$updates_arch" + "$updates_aur"))

# regex='^[0-9]+([.][0-9]+)?$'
# regex='^[0-9]+$'

# case $updates in
#     ''|*[!0-9]*) echo bad ;;
#     *) echo good ;;
# esac

# case $updates in
#    ( +([0-9]) )   echo "REQUEST_ID is all numbers" ;;
#              *)   echo "REQUEST_ID is not all numbers" ;;
# esac

# if ! [[ $updates =~ $regex ]] ; then
#     echo " "
# else
if [ "$updates" -gt 0 ]; then
    echo " # $updates"
else
    echo " "
fi
# fi

# if ! [ "$updates" =~ $regex ] && [ "$updates" -gt 0 ]; then
# if [ "$updates" -gt 0 ]; then
#     echo " # $updates"
# else
#     echo " "
# fi
