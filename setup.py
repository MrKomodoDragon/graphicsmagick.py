import setuptools
from Cython.Build import cythonize 
import os

ext=setuptools.Extension(name="graphicsmagick", sources=["graphicsmagick/image.pyx"], include_dirs=['/usr/include/GraphicsMagick'], libraries=["GraphicsMagick++"])

setuptools.setup(
    ext_modules=cythonize([ext])
)
