def calc_disc(price,discount=0.5,*,tax):
	discounted=price*(1-discount)
	final_p=discounted*(1-tax)
	return final_p

price=int(input("Enter number: "))
final_p=calc_disc(price,tax=0.05)
print("final price: ",final_p)