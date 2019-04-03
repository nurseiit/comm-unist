#!/usr/bin/env python3

import subprocess, sys, os, multiprocessing, argparse

p = argparse.ArgumentParser()
p.add_argument('--num',
        type=str,default='')
p.add_argument('--mult',
        action='store_true')
p.add_argument('--asan',
        action='store_true')

args = p.parse_args(sys.argv[1:])

sp_out = subprocess.DEVNULL
def build(index):
    execname = '%d-test'%index
    srcname = 'testTree.cc'
    if(args.asan): asan = '-fsanitize=address'
    else: asan = ''
    cmd = 'g++ -O2 -Wall %s -std=c++11 testTree.cc -o %s'%(asan,execname)
    
    sp_out = sys.stdout
    try:
        subprocess.check_call(cmd.split(),
                stdout=sp_out,stderr=subprocess.STDOUT)
    except subprocess.CalledProcessError:
        return False
    return True

def run(args):
    index = args[0]
    testdir = args[1]
    execname = '%d-test'%index
    in_name = '%s/%d-tree.txt'%(testdir,index)
    assign_name = '%s/%d-assign.txt'%(testdir,index)
    ref_name = '%s/%d-output.txt'%(testdir,index)
    out_name = '%d-submit.txt'%(index)

    cmd = './%s %s %s'%(execname,in_name,assign_name)
    try:
        out_str = subprocess.check_output(
                cmd.split(),
                timeout=60).decode('utf-8')
    except subprocess.CalledProcessError:
        os.unlink(execname)
        return (0,1,['the program ended abnormally'])
    except subprocess.TimeoutExpired:
        os.unlink(execname)
        return (0,1, ['timeout expired (60sec)'])

    ref = open(ref_name,'r').read().split('\n')
    #print(out_str)
    submit = out_str.split('\n')
    report = []
    passed = 0
    ref_lines = 0
    for i in range(0,len(ref)):
        ref_lines += 1
        if len(submit) < i+1:
            report.append(
                'failed to find the line %d from submit for input %d'%(i,index))
        elif ref[i] != submit[i]:
            report.append(
                'line %d of the output does not match with the reference for input %d'%(i,index))
        else:
            report.append('')
            passed += 1
    os.unlink(execname)
    return (passed,ref_lines,report)

comments = []
success = 0
num_input = 100
earned = 0.0
if(args.mult):
    num_workers = multiprocessing.cpu_count()
else:
    num_workers = 1
if args.num == '':
    to_run = range(0,num_input)
else:
    print('testing %s'%args.num)
    to_run = [int(args.num)]
num_tests = len(to_run)
with multiprocessing.Pool(num_workers) as p:
    ret = p.map(build,to_run)
    #to_run = range(0,num_input)
    for i in range(0,len(ret)):
        if not ret[i]:
            comments.append('failed to build input %d'%i)
            to_run.pop(i)
    to_run = zip(to_run,['test-case'] * len(to_run))
    ret = p.map(run,to_run)
    for r in ret:
        passed,ref,comment = r
        earned += passed/ref
        for c in comment:
            if c != '':
                comments.append(c)
print('%.2f/%d'%(earned,num_tests))
for c in comments:
    print(c)




