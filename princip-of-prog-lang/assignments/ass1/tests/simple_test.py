from interpreter import run

def test_num():
    assert run('(postfix 0 1 2 3)', []) == 3
