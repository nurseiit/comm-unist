"""
    Your task is to implement
    This function reads a sequence of words provided through command line terminated by the "stop" word
    and prints them in reverse order.
    Each word is separated by the "enter", see the main() below for how to read user input from command line
    Note: this solution can be improved by (i) making sure that only 1 single words can be entered each time
    (this implementation accepts any string, including spaces) and (ii) ensuring that the last word "stop"
    is not printed....can you do it?
"""

if __name__ == '__main__':
    pook = []
    while True:
        word = input()
        if word == 'stop':
            print(' '.join(pook[::-1]))
            break
        pook.append(word)
