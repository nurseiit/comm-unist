import re
import logging

logger = logging.getLogger("parser")


TOKEN_REGEX = re.compile(
    r'\s*((proc\?)|(pair\?)|(sym\?)|(bool\?)|(unit\?)|(int\?)|(bool=\?)|(sym=\?)|-?\d+|\w+|\(|\)|(#t|#f|#u)|(<|>)=?|:|=>|->|\+|\-|\*|/|%|=|!=|(unit|int|bool|symb)|(flexk|lam|app|rec|prim|if|sym|and|or|not|pair|error|fst|snd)(\b|$))')

def parse(exp):
    tokens = tokenize(exp)
    token = next(tokens)
    if token != '(':
        raise ValueError('NOT A FLEXK PROGRAM')
    token = next(tokens)
    if token != 'flexk':
        raise ValueError('NOT A FLEXK PROGRAM')
    prog, prog_type = parse_body_and_type(tokens, next(tokens))
    prog.insert(0, token)
    logger.debug('prog: {}'.format(prog))
    logger.debug('prog_type: {}'.format(prog_type))
    return prog, prog_type

def parse_body_and_type(tokens, token):
    level = 1
    type_level = 1

    def parse_type_exp(token, result):
        logger.debug('[parse_type_exp] token: {}'.format(token))
        nonlocal type_level
        if token == '(':
            type_level += 1
            logger.debug('[parse_type_exp] type_level: {}'.format(type_level))
            result.append(parse_type_exp(next(tokens), []))
            return parse_type_exp(next(tokens), result)
        if token == ')':
            type_level -= 1
            logger.debug('[parse_type_exp] type_level: {}'.format(type_level))
            return result
        if token == '=>':
            result.append(token)
            return parse_type_exp(next(tokens), result)
        if token == '->':
            result.append(token)
            return parse_type_exp(next(tokens), result)
        if token != 'END':
            result.append(token)
            return parse_type_exp(next(tokens), result)
        else:
            raise ValueError('[parse_type_exp] Unrecognized token: {}'.format(token))

    def parse_exp(token, result):
        nonlocal level
        logger.debug('[parse_exp] token: {}'.format(token))
        if token == '(':
            level += 1
            logger.debug('[parse_exp] level: {}'.format(level))
            result.append(parse_exp(next(tokens), []))
            return parse_exp(next(tokens), result)
        if token == ')':
            level -= 1
            logger.debug('[parse_exp] level: {}'.format(level))
            return result
        if token[0] in '0123456789':
            result.append(int(token))
            return parse_exp(next(tokens), result)
        if token != 'END':
            result.append(token)
            return parse_exp(next(tokens), result)
        else:
            raise ValueError('[parse_exp] Unrecognized token: {}'.format(token))

    body_result = parse_exp(token, [])
    if level == 0 and next(tokens) == ':' and next(tokens) == '(':
        type_result = parse_type_exp(next(tokens), [])
        if type_level == 0:
            logger.debug('parsing is done')
            logger.debug('body_result: {}'.format(body_result))
            logger.debug('type_result: {}'.format(type_result))
            return body_result, type_result

    raise ValueError('LEXICAL_ERROR')

def tokenize(source):
    start = 0
    while start < len(source):
        m = TOKEN_REGEX.match(source, start)
        logger.debug('m: {}'.format(m))
        if m is None:
            raise ValueError('LEXICAL_ERROR')
        yield m.group(0).strip()
        start = m.end()
    yield 'END'
