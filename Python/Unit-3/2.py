def sum_all(*numbers):
	total = 0
	for x in numbers:
		total += x
	return total

t1 = sum_all(3, 5, 8, 2)
print(f"Total 1 : {t1}")
