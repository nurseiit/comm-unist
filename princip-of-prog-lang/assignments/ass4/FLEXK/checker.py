import operator as op


class Primitive:
    def __init__(self):
        not_eq = lambda *x: not op.eq(*x)

        def is_unit(x): return x == '#u'
        def is_bool(x): return isinstance(x, bool)
        def is_int(x): return isinstance(
            x, int) and x is not True and x is not False

        def is_sym(x): return x != '#u' and isinstance(x, str)

        # todo: may be only Procedure / Lambda not all callables?
        def is_proc(x): return callable(x)

        def sym_eq(foo, bar):
            if not is_sym(foo) or not is_sym(bar):
                raise ValueError('not-a-symbol')
            return foo == bar

        self.primitives = {'+': op.add, '-': op.sub,
                           '*': op.mul, '/': op.floordiv,
                           '%': op.mod, '=': op.eq,
                           '!=': not_eq, '<': op.lt,
                           '<=': op.le, '>': op.gt,
                           '>=': op.ge, 'sym=?': sym_eq,
                           'unit?': is_unit, 'bool?': is_bool,
                           'int?': is_int, 'sym?': is_sym,
                           'not': op.not_, 'and': op.and_,
                           'or': op.or_, 'bool=?': op.eq,
                           'proc?': is_proc, }

        self.primitives_unary = ['unit?', 'bool?',
                                 'int?', 'sym?', 'not',
                                 'proc?', ]

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


class Environment:
    def __init__(self):
        self.vars = {}

    def update(self, _vars):
        self.vars.update(_vars)

    def _set(self, foo, bar):
        self.vars[foo] = bar

    def __getitem__(self, var):
        return self.vars[var]


class CBL:
    def __init__(self, exp, scope):
        self._exp = exp
        self.scope = scope
        self.computed = None

    def __call__(self):
        if self.computed is None:
            self.computed = self.scope.evaluate(self._exp)
        return self.computed


class Lambda:
    def __init__(self, vars, exp):
        self._exp = exp
        self._vars = vars

    def __str__(self):
        return 'procedure'


class Procedure:
    def __init__(self, env=None, exp=None):
        self._env = Environment() if env is None else env
        self._prim = Primitive()
        self._exp = [] if exp is None else exp

    def evaluate(self, exp):
        # print('# eval', exp)

        if self._is_const(exp) or isinstance(exp, Lambda):
            return exp

        elif isinstance(exp, CBL):
            return exp()

        elif self._is_atom(exp):
            if not exp in self._env.vars:
                raise ValueError('unbound-variable')
            return self.evaluate(self._env[exp])

        elif self._is_atom(exp[0]):
            if exp[0] == 'prim':
                op = exp[1]
                args = exp[2:]
                for i in range(len(args)):
                    args[i] = self.evaluate(args[i])
                return self._prim(op, *args)

            elif exp[0][0] == '@':
                op = exp[0][1:]
                args = exp[1:]
                for i in range(len(args)):
                    args[i] = self.evaluate(args[i])
                return self._prim(op, *args)

            elif exp[0] == 'sym':
                return exp[1]

            elif exp[0] == 'error':
                raise ValueError(exp[1])

            elif exp[0] == 'if':
                _cond = self.evaluate(exp[1])
                if _cond is True or _cond is False:
                    return self.evaluate(exp[2 if _cond else 3])
                else:
                    raise ValueError('nonbool-in-if-test')

            elif exp[0] in self._prim.primitives:
                op = exp[0]
                args = exp[1:]
                for i in range(len(args)):
                    args[i] = self.evaluate(args[i])
                return self._prim(op, *args)

            elif exp[0] == 'app':
                fn = self.evaluate(exp[1])
                if not isinstance(fn, Lambda):
                    raise ValueError('nonprocedural-rator')
                _env = self._env
                _val = CBL(exp[2], self)
                _env._set(fn._vars[0], _val)
                app = Procedure(_env, fn._exp)
                return app.evaluate(app._exp)

            elif exp[0] == 'let':
                _vars, _exp = exp[1], exp[2]
                env = Environment()
                env.update(self._env.vars)
                for _var in _vars:
                    _name, _value = _var[0], CBL(_var[1], self)
                    env._set(_name, _value)
                procedure = Procedure(env)
                return procedure.evaluate(_exp)

            elif exp[0] == 'abs':
                vars = exp[1]
                return Lambda(vars, exp[2])

            else:
                exp.insert(0, 'app')
                return self.evaluate(exp)

        elif isinstance(exp, list) and len(exp[0]) > 0 and exp[0][0] == 'abs':
            _vars, _exp, _values = exp[0][1], exp[0][2], exp[1:]
            env = Environment()
            env.update(self._env.vars)
            for _name, _value in zip(_vars, _values):
                _value = _value
                env._set(_name, _value)
            procedure = Procedure(env)
            return procedure.evaluate(_exp)
        else:
            return exp

    def _is_atom(self, exp):
        # atoms are simple strings
        return isinstance(exp, str)

    def _is_const(self, exp):
        if isinstance(exp, tuple):
            return True
        return exp == '#u' or isinstance(exp, int) or isinstance(exp, float)


class InterpreterFLEXK:
    def interpret(self, exp, env):
        # print('# intr', exp, env)

        root = Procedure()

        if (len(exp[1]) != len(env)):
            return 'wrong-number-of-args'

        # save flexk arguments
        root._env.update(zip(exp[1], env))
        try:
            result = root.evaluate(exp[2])
            if isinstance(result, Lambda):
                result = str(result)
        except ValueError as e:
            result = str(e)
        return result


def P(exp):
    flexk = InterpreterFLEXK()
    return lambda env: flexk.interpret(exp, env)


def type_check(_exp, _type):
    print(_exp, '##', _type)
    return True


if __name__ == '__main__':
    from parser import parse
    while True:
        prompt = 'flexk> '
        line = input(prompt)
        try:
            parsed = parse(line)
            print(P(parsed[0])([]))
        except ValueError as e:
            print('Error:', str(e))
