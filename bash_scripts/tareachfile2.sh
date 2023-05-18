#!/bin/bash
read -p "Enter path to directory or file" filepath
for file in $filepath
do

	tar -czvf $file.tar.gz $file
done
