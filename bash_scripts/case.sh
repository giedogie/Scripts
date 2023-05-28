#!/bin/bash

finished=0

while [ $finished -ne 1 ]
do
	echo "What is your favorite Linux Distro?"

	echo "1 - Arch"
	echo "2 - CentOS"
	echo "3 - Debian"
	echo "4 - Mint"
	echo "5 - Ubuntu"
	echo "6 - Something else"
	echo "7 - exit script"

	read distro;

	case $distro in
	1) echo "Arch is a rolling realease.";;
	2) echo "Centos is popular on servers";;
	3) echo "Debian is a comunity distro";;
	4) echo "Mint is popular on desktops and laptops.";;
	5) echo "Ubuntu is popular on both servers and computers.";;
	6) echo "there are many distros out there.";;
	7) finished=1 ;;
	*) echo "You didnt eneter an appropriatre choice"
	esac
done
	echo "Thank you!"