'''
The file event-log.csv contains a list of events about outpatient visits in a hospital
Each event is described by 3 attributes:
'Case ID': a numeric id of the patient to which this event refers
'Complete Timestamp': the time at which this event occurs
'Activity': a label describing the activity that ths event refers to (e.g. "Reserve diagnosis")

Your task is to extract, for each "case", the time between 2 activities 진료접수'(Reserve diagnosis) and
'진료시작'(Diagnosis start), which can be seen as the "waiting time" of patients to receive a diagnosis.

We split in this task in 2 steps:
1) A function that filters those cases for which both activities have been registered
2) A function that calculates the time between 2 activities for each case

'''

import pandas as pd


def filter_cases_in_eventlog(event_log_csv, start_act, end_act):
    """
    This function filters an event log, by retaining only events belonging to those cases that have one and only one
    event corresponding to both the "start" and "end" activity.
    Due to datastore quality and logging problems, in fact, all situations may happen: start or end activity, or both may
    be missing in a case, or may be registered more than once (that is, there could be more than one event in each
    case corresponding to the start or end activities)
    :param event_log_csv: a csv file containing the log
    :param start_act:
    :param end_act:
    :return: a dataframe containing only the cases that satisfy the filtering conditions
    """
    # note the encoding used for reading Korean characters in the file
    df = pd.read_csv(event_log_csv, encoding='euc_kr')
    pass

def calc_waiting_time_by_case(event_log, start_act, end_act):
    """
    This function takes as input an event log, it filters it
     using the function filter_case_in_eventlog (that is, retaining only events of cases that possess
    one and only one event for both the start and end activities).
    It then returns a dataframe with one row for each case with the following attributes:
    'Case id'
    'Start Timestamp': the timestamp of the event of start activity
    'End Timestamp": the timestamp of the event of the end activity
    'Activity': use 'Waiting for diagnosis' for all cases
    """
    pass


if __name__ == '__main__':
    rowlist = calc_waiting_time_by_case('./event-log.csv', '진료접수', '진료시작')
    print(rowlist.head())

    rowlist.to_csv('./event-log-waiting-times.csv',index=False)             # dump dataframe on csv file

