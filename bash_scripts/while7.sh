#!/bin/bash
read -p "Enter name of file you want to observe:  " filename
read -p "Enter path where file should be:  " filepath
read -p "Enter the starter file name:  " startername
read -p "Enter starter file path:  " starterpath
read -p "Enter backup directory path:  " backuppath

whole_script() {

    touch $backuppath/testfilelog
    if [ -f /$starterpath/$startername ]
    then
    myvar="Test file $startername checked. Checking started at $(date) in progress..."
    echo $myvar && echo $myvar | cat >> $backuppath/testfilelog
	while [ -f /$filepath/$filename ]
	do
	    echo "As pf $(date), the test file $filename exists." | cat >> /$backuppath/testfilelog
	    sleep 5
	done
	echo "As of $(date),the thest file $filename is missing." | cat >> /$backuppath/testfilelog
	echo "Looking for thestfile $filename " && echo "Looking for test file $filename at $(date)" | cat >> /$backuppath/testfilelog
	cp /$backuppath/$filename /$filepath
	if [ -f /$starterpath/$startername ] | [ -f /$filepath/$filename ]
	then
	whole_script
	fi
    else
    myvar2="There is no testfilestart to begin. Starting infinity loop. Inserting new testfilestart at $(date)."
	echo $myvar2 && echo $myvar2 | cat >> /$backuppath/testfilelog
	cp $backuppath/$startername $starterpath
	echo "At $(date) started new copy loop." | cat >> $backuppath/testfilelog
	whole_script
    fi
}

whole_script