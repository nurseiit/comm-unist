"""
Your task is to parallelise the pre-processing "task2" of last week.
You need to think of an appropriate way to slice the data and integrate the results so as to keep the same
implementation of pre_process_task2() of last week for the work() function

Hint: slice data by case, the rest will be easy :)
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
import multiprocessing
from multiprocessing import Pool, cpu_count
from functools import partial

def slice_data(event_log_csv):
    df = pd.read_csv(event_log_csv,encoding='euc_kr')
    df['Complete Timestamp'] = pd.to_datetime(df['Complete Timestamp'])
    groups = df.groupby('Case ID')
    return groups

def work(kek):
    case, group = kek
    early_morning = '10:30:00'
    early_morning = datetime.strptime(early_morning,'%H:%M:%S').time()
    late_morning = '13:00:00'
    late_morning = datetime.strptime(late_morning,'%H:%M:%S').time()
    early_afternoon = '16:30:00'
    early_afternoon = datetime.strptime(early_afternoon,'%H:%M:%S').time()

    if len(group['Activity']) >3:
        timelist = list(group['Complete Timestamp'])
        em =0
        lm =0
        ea =0
        la =0
        word_bag =''
        for time in timelist:
            time = time.time()
            if time < early_morning:
                em +=1
                word_bag +='em_'
            elif time > early_morning and time < late_morning:
                lm +=1
                word_bag +='lm_'
            elif time > late_morning and time < early_afternoon:
                ea +=1
                word_bag +='ea_'
            else:
                la +=1
                word_bag +='la_'
        activitylist = list(group['Activity'])
        d = {x:activitylist.count(x) for x in set(activitylist)}
        rr = 0
        for x in d.values():
            if x>=2:
                rr +=1
        return [case,em,lm,ea,la,rr,word_bag[:-1]]
    return []



def integrate(results):
    return results

if __name__ == '__main__':
    print('Start slicing...')
    start = time.time()
    slices = slice_data('../../m08_pandas_two/datastore/event-log.csv')
    pool = Pool(cpu_count())
    print('Start work...')
    results = pool.map(work, slices)
    pool.close()
    pool.join()
    results = integrate(results)
    print ('Finished in %f seconds' % (time.time() - start))
