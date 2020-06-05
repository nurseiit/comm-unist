from parser import parse
from interpreter import P
import pytest


def test_app_lam():
    assert P(parse('(flavar () (app (lam x (prim + x 1)) 2))'))([]) == 3


def test_main_args():
    assert P(parse('(flavar (y) (app (lam x (prim + x y)) 2))'))([3]) == 5
    assert P(parse('(flavar (y) (app (lam x (prim + x y)) 2))')
             )([3, 5]) == 'wrong-number-of-args'
    assert P(parse('(flavar (y, z) (app (lam x (prim + x y)) 2))')
             )([3]) == 'wrong-number-of-args'


'''
    # u −−−> unit flavar
    # t −−−> true flavar
    23 −−−> 23 flavar
    (sym captain) −−−> captain 
'''


def test_basic():
    assert P(parse('(flavar () #u)'))([]) == '#u'
    assert P(parse('(flavar () #t)'))([]) == True
    assert P(parse('(flavar () 23)'))([]) == 23
    assert P(parse('(flavar () (sym captain))'))([]) == 'captain'


'''
    (prim not #t) −−−→ false flavar
    (prim int? 1) −−−→ true flavar
    (prim int? #t) −−−→ false flavar
    (prim + 1 2) −−−→ 3 flavar
    (prim / 17 5) −−−→ 3 {integer division} flavar
    (prim % 17 5) −−−→ 2 {integer remainder} flavar
    (prim sym=? (sym captain) (sym captain)) −−−→ true flavar
    (prim sym=? (sym captain) (sym abstraction)) −−−→ false
'''


def test_prim():
    assert P(parse('(flavar () (prim not #t))'))([]) == False
    assert P(parse('(flavar () (prim int? 1))'))([]) == True
    assert P(parse('(flavar () (prim int? #t))'))([]) == False
    assert P(parse('(flavar () (prim + 1 2))'))([]) == 3
    assert P(parse('(flavar () (prim / 17 5))'))([]) == 3
    assert P(parse('(flavar () (prim % 17 5))'))([]) == 2
    assert P(parse('(flavar () (prim sym=? (sym captain) (sym captain)))'))(
        []) == True
    assert P(parse('(flavar () (prim sym=? (sym captain) (sym abstraction)))'))(
        []) == False


'''
    (prim + 1) −−−→ error:wrong-number-of-args flavar
    (prim + 1 2 3) −−−→ error:wrong-number-of-args flavar
    (prim not 1) −−−→ error:not-a-boolean flavar
    (prim + #t 1) −−−→ error:not-an-integer flavar
    (prim / 1 0) −−−→ error:divide-by-zero

    (error index-out-of-range) −−−→ error:index-out-of-range
'''


def test_errors():
    assert P(parse('(flavar () (prim + 1))'))([]) == 'wrong-number-of-args'
    assert P(parse('(flavar () (prim + 1 2 3))'))([]) == 'wrong-number-of-args'
    assert P(parse('(flavar () (prim not 1))'))([]) == 'not-a-boolean'
    assert P(parse('(flavar () (prim + #t 1))'))([]) == 'not-an-integer'
    assert P(parse('(flavar () (prim / 1 0))'))([]) == 'divide-by-zero'
    assert P(parse('(flavar () (error index-out-of-range))')
             )([]) == 'index-out-of-range'


'''
    (if (prim > 8 7) (prim + 2 3) (prim * 2 3)) −−−→ 5 flavar
    (if (prim < 8 7) (prim + 2 3) (prim * 2 3)) −−−→ 6 flavar
    (if (prim - 8 7) (prim + 2 3) (prim * 2 3)) −−−→ error:nonbool-in-if-test
'''


def test_if_cond():
    assert P(parse('(flavar () (if (prim > 8 7) (prim + 2 3) (prim * 2 3)))'))([]) == 5
    assert P(parse('(flavar () (if (prim < 8 7) (prim + 2 3) (prim * 2 3)))'))([]) == 6
    assert P(parse('(flavar () (if (prim - 8 7) (prim + 2 3) (prim * 2 3)))')
             )([]) == 'nonbool-in-if-test'


