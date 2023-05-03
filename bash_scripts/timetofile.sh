#!/bin/bash
#Dopisuje czas i datę do pliku (codziennie o 3:00, wywoływane z crontab -e)
date | cat>>/home/adrian/datetime.txt
