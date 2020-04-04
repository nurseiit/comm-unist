"""
Quick examples of how to read content of a file by line
Pay attention to "non-readable" characters, such as "new line" ("\n")
"""


file = "help.txt"
with open("help.txt", 'r') as file:                  # file is opened for reading ('r)
    line1 = file.readline()                          # read first line
    line2 = file.readline()                          # read second line
    print(line1)
    print(line2)
    print(line1.strip())                               # strip line1 of non-readable character, such as "\n" at the end
    line_split = line1.split(" ")
    for word in line_split:                             # split content of line in words delimited by white space
        print(word)
    lines = file.readlines()

with open("help.txt", 'r') as file:
    lines = file.readlines()                            # read lines of a file all at once
    for line in lines:
        print("New line found: {0}".format(line))       # iterate through lines using a for loop
