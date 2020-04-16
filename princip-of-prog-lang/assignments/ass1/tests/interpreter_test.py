from interpreter import run

def test_IF():
    assert run('(postfix 2 add)', [1]) == 'error'

def test_num():
    assert run('(postfix 0 1 2 3)', []) == 3

def test_pop():
    assert run('(postfix 0 1 2 3 pop)', []) == 2
    assert run('(postfix 0 1 pop)', []) == 'error'

def test_nget_cases():
    assert run('(postfix 2 1 nget)', [4, 5]) == 4
    assert run('(postfix 2 2 nget)', [4, 5]) == 5
    assert run('(postfix 2 3 nget)', [4, 5]) == 'error'

def test_swaps():
    assert run('(postfix 2 swap)', [3, 4]) == 4
    assert run('(postfix 0 swap)', []) == 'error'

def test_sel():
    assert run('(postfix 3 sel)', [3, 4, 0]) == 3
    assert run('(postfix 3 sel)', [3, 4, 1]) == 4
    assert run('(postfix 3 sel)', [3, 4, 2]) == 4
    assert run('(postfix 2 sel)', [3, 4]) == 'error'
    assert run('(postfix 0 (add) (add) (add) sel)', []) == 'error'

def test_arithmetic_commands():
     assert run('(postfix 1 4 sub)', [3]) == -1
     assert run('(postfix 1 4 add)', [3]) == 7
     assert run('(postfix 1 4 mul)', [3]) == 12
     assert run('(postfix 1 4 div)', [8]) == 2
     assert run('(postfix 1 4 div)', [7]) == 1 # integer division
     assert run('(postfix 1 3 rem)', [17]) == 2
     assert run('(postfix 1 0 div)', [8]) == 'error'
     assert run('(postfix 0 4 sub)', []) == 'error'
     assert run('(postfix 2 (add) (add) sub)', []) == 'error'

def test_relational_commands():
     assert run('(postfix 1 4 lt)', [3]) == 1
     assert run('(postfix 1 4 lt)', [5]) == 0

def test_exec():
    assert run('(postfix 2 (add) exec)', [3, 4]) == 7
    assert run('(postfix 2 1 exec)', [3, 4]) == 'error'

def test_exercise_1_1():
    assert run('(postfix 0 10 (swap 2 mul sub) 1 swap exec)', []) == -19
    assert run('(postfix 0 (5 (2 mul) exec) 3 swap)', []) == 'error'
    assert run('(postfix 0 (() exec) exec)', []) == 'error'
    assert run('(postfix 0 2 3 1 add mul sel)', []) == 'error'
    assert run('(postfix 0 2 3 1 add mul sel exec)', []) == 'error'
    assert run('(postfix 0 0 (2 3 add) 4 sel exec)', []) == 'error'
    assert run('(postfix 0 1 (2 3 add) 4 sel exec)', []) == 5
    assert run('(postfix 0 (5 6 lt) (2 3 add) 4 sel exec)', []) == 'error'
    assert run('(postfix 0 (swap exec swap exec) (1 sub) swap (2 mul) swap 3 swap exec)', []) == 5
