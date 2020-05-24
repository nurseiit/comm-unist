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

        self.primitives = {'+': op.add, '-': op.sub,
                           '*': op.mul, '/': op.truediv,
                           '%': op.mod, '=': op.eq,
                           '!=': not_eq, '<': op.lt,
                           '<=': op.le, '>': op.gt,
                           '>=': op.ge, 'sym=?': op.eq}

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
                return self._prim(op, args[0], args[1])

    def _prim(self, op, *args):
        fn = self.primitives[op]
        return fn(*args)

    def _is_atom(self, exp):
        # atoms are simple strings
        return isinstance(exp, str)

    def _is_const(self, exp):
        # may be need to support #u, #f, #t later
        return isinstance(exp, int) or isinstance(exp, float)


def P(exp):
    cbn = InterpreterCBN()
    return lambda env: cbn.interpret(exp, env)
