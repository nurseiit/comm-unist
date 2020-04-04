"""
Your task today is very simple: you have to write a few lines of code in the main.
Scroll down to the main to check your task...
"""

import hashlib
import json
from time import time
from multiprocessing import cpu_count, Pool


def read_data(file_name):
    with open(file_name, 'r') as read_file:
        students = json.load(read_file)

    # count number of students
    students_num = len(students)
    print("Number of students: {0}".format(students_num))
    return students


def slice_data(student_list, cores):
    # number of cores
    slice_num = cores - 1
    students_num = len(student_list)

    # slice the datastore
    student_slices = []
    per_slice = students_num // slice_num

    processed = 0
    for i in range(slice_num):
        # if processed + per_slice  < students_num:
        if i < slice_num - 1:
            slice = student_list[per_slice * i: per_slice * (i + 1)]
            processed += len(slice)
        else:
            slice = student_list[per_slice * i:students_num]
        student_slices.append(slice)

    return student_slices


def work(student_list):
    # count number of students for which both id and age are even numbers
    counter = 0
    out = 0
    for s1 in student_list:
        counter += 1
        # print some progress info
        if counter % 100 == 0:
            print("processing ...{0}/{1}".format(counter, len(student_list)))
        found = False
        nonce = 0
        # Find nonce such that the hash of the string age+id+nonce contains "000" (computationally intensive task)
        while not found:
            nonce += 1
            hash_object1 = hashlib.sha1(str(s1['age'] + s1['id'] + nonce).encode())
            hex_dig1 = hash_object1.hexdigest()
            # print(hex_dig1)
            if containsAny(hex_dig1, ["000"]):
                found = True
                # Sum all the nonces found
                out += nonce
    return out


def integrate(results):
    return sum(results)


def containsAny(str, set):
    """ Check whether sequence str contains ANY of the items in set. """
    return 1 in [c in str for c in set]


if __name__ == '__main__':
    # read data
    students = read_data('students.json')

    """
    Your task is to write some code here to do the "work" on all students in "students".
    The "work" function does some stupid but computationally intensive computations on each student. It is given.

    The slice_data() function is supposed to partition the students into X sets, where X is the number 
    of CPUs on your computer. You have to complete it above.

    The integrate() function is given (as you can see, the final result is simply the sum of all the results
    returned by each indvidual CPU)

    You have to complete the main below to 
    (i) run a non-parallel (1 core only) of work()
    (ii) run parallel (many cores) version of it using pool, map etc. and compare the 
    execution time. 
    """
    def slow():
        print ('Starting single core...')
        start = time()
        print(work(students))
        print ('Done in %f seconds!' % (time() - start))

    def fast():
        print ('Starting multicore...')
        start = time()
        cores = cpu_count()
        slices = slice_data(students, cores)
        pool = Pool(cores)
        results = pool.map(work, slices)
        pool.close()
        pool.join()
        print (integrate(results))
        print ('Done in %f seconds!' % (time() - start))
    slow()
    fast()
