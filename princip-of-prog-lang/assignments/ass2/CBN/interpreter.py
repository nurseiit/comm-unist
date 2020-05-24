import operator as op


class Primitive:
    def __init__(self):
        not_eq = lambda *x: not op.eq(*x)

        def fst(exp):
            scope = Procedure()
            res = scope.evaluate(exp)
            return res[0]

        def snd(exp):
            scope = Procedure()
            res = scope.evaluate(exp)
            return res[1]

        def is_unit(x): return x == '#u'
        def is_bool(x): return isinstance(x, bool)
        def is_int(x): return isinstance(
            x, int) and x is not True and x is not False

        def is_sym(x): return x != '#u' and isinstance(x, str)

        # todo: may be only functions not all callables?
        def is_proc(x): return callable(x)

        # todo: may be list as well?
        def is_pair(x): return isinstance(x, tuple)

        def sym_eq(foo, bar):
            if not isinstance(foo, list) or not isinstance(bar, list):
                raise ValueError('not-a-symbol')
            if foo[0] != 'sym' or bar[0] != 'sym':
                raise ValueError('not-a-symbol')
            if not is_sym(foo[1]) or not is_sym(bar[1]):
                raise ValueError('not-a-symbol')
            return foo[1] == bar[1]

        self.primitives = {'+': op.add, '-': op.sub,
                           '*': op.mul, '/': op.floordiv,
                           '%': op.mod, '=': op.eq,
                           '!=': not_eq, '<': op.lt,
                           '<=': op.le, '>': op.gt,
                           '>=': op.ge, 'sym=?': sym_eq,
                           'fst': fst, 'snd': snd,
                           'unit?': is_unit, 'bool?': is_bool,
                           'int?': is_int, 'sym?': is_sym,
                           'not': op.not_, 'and': op.and_,
                           'or': op.or_, 'bool=?': op.eq,
                           'proc?': is_proc, 'pair?': is_pair, }

        self.primitives_unary = ['fst', 'snd',
                                 'unit?', 'bool?',
                                 'int?', 'sym?', 'not',
                                 'proc?', 'pair?']

        self.primitives_binary = ['+', '-', '*',
                                  '/', '%', '=',
                                  '!=', '<', '<=',
                                  '>', '>=', 'sym=?',
                                  'and', 'or', 'bool=?']

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

    def __getitem__(self, var):
        return self.vars[var]


class Procedure:
    def __init__(self):
        self._env = Environment()
        self._prim = Primitive()

    def evaluate(self, exp):
        print('# eval', exp)

        if self._is_const(exp):
            return exp

        elif self._is_atom(exp):
            return self._env[exp]

        elif self._is_atom(exp[0]):
            if exp[0] == 'prim':
                op = exp[1]
                args = exp[2:]
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

            elif exp[0] == 'pair':
                _fst = Procedure()
                _snd = Procedure()
                fst = _fst.evaluate(exp[1])
                snd = _snd.evaluate(exp[2])
                result = [fst]
                if snd != '#u':
                    result = [fst, snd]
                return result

            elif exp[0] in self._prim.primitives:
                op = exp[0]
                args = exp[1:]
                return self._prim(op, *args)

    def _is_atom(self, exp):
        # atoms are simple strings
        return isinstance(exp, str)

    def _is_const(self, exp):
        if isinstance(exp, tuple):
            return True
        return exp == '#u' or isinstance(exp, int) or isinstance(exp, float)


class InterpreterCBN:
    def interpret(self, exp, env):
        print('# intr', exp, env)

        root = Procedure()

        # save flk arguments
        root._env.update(zip(exp[1], env))
        try:
            result = root.evaluate(exp[2])
        except ValueError as e:
            result = str(e)
        return result


def P(exp):
    cbn = InterpreterCBN()
    return lambda env: cbn.interpret(exp, env)


'''
From 6.1:
    Keyword = {app,error,flk,if,pair,prim,lam,rec,sym}
'''
