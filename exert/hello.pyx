# distutils: language=c++

from libcpp.vector cimport vector

cpdef primes(unsigned int nb_primes):
    cdef vector[int] p
    for i in range(nb_primes):
        p.push_back(i)
    return p

def say_hello_to(name):
    p = primes(2)
    print(f'{len(p)}')
    print(f"Hello {name}")
