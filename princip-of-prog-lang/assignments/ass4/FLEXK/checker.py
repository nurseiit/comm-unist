class TypeFlex:
    def __init__(self):
        pass

    def check(self, _exp, _type):
        return True


def type_check(_exp, _type):
    if _exp[0] != 'flexk' or _type[0] != '=>':
        return False
    type_flex = TypeFlex()
    try:
        return type_flex.check(_exp[1:], _type[1:])
    except ValueError:
        return False
