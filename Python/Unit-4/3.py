class StockError(Exception):
	pass

def check_stock(rquantity,available):
	if rquantity>available:
		raise StockError("Cannot be requested")

try:
	available=int(input("Enter stock: "))
	rquantity=int(input("Enter requested stock: "))
	check_stock(rquantity,available)
	print("Succesfully requested: ",rquantity)
except StockError as e:
	print(e)