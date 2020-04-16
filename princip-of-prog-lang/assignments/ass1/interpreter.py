import operator
from parser import parse_program
import logging

logger = logging.getLogger("interpreter")


class Irreducible(Exception):
    pass


class Postfix:
    def __init__(self):
        # todo
        self.command = 'sub add mul div rem'.split()

    def run(self, prog, inputs):
        cmd_seq, stack = self.IF(prog, inputs)
        logger.info('initial config: <{}, {}>'.format(cmd_seq, stack))

        while len(cmd_seq) > 0:
            try:
                self.execute(cmd_seq, stack)
                logger.info('config: <{}, {}>'.format(cmd_seq, stack))
            except Irreducible:
                break
        logger.info('final config: <{}, {}>'.format(cmd_seq, stack))

        return self.OF(cmd_seq, stack)

    def IF(self, prog, inputs):
        _, cmd_seq = parse_program(prog)
        return cmd_seq, inputs

    def OF(self, cmd_seq, stack):
        return stack[0]

    def execute(self, cmd_seq, stack):
        cmd = cmd_seq[0]
        if isinstance(cmd, int):
            stack.insert(0, cmd)
            cmd_seq.pop(0)


def run(prog, inputs):
    postfix = Postfix()
    return postfix.run(prog, inputs)
