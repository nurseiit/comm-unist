#!/usr/bin/env python3

import random

def emit_test_one(max_len_list,len_cmd_min,len_cmd_max,no_exception):

    header = '''
    #define CATCH_CONFIG_MAIN
    #include "catch.hpp"
    #include "DoublyLinkedList.h"
    #include <list>
    #include <stdexcept>
    using namespace std;
    '''

    '''
    Test cases
    1. Max length
    2. 
    '''


    ops = {
            'empty': {'args': [], 'delta_len': 0, 'returns': False},
            'front': {'args': [], 'delta_len': 0, 'returns': True},
            'back': {'args': [], 'delta_len': 0, 'returns': True},
            'add_front': {'args': [range(0,9999)], 'delta_len': 1, 'returns': False},
            'remove_front': {'args': [], 'delta_len': -1, 'returns': False},
            'add_back': {'args': [range(0,9999)], 'delta_len': 1, 'returns': False},
            'remove_back': {'args': [], 'delta_len': -1, 'returns': False},
            'get_size': {'args': [], 'delta_len': 0, 'returns': True}
            }


    body = ''

    body += '''
    list<int> ref;
    DoublyLinkedList submit;
    int ret_ref;
    int ret_submit;\n'''

    len_list = 0
    keys = ops.keys()
    ret_period = 3
    last_ret = 0
    len_cmd = 0
    max_len_list_observed = 0
    num_require = 0
    while True:
        while True:
            op = random.choice(list(keys))
            if last_ret > ret_period and ops[op]['returns'] == False: 
                continue
            if len_list >= max_len_list and ops[op]['delta_len'] > 0:
                continue
            if ( (no_exception) and len_list == 0 and 
                    (ops[op]['delta_len'] == -1 or op in ['front','back'])):
                continue
            break
        if ops[op]['returns'] == False:
            last_ret += 1
        else:
            last_ret = 0
        args = ''
        for a in ops[op]['args']:
            args += ',' + str(random.choice(a))
        args = args[1:]
        submit = 'submit.%s(%s)'%(op,args)
        op_ref = (
                op.replace('add','push').replace('remove','pop').replace('get_size','size'))
        ref = 'ref.%s(%s)'%(op_ref,args)
        require = ''
        if ops[op]['returns']:
            submit = 'ret_submit = ' + submit
            ref = 'ret_ref = ' + ref
            require = 'REQUIRE( ret_ref == ret_submit);'
            num_require += 1

        len_cmd += 1

        if (len_list == 0) and (
                ops[op]['delta_len'] == -1 or op in ['front','back']):
            len_list = 0
            submit = 'CHECK_THROWS_AS( %s , runtime_error );' %(submit)
            #ref = 'CHECK_THROWS_AS( %s, runtime_error );' % (ref)
            ref = ''
            if require != '':
                num_require -= 1
                require = ''

        else:
            len_list += ops[op]['delta_len']
            submit += ';'
            ref += ';'
            

        submit = '    ' + submit
        ref = '    ' + ref
        if require != '':
            require = '    ' + require
            require = '//num_require: %d\n'%(num_require) + require
        body += '\n//' + '=' * 30 + '\n'
        body += (submit + '\n' + ref + '\n' + 
                 require + '\n')
        body += '//' + 'len_list: %d'%len_list + '\n'
        body += '//' + '=' * 30 + '\n\n'
        
        if len_list > max_len_list_observed:
            max_len_list_observed = len_list
        if (len_cmd > len_cmd_max or 
                (len_cmd > len_cmd_min  and max_len_list_observed >
                    max_len_list)):
            break



    tc_begin = (
    'TEST_CASE( "test list with (max_len_list, len_cmd) = (%s,%s)") {\n' 
    % (max_len_list_observed, len_cmd))



   
    

    tc_end = '\n}\n'
    return header + tc_begin + body + tc_end
if __name__ == '__main__':

    max_len_list = random.choice(range(10,500)) 
    min_len_cmd = random.choice(range(3,30)) 
    max_len_cmd = random.choice(range(50,2000)) 
    enable_exception = random.choice([True,False]) 
    open('.test.cpp','w').write(emit_test_one(max_len_list,min_len_cmd,max_len_cmd,enable_exception))

