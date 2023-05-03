#!/usr/bin/env python3
print('How many cats do you have?')
numCats = input()
try:
    if int(numCats) >= 4:
      print('That is a lot of cats')

    else:
     print('That is not that many cats.')

except ValueError:
      print('You did not enter a number.')
except int(numCats) < 0:
      print("You can't have negative number of cats unless they are dead")