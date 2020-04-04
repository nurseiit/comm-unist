"""
Today's objective is to manipulate data in a time series and practice with the basics of matplotlib,
while working with data about currency values.
​
The files GBP2USD.txt and JPY2USD.txt contain historical daily values of GBP (pounds) and JPY (yen) against the US dollar.
For instance, the entry "2017-09-28	112.74" in JPY2USD.txt means that, on sept 28th 2017, it took 112.74 yen to buy 1 US dollar
(or, in other words, that 1 US dollar was worth 112.74)

Example of the plots to be printed as output of these functions are given (see .png files in this package)

file_management_example.py shows how to read data from a file

A complete tutorial about matplotlib: https://www.machinelearningplus.com/plots/matplotlib-tutorial-complete-guide-python-plot-examples/
"""

import matplotlib.pyplot as plt
import datetime as dt

# wealth calculator
def historical_wealth_calculator(amount, currency, year, month, day):
    """
    This function calculates the value in US dollars of a certain "amount" (of a given "currency") on a specific date
    (identified by the parameters year, month and day)
    For instance, historical_wealth_calculator(145, "GBP", "2016", "06", "15") should return the value in USD of 145 GBP
     on June 15 2016     (The answer is 394.66...)
    Note that, given the data that you are provided, "GBP" and "JPY" are the only possible currencies
    (and your program should raise an error if a different currency is requested)
    """
    if currency == "GBP":
        file = open("GBP2USD.txt", "r")
        for line in file:
            date = line.split('\t')
            if date[0] == year + '-' + month + '-' + day:
                return float(date[1])*amount
        print("No data for " + year + '-' + month + '-' + day)
    elif currency == "JPY":
        file = open("JPY2USD.txt", "r")
        for line in file:
            date = line.split('\t')
            if date[0] == year + '-' + month + '-' + day:
                return float(date[1]) * amount
        print("No data for " + year + '-' + month + '-' + day)
    else:
        print("Wrong Currency")

def from_string_to_date(dates):
    """
    This function is GIVEN and can be used to format date values in your plots
    :param dates:
    :return:
    """
    x = [dt.datetime.strptime(d, '%Y-%m-%d').date() for d in dates]
    return x

def plot_currency(currency):
    """
    This function should plot the value of a given currency ("GBP" or "JPY") on the y axis as a function of
    the date on the x axis
    In this function, you also need to properly set a title for the plot and labels for each axis
    Note: once you have obtained a list of strings with the dates, e.g. ["2017-10-23", "2017-10-22",...], use
    the given function from_string_to_date() to convert it into a list of "date" objects that can be
    correctly handled by matplotlib
    """
    if currency == "GBP":
        file = open("GBP2USD.txt", "r")
        dates = []
        rate = []
        for line in file:
            line = line.strip()
            tmp = line.split('\t')
            dates.append(tmp[0])
            rate.append(float(tmp[1]))
        dts = from_string_to_date(dates)
        plt.plot(dts, rate)
        plt.show()
    elif currency == "JPY":
        file = open("JPY2USD.txt", "r")
        dates = []
        rate = []
        for line in file:
            line = line.strip()
            tmp = line.split('\t')
            dates.append(tmp[0])
            rate.append(float(tmp[1]))
        dts = from_string_to_date(dates)
        print(dts)
        plt.plot(dts, rate)
        plt.show()
    else:
        print("Wrong currency")

def plot_relative_diff(currency):
    """
    This function plots the relative daily increase/decrease of a currency value (JPY and GBP are the only allowed).
    For instance, if on day X and day X+1 it takes 1.2 and 1.7 JPY to buy one USD, respectively, then
    the y-value of the plot on day X+1 will be (1.7-1.2)/1.2
    Note that you will not be able to calculate a value for the first day in which exchange rates are recorded
    (because there is no previous value to consider)!
    :param currency:
    :return:
    """
    if currency == "GBP":
        file = open("GBP2USD.txt", "r")
        dates = []
        rate = []
        dif = []
        for line in file:
            line = line.strip()
            tmp = line.split('\t')
            dates.append(tmp[0])
            rate.append(float(tmp[1]))
        for i in range(1, len(rate)):
            dif.append((rate[i] - rate[i-1])/rate[i-1])
        dts = from_string_to_date(dates)
        plt.plot(dts[1:], dif)
        plt.show()
    elif currency == "JPY":
        file = open("JPY2USD.txt", "r")
        dates = []
        rate = []
        for line in file:
            line = line.strip()
            tmp = line.split('\t')
            dates.append(tmp[0])
            rate.append(float(tmp[1]))
        for i in range(len(rate) - 1):
            dif.append((rate[i] - rate[i-1]) / rate[i - 1])
        dts = from_string_to_date(dates)
        plt.plot(dts[1:], dif)
        plt.show()
    else:
        print("Wrong currency")


def plot_currency_bars_fromdate(currency, fromdate):
    """
    This function should work as plot_currency(), but:
    (i) It plots a "bar chart" instead of a line
    (ii) It plots only data from a certain date "fromdate" until the most recent data available
    (see gbp_fromdate.png for an example outcome from "2016-01-04")
    """
    if currency == "GBP":
        file = open("GBP2USD.txt", "r")
        dates = []
        rate = []
        dif = []
        pnt = -1
        for line in file:
            line = line.strip()
            tmp = line.split('\t')
            dates.append(tmp[0])
            rate.append(float(tmp[1]))
            if pnt < 0:
                if (tmp[0] != fromdate):
                    pnt -= 1
                else:
                    pnt *= -1
        dts = from_string_to_date(dates)
        plt.bar(dts[:pnt], rate[:pnt], width=2, alpha=0.5)
        plt.show()
    elif currency == "JPY":
        file = open("JPY2USD.txt", "r")
        dates = []
        rate = []
        pnt = -1
        for line in file:
            line = line.strip()
            tmp = line.split('\t')
            dates.append(tmp[0])
            rate.append(float(tmp[1]))
            if pnt < 0:
                if (tmp[0] != fromdate):
                    pnt -= 1
                else:
                    pnt *= -1
        dts = from_string_to_date(dates)
        plt.plot(dts[:pnt], rate[:pnt])
        plt.bar()
        plt.show()
    else:
        print("Wrong currency")

if __name__ == "__main__":

    # Test historical_wealth_calculator
    print(historical_wealth_calculator(278, "GBP", "2016", "06", "15"))
    # Test plot (see gbp.png)
    plot_currency("JPY")

    plot_relative_diff("GBP")

    # Test plot from date
    plot_currency_bars_fromdate("GBP", "2016-01-04")
