"""
Data about the 2012 edition of the European football championships are available in the file euro2012.csv
Import the datastore into a Pandas dataframe, then answer the following questions:
"""
import pandas as pd
import matplotlib.pyplot as plt

"""
0) Import the datastore into a dataframe
"""

df = pd.read_csv('euro2012.csv')
print(df)
"""
1) How many columns are in this dataset?
"""

print(df.shape[1])

"""
2) Filter the columns "Team", "Yellow Cards" and "Red Cards" and assign them to a dataframe called "discipline"
"""
discipline = df[['Team','Yellow Cards', 'Red Cards']]
print(discipline)

"""
3) Show a bar chart diagram of the number of yellow cards received by each team
(see hint_bar_chart.png for a hint...)
"""
ax = discipline.plot.bar(x='Team', y='Yellow Cards', rot =0)
fig = ax.get_figure()
fig.savefig('bars.png', dpi=1000)

"""
4) Sort the datastore in "discipline" by red card first, then yellow card and save the sorted datastore in a dataframe called "disc_sorted"
"""
disc_sorted = discipline.sort_values(['Red Cards', 'Yellow Cards'])
print(disc_sorted)

"""
5) What is the average number of yellow cards received by a team at Euro 2012?
"""

print(discipline['Yellow Cards'].mean())

"""
6) Create a new dataframe with only datastore of teams that scored 4 or more goals
"""


more_four = df[['Team','Goals']][df.Goals >= 4]

print(more_four)

