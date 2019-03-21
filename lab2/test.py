#!/usr/bin/env python3
import argparse, sys, os, shutil, subprocess, time

test_case_base = os.path.join(os.getcwd(),'test-cases') 


def test_generic(args,num_inputs):
    if (args.random_input):
        print('%s does not support random testing'%(args.task))
        return
    td = os.path.join(test_case_base,args.task)
    success = 0
    for i in range(0,num_inputs):
        if args.num != '' and int(args.num) != i: continue
        inname = os.path.join(td,'%d-input.txt'%i)
        outname = os.path.join(td,'%d-output.txt'%i)
        insize = os.stat(inname).st_size
        shutil.copy2(inname,'input-classify.txt')
        subprocess.check_call('g++ -std=c++11 -O2 -Wall classify.cpp -o classify'.split())
        subprocess.check_call(['./classify'])
        obtained = open('output-classify.txt','r').read()
        ref = open(outname,'r').read()
        result = obtained == ref
        if args.verbose:
            print('test case %d (%s) (of size %d): %s'%(i,inname,insize,str(result)))
            if(result == False):
                print('stopping to help debugging')
                return
        if result: success += 1
    print('%d/%d passed'%(success,num_inputs))







def test_classify(args):
    test_generic(args,100)

def test_stack(args):
    if (args.random_input):
        print('%s does not support random testing'%(args.task))
        return
    td = os.path.join(test_case_base,args.task)
    success = 0
    num_input = 50
    print('prepare to start')
    st = time.time()
    subprocess.check_call('g++ -std=c++11 -O2 -Wall catch-main.cpp -c -o catch.o'.split())
    print('prepare time: %ds'%(time.time()-st))
    for i in range(0,num_input):
        if args.num != '' and int(args.num) != i: continue
        print('start testing input %d'%i)
        st = time.time()
        inname = os.path.join(td,'%d-input.cpp'%i)
        insize = os.stat(inname).st_size
        shutil.copy2(inname,'input.cpp')
        subprocess.check_call('g++ -std=c++11 -O2 -Wall input.cpp catch.o -o test'.split())
        ret = subprocess.check_call(['./test'])
        result = ret == 0
        print('done testing (%ds)'%(time.time()-st))
        if args.verbose:
            print('test case %d (%s) (of size %d): %s'%(i,inname,insize,str(result)))
            if(result == False):
                print('stopping to help debugging')
                return
        if result: success += 1
    print('%d/%d passed'%(success,num_input))

def test_queue(args):
    if (args.random_input):
        print('%s does not support random testing'%(args.task))
        return
    td = os.path.join(test_case_base,args.task)
    success = 0
    num_input = 50
    print('prepare to start')
    st = time.time()
    subprocess.check_call('g++ -std=c++11 -O2 -Wall catch-main.cpp -c -o catch.o'.split())
    print('prepare time: %ds'%(time.time()-st))
    for i in range(0,num_input):
        if args.num != '' and int(args.num) != i: continue
        print('start testing input %d'%i)
        st = time.time()
        inname = os.path.join(td,'%d-input.cpp'%i)
        insize = os.stat(inname).st_size
        shutil.copy2(inname,'input.cpp')
        subprocess.check_call('g++ -std=c++11 -O2 -Wall input.cpp catch.o -o test'.split())
        ret = subprocess.check_call(['./test'])
        result = ret == 0
        print('done testing (%ds)'%(time.time()-st))
        if args.verbose:
            print('test case %d (%s) (of size %d): %s'%(i,inname,insize,str(result)))
            if(result == False):
                print('stopping to help debugging')
                return
        if result: success += 1
    print('%d/%d passed'%(success,num_input))


def test_textedit(args):
    num_inputs = 100
    if (args.random_input):
        print('%s does not support random testing'%(args.task))
        return
    td = os.path.join(test_case_base,args.task)
    success = 0
    for i in range(0,num_inputs):
        if args.num != '' and int(args.num) != i: continue
        inname = os.path.join(td,'%d-input.txt'%i)
        outname = os.path.join(td,'%d-output.txt'%i)
        insize = os.stat(inname).st_size
        subprocess.check_call('g++ -std=c++11 -O2 -Wall testTextedit.cc -o te'.split())
        subprocess.check_call(['./te',inname,'submit.txt'])
        obtained = open('submit.txt','r').read()
        ref = open(outname,'r').read()
        result = obtained == ref
        if args.verbose:
            print('test case %d (%s) (of size %d): %s'%(i,inname,insize,str(result)))
            if(result == False):
                print('stopping to help debugging')
                return
        if result: success += 1
    print('%d/%d passed'%(success,num_inputs))


    pass

if __name__ == '__main__':
    tasks = ['classify','stack','queue','textedit']
    p = argparse.ArgumentParser()
    p.add_argument('--task',
            type=str,default='',
            help='The name of the task to test (%s)'%(str(tasks)))
    p.add_argument('--random-input',
            action='store_true',
            help='test with randomly generated inputs if possible')
    p.add_argument('--verbose',
            action='store_true',
            help='show more log')
    p.add_argument('--num',
            type=str,default='',
            help='run only one of the cases')

    args = p.parse_args(sys.argv[1:])
    globals()['test_' + args.task](args)

