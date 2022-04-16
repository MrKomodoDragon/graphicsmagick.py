cdef extern from "<Magick++.h>" namespace "Magick":
	cdef void InitializeMagick(const char *path) except +
