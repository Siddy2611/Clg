def intrest(balance,rate,months):
	try:
		intrest=(balance*rate)/months
		return intrest
	except ZeroDivisionError:
		print("Cannot be zero months")

balance=int(input("Enter balance: "))
rate=int(input("Enter rate: "))
months=int(input("Enter months: "))
intrest=intrest(balance,rate,months)
print("Intrest: ",intrest)