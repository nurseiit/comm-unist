import re


def parse(src):
    exp, rest = _partition_exps(src)
    if rest:
        raise ValueError("Unexpected token '%s'" % rest)
    elif exp[0] == "(":
        end = _close_paren(exp)
        return [parse(e) for e in _split_to_exps(exp[1:end])]
    else:
        try:
            return int(exp)
        except:
            if exp == '#t':
                return True
            elif exp == '#f':
                return False
            return exp


def _split_to_exps(src):
    rest = src.strip()
    exps = []
    while rest:
        exp, rest = _partition_exps(rest)
        exps.append(exp)
    return exps


def _partition_exps(src):
    src = src.strip()
    if src[0] == "(":
        last = _close_paren(src)
        return src[:last + 1], src[last + 1:]
    else:
        match = re.match(r"[^\s)]+", src)
        end = match.end()
        atom = src[:end]
        return atom, src[end:]


def _close_paren(src):
    pos = 0
    cnt = 1
    while cnt > 0:
        pos += 1
        if len(src) == pos:
            raise ValueError("Parentheses aren't balanced!")
        if src[pos] == '(':
            cnt += 1
        if src[pos] == ')':
            cnt -= 1
    return pos
