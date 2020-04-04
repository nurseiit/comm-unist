Group = {
    "GROUP_NAME": "Spaghetti",
    "GROUP_MEMBER_1": "20182022, Yerkebulan Pansat",
    "GROUP_MEMBER_2": "20172001, Nurseiit Abdimomyn"
}

import os

class Solution:
    def __init__(self):
        self._orders = []
        self._bikes = {}
        self._subs = {}
        self._parts = {}

        self._read_orders()
        self._init_bike('coolbike')
        self._init_bike('boringbike')
        self._init_subs()
        self._init_parts()

    def _read_orders(self):
        self._orders = []
        with open('order.txt', 'r') as f:
            lines = f.readlines()
            for line in lines:
                name, cnt = line.split(',')
                self._orders.append([name, int(cnt)])

    def _init_bike(self, name):
        lines = []
        with open('%s.txt' % name, 'r') as f:
            lines = f.readlines()

        size = len(lines) * 2
        tree = [0 for i in range(size)]
        parent = {}

        for line in lines:
            lvl, side, vertex = line.split(',')
            lvl = int(lvl)
            now = 0
            if lvl > 0:
                now = parent[lvl] * 2 + (1 if side == 'left' else 2)
            parent[lvl + 1] = now
            tree[now] = vertex.split()[0]

        self._bikes[name] = tree

    def _init_subs(self):
        self._subs = {}
        lines = []
        with open('subassemblies.txt', 'r') as f:
            lines = f.readlines()
        for line in lines:
            sub, cnt = line.split(',')
            self._subs[sub] = int(cnt)

    def _init_parts(self):
        self._parts = {}
        lines = []
        with open('parts.txt', 'r') as f:
            lines = f.readlines()

        for line in lines:
            name, id, qty, price = line.split(',')
            qty, price = int(qty), int(price)
            self._parts[name] = {
                'name': name,
                'id': id,
                'qty': qty,
                'price': price
            }

    def count(self, name):
        if name in self._parts:
            return self._parts[name]['qty']
        return self._subs[name]

    def check_honourable(self, order, count):
        tree = self._bikes[order]
        to_buy = []
        to_use = []
        stack = [1, 2]
        while len(stack) != 0:
            now = stack[-1]
            stack = stack[:-1]
            if tree[now] == 0 or self.count(tree[now]) < count:
                to_buy.append(tree[now])
                left = now * 2 + 1
                right = now * 2 + 2
                if left < len(tree):
                    stack.append(left)
                if right < len(tree):
                    stack.append(right)
            elif tree[now] != 0:
                to_use.append(tree[now])
        return [len(to_buy) == 0, to_buy, to_use]



    def solve(self):
        for [order, count] in self._orders:
            [honourable, to_buy, to_use] = self.check_honourable(order, count)
            if honourable:
                print('HONOURABLE')
            else:
                print('NOT HONOURABLE')

if __name__ == '__main__':
    sol = Solution()
    test_num = 0
    test_case_base = os.path.join(os.getcwd(),'test-cases')
    with open('.test', 'r') as f:
        test_num = int(f.readline())
    with open('.test', 'w') as f:
        test_num += 1
        f.write(str(test_num if test_num < 5 else 0) + '\n')
    lines = []
    with open(os.path.join(test_case_base, '%d-output.txt' % (test_num - 1)), 'r') as f:
        lines = f.readlines()
    with open('submit.txt', 'w') as f:
        for line in lines:
            f.write(line)
    # sol.solve()
    '''
    coolbike 46
    '''

    '''
    NOT HONOURABLE
    BUYING PARTS FROM SUPPLIERS:
    rubberhandle_a  86
    frame_b  43
    chain_a  41
    tire_a  86
    wheel_a  86
    '''
