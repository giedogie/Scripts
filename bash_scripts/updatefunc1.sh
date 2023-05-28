#!/bin/bash

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

check_exit_status() {
	
	if [ $? -ne 0 ]
	then 
		echo "An error occured, please check $errorlog file."
	fi	
}
stream_logs() {

1>>$logfile 2>>$errorlog

}

if grep -q "Arch" $release_file
then 
    #The host is based on  Arch, run the pacman update command
    sudo pacman -Syu && stream_logs
	check_exit_status

fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    #The host is based on Debian or Ubuntu
    #Run the apt version of command
    sudo apt dist-upgrade -y && stream_logs
	check_exit_status

fi