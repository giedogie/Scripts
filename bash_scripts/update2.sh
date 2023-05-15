#!/bin/bash

mydir=/home/adrian/Scripts/

if [ -d $mydir ]
then
    sudo cp $mydir/bash_scripts/timeweather.sh /usr/local/bin/
    if [ $? -eq 0 ]
    then
	echo "Skrypt skopiowany"
    fi
fi