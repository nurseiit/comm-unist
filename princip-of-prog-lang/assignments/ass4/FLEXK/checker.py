from enum import Enum, auto


class Types(Enum):
    UNIT = auto()
    BOOL = auto()
    INT = auto()
    SYMB = auto()


class TypeFlex:
    def __init__(self):
        pass

    def check(self, _exp, _type):
        return self._type_from_value(_exp[1]) is self._type_from_name(_type[1])

    def _type_from_value(self, value):
        if value == '#u':
            return Types.UNIT
        elif value is True or value is False:
            return Types.BOOL
        elif isinstance(value, int):
            return Types.INT
        elif isinstance(value, str):
            return Types.SYMB
        else:
            raise ValueError('Could not get Type from:', value)

    def _type_from_name(self, name):
        if name == 'unit':
            return Types.UNIT
        elif name == 'bool':
            return Types.BOOL
        elif name == 'int':
            return Types.INT
        elif name == 'symb':
            return Types.SYMB
        else:
            raise ValueError('No such Type:', name)


def type_check(_exp, _type):
    if _exp[0] != 'flexk' or _type[0] != '=>':
        return False
    type_flex = TypeFlex()
    try:
        return type_flex.check(_exp[1:], _type[1:])
    except ValueError as e:
        print(str(e))
        return False
