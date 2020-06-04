from parser import parse
from interpreter import P
import pytest


def test_app_lam():
    assert P(parse('(flick () (app (lam x (prim + x 1)) 2))'))([]) == 3


def test_main_args():
    assert P(parse('(flick (y) (app (lam x (prim + x y)) 2))'))([3]) == 5


'''
    # u −−−> unit flick
    # t −−−> true flick
    23 −−−> 23 flick
    (sym captain) −−−> captain 
'''


def test_basic():
    assert P(parse('(flick () #u)'))([]) == '#u'
    assert P(parse('(flick () #t)'))([]) == True
    assert P(parse('(flick () 23)'))([]) == 23
    assert P(parse('(flick () (sym captain))'))([]) == 'captain'


'''
    (prim not #t) −−−→ false flick
    (prim int? 1) −−−→ true flick
    (prim int? #t) −−−→ false flick
    (prim + 1 2) −−−→ 3 flick
    (prim / 17 5) −−−→ 3 {integer division} flick
    (prim % 17 5) −−−→ 2 {integer remainder} flick
    (prim sym=? (sym captain) (sym captain)) −−−→ true flick
    (prim sym=? (sym captain) (sym abstraction)) −−−→ false
'''


def test_prim():
    assert P(parse('(flick () (prim not #t))'))([]) == False
    assert P(parse('(flick () (prim int? 1))'))([]) == True
    assert P(parse('(flick () (prim int? #t))'))([]) == False
    assert P(parse('(flick () (prim + 1 2))'))([]) == 3
    assert P(parse('(flick () (prim / 17 5))'))([]) == 3
    assert P(parse('(flick () (prim % 17 5))'))([]) == 2
    assert P(parse('(flick () (prim sym=? (sym captain) (sym captain)))'))(
        []) == True
    assert P(parse('(flick () (prim sym=? (sym captain) (sym abstraction)))'))(
        []) == False


'''
    (prim + 1) −−−→ error:wrong-number-of-args flick
    (prim + 1 2 3) −−−→ error:wrong-number-of-args flick
    (prim not 1) −−−→ error:not-a-boolean flick
    (prim + #t 1) −−−→ error:not-an-integer flick
    (prim / 1 0) −−−→ error:divide-by-zero

    (error index-out-of-range) −−−→ error:index-out-of-range
'''


def test_errors():
    assert P(parse('(flick () (prim + 1))'))([]) == 'wrong-number-of-args'
    assert P(parse('(flick () (prim + 1 2 3))'))([]) == 'wrong-number-of-args'
    assert P(parse('(flick () (prim not 1))'))([]) == 'not-a-boolean'
    assert P(parse('(flick () (prim + #t 1))'))([]) == 'not-an-integer'
    assert P(parse('(flick () (prim / 1 0))'))([]) == 'divide-by-zero'
    assert P(parse('(flick () (error index-out-of-range))')
             )([]) == 'index-out-of-range'


'''
    (if (prim > 8 7) (prim + 2 3) (prim * 2 3)) −−−→ 5 flick
    (if (prim < 8 7) (prim + 2 3) (prim * 2 3)) −−−→ 6 flick
    (if (prim - 8 7) (prim + 2 3) (prim * 2 3)) −−−→ error:nonbool-in-if-test
'''


def test_if_cond():
    assert P(parse('(flick () (if (prim > 8 7) (prim + 2 3) (prim * 2 3)))'))([]) == 5
    assert P(parse('(flick () (if (prim < 8 7) (prim + 2 3) (prim * 2 3)))'))([]) == 6
    assert P(parse('(flick () (if (prim - 8 7) (prim + 2 3) (prim * 2 3)))')
             )([]) == 'nonbool-in-if-test'


'''
    (prim fst (pair (+ 1 2) (* 3 4))) −−−→ 3 flick
    (prim snd (pair (+ 1 2) (* 3 4))) −−−→ 12

    (pair 8 (pair 2 (pair 1 #u))) −−−→ 8, 2, 1 flick
    (prim fst (pair 8 (pair 2 (pair 1 #u)))) −−−→ 8 flick
    (prim snd (pair 8 (pair 2 (pair 1 #u)))) −−−→ 2, 1 flick
    (prim fst (prim snd (pair 8 (pair 2 (pair 1 #u))))) −−−→ 2 flick
    (prim snd (prim fst (pair 8 (pair 2 (pair 1 #u))))) −−−→ error:not-a-pair
'''


