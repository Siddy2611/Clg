class BelowTemp(Exception):
	pass
def celsius_f(celsius):
	if celsius<-273:
		raise BelowTemp("Cannot be below zero temp")

	fahrenheit=(celsius*9/5)+32
	return fahrenheit

try:
	celsius=int(input("Enter temp: "))
	temp=celsius_f(celsius)
	print("Change: ",temp)
except BelowTemp as e:
	print(e)