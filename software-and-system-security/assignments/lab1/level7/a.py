def mem(s):
    return [c ^ 42 for c in s]

def space(s):
    return [(c - 0x20 + 256) % 256 for c in s]

def string(s):
    return ''.join([chr(c) for c in s])

def to_file(s):
    with open('input.txt', 'w') as f:
        f.write(string(s))

if __name__ == '__main__':
    s = [0x3e, 0x3a, 0x33, 0x68]
    print(string(mem(space(s))))
    
    val = ['1', '6', '5', '3', '9']
    t = [ord(c) for c in val]
    print(string(mem(space(t))))
