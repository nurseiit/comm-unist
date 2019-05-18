#!/usr/bin/env python3

import argparse, sys, os, shutil, subprocess, time

test_case_base = os.path.join(os.getcwd(),'test-cases')

sp_out = sys.stdout

def common_test(args, submission):
    td = os.path.join(test_case_base)
    success = 0
    num_input = 100
    bin_name = submission.split('.')[0] + '.bin'
    out_name = submission.split('.')[0] + '.out'
    basename = submission.split('.')[0]
    
    if(args.asan): asan = '-fsanitize=address'
    else: asan = ''
    
    if not args.summarize: print('prepare to start')
    comments = ''
    try:
        subprocess.check_call(
                ('g++ -std=c++11 -O2 -Wall %s FlightMap.cpp %s -o %s'%(asan,submission,bin_name)).split(),
                stdout=sp_out,stderr=subprocess.STDOUT)
        has_bin = True
    except subprocess.CalledProcessError:
        comments += 'failed to compile the submission\n'
        has_bin = False

    for i in range(num_input):
        if not has_bin: continue
        if args.num != '' and int(args.num) != i: continue
        #inname = os.path.join(td, '%d.bin' % i)
        graph_name = os.path.join(td, '%d-graph.txt' % i)
        rm_airname = os.path.join(td, '%d-removeAirport.txt' % i)
        rm_conname = os.path.join(td, '%d-removeConnection.txt' % i)
        dij_name = os.path.join(td, '%d-dijkstra.txt' % i)
        ref_name = os.path.join(td, '%d-output.txt' % (i))
        refdij_name = os.path.join(td, '%d-output-dijkstra.txt' % (i))
        try: 
            subprocess.check_call(['./' + bin_name, graph_name, rm_airname, rm_conname, out_name, dij_name, ref_name, refdij_name],
                    stdout=sp_out,stderr=subprocess.STDOUT,timeout=30)
        except subprocess.CalledProcessError:
            comments += '(%d): the program ended abnormally\n' % i
            continue
        except subprocess.TimeoutExpired:
            comments += '(%d): timeout expired (30 sec)\n' % i
            continue


        try:
            obtained = open(out_name, 'r').read()
        except FileNotFoundError:
            comments += '(%d): could not find the output file %s\n'%(i,out_name)
            continue

        if basename == 'driver-graph':
            ref = open(ref_name, 'r').read()
        if basename == 'driver-dijkstra':
            ref = open(refdij_name, 'r').read()
        result = obtained == ref
        if not args.summarize:
            if (result == False):
                print('stopping to help debugging')
                print('stop after %d successes' % success)
                debug_name = submission.split('.')[0] + '.txt'
                subprocess.check_call(['./' + bin_name, graph_name, rm_airname, rm_conname, debug_name, dij_name, refdij_name],
                    stdout=sp_out,stderr=subprocess.STDOUT,timeout=30)
                return
        if result:
            success += 1
            print('Test case %d passed' % i)
    print('%d/%d passed' % (success, num_input))
    print(comments)

def test_graph(args):
    common_test(args,'driver-graph.cpp')

def test_dijkstra(args):
    common_test(args,'driver-dijkstra.cpp')

if __name__ == '__main__':
    tasks = ['graph', 'dijkstra']
    p = argparse.ArgumentParser()
    p.add_argument('--task',
            type=str,default='',
            help='The name of the task to test (%s)'%(str(tasks)))
    p.add_argument('--verbose',
            action='store_true',
            help='show more log')
    p.add_argument('--num',
            type=str,default='',
            help='run only one of the cases')
    p.add_argument('--summarize',
            action='store_true',help='print the summary only for grading')
    p.add_argument('--asan',
        action='store_true')

    args = p.parse_args(sys.argv[1:])


    if args.summarize:
        sp_out = subprocess.DEVNULL

    globals()['test_' + args.task](args)