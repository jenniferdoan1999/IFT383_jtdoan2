#!/usr/bin/python3

students =  ["John", "Mary", "Peter", "Sam"]

grades = {
	"John": (85, 90, 88),
	"Mary": (78, 92, 87),
	"Peter": (88, 76, 92),
	"Sam": (90, 92, 94)
}

for student in students:
	math, english, science = grades[student]
	average = (math + english + science) / 3


	print(f"Student Name: {student}")
	print(f"Mathematics Grade: {math}")
	print(f"English Grade: {english}")
	print(f"Science Grade: {science}")
	print(f"Average Grade: {average}\n") 
