class StockManager:
    def __init__(self):
        self.companies = ['Google', 'Apple', 'BMW']
        self.shares = {}
        self.profit = 0
        for company in self.companies:
            self.shares[company] = []
    # Internal

    def _get_total_shares(self, company):
        total = 0
        for [number, _] in self.shares[company]:
            total += number
        return total

    # Public

    def get_profit(self):
        if self.profit < 0:
            print('Loss of $%d from stock manager init' % (-self.profit))
        else:
            print('Profit of $%d from stock manager init' % self.profit)
        return self.profit

    def buy_shares(self, company, number, price):
        if not company in self.companies:
            print('Error: "%s" is not managed by the StockManager!' % company)
            return
        print('Bought %d for $%d of %s!' % (number, price, company))
        self.shares[company].append([number, price])

    def buy_multiple(self, companies, numbers, prices):
        n = len(companies)
        for i in range(n):
            company, number, price = companies[i], numbers[i], prices[i]
            self.buy_shares(company, number, price)

    def sell_shares(self, company, number, price):
        if not company in self.companies:
            print('Error: "%s" is not managed by the StockManager!' % company)
            return -1
        if not self.shares[company]:
            print('Error: StockManager does not have "%s" shares!' % company)
            return -1
        if self._get_total_shares(company) < number:
            print('Error: not enough stock to sell!')
            return -1
        total = 0
        initial = number
        while number > 0 and self.shares[company]:
            [back_number, back_price] = self.shares[company][-1]
            if back_number <= number:
                number -= back_number
                total += back_number * (price - back_price)
                self.shares[company].pop()
            else:
                total += number * (price - back_price)
                self.shares[company][-1] = [back_number - number, back_price]
                number = 0
        self.profit += total
        print('Sold %d for $%d of %s with total of $%d!' % (initial, price, company, total))
        return total

    def sell_multiple(self, companies, numbers, prices):
        n = len(companies)
        total = 0
        for i in range(n):
            company, number, price = companies[i], numbers[i], prices[i]
            current = self.sell_shares(company, number, price)
            total += current
        return total

if __name__ == '__main__':
    def check_buy():
        print('# Checking `buy_shares()`')
        SM = StockManager()
        SM.buy_shares('Google', 10, 50)
        SM.buy_shares('Apple', 20, 30)
        SM.buy_shares('BMW', 20, 35)
        SM.buy_shares('Ferrari', 40, 35)

    def check_sell():
        print('# Checking `sell_shares()`')
        SM = StockManager()
        SM.buy_shares('Google', 10, 50)
        SM.buy_shares('Apple', 20, 30)
        SM.buy_shares('Google', 20, 40)
        SM.buy_shares('Apple', 20, 35)
        print('Returned %d' % SM.sell_shares('Apple', 5, 30))
        SM.get_profit()
        print('Returned %d' % SM.sell_shares('Google', 25, 60))
        SM.get_profit()
        input()
        print('# Selling non-existent stocks')
        SM.sell_shares('BMW', 10, 50)
        input()
        print('# Selling not-enough stocks')
        SM.sell_shares('Apple', 60, 50)

    def check_multiple():
        print('# Checking `buy_multiple()`')
        SM = StockManager()
        SM.buy_multiple(['Google', 'Apple', 'Google', 'Apple'], [10, 20, 20, 20], [50, 30, 40, 35])
        input()

        print('# Checking `sell_multiple()`')
        total = SM.sell_multiple(['Apple', 'Google', 'BMW', 'Apple'], [5, 25, 10, 60], [30, 60, 50, 50])
        print('Returned %d' % total)
        SM.get_profit()


    lol = [check_buy, check_sell, check_multiple]
    for f in lol:
        f()
        input()
