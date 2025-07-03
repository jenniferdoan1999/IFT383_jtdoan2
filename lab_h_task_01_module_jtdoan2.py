#!/usr/bin/python3


def add(a, b):
	return a + b

def subtract(a, b):
	return a - b

def multiply(a, b):
	return a* b

def divide(a, b):
	if b == 0:
		return "Error"
	return a / b




def main ():
	a = 6
	b = 3
	print("Testing for operands 6 and 3")
	print("Add:", add(a, b))
	print("Subtract:", subtract(a, b))
	print("Multiple:", multiply(a, b))
	print("Divide:", divide(a, b))


if __name__ == "__main__":
	main()
