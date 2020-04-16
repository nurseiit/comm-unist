import operator
from parser import parse_program
import logging

logger = logging.getLogger("interpreter")

class Irreducible(Exception):
    pass

def run(prog, inputs):
    cmd_seq, stack = IF(prog, inputs)
    logger.info('initial config: <{}, {}>'.format(cmd_seq, stack))

    while len(cmd_seq) > 0:
        try:
            execute(cmd_seq, stack)
            logger.info('config: <{}, {}>'.format(cmd_seq, stack))
        except Irreducible:
            break
    logger.info('final config: <{}, {}>'.format(cmd_seq, stack))

    return OF(cmd_seq, stack)

## AUGMENT THIS FUNCTION
def IF(prog, inputs):
    n, cmd_seq = parse_program(prog)
    return cmd_seq, inputs

## AUGMENT THIS FUNCTION
def OF(cmd_seq, stack):
    return stack[0]

## AUGMENT THIS FUNCTION
def execute(cmd_seq, stack):
    cmd = cmd_seq[0]
    if isinstance(cmd, int):
        stack.insert(0, cmd)
        cmd_seq.pop(0)

