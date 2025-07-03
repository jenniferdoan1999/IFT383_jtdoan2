#!/usr/bin/python3


def calculate_backup_size(data_size, backup_frequency):
	return data_size * backup_frequency


def calculate_storage_cost(backup_size, cost_per_gb):
	return backup_size * cost_per_gb


def storage_info(data_size, backup_frequency, cost_per_gb, weeks):
	backup_size = calculate_backup_size(data_size, backup_frequency)
	total_cost = calculate_storage_cost(backup_size, cost_per_gb) * weeks
	return f"The total storage needed for backup is {backup_size} GB and the total cost for {weeks} weeks is ${total_cost:.2f} dollars"



def positive_number(prompt):
	while True:
		try:
			value = float(input(prompt))
			if value > 0:
				return value
			else:
				print("Please eEnter positive number.")
		except ValueError:
			print("Error. Try again.")


data_size = positive_number("Enter the size of the data in GB: ")
backup_frequency = positive_number("Enter the backup frequency per week: ")
cost_per_gb = positive_number("Enter the cost per GB ($): ")
weeks = positive_number("Enter the number of weeks: ")



print(storage_info(data_size, backup_frequency, cost_per_gb, weeks))
