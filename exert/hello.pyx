# distutils: language=c++

from libcpp.vector cimport vector

cpdef primes(unsigned int nb_primes):
     cdef int n, i
     cdef vector[int] p
     return p

def say_hello_to(name):
    print(f"Hello {name}")
