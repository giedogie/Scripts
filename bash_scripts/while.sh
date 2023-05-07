#!/bin/bash
myvar=1

while [ $myvar -le 10 ] #-le less or equal
do
    echo $myvar
    myvar=$(( $myvar +1 ))
    sleep 0.5 # slowing down
done