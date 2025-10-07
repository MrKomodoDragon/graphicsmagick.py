from libcpp.string cimport string
from libcpp cimport bool
cdef extern from "Magick++.h" namespace "Magick":
    cpdef void InitializeMagick(const char *path) except +
    cpdef cppclass Image:
        Image() except +
        Image(string& imageSpec) except +
        void write(string& imageSpec)
        void charcoal(const double radius_, const double sigma_)
        void edge(const double radius_)
        void blur(const double radius_, const double sigma_)
        void enhance()
        void equalize()
        void erase()
        void emboss(const double radius_, const double sigma_)
        void flip()
        void implode(const double factor_)
        void magnify()
        void oilPaint(const double radius_)
        void shear(const double xShearAngle, const double yShearAngle)
        void solarize(const double factor_)
        void trim()
        void wave(const double amplitude_, const double wavelength_)
        void spread(const unsigned int amount_)
        #void map(const Image &mapImage_, const bool dither_)
        void medianFilter(const double radius_)
        void motionBlur(const double radius_, const double sigma_, const double angle_)
        void shade(const double azimuth_, const double elevation_, const bool colorShading_)
        #void sharpen(const double radius_, const double sigma_)
