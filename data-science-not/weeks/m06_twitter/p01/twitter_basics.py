"""
Your task is to implement some basic functions to track live tweets and inspect their content
To complete this task and test it, you MUST have created a twitter account and you should now
your credentials: access_token, access_token_secret, consumer_key, consumer_secret

More info about the Twitter API at: https://dev.twitter.com/overview/api
"""

from m06_twitter.p0.twitter_streaming import TweetToFileListener
from m06_twitter.p0.twitter_streaming import load_props
from time import sleep

from tweepy import OAuthHandler
from tweepy import Stream

import json


def get_tweet_stream(output_file, twitter_credentials):
    """
    This function is given and returns a "stream" to listen to tweets and store them in output_file
    To understand how this function works, check it against the code of twitter_streaming in part00_preclass

    :param output_file: the file where the returned stream will store tweets
    :param twitter_credentials: a dicionary containing the credentials to aceess twitter (you should have created your own!_
    :return: a "stream" variable to track live tweets
    """
    access_token = twitter_credentials['access_token']
    access_token_secret = twitter_credentials['access_token_secret']
    consumer_key = twitter_credentials['consumer_key']
    consumer_secret = twitter_credentials['consumer_secret']

    l = TweetToFileListener()
    l.set_output_file(output_file)
    auth = OAuthHandler(consumer_key, consumer_secret)
    auth.set_access_token(access_token, access_token_secret)
    stream = Stream(auth, l)
    return stream


def listen_and_store_tweets(keywords, duration, output_file, twitter_credentials):
    """
    This function tracks live tweets on a given topic for a certain duration and stores them in a file

    :param keywords: a list of keywords to track
    :param duration: the time the tracking will stay alive, e.g., 10 seconds
    :param output_file: the file where tweets will be stored
    :param twitter_credentials: a dictionary with credentials to access twitter
    """
    return listen_and_store_tweets_lan(keywords, duration, [], output_file, twitter_credentials)


def count_tweets(output_file):
    """
    This function counts the number of tweets stored in output_file
    :returns the number of tweets in output_file
    """
    with open(output_file, 'r') as f:
        lines = f.readlines()
        return len(lines)


# display the text and user info of tweets mae by users with more than follow_num followers
def show_tweets_high_followed_users(output_file, follower_num):
    """
    This function should print on console the tweets in output_file that have been tweeted by users with
    more than follower_num followers

    :param output_file: the file where tweets are stored
    :param follower_num: the minimum number of followers required to display a tweet
    :return:
    """
    with open(output_file, 'r') as f:
        lines = f.readlines()
        for line in lines:
            df = json.loads(line)
            if df['user']['followers_count'] >= follower_num:
                print(df['text'])


def listen_and_store_tweets_lan(keywords, duration, lan, output_file, twitter_credentials):
    """
    This function tracks live tweets on a given topic
    and in given languages for a certain duration and stores them in a file

    :param keywords: a list of keywords to track
    :param duration: the time the tracking will stay alive, e.g., 10 seconds
    :param lan: a list of languages to track, e.g. ['en', 'es', 'it'] tracks only tweets in English and Spanish (Espanol) and Italian
    :param output_file: the file where tweets will be stored
    :param twitter_credentials: a dictionary with credentials to access twitter
    """
    access_token, access_token_secret, consumer_key, consumer_secret = tweet_cred

    l = TweetToFileListener()
    l.set_output_file(output_file)

    auth = OAuthHandler(consumer_key, consumer_secret)
    auth.set_access_token(access_token, access_token_secret)

    stream = Stream(auth, l)
    stream.filter(track=keywords, is_async=True, languages=lan)

    sleep(duration)
    stream.disconnect()

if __name__ == '__main__':
    tweet_cred = load_props("api.txt")

    listen_and_store_tweets(['trump', 'clinton'], 20, "test_tweet.json", tweet_cred)

    print(count_tweets("test_tweet.json"))

    listen_and_store_tweets_lan(['trump', 'clinton'], 15, ['en', 'es', 'ko'], "test_tweet.json", tweet_cred)

    show_tweets_high_followed_users("test_tweet.json",7)