def test_pair():
    assert P(parse('(flick () (prim fst (pair (+ 1 2) (* 3 4))))'))([]) == 3
    assert P(parse('(flick () (prim snd (pair (+ 1 2) (* 3 4))))'))([]) == 12

    assert P(parse('(flick () (pair 8 (pair 2 (pair 1 #u))))'))([]) == [8, 2, 1]
    assert P(parse('(flick () (prim fst (pair 8 (pair 2 (pair 1 #u)))))'))([]) == 8
    assert P(parse('(flick () (prim snd (pair 8 (pair 2 (pair 1 #u)))))'))(
        []) == [2, 1]
    assert P(parse('(flick () (prim fst (prim snd (pair 8 (pair 2 (pair 1 #u))))))'))(
        []) == 2
    assert P(
        parse('(flick () (prim snd (prim fst (pair 8 (pair 2 (pair 1 #u))))))'))([]) == 'not-a-pair'
    # custom test
    assert P(parse('(flick () (prim snd (prim snd (pair 8 (pair 2 (pair 1 #u))))))'))(
        []) == [1]


def test_basic_lam_app():
    assert P(parse('(flick () (lam x (prim * x x)))'))([]) == 'procedure'
    assert P(parse('(flick () (app (lam x (prim * x x)) 5))'))([]) == 25
    assert P(parse('(flick () (app 3 5))'))([]) == 'nonprocedural-rator'
    assert P(parse('(flick () (app not #t))'))([]) == 'unbound-variable'
    assert P(parse('(flick () (app (app (lam n (lam x (prim - x n))) 5) 8))'))([]) == 3


def test_complex_lam_app():
    assert P(parse(
        '(flick () (app (lam f (app f 5)) (app (lam n (lam x (prim - x n))) 1)))'))([]) == 4
    assert P(parse('(flick () (app (lam n (lam x (prim - x n))) 1))')
             )([]) == 'procedure'

    assert P(
        parse('(flick () (app (lam f (app f 5)) (lam n (lam x (prim - x n)))))'))([]) == 'procedure'

    assert P(parse(
        '(flick () (app (app (lam f (app f 5)) (lam n (lam x (prim - x n)))) 8))'))([]) == 3

    with pytest.raises(Exception):
        assert P(parse('(flick () (app (lam x (app x x)) (lam x (app x x))))'))([])

    assert P(parse(
        '(flick (n) (app (lam f (prim + (app f n) (app f 5))) (lam x (prim * (prim + 1 2) x))))'))([4]) == 27


def test_strict():
    assert P(parse('(flick () (app (lam x 3) (prim / 1 0)))')
             )([]) == 'divide-by-zero'
    assert P(parse('(flick () (app (lam x (prim + x 3)) (prim / 1 0)))')
             )([]) == 'divide-by-zero'
    with pytest.raises(Exception):
        P(parse(
            '(flick () (app (lam x 3) (app (lam x (app x x)) (lam x (app x x)))))'))([]) == 3
    with pytest.raises(Exception):
        P(parse(
            '(flick () (app (lam x (prim + x 3)) (app (lam x (app x x)) (lam x (app x x)))))'))([])


def test_cbv():
    assert P(parse('(flick () (app (lam x 2) (prim / 1 0)))')
             )([]) == 'divide-by-zero'
    with pytest.raises(Exception):
        P(parse('(flick () (app (lam x 3) (app (lam a (app a a)) (lam a (app a a)))))'))(
            [])
    assert P(parse('(flick () (prim snd (pair (prim / 1 0) (prim + 2 3))))')
             )([]) == 'divide-by-zero'


def test_begin():
    # ['app', ['lam', 'acct', ['app', ['lam', 'old', ['begin', ['app', ['app', 'deposit!', 17], 'acct'], ['prim', '-', ['app', 'balance', 'acct'], 'old']]], ['app', 'balance', 'acct']]], ['app', 'make-account', 100]]
    pass


def test_cell():
    [_a, _b] = P(parse('(flick () (cell (+ 1 2)))'))([])
    assert isinstance(_a, str) and _a[-1] == '$'
    assert _b == 3

    [_c, _d] = P(parse('(flick () (cell (+ 5 10)))'))([])
    assert isinstance(_c, str) and _c[-1] == '$' and _c != _a
    assert _d == 15


'''
    (prim ^ (cell (+ 1 2))) −−−−→ 3 FLICK
    (prim ^ (+ 1 2)) −−−−→ error:not-a-cell
'''


def test_prim_cell_op():
    assert P(parse('(flick () (prim ^ (cell (+ 1 2))))'))([]) == 3
    assert P(parse('(flick () (prim ^ (+ 1 2)))'))([]) == 'not-a-cell'
    assert P(parse('(flick () (app (lam x (prim ^ x)) (cell (+ 1 2))))'))([]) == 3


def test_cell_assign():
    pass
