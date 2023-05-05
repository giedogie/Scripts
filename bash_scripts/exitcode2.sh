#!/bin/bash
directory=/noteven

if [ -d $directory ]
then
    echo $?
    echo "The directory $directory exists."
else    
    echo "the directory $directory doesn't exist"
fi
echo "The exit code for this script run is $?"