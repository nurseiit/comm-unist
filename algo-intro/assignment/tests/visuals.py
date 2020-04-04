#!/usr/bin/env python

import matplotlib.pyplot as plt

files = ['report_heap.txt', 'report_merge.txt', 'report_quick.txt']

def read_files():
    file_lines = {}
    for file in files:
        with open(file, 'r') as f:
            lines = f.readlines()
            file_lines[file] = lines
    return file_lines

def parse_lines(lines):
    x, y = [], []
    size = len(lines)
    for i in range(size - 1):
        cur, nxt = lines[i], lines[i + 1]
        cur = cur.split()
        nxt = nxt.split()
        if len(nxt) > 0 and nxt[0] == 'real':
            element = cur[0]
            elapsed = nxt[1].split('m')[1].split('s')[0]
            x.append(int(element))
            y.append(float(elapsed))
    return x, y

def main():
    file_lines = read_files()
    for file in files:
        print (file)
        x, y = parse_lines(file_lines[file])
        plt.plot(x, y, linestyle='--', marker='o', color='b')
        plt.savefig(file.split('.')[0] + '.png')

if __name__ == '__main__':
    main()
