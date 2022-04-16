from libcpp.string cimport string
cdef extern from "<Graphicsmagick/Magick++.h>" namespace Magick:
	cdef void InitializeMagick(const char *path) except +
