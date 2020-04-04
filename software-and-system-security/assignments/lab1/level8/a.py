if __name__ == '__main__':
    keys = 3
    words = 4
    for i in range(31):
        a = words
        tmp = a
        a = keys
        a += words
        words = a
        a = tmp
        keys = a
    print(words)
