# distutils: language = c++
cimport Image
import sys
def main():
	Image.InitializeMagick(sys.argv)