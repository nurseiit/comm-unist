"""
The code in this file can be used to create a "stream" to track live tweets.
This "stream" is a wrapper to the standard Twitter API.
Moe info about the Twitter API at: https://dev.twitter.com/overview/api

You should try to understand the code and, most importantly,
understand how you can reuse (part of) this code in your own code.
"""


from tweepy.streaming import StreamListener
from tweepy import OAuthHandler
from tweepy import Stream

from time import sleep




#The "stream" requires a "streamListener", which specifies what to do
# when a new tweet is received and when an error is tracked
#
# When a new tweet is tracked, this listener does the following (see on_data method):
# (i) print the received tweet on console
# (ii) store the tweet in a file (the output_file is set by calling the set_ouptput_file() method first)
# see the main for how to use the tweet
class TweetToFileListener(StreamListener):

    def set_output_file(self, file_name):
        # to clear the content of a file, just open and close it
        open(file_name, 'w').close()

        self.output_file = file_name

    def on_data(self, data):
        # NOISY!!!
        # print(data)
        with open(self.output_file,'a') as tf:
            tf.write(data)
        return True

    def on_error(self, status):
        print(status)

if __name__ == '__main__':

    access_token, access_token_secret, consumer_key, consumer_secret = load_props("api.txt")
    print("access token: ", access_token)


    # Variables that contains the user credentials to access Twitter API
    # YOU MUST CREATE A TWITTER ACCOUNT AND FILL IN YOUR OWN CREDENTIALS
    # access_token = "YOUR_ACCESS_TOKEN"
    # access_token_secret = "YOUR_ACCESS_TOKEN_SECRET"
    # consumer_key = "YOUR_CONSUMER_KEY"
    # consumer_secret = "YOUR_CONSUMER_SECRET"

    # path to the output file where tweets are stored
    output_file = 'tweets.json'

    #This handles Twitter authentification and the connection to Twitter Streaming API
    l = TweetToFileListener()
    l.set_output_file(output_file)
    auth = OAuthHandler(consumer_key, consumer_secret)
    auth.set_access_token(access_token, access_token_secret)
    stream = Stream(auth, l)                                    # this is the "stream" that can be called to track live tweets


    # example of how to use the "stream"
    print("Start streaming...")
    stream.filter(track=['brexit','Brexit'], is_async=True)        # track all the tweets in which the keywords 'brexit' and 'Brexit' appear, the async option makes sure that tracking does not block teh execution of the program
    sleep(10)                                                   # this keeps the tracking alive for 10 seconds
    stream.disconnect()                                         # remember to close the stream by calling disconnect()
    print("...done")
