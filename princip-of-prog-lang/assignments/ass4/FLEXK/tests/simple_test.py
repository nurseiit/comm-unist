from parser import parse
from checker import type_check


def test_1():
    assert type_check(*parse('(flexk (()) 1): (=> () int)')) == True


def test_2():
    assert type_check(*parse('(flexk (()) 1): (=> () bool)')) == False


# def test_3():
#     assert type_check(*parse('''
#     (flexk (()) (abs ((x int) (y int)) 1)) : (=> () (-> (int int) int))
#     ''')) == True


# def test_4():
#     assert type_check(*parse('''
#     (flexk (()) (abs ((x int) (y int)) 1)) : (=> () (-> (int) int))
#     ''')) == False


def test_5():
    assert type_check(*parse('''
    (flexk ((x int)) 1) : (=> (int) int)
    ''')) == True


def test_6():
    assert type_check(*parse('''
    (flexk ((x int)) 1) : (=> () int)
    ''')) == False


# def test_7():
#     assert type_check(*parse('''
#     (flexk ((x int) (y bool)) 1): (=> (int bool) int)
#     ''')) == True


# def test_8():
#     assert type_check(*parse('''
#     (flexk ((x int) (y bool)) 1): (=> (int bool int) int)
#     ''')) == False
