def prime(x):
	res = True
	i = 2
	while i < x:
		if x % i == 0:
			res = False
			break
		i = i + 1
	return res
n = 600851475143
i = n
divisores = []
while i > 1:
	if n % i == 0:
		#divisores.append(i)
		print i
	i = i - 1 
	