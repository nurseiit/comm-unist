from parser import parse
from interpreter import P


# def test_app_lam():
#     assert P(parse('(flk () (app (lam x (prim + x 1)) 2))'))([]) == 3


# def test_main_args():
#     assert P(parse('(flk (y) (app (lam x (prim + x y)) 2))'))([3]) == 5


'''
    #u −−−> unit FLK
    #t −−−> true FLK
    23 −−−> 23 FLK
    (sym captain) −−−> captain 
'''


def test_basic():
    assert P(parse('(flk () #u)'))([]) == '#u'
    assert P(parse('(flk () #t)'))([]) == True
    assert P(parse('(flk () 23)'))([]) == 23
    assert P(parse('(flk () (sym captain))'))([]) == 'captain'


'''
    (prim not #t) −−−→ false FLK
    (prim int? 1) −−−→ true FLK
    (prim int? #t) −−−→ false FLK
    (prim + 1 2) −−−→ 3 FLK
    (prim / 17 5) −−−→ 3 {integer division} FLK
    (prim % 17 5) −−−→ 2 {integer remainder} FLK
    (prim sym=? (sym captain) (sym captain)) −−−→ true FLK
    (prim sym=? (sym captain) (sym abstraction)) −−−→ false
'''


def test_prim():
    assert P(parse('(flk () (prim not #t))'))([]) == False
    assert P(parse('(flk () (prim int? 1))'))([]) == True
    assert P(parse('(flk () (prim int? #t))'))([]) == False
    assert P(parse('(flk () (prim + 1 2))'))([]) == 3
    assert P(parse('(flk () (prim / 17 5))'))([]) == 3
    assert P(parse('(flk () (prim % 17 5))'))([]) == 2
    assert P(parse('(flk () (prim sym=? (sym captain) (sym captain)))'))(
        []) == True
    assert P(parse('(flk () (prim sym=? (sym captain) (sym abstraction)))'))(
        []) == False


'''
    (prim + 1) −−−→ error:wrong-number-of-args FLK
    (prim + 1 2 3) −−−→ error:wrong-number-of-args FLK
    (prim not 1) −−−→ error:not-a-boolean FLK
    (prim + #t 1) −−−→ error:not-an-integer FLK
    (prim / 1 0) −−−→ error:divide-by-zero
'''


def test_errors():
    assert P(parse('(flk () (prim + 1))'))([]) == 'wrong-number-of-args'
    assert P(parse('(flk () (prim + 1 2 3))'))([]) == 'wrong-number-of-args'
    assert P(parse('(flk () (prim not 1))'))([]) == 'not-a-boolean'
    assert P(parse('(flk () (prim + #t 1))'))([]) == 'not-an-integer'
    assert P(parse('(flk () (prim / 1 0))'))([]) == 'divide-by-zero'
