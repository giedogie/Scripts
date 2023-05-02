#!/bin/bash
#Skrypt sprawdza czy htop jest zainstalowany. Jeśli nie to go instaluje i uruchamia.
command=/usr/bin/htop

if [ -f $command ]
then
    echo "$command is available, let;s run it..."
else
    echo "$command is NOT available, installing it..."
    sudo apt update && sudo apt install -y htop
fi

$command