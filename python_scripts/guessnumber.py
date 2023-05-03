#!/usr/bin/env python3
import random
print('Hello. What is your name?')
name = input()
secretNumber = random.randint(1,20)
print('Well, ' + name + ', I am thinking of number between 1 and 20.')
for guessTaken in range(1,7):
    print('Take a guess.')
    guess =int(input())
    if guess < secretNumber:
     print('Too low')
    elif guess > secretNumber:
     print('Too high')
    else:
         break #Con for correct answer
if guess == secretNumber:
    print('Good job ' + name + '! You guessed number in ' + str(guessTaken) + ' guesses!')
else: 
    print('No. The secret nuber was: ' + str(secretNumber))
