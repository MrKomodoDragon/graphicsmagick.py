# image.pyx
# distutils: language = c++
cimport graphicsmagick.image
import sys
def initialize():
    graphicsmagick.image.InitializeMagick((sys.argv[0]).encode("utf-8"))
    print("Initialized Magick++ Successfully")

cdef class Image:
    cdef graphicsmagick.image.Image c_image
    def __init__(self, path):
        self.c_image = graphicsmagick.image.Image(path.encode())
        print(f"Created an Image class from {path}")
    def write(self, path: str):
        self.c_image.write(path.encode())
    def charcoal(self, radius = 0.0, sigma=1.0):
        self.c_image.charcoal(radius, sigma)
    def edge(self, radius = 0.0):
        self.c_image.edge(radius)
    def blur(self, radius = 0.0, sigma = 1.0):
        self.c_image.blur(radius, sigma)
    def emboss(self, radius = 0.0, sigma = 1.0):
        self.c_image.emboss(radius, sigma)
    def enhance(self):
        self.c_image.enhance()
    def flip(self):
        self.c_image.flip()
    def implode(self, factor):
        self.c_image.implode(factor)
    def magnify(self):
        self.c_image.magnify()
    def erase(self):
        self.c_image.erase()
    def oilpaint(self, radius_ = 3.0):
        self.c_image.oilPaint(radius_)
    def shear(self, x_shear_angle, y_shear_angle):
        self.c_image.shear(x_shear_angle, y_shear_angle)
    def solarize(self, factor = 50.0):
        self.c_image.solarize(factor)
    def trim(self):
        self.c_image.trim()
    def wave(self, amplitude = 25.0, wavelength = 150.0):
        self.c_image.wave(amplitude, wavelength)
    def spread(self, amount=3): 
        self.c_image.spread(amount)
    #def map(self, image, dither:bool = False):
    #    self.c_image.map(image.c_image, dither)
    def median_filter(self, radius=0.0):
        self.c_image.medianFilter(radius)
    def motion_blur(self, radius, sigma, angle):
        self.c_image.motionBlur(radius, sigma, angle)
    def shade(self, azimuth = 30, elevation = 30, color_shading = False):
        self.c_image.shade(azimuth, elevation, color_shading)
    #def sharpen(self, radius=0.0, sigma=1.0):
        #self.c_image(radius, sigma)



