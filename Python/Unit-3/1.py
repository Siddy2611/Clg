def calculate_area(length,width=5):
	return length*width

length=int(input("Enter number: "))
width=int(input("Enter number: "))
area1=calculate_area(length,width)
area=calculate_area(length)
print(area)
print(area1)