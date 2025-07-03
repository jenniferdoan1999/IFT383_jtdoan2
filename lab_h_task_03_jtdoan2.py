#!/usr/bin/python3

import os
import time


def main():
	print("Current working directory:", os.getcwd())

	test_dir = "test_dir"
	if not os.path.exists(test_dir):
		os.mkdir(test_dir)


	os.chdir(test_dir)




	print("Current working directory:", os.getcwd())

	file_name = "test_file.txt"
	with open(file_name, "w") as f:
		f.write("This is a test file.")

	print("\nContents of the current directory:")
	print(os.listdir("."))



	file_size = os.path.getsize(file_name)
	mod_time = os.path.getmtime(file_name)
	print(f"\nFile size of '{file_name}': {file_size} bytes")
	print(f"Last modification time of '{file_name}' {time.ctime(mod_time)}")



	new_file_name = "new_test_file.txt"
	os.rename(file_name, new_file_name)



	print("\nContents of the current directory after renaming the file:")
	print(os.listdir("."))


	os.remove(new_file_name)


	os.chdir("..")


	os.rmdir(test_dir)


	print("\nContents of the parent directory after deletion:")
	print(os.listdir("."))



if __name__ == "__main__":
	main()
