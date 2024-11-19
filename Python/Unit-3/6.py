def outer(text):
	def inner():
		return text[::-1]

	return inner()

string=input("Enter string: ")
result=outer(string)
print("Order reveresed: ",result)