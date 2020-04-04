"""
Your task today is to complete the functions below, which does some sort of simple information retrieval
from a stream of tweets stored in a file
# More info about the Twitter API at: https://dev.twitter.com/overview/api
"""
import matplotlib.pyplot as plt

import json



def most_followed_user_tweet(output_file):
    """
    This function should print on console and return the tweet in output_file tweeted by the user with most followers,
     the name of the user, and the user's number of followers
     (if the most followed user has tweeted more than once, the oldest tweet should be selected)
    :param output_file:
    :return:
    """
    max_tweet = None
    with open(output_file, 'r') as f:
        lines = f.readlines()
        for line in lines:
            df = json.loads(line)
            if max_tweet == None or df['user']['followers_count'] > max_tweet['followers_count']:
                max_tweet = df['user']
    print('User "%s" with "%d" followers is the most followed.' % (max_tweet['screen_name'], max_tweet['followers_count']))

# extract tweet that hs been retweeted the most

def most_status_changes_user_tweet(output_file):
    """
    This function should print on console and return the tweet in output_file tweeted by the user that has tweeted
    the most since joining twitter.
     the name of the user, and the user's number of followers
     (if the most followed user has tweeted more than once, the oldest tweet should be selected)

    :param output_file:
    :return:
    """
    max_tweet = None
    with open(output_file, 'r') as f:
        lines = f.readlines()
        for line in lines:
            df = json.loads(line)
            if max_tweet == None or df['user']['listed_count'] > max_tweet['listed_count']:
                max_tweet = df['user']
    print('User "%s" with "%d" followers has tweeted the most.' % (max_tweet['screen_name'], max_tweet['listed_count']))

# evaluate the lexical complexity of your twitter "corpus" using the metrics defined before
# tag and analyse tweets

def find_tweets_by_keyword(output_file, keyword_list):
    """
   This functions returns the tweets in outout_file that match one or more of the keywords in keyword_list
   It's up to you to define an appropriate datastore structure returned by this function

    :param output_file: a file containing tracked tweet(s)
    :param keyword_list: a list of keywords to search tweets
    """
    max_tweet = None
    with open(output_file, 'r') as f:
        lines = f.readlines()
        for line in lines:
            df = json.loads(line)
            if max_tweet == None or df['user']['listed_count'] > max_tweet['listed_count']:
                max_tweet = df['user']
    print('User "%s" with "%d" followers has tweeted the most.' % (max_tweet['screen_name'], max_tweet['listed_count']))

def plot_tweets_by_attribute(output_file, attribute):
    """
    This functions plots a histogram of number of tweets per "attribute" in output_file.
    For instance, if attribute = "language", then it plots a histogram showing the number of tweets per language found;
    if attribute "location" it plots the number of tweets per different user location

    :param output_file:
    :param attribute: a categorical attribute meaningful for a tweet
    :return:
    """
    with open(output_file, 'r') as f:
        lines = f.readlines()
        first = []
        second = []
        count = {}
        for line in lines:
            data = json.loads(line)
            lang = data['lang']
            place = data['place']
            loc = place['full_name'] if place != None else None
            if attribute == "language" and lang != None:
                if not lang in count:
                    count[lang] = 0
                count[lang] += 1
            if attribute == "location" and loc != None:
                if not loc in count:
                    count[loc] = 0
                count[loc] += 1

        for kek in count:
            first.append(kek)
            second.append(count[kek])
        plt.plot(first, second)
        plt.show()

if __name__ == '__main__':

    most_followed_user_tweet("../p01/test_tweet.json")               # Note the path to the file: .. is used to go up one level in the directory structure

    most_status_changes_user_tweet("../p01/test_tweet.json")

    plot_tweets_by_attribute("../p01/test_tweet.json", 'language')
