from enum import Enum, auto


class Types(Enum):
    UNIT = auto()
    BOOL = auto()
    INT = auto()
    SYMB = auto()
    VOID = auto()
    FUNC = auto()


class Sym:
    def __init__(self, val):
        self.val = val

    def __str__(self):
        return self.val


class Helper:
    def type_from_value(self, value):
        if value == '#u':
            return Types.UNIT
        elif value == '->':
            return Types.FUNC
        elif value is True or value is False:
            return Types.BOOL
        elif isinstance(value, int):
            return Types.INT
        elif isinstance(value, Sym):
            return Types.SYMB
        else:
            raise ValueError('Could not get Type from:', value)

    def type_from_name(self, name):
        if name == 'unit':
            return Types.UNIT
        elif name == 'bool':
            return Types.BOOL
        elif name == 'int':
            return Types.INT
        elif name == 'symb':
            return Types.SYMB
        elif name == '->':
            return Types.FUNC
        else:
            raise ValueError('No such Type:', name)

    def normalise_types(self, args):
        if args == []:
            return [Types.VOID]
        types = []
        for arg in args:
            if isinstance(arg, list):
                types.append(self.normalise_types(arg))
            else:
                types.append(self.type_from_name(arg))
        return types

    def get_type(self, arg):
        if arg == []:
            return Types.VOID
        if isinstance(arg, list):
            return self.type_from_name(arg[1])
        return self.type_from_value(arg)

    def types_are_equal(self, foo, bar):
        if isinstance(foo, list) != isinstance(bar, list):
            return False
        if not isinstance(foo, list):
            return foo is bar
        if len(foo) != len(bar):
            return False
        for x, y in zip(foo, bar):
            if not self.types_are_equal(x, y):
                return False
        return True


class Primitive:
    def __init__(self):
        self.primitives_unary = ['not']

        self.primitives_binary = ['+', '-', '*',
                                  '/', '%', '=',
                                  '!=', '<', '<=',
                                  '>', '>=', 'sym=?',
                                  'and', 'or',
                                  'bool=?', ]

        self.all_ops = self.primitives_binary + self.primitives_unary

    def __call__(self, op, args):
        argc = len(args)
        # check for argc
        if argc > 2 or argc < 1:
            raise ValueError('wrong-number-of-args')
        elif argc == 1 and op not in self.primitives_unary:
            raise ValueError('wrong-number-of-args')
        elif argc == 2 and op not in self.primitives_binary:
            raise ValueError('wrong-number-of-args')

        helper = Helper()
        types = self.types(op)
        foo = [helper.get_type(x) for x in args]
        if not helper.types_are_equal(foo, types[0]):
            raise ValueError('Prim', op, 'arguments are not valid')

        return types

    def raw_types(self, op):
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

    def types(self, op):
        helper = Helper()
        _raw = self.raw_types(op)
        args = []
        for arg in _raw[1]:
            args.append(helper.type_from_name(arg))
        return_type = helper.type_from_name(_raw[-1])
        return args, return_type


class TypeFlex:
    def __init__(self):
        self.prim_type = Primitive()
        self.helper = Helper()
        self.vars = {}

    def validate(self, exps, types):
        normalised_types = self.helper.normalise_types(types)
        return self.check(exps, normalised_types)

    def check(self, exps, types):
        args_types = [self.helper.get_type(x) for x in exps[0]]

        for x, t in zip(exps[0], args_types):
            if x == []:
                continue
            self.vars[x[0]] = t

        if args_types != types[0]:
            return False

        if not isinstance(exps[1], list):
            return self.helper.type_from_value(exps[1]) is types[-1]

        exps = exps[1]
        types = types[1]

        if exps[0] == 'abs':
            if types[0] is not Types.FUNC:
                return False
            return self.check(exps[1:], types[1:])

        elif exps[0] == 'sym':
            return types is Types.SYMB

        elif exps[0] == 'prim':
            if types[0] != Types.FUNC:
                return False
            types = types[1:]
            op, args = exps[1], exps[2:]
            prim_args_types, return_type = self.prim_type(op, args)
            if not self.helper.types_are_equal(prim_args_types, types[0]):
                return False
            return return_type is types[-1]

        print('Uh, oh', exps, types)


def type_check(_exp, _type):
    if _exp[0] != 'flexk' or _type[0] != '=>':
        return False
    type_flex = TypeFlex()
    try:
        return type_flex.validate(_exp[1:], _type[1:])
    except ValueError as e:
        print(str(e))
        return False
