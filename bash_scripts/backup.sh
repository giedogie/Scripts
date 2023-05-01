#!/bin/bash
#Skrypt pakujący, kompresujący i wysyłający backup użytkowników
tar --exclude=".*" --exclude="home/adrian" -zcf /archiwa/backup_$(date +%d-%m-%Y).tar.gz /home/
rsync -a /archiwa/ user@10.0.0.10:/zdalny_backup 
find /archiwa/ -name 'backup*.tar.gz' -ctime +10 -delete
#ctime +10 oznacza czas utworzenia więskzy niż 10 dni