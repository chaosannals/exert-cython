# distutils: language=c++

import pyximport
pyximport.install()

import exert
from exert import hello
from exert.hello import say_hello_to

exert.fib(16)

say_hello_to('aaa')
hello.primes(3)

from exert import lex

lexer = lex.Lexer()

