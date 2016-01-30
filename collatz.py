def collatzcount(X):
    i = 0
    while (X != 1):
        if (X % 2 == 0):
            X = X / 2
        else:
            X = 3 * X + 1
            i = i + 1 
    return i
n = input('Paste your input')
for i in n:	
    result = []
for i in input:
    result.append(collatzcount(i))
print result
