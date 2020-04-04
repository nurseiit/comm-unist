#!/usr/bin/env python

import argparse, sys, os, shutil, subprocess, time, random
from mrp_solution import Group

test_case_base = os.path.join(os.getcwd(),'test-cases')

def grade(args):
    success = 0
    num_input = 5
    print('prepare to start')

    for i in range(0,num_input):
        inname = os.path.join(test_case_base, '%d-input.txt' % i)
        outname = os.path.join(test_case_base, '%d-output.txt' % i)
        insize = os.stat(inname).st_size

        shutil.copyfile(inname, 'order.txt')
        subprocess.check_call(['python', 'mrp_solution.py'])
        obtained = open('submit.txt', 'r').read()
        ref = open(outname, 'r').read()
        result = obtained == ref
        print('test case %d (%s) (of size %d): %s' % (i, inname, insize, str(result)))
        if result: success += 1

    print("++++++++++++++++++++++++++++++++++++++++++++++++")
    for i in Group.keys():
        print(i + ": " + Group[i])
    print("Test-Cases "+'%d/%d passed' % (success, num_input))

def random_test():
    num_tests = 5
    bikes = ["boringbike", "coolbike"]
    print ("Hey")
    for i in range(0, num_tests):
        inname = os.path.join(test_case_base, '%d-input.txt' % i)
        outname = os.path.join(test_case_base, '%d-output.txt' % i)
        shutil.copyfile(inname, 'order.txt')
        subprocess.check_call(['python', 'mrp_solution.py'])
        shutil.copyfile("submit.txt", outname)

if __name__ == '__main__':
    p = argparse.ArgumentParser()
    p.add_argument('--num',
            type=str,default='',
            help='run only one of the cases')
    args = p.parse_args(sys.argv[1:])
    grade(args)
