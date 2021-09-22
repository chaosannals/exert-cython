# distutils: language=c++

from libcpp.vector cimport vector

cdef enum:
    T_ID = 1
    T_NEWLINE = 10
    T_L_NUMBER = 100
    T_L_STRING = 101
    T_KW_SAY = 10000
    T_KW_PRINT = 10001

cdef class Lexeme:
    cdef int row
    cdef int column
    cdef int kind
    cdef str text

    def __init__(self, row, column, kind, text=None):
        self.row = row
        self.column = column
        self.kind = kind
        self.text = text

cdef class Lexer:
    cdef int index
    cdef int mode

    def __init__(self):
        self.index = 0
        self.mode = 0

    def lex(self, str code):
        cdef vector[int] lexemes
        for i in code:
            lexemes.push_back(i)
        return lexemes