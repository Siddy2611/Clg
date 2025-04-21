string=input("Enter string: ")

'''	Check is string upper or lower
if(string.isupper()):
	print("Upper Case: ",string)
else:
	print("Lower Case: ",string)'''

''' If length of word>15 split the words
print("Length: ",len(string))
if(len(string)>15):
	print(string.split())'''

''' Replacing strings
str2=input("Enter string: ")
str3=input("Enter string: ")
print("Replaced string: ",string.replace(str2,str3))'''

''' Index of strings
str2=input("Enter string: ")
print("Index: ",string.index(str2))'''


''' If string alphanumeric or numeric
if(string.isalnum()):
	if(string.isdigit()):
		print("Numeric string")
	else:
		print("Alpha-numeric string")
else:
	print("Alpha-numeric string")'''


'''ch=int(input("Enter choice"))
if ch==1:
	print("Upper Case: ",string.upper())
elif ch==2:
	print("Lower Case: ",string.lower())
elif ch==3:
	print("Sentence Case: ",string.capitalize())
elif ch==4:
	print("Swap Case: ",string.swapcase())
elif ch==5:
	print("Title Case: ",string.title())
elif ch==6:
	print("Convert to string: ",str(string))
	print("type of value is: ",string.isinstance(string,str))
elif ch==7:
	print("Center a string: ",string.center(20,"*"))#using star to show where it centers the string
elif ch==8:
	print("Strip string: ",string.strip())
elif ch==9:
	print("Count string: ",string.count("Hello"))
elif ch==10:
	print("Find string: ",string.find("Hello"))		
else:
	print("Invalid choice")'''


''' Swap two variable
str2=input("Enter string: ")
string,str2 = str2,string

print("After swapping :str1= ",string," str2= ",str2)'''

''' For version and current date and time
import sys
from datetime import datetime
print("Version: ",sys.version)
current=datetime.now()
print("Current time and date: ",current) '''


''' Some mathematical methods 
import random,math
num=int(input("Enter num: "))
print("Constant e: ",math.e)
print("Constant pi: ",math.pi)
print("Random no from 1 to 100: ",random.randint(1,100))
print ("Square root of {string} is: ",math.sqrt(num))
print("Power: ",math.pow(2,3))
print("Factorial: ",math.factorial(4))'''

