"""
The file chipotle_orders.csv contains data about orders at a branch of the world-famous text-mex chain "Chipotle".
Note that columns are separated by the "tab" character
"""

import pandas as pd
import matplotlib.pyplot as plt



"""
1) Import the data into a dataframe
"""


"""
1bis) The same data can be downloaded at 'https://raw.githubusercontent.com/justmarkham/DAT8/master/data/chipotle.tsv'
How could you load the data directly from the url?
"""


"""
2) Transform the values in the item_price column into a float.
Hint: the data are currently a string of the type "$<price>", so...
"""


"""
3) Filter the items that cost more than 10$ and assign them to a new dataframe (how many are these items?)
"""


"""
4) Create a new dataframe containing only information about item_name and item_price of only items for which
 quantity is equal to 1, removing duplicates
"""


"""
5) Create a bar chart diagram using the data obtained in (4). Each bar should show the number of items
found in a certain price interval. Use intervals of 3$
(see chipotle_result.png for the expected result)
"""
