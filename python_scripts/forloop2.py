#!/usr/bin/env python3
import os
#dirname
path='/home/adrian/logfiles/'
#file extension
ext= ('.log')
#iterating over all files
for file in os.listdir(path):
    if file.endswith(ext):
    	print(file) # printing name of extension file
    else:
    	continue
