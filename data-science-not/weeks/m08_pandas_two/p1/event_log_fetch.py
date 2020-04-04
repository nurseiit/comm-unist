"""
Today we work with "event logs", i.e., datasets in which each row represents a specific event that happened
during the execution of a business process.
​
The data that you need are stored in a database hosted remotely on one of our servers.
The data that you need are in the table "events" of the db 'mydb' used in the Robert De Niro's example.
This table contains the following columns:
id: a unique id of the event
case_id: an id of the process case, i.e., the purchase order to which this event refers
start_ts: the timestamp of when this activity started
complete_ts: the timestamp of when this activity terminated
activity: the name of the activity captured by this event
resource: the name of the person who executed this activity
role: the role of the person who executed this activity
​
Then, you need to complete some functions to answer specific questions about the dataset that you downloaded

"""
import psycopg2
import pandas as pd


def get_event_log_from_db(db_host, db_port, db_user, db_password, db_name, table_name):
    """
    This function connects to a db, fetch an event log dataset (which is in one specific table named 'table_name' in the
    database 'db_name', and returns a pandas dataframe containing the event log
    :param db_host:
    :param db_port:
    :param db_user:
    :param db_password:
    :return:
    """
    pass


def is_activity_executed_in_case(event_log_df, activity, case_id):
    """
    Given an event log dataframe, an activity and a case_id, this function checks if an activity has been executed in
    the case case_id
    :param activity:
    :param case_id:
    :return: True if activity executed in case case_id, False otherwise
    """
    pass


def get_longest_case(event_log_df):
    """
    Given an event log dataframe, this function returns the case_id of the longest case in the event log.
    The duration of a case is calculated as the difference between the latest complete timestamp and earliest start timestamp
    of events in a case
    :param event_log_df:
    :return:
    """
    pass


def get_activity_mean_duration(event_log_df, activity):
    """
    Given an event log dataframe and an activity, this function returns the average duration of the activity
    in the log (i.e., the average duration of the activity calculated on all the cases in which that
    particular activity was executed).
    The duration of an activity is the difference between the end and start timestamps of the corresponding event
    :param event_log_df:
    :return:
    """
    pass


def has_role(event_log_df, resource1, role):
    """
    Given an event log data frame, one resource (e.g. "Jack") and one role (e.g. "Manager")
    this function returns the number of cases in which
    resource1 has executed at least 1 activity as "role"
    :param event_log_df:
    :param resource1: column name resource
    :param role: column name role
    :return: Number of cases
    """
    pass


def is_seqeunce_in_case(event_log_df, act_list):
    """
    This function returns the number of cases in which a list of activities (in act_list) has been executed, in the
    order in which they appear in act_list.
    Example: if act_list = [B,C,A], this function will count the case c1 = A, F, B, C, A, D
    but not c2 = B, C, D, A, F ,F
    :param event_log_df:
    :param act_list:
    :return:
    """
    pass


if __name__ == '__main__':

    # use the credentials provided to you
    event_log = get_event_log_from_db("114.70.14.56", "10051", "myuser064", "064", "mydb", 'events')

    activity = 'Send Request for Quotation to Supplier'
    case_id = 2

    is_activity_executed_in_case(event_log, activity, case_id)

    print(get_longest_case(event_log))
    get_activity_mean_duration(event_log, activity)

    resource1 = 'Karen Clarens'
    resource2 = 'Supplier'
    print(has_role(event_log, resource1, resource2))

    trace = ["Create Purchase Requisition", "Create Request for Quotation", "Analyze Request for Quotation",
             "Amend Request for Quotation",
             "Analyze Request for Quotation", "Amend Request for Quotation", "Analyze Request for Quotation",
             "Send Request for Quotation to Supplier",
             "Create Quotation comparison Map", "Analyze Quotation Comparison Map", "Choose best option",
             "Settle Conditions With Supplier", "Create Purchase Order",
             "Confirm Purchase Order", "Deliver Goods Services", "Release Purchase Order",
             "Approve Purchase Order for payment", "Send Invoice",
             "Release Supplier's Invoice", "Authorize Supplier's Invoice payment", "Pay Invoice"]
    print(is_seqeunce_in_case(event_log, trace))
