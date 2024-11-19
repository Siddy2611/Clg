class Employee:
	def __init__(self, name, salary):
		self.name = name
		self.salary = salary
		print("Employee Created.")

	def emp(self):
		print(f"I'm {self.name}, an Employee.")

	def calculateBonus(self):
	    bonus = self.salary * 0.10
	    return bonus

	def __del__(self):
		print(f"Employee {self.name} deleted.")

class Manager(Employee):
	def __init__(self, name, salary):
		super().__init__(name, salary)
		print(f"Manager created.")

	def disp(self):
		print(f"Manager Name: {self.name}")
		print(f"Manager Salary: {self.salary}")
		print(f"Bonus: {self.calculateBonus()}")

	def __del__(self):
		print(f"Manager {self.name} deleted.")


class Developer(Employee):
	def __init__(self, name, salary):
		super().__init__(name, salary)
		print("Developer Created.")

	def disp(self):
		print(f"Developer Name: {self.name}")
		print(f"Developer Salary: {self.salary}")
		print(f"Bonus: {self.calculateBonus()}")

	def __del__(self):
		print(f"Developer {self.name} deleted.")

class Intern(Employee):
	def __init__(self, name, salary, duration):
		super().__init__(name, salary)
		self.duration = duration
		print("Intern Created.")

	def Calc_Stipend(self):
		stipend = self.salary * self.duration
		return stipend

	def disp(self):
		print(f"Intern Name: {self.name}")
		print(f"Intern Stipend (for {self.duration} months): {self.Calc_Stipend()}")
		
	def __del__(self):
		print("Int - D")

manager = Manager("Priya", 80000)
manager.disp()

# Creating Developer instance
developer = Developer("Ben", 60000)
developer.disp()

# Creating Intern instance
ntern = Intern("Archie", 1000, 6)  # Duration of 6 months
ntern.disp()

# Deleting instances
del manager
del developer
del ntern