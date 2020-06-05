import operator as op


class Cell:
    def __init__(self, val):
        self.val = val
        self.id = f'{id(self)}$'


class List:
    def __init__(self, val):
        self.val = val

    def expand(self):
        for i in range(len(self.val)):
            if isinstance(self.val[i], List) or isinstance(self.val[i], Pair):
                self.val[i] = self.val[i].expand()
        return self.val


class Pair:
    def __init__(self, val):
        self.val = val

    def expand(self):
        pp = self
        result = []
        while len(pp.val) == 2:
            result.append(pp.val[0])
            if not isinstance(pp.val[1], Pair):
                result.append(pp.val[1])
                return result
            pp = pp.val[1]
        result.append(pp.val[0])
        return result


class Primitive:
    def __init__(self):
        not_eq = lambda *x: not op.eq(*x)

        def fst(exp):
            scope = Procedure()
            res = scope.evaluate(exp)
            if not isinstance(res, Pair):
                raise ValueError('not-a-pair')
            return res.val[0]

        def snd(exp):
            scope = Procedure()
            res = scope.evaluate(exp)
            if not isinstance(res, Pair):
                raise ValueError('not-a-pair')
            return res.val[1]

        def is_unit(x): return x == '#u'
        def is_bool(x): return isinstance(x, bool)
        def is_int(x): return isinstance(
            x, int) and x is not True and x is not False

        def is_sym(x): return x != '#u' and isinstance(x, str)

        # todo: may be only Procedure / Lambda not all callables?
        def is_proc(x): return callable(x)

        def is_pair(x): return isinstance(x, Pair)

        def sym_eq(foo, bar):
            if not is_sym(foo) or not is_sym(bar):
                raise ValueError('not-a-symbol')
            return foo == bar

        def fetch_cell(cell):
            if not isinstance(cell, Cell):
                raise ValueError('not-a-cell')
            return cell.val

        def assign_cell(cell, val):
            if not isinstance(cell, Cell):
                raise ValueError('not-a-cell')
            cell.val = val
            return '#u'

        def cell_isequal(foo, bar):
            if not isinstance(foo, Cell) or not isinstance(bar, Cell):
                raise ValueError('not-a-cell')
            return foo is bar

        def is_cell(x): return isinstance(x, Cell)

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
                           'proc?': is_proc, 'pair?': is_pair,
                           '^': fetch_cell, ':=': assign_cell,
                           'cell=?': cell_isequal, 'cell?': is_cell, }

        self.primitives_unary = ['fst', 'snd',
                                 'unit?', 'bool?',
                                 'int?', 'sym?', 'not',
                                 'proc?', 'pair?', '^',
                                 'cell?', ]

        self.primitives_binary = ['+', '-', '*',
                                  '/', '%', '=',
                                  '!=', '<', '<=',
                                  '>', '>=', 'sym=?',
                                  'and', 'or',
                                  'bool=?', ':=',
                                  'cell=?', ]

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

        if (self._is_const(exp) or isinstance(exp, Lambda)
            or isinstance(exp, Pair) or isinstance(exp, Cell)
                or isinstance(exp, List)):
            return exp

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

            elif exp[0] == 'pair':
                _fst = Procedure(self._env)
                _snd = Procedure(self._env)
                fst = _fst.evaluate(exp[1])
                snd = _snd.evaluate(exp[2])
                result = [fst]
                if snd != '#u':
                    result = [fst, snd]
                return Pair(result)

            elif exp[0] in self._prim.primitives:
                op = exp[0]
                args = exp[1:]
                return self._prim(op, *args)

            elif exp[0] == 'lam':
                vars = exp[1:2]
                return Lambda(vars, exp[2])

            elif exp[0] == 'app':
                fn = self.evaluate(exp[1])
                if not isinstance(fn, Lambda):
                    raise ValueError('nonprocedural-rator')
                _env = self._env
                cbv = Procedure(_env)
                _env._set(fn._vars[0], cbv.evaluate(exp[2]))
                app = Procedure(_env, fn._exp)
                return app.evaluate(app._exp)

            elif exp[0] == 'begin':
                e1 = exp[1]
                e2 = exp[2]
                _first = Procedure(self._env)
                _first.evaluate(e1)
                _second = _first.evaluate(e2)
                return _second

            elif exp[0] == 'cell':
                _exp = Procedure(self._env)
                return Cell(_exp.evaluate(exp[1]))

            elif exp[0] == 'list':
                args = exp[1:]
                for i in range(len(args)):
                    args[i] = self.evaluate(args[i])
                return List(args)

            elif exp[0] == 'quote':
                def buildList(args):
                    result = []
                    for arg in args:
                        if isinstance(arg, list):
                            result.append(buildList(arg))
                        else:
                            result.append(arg)
                    return List(result)
                return buildList(exp[1])

            elif exp[0] == 'cond':
                for cond in exp[1:]:
                    _test, _then = cond[0], cond[1]
                    if _test == 'else' or self.evaluate(_test) == True:
                        return self.evaluate(_then)
                raise ValueError('no-else-in-cond')

            elif exp[0] == 'scand':
                args = exp[1:]
                for arg in args:
                    if not self.evaluate(arg):
                        return False
                return True

            elif exp[0] == 'scor':
                args = exp[1:]
                for arg in args:
                    if self.evaluate(arg):
                        return True
                return False

    def _is_atom(self, exp):
        # atoms are simple strings
        return isinstance(exp, str)

    def _is_const(self, exp):
        if isinstance(exp, tuple):
            return True
        return exp == '#u' or isinstance(exp, int) or isinstance(exp, float)


class InterpreterFLAVAR:
    def interpret(self, exp, env):
        # print('# intr', exp, env)

        root = Procedure()

        if (len(exp[1]) != len(env)):
            return 'wrong-number-of-args'

        # save flavar arguments
        root._env.update(zip(exp[1], env))
        try:
            result = root.evaluate(exp[2])
            if isinstance(result, Lambda):
                result = str(result)
            if isinstance(result, Cell):
                result = [result.id, result.val]
            if isinstance(result, Pair):
                result = result.expand()
            if isinstance(result, List):
                result = result.expand()
        except ValueError as e:
            result = str(e)
        return result


def P(exp):
    flavar = InterpreterFLAVAR()
    return lambda env: flavar.interpret(exp, env)
