# add more imports as appropriate to run your code
import pandas as pd
import json
import matplotlib.pyplot as plt
import matplotlib


# The three files in this directory bottom_tier.json, middle_tier.xls and top_tier.csv contain monthly variations of the house price index
# in Greenville, SC (USA) from 1997 until October 2017 (for instance, the value 0.67 for October 2016 means that average house prices have increased of
# of 0.67% in October 2016 compared to September 2016.
# Top/Middle/Bottom-tier refers to the type of houses (from expensive to cheap).
# Your task is to do some analysis of the provided datastore using Pandas, in particular you should do the following:

"""
# 1) Import the three datasets into three different dataframes (note that importing the csv file may not be trivial because of the metadata at the beginning of the file...)

# 2) Calculate and plot the average house price index monthly variation (that is, an index which is the avergae of the 3 indexes provided)

# 3) Plot the 4 indexes (the 3 provided and the one that you obtained at step 2) in the same graph (Note: you may want to create first a new dataframe with the 4 indexes, but this is not strictly necessary)
"""
def add(x, y):
    return x+y

if __name__ == '__main__':
    with open('bottom_tier.json') as bottom_tier:
        bottom_tier_data = json.load(bottom_tier)
        bottom_tier_data = bottom_tier_data['dataset']['data']
        dates = []
        values = []
        for value in bottom_tier_data:
            dates.append(value[0])
            values.append(value[1])
        dataFrameBT = pd.DataFrame(data={'Date': dates, 'Value': values})[::-1]
        dataFrameTT = pd.read_csv('top_tier.csv')[::-1]
        dataFrameMT = pd.read_excel('middle_tier.xls')[::-1]
        average = dataFrameBT['Value'].combine(dataFrameTT['Value'], add).combine(dataFrameMT['Value'], add).divide(3)
        average = pd.DataFrame({'Date': dataFrameBT['Date'], 'Value': average})
        fig, ax = plt.subplots()
        average.plot.line(ax=ax, x='Date', y='Value', label='Average')
        dataFrameBT.plot.line(ax=ax, x='Date', y='Value', label='BT')
        dataFrameTT.plot.line(ax=ax, x='Date', y='Value', label='TT')
        #
        dataFrameMT[['Date']] = dataFrameMT[['Date']].astype(str)
        dataFrameMT.plot.line(ax=ax, x='Date', y='Value', label='MT')
        fig.savefig('average.png', dpi=1000)
    pass