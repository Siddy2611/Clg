def apply_operation(a,b,operation):
	return operation(a,b)

def add(x,y):
	return x+y

def sub(x,y):
	return x-y

x=int(input("Enter number: "))
y=int(input("Enter number: "))
print("Add: ",apply_operation(x,y,add))
print("Sub: ",apply_operation(x,y,sub))