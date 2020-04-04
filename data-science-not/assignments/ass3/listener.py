#!/usr/bin/env python

from tweepy.streaming import StreamListener
from tweepy import OAuthHandler, Stream

from time import sleep

class TweetToFileListener(StreamListener):

    def set_output_file(self, file_name):
        open(file_name, 'w').close()
        self.output_file = file_name

    def on_data(self, data):
        with open(self.output_file, 'a') as f:
            f.write(data)
        return True

    def on_error(self, status):
        print('Error with status', status)

def load_api_keys():
    access_token, access_token_secret , consumer_key, consumer_secret = '', '', '', ''
    with open('api.txt', 'r') as f:
        for line in f:
            l = line.split('=')
            if l[0] == 'ACCESS_TOKEN':
                access_token = l[1].strip()
            elif(l[0] == 'ACCESS_TOKEN_SECRET'):
                access_token_secret = l[1].strip()
            elif (l[0] == 'CONSUMER_KEY'):
                consumer_key = l[1].strip()
            elif (l[0] == 'CONSUMER_SECRET'):
                consumer_secret = l[1].strip()
    return access_token, access_token_secret, consumer_key, consumer_secret

def main():
    access_token, access_token_secret, consumer_key, consumer_secret = load_api_keys()

    auth = OAuthHandler(consumer_key, consumer_secret)
    auth.set_access_token(access_token, access_token_secret)

    listener = TweetToFileListener()
    listener.set_output_file('tweets.json')

    stream = Stream(auth, listener)

    keywords = ['python', 'java', 'c++', 'golang', 'javascript', 'kotlin']

    print('Streaming tweets now...')
    stream.filter(track=keywords, is_async=True)

    two_hours_in_seconds = 2 * 60 * 60
    sleep(two_hours_in_seconds)
    stream.disconnect()
    print('Done!')

if __name__ == '__main__':
    main()
