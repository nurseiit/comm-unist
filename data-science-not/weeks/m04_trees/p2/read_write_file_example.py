"""
Here we demonstrate how to create a file, write something in that file, and read datastore from a file.
This mini-tutorial is useful to complete the exercises of this week and also assignment n.2 (MRP)
"""



if __name__ == '__main__':
    """Open a file (in write mode)
    if the file does not exist, it will be created. If it exists, then whatever you write in it after opening
    will overwrite the existing content"""

    file_name = "file.txt"                              # can be any existing path on your computer!
    file = open(file_name, "w")                         # the file is now open in write ("w") mode
    string1 = "Let's write this in the file"
    string2 = "...and then let's also write this!"
    print("writing file {0} ...".format(file_name))
    file.write(string1)                                 # Let's write the 2 strings in the file
    file.write(string2)
    print("...done!")
    file.close()                                        # always "close" files when no longer needed
    """ now check the content of file.txt!"""

    input("Type enter to continue...")

    """"# Now let's open a file
    In the file read.txt, each line contains some datastore separated by the character "comma" (',')"""

    read_file_name = "read.txt"
    print("Let's open the file {0}...".format(read_file_name))
    read_file = open(read_file_name, "r")
    for line in read_file.readlines():                                  # read lines in file one by one
        print("===== This is the next entire line: {0}".format(line))
        values = line.split(',')                                        # split the line using separator ','
        for value in values:
            value = value.strip()                                       # IMPORTANT: always use strip() to 'strip' all non readable characters from a string (e.g. end of line, end of file etc.)
            print("New value found in line: {0}".format(value))
    read_file.close()                                                   # always "close" files when no longer needed



