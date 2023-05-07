#!/bin/bash
myvar=1

while [ -f ~/testfile ]
do
    echo "As pf $(date), the test file exists."
    sleep 5
done
echo "As of $(date),the thest file is missing."