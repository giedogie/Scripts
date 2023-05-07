#!/bin/bash
if [ -f ~/testfilestart ]
then
    while [ -f ~/testfile ]
    do
	echo "As pf $(date), the test file exists." | cat >> ~/testfilelog
	sleep 5
    done
    echo "As of $(date),the thest file is missing."
else
    echo "There is no testfilestart to begin."
fi
