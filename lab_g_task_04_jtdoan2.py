#!/usr/bin/python3

fruits = ['Apple', 'Banana', 'Cherry', 'Date', 'Elderberry']
print("List:", fruits)


fruits_tuple = tuple(fruits)
print("Tuple:", fruits_tuple)


fruits_set = set(fruits)
print("Set:", fruits_set)


fruits_dict = {fruit: len(fruit) for fruit in fruits}
print("Dictionary:", fruits_dict)

fruits.append('Fig')
fruits.append('Grape')

fruits.remove('Date')
print("Updated List:", fruits)


fruits_dict = {fruit: len(fruit) for fruit in fruits}
print("Updated Dictionary:", fruits_dict)
