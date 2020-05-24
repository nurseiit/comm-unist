from parser import parse
from interpreter import P


def test1():
    assert P(parse('(flk () (app (lam x (prim + x 1)) 2))'))([]) == 3


def test2():
    assert P(parse('(flk (y) (app (lam x (prim + x y)) 2))'))([3]) == 5
