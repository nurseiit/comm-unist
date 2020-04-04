"""
In this file you can see examples of how to process the tweets that have been tracked and stored in a file.
Also in this case, you should try to understand the code and, most importantly, how you can reuse it in your implementation.

Note that the Twitter "stream" listener stores tweets in the JSON format. JSON is a lightweight standard datastore interchange format.
All programming languages provide native packages to parse and manipulate strings formatted in the JSON format.
More info at: http://www.json.org/

Note that the Python json package can be used to tweets in a dictionary.
"""

import json


if __name__ == '__main__':

    # the file where tracked tweets are stored
    output_file = 'tweets.json'
    tweets_file = open(output_file, "r")

    # a list where we will store the tweets parsed from output_file
    tweet_list = []

    # Each line in the output file is a different tweet
    # Note that tweets in output file are interleaved by empty lines (that is, lines containing only the "\n" char)
    # This is line must be skipped (see "if" statement within the for loop)
    for line in tweets_file:
        if line is not "\n":
            # using json, we can parse each line into a dictionary "tweet"
            tweet_dict = json.loads(line)
            # store the dictionary representing each tweet in the tweet_list list
            tweet_list.append(tweet_dict)

    # always remember to close file when you don't need it
    tweets_file.close()

    # just to check, let's print the first tweet stored in the list
    print(tweet_list[0])
    print("\n")


    #for key in tweet_list[0]:
    #    print("{0} : {1}".format(key, tweet_list[0][key]))

    # Now, see how we can access info about each tweet by accessing the fields of the tweet_dict using specific keys
    # Check the Twitter API at https://dev.twitter.com/overview/api to learn more about these keys
    for tweet_dict in tweet_list:
        print("\nTWEET: {0}".format(tweet_dict['text']))
        print("LANGUAGE: {0}".format(tweet_dict['lang']))
        print("COUNTRY: {0}".format(tweet_dict['place']['country']) if tweet_dict['place'] is not None else "NONE")     # Note that some keys in a tweet_dict may have value "None"
        print("TIME: {0}".format(tweet_dict['created_at']))
        print("USER: {0}".format(tweet_dict['user']['name']))






