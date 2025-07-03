#!/usr/bin/python3



try:
	start = int(input("Enter a start integer: "))
	end = int(input("Enter an end integer: "))






	print("\nOdd numbers from {} to {}:".format(start, end))
	for i in range(start, end +1):
		if i % 2 != 0:
			print(i)


	print("\nEven numbers from {} to {}:".format(start, end))
	for i in range(start, end + 1):
		if i % 2 == 0:
			print(i)

except ValueError:
	print("Error. Please try again")

