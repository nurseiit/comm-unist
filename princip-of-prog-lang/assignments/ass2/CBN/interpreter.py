def interpret(exp, env):
    print(exp, env)
    return 420


def P(exp):
    return lambda env: interpret(exp, env)
