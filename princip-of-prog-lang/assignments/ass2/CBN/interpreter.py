class InterpreterCBN:
    def __init__(self):
        pass

    def evaluate(self, exp, env):
        if self._is_atom(exp):
            return exp
        return 420

    def _is_atom(self, exp):
        # atoms are simple strings
        return isinstance(exp, str)


def P(exp):
    cbn = InterpreterCBN()
    return lambda env: cbn.evaluate(exp, env)
