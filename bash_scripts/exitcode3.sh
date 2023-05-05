#!/bin/bash

directory=/noteven

if [ -d $directory ]
then
    echo "the dir $directory exists."
    exit 0
else
    echo "the dir $directory doesn't exist."
    exit 199 
fi
echo "The exit code for this script run is: $?"
echo "You didn't see that statement."
echo "You won't see this one either."