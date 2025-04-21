
fruits=[]
for i in range(4):
	i=input("Enter fruits: ")
	fruits.append(i)

fruits.append("Apple")
print(fruits)
fruits.remove("Kiwi")
print(fruits)
print(fruits[0])
print(fruits[1])
fruits.sort()
print("Sorted",fruits)
fruits.sort(reverse=True)
print("Descending order: ",fruits)
fruits.reverse()
print("Reversed",fruits)
print("First two: ",fruits[:2])
fruits.insert(2,"Kiwi")
print(fruits)
fruits.pop()
print(fruits)


even_num=[2,4,6,8]
odd_num=[1,3,5,7]

numb=even_num+odd_num
print(numb)

odd_num.extend(even_num)
print(odd_num)

numb.sort()
print(numb)



num=[]
for i in range(4):
	i=int(input("Enter number: "))
	num.append(i)

tuple_num=tuple(num) #cant append in tuple
print("Sum: ",sum(tuple_num))
print("Sorted: ",sorted(tuple_num))
print("Maximum: ",max(tuple_num))
avg=sum(tuple_num)/len(tuple_num)
print("Average: ",avg)

n=int(input("Enter number to check: "))
if n in num:
	count=num.count(n)
	print("It exists ",count," this many times")
else:
	print("It doesnt exist")

word="Siddharth"
r_word=tuple(word)
print("Converted:",r_word)
print("Type: ",type(r_word))



sets=set()
for i in range(5):
	i=int(input("Enter num: "))
	sets.add(i)

sets=set(nums)
print(sets)
remove=int(input("Enter number: "))

if remove in sets:
	sets.remove(remove)
	print("Updated Set: ",sets)
else:
	print("Not found in set: ",sets)

sets2={9,10,11,12,42}
# sets.intersection_update(sets2)
# print("Intersection ",sets)

# sets.difference_update(sets2)
# print("Difference: ",sets)

s=sets.union(sets2)
print("Union: ",s)

s1=sets.symmetric_difference(sets2)
print(s1)

frozen=frozenset(sets)
print("Type: ",type(frozen))



dicts={}

for i in range(2):
	key=input("Enter key: ")
	value=int(input("Enter value: "))
	dicts[key]=value
print(dicts)

for i in dicts.keys():
	print("Keys: ",i)
for i in dicts.values():
	print("Values: ",i)
for i,j in dicts.items():
	print("Keys: ",i," Values: ",j)

if "Sid" in dicts:
	print("Present")

dict_copy=dicts.copy()
print("Copy: ",dict_copy)

print(dicts.get("Sid"))

key=input("Enter key: ")
value=int(input("Enter value: "))
dicts.update({key:value})

dicts.pop("Ayush")
print(dicts)

dicts.popitem()
print(dicts)


for i in range(1,16):  #key 1 value its square
	dicts[i]=i*i
print(dicts)


d1 = {'a': 100, 'b': 200, 'c': 300}
d2 = {'a': 300, 'b': 200, 'd': 400}

combined={}

for x,y in d1.items():
	combined[x]=y
for x,y in d2.items():
	if x in combined:
		combined[x]+=y
	else:
		combined[x]=y
print(combined)


vowel="aeiouAEIOU"
dicts={"name":"Sid","lname":"Sarkar"}

count=0

for value in dicts.values():
	for i in value:
		if i in vowel:
			count+=1
print("Total no of vowels is ",count)