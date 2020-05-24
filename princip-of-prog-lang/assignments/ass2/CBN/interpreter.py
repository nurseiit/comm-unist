import operator as op


class Environment:
    def __init__(self):
        self.vars = {}

    def update(self, _vars):
        self.vars.update(_vars)

    def __getitem__(self, var):
        return self.vars[var]


class InterpreterCBN:
    def __init__(self):
        self._env = Environment()

        not_eq = lambda *x: not op.eq(*x)
        fst = lambda *x: x[0]
        snd = lambda *x: x[1]
        def is_unit(x): return x == '#u'
        def is_bool(x): return isinstance(x, bool)

        self.primitives = {'+': op.add, '-': op.sub,
                           '*': op.mul, '/': op.truediv,
                           '%': op.mod, '=': op.eq,
                           '!=': not_eq, '<': op.lt,
                           '<=': op.le, '>': op.gt,
                           '>=': op.ge, 'sym=?': op.eq,
                           'fst': fst, 'snd': snd,
                           'unit?': is_unit, 'bool?': is_bool, }

        self.primitives_valid_argc = {
            '+': 2, '-': 2, '*': 2,
            '/': 2, '%': 2, '=': 2,
            '!=': 2, '<': 2, '<=': 2,
            '>': 2, '>=': 2, 'sym=?': 2,
            'fst': 2, 'snd': 2,
            'unit?': 1, 'bool?': 1, }

    def interpret(self, exp, env):
        print('# intr', exp, env)

        # save flk arguments
        self._env.update(zip(exp[1], env))
        return self._evaluate(exp[2])

    def _evaluate(self, exp):
        print('# eval', exp)
        if self._is_atom(exp):
            return self._env[exp]
        elif self._is_const(exp):
            return exp
        elif self._is_atom(exp[0]):
            if exp[0] == 'prim':
                op = exp[1]
                args = exp[2:]
                return self._prim(op, *args)

    def _prim(self, op, *args):
        fn = self.primitives[op]
        # check for argc
        argc = len(args)
        if argc != self.primitives_valid_argc[op]:
            raise ValueError('wrong-number-of-args')
        return fn(*args)

    def _is_atom(self, exp):
        # atoms are simple strings
        return isinstance(exp, str)

    def _is_const(self, exp):
        # may be need to support #u, #f, #t later
        return exp == '#u' or isinstance(exp, int) or isinstance(exp, float)


def P(exp):
    cbn = InterpreterCBN()
    return lambda env: cbn.interpret(exp, env)
