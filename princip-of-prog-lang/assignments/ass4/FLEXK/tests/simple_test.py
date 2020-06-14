from parser import parse
from checker import type_check
import pytest


def test_parser_error():
    with pytest.raises(ValueError):
        parse('(flick () #t)')


def test_1():
    assert type_check(*parse('(flexk (()) 1): (=> () int)')) == True


def test_2():
    assert type_check(*parse('(flexk (()) 1): (=> () bool)')) == False


def test_3():
    assert type_check(*parse('''
    (flexk (()) (abs ((x int) (y int)) 1)) : (=> () (-> (int int) int))
    ''')) == True


def test_4():
    assert type_check(*parse('''
    (flexk (()) (abs ((x int) (y int)) 1)) : (=> () (-> (int) int))
    ''')) == False


def test_5():
    assert type_check(*parse('''
    (flexk ((x int)) 1) : (=> (int) int)
    ''')) == True


def test_6():
    assert type_check(*parse('''
    (flexk ((x int)) 1) : (=> () int)
    ''')) == False


def test_7():
    assert type_check(*parse('''
    (flexk ((x int) (y bool)) 1): (=> (int bool) int)
    ''')) == True


def test_8():
    assert type_check(*parse('''
    (flexk ((x int) (y bool)) 1): (=> (int bool int) int)
    ''')) == False


def test_symb():
    assert type_check(*parse('''
    (flexk (()) (sym captain)): (=> () symb)
    ''')) == True


def test_prim():
    assert type_check(*parse('''
    (flexk (()) (prim + 2 3)): (=> () (-> (int int) int))
    ''')) == True

    assert type_check(*parse('''
    (flexk (()) (prim + 2 3)): (=> () (-> (int int) bool))
    ''')) == False

    assert type_check(*parse('''
    (flexk (()) (prim + (x int) (y int))): (=> () (-> (int int) int))
    ''')) == True

    assert type_check(*parse('''
    (flexk (()) (prim + (x int) (y int))): (=> () (-> (int int) bool))
    ''')) == False

    assert type_check(*parse('''
    (flexk (()) (prim + (x bool) (y int))): (=> () (-> (int int) int))
    ''')) == False


def test_implicit_prim():
    assert type_check(*parse('''
    (flexk (()) (+ 2 3)): (=> () (-> (int int) int))
    ''')) == True

    assert type_check(*parse('''
    (flexk (()) (+ 2 3)): (=> () (-> (int int) bool))
    ''')) == False


# def test_complex_abs():
#     assert type_check(*parse('''
#     (flexk (()) (abs ((a int) (b int)) (/ (+ a b) 2))):(=> () (-> (int int) int))
#     ''')) == True
