def sp(numbers):
	total_sum=sum(numbers)

	total_prod=1
	for n in numbers:
		total_prod *=n

	return (total_sum,total_prod)

numbers=[20,10,50,2]
result=sp(numbers)
print("Result: ",type(result))
print(result)