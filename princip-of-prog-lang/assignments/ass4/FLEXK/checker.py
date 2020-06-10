from enum import Enum, auto


class Types(Enum):
    UNIT = auto()
    BOOL = auto()
    INT = auto()
    SYMB = auto()
    VOID = auto()


class Sym:
    def __init__(self, val):
        self.val = val


class TypeFlex:
    def __init__(self):
        pass

    def check(self, _exp, _type):
        if not self._check_args(_exp[0], _type[0]):
            return False
        if not isinstance(_exp[1], list):
            return self._type_from_value(_exp[1]) is self._type_from_name(_type[1])
        if _exp[1][0] == 'abs':
            if _type[1][0] != '->':
                return False
            return self.check(_exp[1][1:], _type[1][1:])
        return self._type_from_value(self._eval(_exp[1])) is self._type_from_name(_type[1])

    def _eval(self, _exp):
        if _exp[0] == 'sym':
            return Sym(_exp[1])

    def _check_args(self, _exp, _type):
        _exp_args = []
        _type_args = []

        for arg in _exp:
            if arg == []:
                _exp_args.append(Types.VOID)
            else:
                _exp_args.append(self._type_from_name(arg[1]))

        if len(_type) == 0:
            _type_args.append(Types.VOID)

        for arg in _type:
            _type_args.append(self._type_from_name(arg))

        if len(_exp_args) != len(_type_args):
            return False

        _len = len(_exp_args)
        for i in range(_len):
            if _exp_args[i] is not _type_args[i]:
                return False
        return True

    def _type_from_value(self, value):
        if value == '#u':
            return Types.UNIT
        elif value is True or value is False:
            return Types.BOOL
        elif isinstance(value, int):
            return Types.INT
        elif isinstance(value, Sym):
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
