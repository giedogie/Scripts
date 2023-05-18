#!/bin/bash

counter=0

for file in /etc/*
do
	counter=$(( $counter +1 )) 
	echo -n " $counter" 
done

if [ $counter -ge 10 ] && [ $counter -lt 20 ]
then

	echo "Ale burdel! "  

elif [ $counter -le 10 ] && [ $counter -ge 1 ]
then

	echo "Wszytsko pod kontrolą. "

elif [  $counter -ge 20 ]
then
	echo " Wysypisko śmieci! "
fi
