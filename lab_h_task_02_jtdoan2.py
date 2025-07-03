#!/usr/bin/python3

import sys
import platform

def main():
	print("Command line arguments:")
	for arg in sys.argv:
		print(arg)

	print("\nPython path:")
	for path in sys.path:
		print(path)

	print("\nPython version:", sys.version)
	print("\nPlatform name:", platform.system().lower())




if __name__ == "__main__":
	main()
