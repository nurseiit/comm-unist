import re
import logging

logger = logging.getLogger("parser")


TOKEN_REGEX = re.compile(
    r'\s*(-?\d+|\(|\)|(postfix|add|sub|mul|div|rem|eq|ne|lt|le|gt|ge|pop|swap|sel|nget|exec)(\b|$))')

def parse_program(source):
    tokens = tokenize(source)
    if next(tokens) != '(':
        raise ValueError('NOT A POSTFIX PROGRAM')
    if next(tokens) != 'postfix':
        raise ValueError('NOT A POSTFIX PROGRAM')
    token = next(tokens)
    try:
        n = int(token)
    except:
        raise ValueError('IMPROPER FORMAT FOR AN ARGUMENT')
    program = parse_body(tokens, next(tokens))
    return n, program

def parse_body(tokens, token):
    level = 1
    def _parse_body(token, result):
        nonlocal level
        if token == '(':
            level += 1
            exe_seq = _parse_body(next(tokens), [])
            result.append(exe_seq)
            return _parse_body(next(tokens), result)
        if token == ')':
            level -= level
            return result
        if token[0] in '-0123456789':
            result.append(int(token))
            return _parse_body(next(tokens), result)
        if token != 'END':
            result.append(token)
            return _parse_body(next(tokens), result)

    result = _parse_body(token, [])
    if level == 0:
        return result
    else:
        raise ValueError('LEXICAL_ERROR')

def tokenize(source):
    start = 0
    while start < len(source):
        m = TOKEN_REGEX.match(source, start)
        if m is None:
            raise ValueError('LEXICAL_ERROR')
        yield m.group(0).strip()
        start = m.end()
    yield 'END'
