class InterpreterCBN:
    def __init__(self):
        self._env = {}

    def interpret(self, exp, env):
        print('# intr', exp, env)

        # save flk arguments
        args = exp[1]
        n = len(args)
        for i in range(n):
            self._env[args[i]] = env[i]
        return self._evaluate(exp[2])

    def _evaluate(self, exp):
        print('# eval', exp)
        if self._is_atom(exp):
            return exp
        return 420

    def _is_atom(self, exp):
        # atoms are simple strings
        return isinstance(exp, str)


def P(exp):
    cbn = InterpreterCBN()
    return lambda env: cbn.interpret(exp, env)
