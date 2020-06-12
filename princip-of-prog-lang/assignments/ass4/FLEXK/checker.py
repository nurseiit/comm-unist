from enum import Enum, auto
import operator as op


class Types(Enum):
    UNIT = auto()
    BOOL = auto()
    INT = auto()
    SYMB = auto()
    VOID = auto()


class Sym:
    def __init__(self, val):
        self.val = val

    def __str__(self):
        return self.val


class Primitive:
    def __init__(self):
        not_eq = lambda *x: not op.eq(*x)

        def sym_eq(foo, bar):
            if not isinstance(foo, Sym) or not isinstance(bar, Sym):
                raise ValueError('not-a-symbol')
            return foo.val == bar.val

        self.primitives = {'+': op.add, '-': op.sub,
                           '*': op.mul, '/': op.floordiv,
                           '%': op.mod, '=': op.eq,
                           '!=': not_eq, '<': op.lt,
                           '<=': op.le, '>': op.gt,
                           '>=': op.ge, 'sym=?': sym_eq,
                           'not': op.not_, 'and': op.and_,
                           'or': op.or_, 'bool=?': op.eq, }

        self.primitives_unary = ['not']

        self.primitives_binary = ['+', '-', '*',
                                  '/', '%', '=',
                                  '!=', '<', '<=',
                                  '>', '>=', 'sym=?',
                                  'and', 'or',
                                  'bool=?', ]

        self.only_int = ['+', '-', '*',
                         '/', '%', '=',
                         '!=', '<', '<=',
                         '>', '>=']

        self.only_bool = ['not', 'and', 'or', 'bool=?']

    def __call__(self, op, *args):
        fn = self.primitives[op]
        # check for argc
        argc = len(args)
        if argc > 2 or argc < 1:
            raise ValueError('wrong-number-of-args')
        elif argc == 1 and op not in self.primitives_unary:
            raise ValueError('wrong-number-of-args')
        elif argc == 2 and op not in self.primitives_binary:
            raise ValueError('wrong-number-of-args')
        # validate types
        self._validate(op, *args)
        return fn(*args)

    def types(self, op):
        if op in ['+', '-', '*', '/', '%']:
            return ['->', ['int', 'int'], 'int']
        elif op in ['<', '=', '>', '<=', '>=', '!=']:
            return ['->', ['int', 'int'], 'bool']
        elif op in ['or', 'and', 'bool=?']:
            return ['->', ['bool', 'bool'], 'bool']
        elif op == 'not':
            return ['->', ['bool'], 'bool']
        elif op == 'sym=?':
            return ['->', ['symb', 'symb'], 'bool']
        else:
            raise ValueError('No type for prim op:', op)

    def _validate(self, op, *args):
        # check all args
        for arg in args:
            if op in self.only_bool and arg is not True and arg is not False:
                raise ValueError('not-a-boolean')
            if op in self.only_int and (not isinstance(arg, int) or arg is True or arg is False):
                raise ValueError('not-an-integer')
        if op == '/' or op == '%':
            if args[1] == 0:
                raise ValueError('divide-by-zero')


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
    print(_exp, '##', _type)
    if _exp[0] != 'flexk' or _type[0] != '=>':
        return False
    type_flex = TypeFlex()
    try:
        return type_flex.check(_exp[1:], _type[1:])
    except ValueError as e:
        print(str(e))
        return False
