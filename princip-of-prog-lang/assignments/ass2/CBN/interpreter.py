import operator as op


class Environment:
    def __init__(self):
        vars = {'+': op.add}

        self.vars = vars

    def update(self, _vars):
        self.vars.update(_vars)

    def __getitem__(self, var):
        return self.vars[var]


class InterpreterCBN:
    def __init__(self):
        self._env = Environment()

    def interpret(self, exp, env):
        print('# intr', exp, env)

        # save flk arguments
        self._env.update(zip(exp[1], env))
        return self._evaluate(exp[2])

    def _evaluate(self, exp):
        print('# eval', exp)
        if self._is_atom(exp):
            return self._env[exp]
        elif self._is_atom(exp[0]):
            return exp[0]

    def _is_atom(self, exp):
        # atoms are simple strings
        return isinstance(exp, str)


def P(exp):
    cbn = InterpreterCBN()
    return lambda env: cbn.interpret(exp, env)
