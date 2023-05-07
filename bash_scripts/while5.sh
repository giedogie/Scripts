#!/bin/bash
if [ -f ~/testfilestart ]
then
myvar="testfilestart checked. Checking started at $(date) in progress..."
echo $myvar && echo $myvar | cat >> ~/testfilelog
    while [ -f ~/testfile ]
    do
	echo "As pf $(date), the test file exists." | cat >> ~/testfilelog
	sleep 5
    done
    echo "As of $(date),the thest file is missing." | cat >> ~/testfilelog
else
myvar2="There is no testfilestart to begin. Starting infinity loop. Inserting new testfilestart at $(date)."
    echo $myvar2 && echo $myvar2 | cat >> ~/testfilelog
    cp /home/adrian/TESTFILESTART/testfilestart ~/
    echo "At $(date) started new copy loop." | cat >> ~/testfilelog
    /home/adrian/Scripts/bash_scripts/while5.sh
fi
