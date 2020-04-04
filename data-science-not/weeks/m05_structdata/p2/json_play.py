"""
Your task today is to "play" using data in the JSON file format

NOTE: once you open a JSON file in PyCharm, you can format in a pretty and readable fly using Ctrl+Alt+L

A couple of interesting tutorials about JSON in Python:
https://www.programiz.com/python-programming/json  (very minimal tutorial)
https://realpython.com/python-json/  (you can stop at encoding/decoding custom types, it may get complicated from there...)

"""
import json
import os
import re

def create_user_info_todo_list(todo_file, output_file_name):
    """
    This function reads the content of of a json file todo_file
    (an example is provided: todos.json)
    and returns a JSON
    object with information about users in the form:
    [{
        "userId": 1,
        "number": 24,
        "completed": 12,
        "incomplete": 12
     }
     {
        "userId": 2,
        ...
     }
    ...]

    As you can see, for each user, the total number of todos,
    number of completed todos, and number of incomplete todos
    are recorded

    Before returning, the function also dumps the created JSON object
    onto a file "output_file_name".json
    """
    file = open(todo_file, 'r')
    datastore = json.load(file)
    rec = []
    for i in range(10):
        rec.append({'userId': i+1, 'number': 0, 'completed' : 0, 'incomplete' :0})
        for j in datastore:
            if j['userId'] == rec[i]['userId']:
                rec[i]['number'] += 1
                if j['completed']:
                    rec[i]['completed'] += 1
                else:
                    rec[i]['incomplete'] += 1
    ofile = open(output_file_name,'w')
    json.dump(rec, ofile)


def count_busy_users(todo_file, num):
    """

    This function reads the content of a JSON file todo_file
    and counts the number
    of users with a number of incomplete todos equal to or greater than num

    Note: it may be convenient to use the output of the function
    create_user_info_todo_list to speed up the implementation of
    this function
    """
    create_user_info_todo_list(todo_file, "test.json")
    file = open("test.json", 'r')
    data = json.load(file)
    cnt = 0
    for i in data:
        if i["incomplete"] >= num:
            cnt += 1
    file.close()
    os.remove("test.json")
    return cnt


def create_user_info_blogs(blogs_file, output_file_name):
    """
    This function reads the content of a JSON file blogs_file
    (an example blogs.json is provided) and returns a JSON object
    recording =, for each users, the total number of words
    of their posts (i.e., the sum of all the number of words of all
    the posts that a user has made) and the number of posts:
    [{
        "userId": 1,
        "number_of_posts": 7,
        "words": 453,

     }
     {
        "userId": 2,
        ...
     }
    ...]

    Before returning, this function also dumps the content of the
    created JSON object in the file named "output_file_name".json
    """
    ifile = open(blogs_file, 'r')
    data = json.load(ifile)
    rec = []
    for i in range(10):
        rec.append({'userId': i+1, 'number_of_posts': 0, 'words':0})
        for j in data:
            if j['userId'] == rec[i]['userId']:
                rec[i]['number_of_posts'] += 1
                wrd = re.split(' |\t|\n', j['body'])
                rec[i]['words'] += len(wrd)
    ofile = open(output_file_name, 'w')
    json.dump(rec, ofile)





def _number_of_words(s):  # simple function to calculate number of words in post
    s_split = s.split(" ")
    return len(s_split)


if __name__ == '__main__':
    create_user_info_todo_list("todos.json", "todos_output.json")

    print("Busy users: {0}".format(count_busy_users("todos.json", 10)))  # there should be 6 busy users

    create_user_info_blogs("blogs.json", "blogs_output.json")
