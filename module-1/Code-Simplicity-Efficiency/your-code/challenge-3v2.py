def largest_side(x):
    for c in range(x,0,-1):
        for a in range(1,c-1):
            if (c**2 - a**2)**0.5 % 1 == 0:
                return c
    return 0


a = input("What is the maximal length of the triangle side? Enter a number: ")
print("The longest side possible is " + str(largest_side(int(a))))
        