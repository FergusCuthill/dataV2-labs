import string
import random


def GenerateStrings(n, a, b):
    # Generates n random strings of length in range(a,b)
    l = random.choice(range(a, b))
    s = string.ascii_lowercase + string.digits
    return [[''.join(random.choice(s) for i in range(l))] for i in range(n)]


a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')
if a > b:
    print('Incorrect min and max string lengths. Try again.')
else:
    print(GenerateStrings(n, a, b))