#!/usr/bin/env python3
print('What\'s your name?')
name = input()
print('Hi ' + name + ' now tell me, how old are you?')
age = int(input())
if name == 'Alice':
    print('Hi my old friend Alice')
elif age < 12:
    print('You are not ALice, kiddo')
elif age > 2000:
    print('Unlike you, Alice is not an Vampire')
elif age > 100:
    print('You are not Alice, grannie')