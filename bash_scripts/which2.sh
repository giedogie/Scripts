#!/bin/bash
#Skrypt sprawdza czy htop jest zainstalowany. Jeśli nie to go instaluje i uruchamia.
command=htop

if command -v $command #command -v sprawdza obecność komendy
then
    echo "$command is available, let's run it..."
else
    echo "$command is NOT available, installing it..."
    sudo apt update && sudo apt install -y $command
fi

$command