'''
    (prim fst (pair (+ 1 2) (* 3 4))) −−−→ 3 flavar
    (prim snd (pair (+ 1 2) (* 3 4))) −−−→ 12

    (pair 8 (pair 2 (pair 1 #u))) −−−→ 8, 2, 1 flavar
    (prim fst (pair 8 (pair 2 (pair 1 #u)))) −−−→ 8 flavar
    (prim snd (pair 8 (pair 2 (pair 1 #u)))) −−−→ 2, 1 flavar
    (prim fst (prim snd (pair 8 (pair 2 (pair 1 #u))))) −−−→ 2 flavar
    (prim snd (prim fst (pair 8 (pair 2 (pair 1 #u))))) −−−→ error:not-a-pair
'''


def test_pair():
    assert P(parse('(flavar () (prim fst (pair (+ 1 2) (* 3 4))))'))([]) == 3
    assert P(parse('(flavar () (prim snd (pair (+ 1 2) (* 3 4))))'))([]) == 12

    assert P(parse('(flavar () (pair 8 (pair 2 (pair 1 #u))))'))(
        []) == [8, 2, 1]
    assert P(parse('(flavar () (prim fst (pair 8 (pair 2 (pair 1 #u)))))'))([]) == 8
    assert P(parse('(flavar () (prim snd (pair 8 (pair 2 (pair 1 #u)))))'))(
        []) == [2, 1]
    assert P(parse('(flavar () (prim fst (prim snd (pair 8 (pair 2 (pair 1 #u))))))'))(
        []) == 2
    assert P(
        parse('(flavar () (prim snd (prim fst (pair 8 (pair 2 (pair 1 #u))))))'))([]) == 'not-a-pair'
    # custom test
    assert P(parse('(flavar () (prim snd (prim snd (pair 8 (pair 2 (pair 1 #u))))))'))(
        []) == [1]


def test_basic_lam_app():
    assert P(parse('(flavar () (lam x (prim * x x)))'))([]) == 'procedure'
    assert P(parse('(flavar () (app (lam x (prim * x x)) 5))'))([]) == 25
    assert P(parse('(flavar () (app 3 5))'))([]) == 'nonprocedural-rator'
    assert P(parse('(flavar () (app not #t))'))([]) == 'unbound-variable'
    assert P(
        parse('(flavar () (app (app (lam n (lam x (prim - x n))) 5) 8))'))([]) == 3


def test_complex_lam_app():
    assert P(parse(
        '(flavar () (app (lam f (app f 5)) (app (lam n (lam x (prim - x n))) 1)))'))([]) == 4
    assert P(parse('(flavar () (app (lam n (lam x (prim - x n))) 1))')
             )([]) == 'procedure'

    assert P(
        parse('(flavar () (app (lam f (app f 5)) (lam n (lam x (prim - x n)))))'))([]) == 'procedure'

    assert P(parse(
        '(flavar () (app (app (lam f (app f 5)) (lam n (lam x (prim - x n)))) 8))'))([]) == 3

    with pytest.raises(Exception):
        assert P(parse('(flavar () (app (lam x (app x x)) (lam x (app x x))))'))([])

    assert P(parse(
        '(flavar (n) (app (lam f (prim + (app f n) (app f 5))) (lam x (prim * (prim + 1 2) x))))'))([4]) == 27


def test_rec():
    assert P(parse('(flavar () (app (rec fact (lam n (if (prim = n 0) 1 (prim * n (app fact (prim - n 1)))))) 5))'))([]) == 120
    assert P(parse(
        '(flavar () (rec fact (lam n (if (prim = n 0) 1 (prim * n (app fact (prim - n 1)))))))'))([]) == 'procedure'

    # assert P(parse('(flavar (x ns) (app (rec scale (lam ys (if (prim unit? ys) ys (pair (prim * x (prim fst ys)) (app scale (prim snd ys)))))) ns))')
    #          )([3, [7, 2, 5]]) == [21, 6, 15]


