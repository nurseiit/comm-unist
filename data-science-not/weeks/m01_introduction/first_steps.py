""""
The code in this file should help you to get familiar with:
variables (integer, float, strings)
lists (arrays)
dictionaries (hash tables)
print statements (to print something from your programme on the console)
Conditional statement (if, then, else)
Loops (for and while)

Instructions:
- check first the "main" at the bottom of this file
- run the file (by right-clicking on the file name in the left hand panel and click "Run...")
- try to understand the output on the console and
how it relates to the code of the main,
- Look at the code of the two functions "play_with_if_and_loops"
 and "play_with_list_ann_dictionaries" and try to understand their code
"""


"""
This is a long comment in Python
It can span multiple lines
"""

# This is a one line comment in Python



def play_with_if_and_loops():
    """
    This function demonstrates if and loop statements in Python
    """
    print("================ For loop ========================================================================")
    for i in range(0, 10, 1):
        print("New iteration of for loop - value of i: {0}".format(i))


    # some variable declarations
    i = 25
    name = "Marco"
    surname = "Comuzzi"

    print("================ If statement ========================================================================")
    if i > 12 and name == "Marco":
        print("Name: {0}; Surname: {1}".format(name, surname))
    else:
        print("something else")

    print("================ While loop ========================================================================")
    while (i < 33):
        print("New iteration of while loop - value of i: {0}".format(i))
        i += 2

def play_with_list_and_dictionary():
    """ This functions demonstrates lists, tuples and dictionaries in Python"""
    """
    Python's 'lists' are datastore structures used to store sequences of variables. They are similar to arrays in Java/C/C++
    Lists are declared using squared brackets []
    Note: "\n" in the print statement makes a new empty line
    """
    print("\n\n================ List manipulation ========================================================================")
    list_one = []                                           # an empty list
    list_one.append(2)                                      # insert an element in the list
    list_one.append(78)                                     # append another element
    var = list_one[1]                                       # access elements of list using indices (starting from 0)
    print("Var: {0}".format(var))
    print(list_one)                                         # print content of list
    list_one.append("John")                                 # note: a list can contain any type values
    print(list_one)
    list_one.remove("John")                                 # remove an element from a list
    print(list_one)
    for value in list_one:                                  # loop on elements of a list
        print("New value found: {0}".format(value))
    """
    Python's 'tuples' are lists that are "immuatble", that is, they cannot be modified after declaration
    They are declared like lists, but using round brackets () instead of []
    """
    print("\n\n================ Tuple manipulation ========================================================================")
    tup = ("Ada", "C++", "Java", "Python", "Javascript")    # a tuple
    print(tup)
    print(tup[2])
    for language in tup:
        print("Found new programming language: {0}".format(language))
    # tup.append("PHP")                                     # try to run this, it won't work, becasue tuples cannot be modified

    """
    Python's 'dictionaries' are maps (or "hash tables"), that is, datastore structures storing pairs (key, value),
    where 'key' and 'value' can be any type of variable
    They can be defined between graph brackets {}
    """
    print("\n\n================ Dictionary manipulation ==================================================================")
    dict_one = {}                                                       # declare empty dictionary
    dict_one["Marco"] = "010-3467-8990"                                 # add a new value for the key "Marco"
    dict_one["Alice"] = "010-7897-6767"
    print(dict_one)                                                     # print content of dictionary
    print("Marco's mobile number is: {0}".format(dict_one["Marco"]))    # access a value using its key
    dict_two = { 25: "Bob", 98 : "James", 67 : 456, 89 : 67}            # dictionaries can hold anything!
    print(dict_two)
    print(str(dict_two[67] + dict_two[89]))
    del dict_two[98]                                                    # remove value from dictionary (identified by its key)
    print(dict_two)

    if 25 in dict_two.keys():                                           # test if key exists in dictionary
        print("Found!")
    else:
        print("Key not found")

    for key in dict_two.keys():                                         # loop on the elements of a dictionary
        print("new element in dictionrary found: {0}".format(dict_two[key]))


"""
This is the "main", that is, this code is executed when you right click on the file in the left hand panel and
click 'Run <file_name> .... give it a try!
"""
if __name__ == '__main__':
    i = 10                                          # an integer variable (note: in Python you do not declare the type of a variable)
    j = 25                                          # an integer variable
    a = 0.7                                         # a float variable
    b = 0.6                                         # another float variable
    name = "Marco"                                  # a string variable (strings are anything between "" or '')
    print(name)                                     # print a string variable on console (standard output)
    print(str(b))                                   # print a number on console - note it has to be converted to string using str()
    print("i + j = {0}".format(i+j))                # more complex print statement - note the positional parameter assignment

    play_with_if_and_loops()

    play_with_list_and_dictionary()
