from setuptools import setup, Extension
from Cython.Build import cythonize

setup(
    name='exert-cython',
    ext_modules=cythonize(
        [
            Extension(
                name="exert.hello",
                sources=["./exert/hello.pyx"],
            ),
        ],
        language_level=3,  # 指定 python 版本 3
    ),
    zip_safe=False,
)
