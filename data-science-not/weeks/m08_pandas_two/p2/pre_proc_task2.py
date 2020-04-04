"""
You have to write a pre-processing function that does the following on the event log in "./datastore/eent-log.csv":

Create a new dataframe in which each row contains information about a case, and  5 columns:

Case_id: the id of the case
early_morning: number of activities in case executed in the early morning (before 10:30 am) ["em"]
late_morning: number of activities in case executed in the late morning (after 10:30 am and before 1:00 pm) ["lm"]
early_afternoon: number of activities in case executed in the early afternoon (after 1:00 pm and before 4:30 pm) ["ea"]
late_afternoon: number of activities in case executed after 4:30 pm ["la"]
num_repeat: number of activities in case executed 2 or more times ["rr"]
word_bag: a string containing the codes ["xx"] repeated times the respective numbers and separated by "_"
    Example:
        (c1, 3, 4, 2, 2, 3, "em_em_em_lm_lm_lm_lm_ea_ea_la_la_rr_rr_rr")
        (c2, 1, 1, 1, 3, 1, "em_lm_ea_la_la_la_rr")

The dataframe created should contain rows only for cases in which 3 or more activities were executed
"""

import pandas as pd
import numpy as np
import time
from datetime import datetime, timedelta
import math
import os
import matplotlib.pyplot as plt
from matplotlib.dates import bytespdate2num, num2date
from matplotlib.ticker import FuncFormatter


def pre_process_task2(event_log_csv):
    """
    :param event_log_csv: csv file containing the event log
    :return:
    """
    pass


if __name__ == '__main__':
    df2 = pre_process_task2('./datastore/event-log.csv')
    print(df2.head())
    df2.to_csv('./datastore/output-task2.csv', index=False)
