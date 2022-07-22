# distutils: language = c++
cimport Image
import sys
def main():
    Image.InitializeMagick((sys.argv[0]).encode("utf-8"))
    print("Initialized Magick++ Successfully")