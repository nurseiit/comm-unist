#!/usr/bin/env python

Group = {
    "GROUP_NAME": "Spaghetti",
    "GROUP_MEMBER_1": "20182022, Yerkebulan Pansat",
    "GROUP_MEMBER_2": "20172001, Nurseiit Abdimomyn"
}

import re
import json
import matplotlib.pyplot as plt

def read_file(file_name):
    tweets = []
    with open(file_name, 'r') as f:
        for line in f:
            df = json.loads(line)
            place = 'Unknown'

            if df['place'] != None:
                place = df['place']['country']

            good = {
                'text': df['text'],
                'lang': df['lang'],
                'place':  place
            }
            tweets.append(good)
    return tweets

def draw_most_languages(tweets):
    count = {}
    for tweet in tweets:
        lang = tweet['lang']
        if not lang in count:
            count[lang] = 0
        count[lang] += 1

    most = []
    for lang in count:
        now = [count[lang], lang]
        most.append(now)

    most = list(reversed(sorted(most)))
    if len(most) > 5:
        most = most[:5]

    heights = []
    labels  = []
    for [height, label] in most:
        heights.append(height)
        labels.append(label)

    # plotting
    fig, axes = plt.subplots()
    plt.bar(labels, height=heights)
    plt.title('5 most used languages')

    plt.show()

def draw_most_places(tweets):
    count = {}
    for tweet in tweets:
        place = tweet['place']
        if place == 'Unknown':
            continue
        if not place in count:
            count[place] = 0
        count[place] += 1

    most = []
    for place in count:
        now = [count[place], place]
        most.append(now)

    most = list(reversed(sorted(most)))
    if len(most) > 5:
        most = most[:5]

    heights = []
    labels  = []
    for [height, label] in most:
        heights.append(height)
        labels.append(label)
    # plotting
    fig, axes = plt.subplots()
    plt.bar(labels, height=heights)
    plt.title('5 most tweeted places')

    plt.show()

def print_count_relevant(tweets):
    keywords = []
    with open('relevant_keywords.txt', 'r') as f:
        line = f.readline()
        keywords = list(map(lambda x: x.strip(), line.split(',')))

    english = list(filter(lambda x: x['lang'] == 'en', tweets))

    def check_relevant(tweet):
        text = tweet['text']
        for keyword in keywords:
            if keyword in text:
                return True
        return False

    relevant = list(filter(check_relevant, english))

    print ('Number of English tweets: %d' % len(english))
    print ('Number of relevant tweets among them: %d' % len(relevant))

def draw_relevant(tweets):
    english = list(filter(lambda x: x['lang'] == 'en', tweets))
    keywords = ['python', 'java', 'c++', 'golang', 'javascript', 'kotlin']

    def count(keyword):
        result = 0
        for tweet in english:
            text = tweet['text']
            if keyword in text:
                result += 1
        return result

    relevant = list(map(count, keywords))

    # plotting
    fig, axes = plt.subplots()
    plt.bar(keywords, height=relevant)
    plt.title('relevant tweets in English')

    plt.show()

def save_count_links(tweets):
    english = list(filter(lambda x: x['lang'] == 'en', tweets))
    languages = ['python', 'java', 'c++', 'golang', 'javascript', 'kotlin']

    def all_relevants(language):
        def is_relevant(tweet):
            text = tweet['text']
            return language in text
        return list(filter(is_relevant, english))

    def get_all_urls(tweet):
        text = tweet['text']
        expr = 'http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\(\), ]|(?:%[0-9a-fA-F][0-9a-fA-F]))+'
        return re.findall(expr, text)

    relevants = list(map(all_relevants, languages))
    size = len(languages)

    for i in range(size):
        lang = languages[i]
        relevant = relevants[i]
        all_urls = list(map(get_all_urls, relevant))
        count = 0
        with open('%s.txt' % lang, 'w') as f:
            for urls in all_urls:
                for url in urls:
                    count += 1
                    f.write(url)
                    f.write('\n')
        print ('Found and Saved %d links for %s' % (count, lang))


def main():
    tweets = read_file('tweets.json')
    draw_most_languages(tweets)
    draw_most_places(tweets)
    print_count_relevant(tweets)
    draw_relevant(tweets)
    save_count_links(tweets)

if __name__ == '__main__':
    main()
