def inptnum(txt, nums, opnum):
    # Ask for input and check input is valid (this function may fall under KISS slightly but checking for both inputs
    # does make the main code easier to read). ALso, I'm aware the while loop is additional functionality. I found it
    # easier to do things this way rather than completely killing the program. 
    a=""
    while True:
        a = input(txt).lower()
        if opnum == "n":
            try:
                a = nums[a]
            except KeyError:
                print("Must be a text number (zero to five)")
                continue
            if a > 5:
                print("Number is too large")
                continue
        else:
            if a not in ["plus", "minus"]:
                print("Must be 'plus' or 'minus'.")
                continue            
        break
    return a

    

nums = {"zero":0, "one":1, "two":2, "three":3, "four":4, "five":5, "six":6, "seven":7, "eight":8, "nine":9, "ten":10}
print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')
a = inptnum('Please choose your first number (zero to five): ',nums, "n")
b = inptnum('What do you want to do? plus or minus: ',nums, "o")
c = inptnum('Please choose your second number (zero to five): ',nums, "n")
if b == "plus":
    e = a + c
else:
    e = a - c
if e < 0:
    d = "negative "
else:
    d = ""
# This is repetition here but as it's only a single line of code, calling a function seems odd. Code is used to look
# through nums to find the text value of an integer. 
a = [i for i, num in nums.items() if num == a][0]
c = [i for i, num in nums.items() if num == c][0]
e = [i for i, num in nums.items() if num == abs(e)][0]
print(a, b, c, "equals", d + e)

