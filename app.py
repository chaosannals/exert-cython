import glob
from exert import lex

lexer = lex.Lexer()


for p in glob.glob('asset/*'):
    print(p)
    with open(p, 'r', encoding='utf8') as reader:
        code = reader.read()
        lexemes = lexer.lex(code)
        print(lexemes)
        