def test_strict():
    assert P(parse('(flavar () (app (lam x 3) (prim / 1 0)))')
             )([]) == 'divide-by-zero'
    assert P(parse('(flavar () (app (lam x (prim + x 3)) (prim / 1 0)))')
             )([]) == 'divide-by-zero'
    with pytest.raises(Exception):
        P(parse(
            '(flavar () (app (lam x 3) (app (lam x (app x x)) (lam x (app x x)))))'))([]) == 3
    with pytest.raises(Exception):
        P(parse(
            '(flavar () (app (lam x (prim + x 3)) (app (lam x (app x x)) (lam x (app x x)))))'))([])


def test_cbv():
    assert P(parse('(flavar () (app (lam x 2) (prim / 1 0)))')
             )([]) == 'divide-by-zero'
    with pytest.raises(Exception):
        P(parse('(flavar () (app (lam x 3) (app (lam a (app a a)) (lam a (app a a)))))'))(
            [])
    assert P(parse('(flavar () (prim snd (pair (prim / 1 0) (prim + 2 3))))')
             )([]) == 'divide-by-zero'


def test_begin():
    assert P(parse(
        '(flavar () (app (lam c (begin (prim := c (prim + 1 (prim ^ c))) (prim ^ c))) (cell 3)))'))([]) == 4


def test_cell():
    [_a, _b] = P(parse('(flavar () (cell (+ 1 2)))'))([])
    assert isinstance(_a, str) and _a[-1] == '$'
    assert _b == 3

    [_c, _d] = P(parse('(flavar () (cell (+ 5 10)))'))([])
    assert isinstance(_c, str) and _c[-1] == '$' and _c != _a
    assert _d == 15


'''
    (prim ^ (cell (+ 1 2))) −−−−→ 3 flavar
    (prim ^ (+ 1 2)) −−−−→ error:not-a-cell
'''


def test_prim_cell_op():
    assert P(parse('(flavar () (prim ^ (cell (+ 1 2))))'))([]) == 3
    assert P(parse('(flavar () (prim ^ (+ 1 2)))'))([]) == 'not-a-cell'
    assert P(parse('(flavar () (app (lam x (prim ^ x)) (cell (+ 1 2))))'))([]) == 3


def test_cell_assign():
    assert P(parse(
        '(flavar () (app (lam x (pair (prim ^ x) (pair (prim ^ x) #u))) (cell (+ 1 2))))'))([]) == [3, 3]
    assert P(parse(
        '(flavar () (app (lam x (pair (prim ^ x) (pair (prim := x 4) (pair (prim ^ x) #u)))) (cell (+ 1 2))))'))([]) == [3, '#u', 4]


def test_cell_isequal():
    assert P(parse(
        '(flavar () (app (lam x (app (lam y (app (lam z (pair (prim ^ x) (pair (prim ^ y) (pair (prim ^ z) #u)))) x)) (cell 2))) (cell 1)))'))([]) == [1, 2, 1]

    assert P(parse(
        '(flavar () (app (lam x (app (lam y (app (lam z (pair (prim cell=? x x) (pair (prim cell=? x y) (pair (prim cell=? x z) #u)))) x)) (cell 1))) (cell 1)))'))([]) == [True, False, True]


def test_is_cell():
    assert P(parse('(flavar () (pair (prim cell? 0) (prim cell? (cell 0))))'))(
        []) == [False, True]


def test_fl_sugaring_prim():
    assert P(parse('(flavar () (@not #t))'))([]) == False
    assert P(parse('(flavar () (@int? 1))'))([]) == True
    assert P(parse('(flavar () (@int? #t))'))([]) == False
    assert P(parse('(flavar () (@+ 1 2))'))([]) == 3
    assert P(parse('(flavar () (@/ 17 5))'))([]) == 3
    assert P(parse('(flavar () (@% 17 5))'))([]) == 2
    assert P(parse('(flavar () (@sym=? (sym captain) (sym captain)))'))(
        []) == True
    assert P(parse('(flavar () (@sym=? (sym captain) (sym abstraction)))'))(
        []) == False
    assert P(parse('(flavar () (@+ 1))'))([]) == 'wrong-number-of-args'
    assert P(parse('(flavar () (@+ 1 2 3))'))([]) == 'wrong-number-of-args'
    assert P(parse('(flavar () (@not 1))'))([]) == 'not-a-boolean'
    assert P(parse('(flavar () (@+ #t 1))'))([]) == 'not-an-integer'
    assert P(parse('(flavar () (@/ 1 0))'))([]) == 'divide-by-zero'
    assert P(parse('(flavar () (error index-out-of-range))')
             )([]) == 'index-out-of-range'


