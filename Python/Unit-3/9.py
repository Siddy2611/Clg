import random

def roll_dice():
	dice1=random.randint(1,6)
	dice2=random.randint(1,6)
	return dice1,dice2

dice1,dice2=roll_dice()
total=dice1+dice2
# print("Dice 1:",dice1,"Dice 2:",dice2)

if total==7 or total==11:
	print("We win")
else:
	print("Try again")