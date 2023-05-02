#!/bin/bash
if [ -f ~/myfile ] # -f(file) -d(directory)
then
    echo "The file existes."
else
    echo "File does not exist."
fi