def test_fl_sugaring_list():
    assert P(
        parse('(flavar () (list (@+ 1 2) (@= 3 4) (@+ 4 5) (sym end)))'))([]) == [3, False, 9, 'end']

    assert P(
        parse('(flavar () (list 8 2 1))'))([]) == [8, 2, 1]

    assert P(parse(
        '(flavar () (list 1 (list #t (sym three)) (list (sym four) 5 (sym six))))'))([]) == [1, [True, 'three'], ['four', 5, 'six']]

    assert P(
        parse('(flavar () (list (@+ 1 2) (@= 3 4) (pair 4 5) (sym end)))'))([]) == [3, False, [4, 5], 'end']


def test_fl_sugaring_quote():
    assert P(parse('(flavar () (quote (1 (#t three) (four 5 six))))'))(
        []) == [1, [True, 'three'], ['four', 5, 'six']] == P(parse(
            '(flavar () (list 1 (list #t (sym three)) (list (sym four) 5 (sym six))))'))([])


def test_fl_sugaring_cond():
    assert P(parse('(flavar () (app (lam grade (cond ((@>= grade 90) (sym A)) ((@>= grade 80) (sym B)) ((@>= grade 70) (sym C)) ((@>= grade 60) (sym D)) (else (sym F)))) 100))'))([]) == 'A'
    assert P(parse('(flavar () (app (lam grade (cond ((@>= grade 90) (sym A)) ((@>= grade 80) (sym B)) ((@>= grade 70) (sym C)) ((@>= grade 60) (sym D)) (else (sym F)))) 89))'))([]) == 'B'
    assert P(parse('(flavar () (app (lam grade (cond ((@>= grade 90) (sym A)) ((@>= grade 80) (sym B)) ((@>= grade 70) (sym C)) ((@>= grade 60) (sym D)) (else (sym F)))) 70))'))([]) == 'C'
    assert P(parse('(flavar () (app (lam grade (cond ((@>= grade 90) (sym A)) ((@>= grade 80) (sym B)) ((@>= grade 70) (sym C)) ((@>= grade 60) (sym D)) (else (sym F)))) 65))'))([]) == 'D'
    assert P(parse('(flavar () (app (lam grade (cond ((@>= grade 90) (sym A)) ((@>= grade 80) (sym B)) ((@>= grade 70) (sym C)) ((@>= grade 60) (sym D)) (else (sym F)))) 10))'))([]) == 'F'


def test_fl_sugaring_scand_scor():
    assert P(parse('(flavar () (scand (@= 1 2) (@/ 3 0) (@< 4 5)))'))([]) == False
    assert P(parse('(flavar () (scand (@/ 3 0) (@= 1 2) (@< 4 5)))')
             )([]) == 'divide-by-zero'
    assert P(parse('(flavar () (@or (@< 1 2) (@/ 3 0)))')
             )([]) == 'divide-by-zero'
    assert P(parse('(flavar () (scor (@< 1 2) (@/ 3 0)) )'))([]) == True
    assert P(parse('(flavar () (scor (@= 1 2) (@/ 3 0) (@< 4 5)))')
             )([]) == 'divide-by-zero'


def test_fl_sugaring_let():
    assert P(parse(
        '(flavar () (let ((a (@* 4 5)) (b (@+ 3 4))) (@/ (@+ a b) (@- a b))))'))([]) == 2
    assert P(parse(
        '(flavar () (let ((a 1)) (@* (let ((a 20) (b (@+ a 300))) (@- b a)) a)))'))([]) == 281
