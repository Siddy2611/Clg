def validate(seat):
	if len(seat)!=2:
		raise ValueError("Invalid format")

	row=seat[0].upper()
	seat_n=seat[1]

	if row not in ['A','B','C','D','E']:
		raise ValueError("Invalid seat format")

	if not seat_n.isdigit():
		raise ValueError("Invalid seat format")

try:
	seat=input("Enter seat: ")
	validate(seat)
	print("Succesfully selected seat: ",seat)
except ValueError as e:
	print(e)