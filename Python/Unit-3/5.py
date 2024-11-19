def find_max(*args):
	if args:
		return max(args)
	else:
		return None

print(find_max(1,9,10,55,65,2))

n=[20,545,12,5]
print(find_max(*n))