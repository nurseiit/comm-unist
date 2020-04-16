import operator
from parser import parse_program
import logging

logger = logging.getLogger("interpreter")


class Postfix:
    def __init__(self):
        self.commands = 'sub add mul div rem lt pop swap sel nget exec'.split()

    def run(self, prog, inputs):
        cmds, stack = self.IF(prog, inputs)
        logger.info(f'initial config: <{cmds}, {stack}>')

        try:
            while len(cmds) > 0:
                cmd = cmds[0]
                self.execute(cmd, cmds, stack)
                logger.info(f'config: <{cmds}, {stack}>')

            logger.info(f'final config: <{cmds}, {stack}>')
            return self.OF(stack)

        except Exception:
            return 'error'

    def IF(self, prog, inputs):
        _, cmd_seq = parse_program(prog)
        return cmd_seq, inputs

    def OF(self, stack):
        if not stack or not isinstance(stack[0], int):
            return 'error'
        return stack[0]

    def execute(self, cmd, cmds, stack):
        if isinstance(cmd, int):
            stack.insert(0, cmd)
            cmds.pop(0)
        elif isinstance(cmd, list):
            stack.insert(0, cmd)
            cmds.pop(0)
        elif cmd in self.commands:
            if cmd == 'sub':
                v1 = stack.pop(0)
                v2 = stack.pop(0)
                result = v2 - v1
                stack.insert(0, result)
            elif cmd == 'add':
                v1 = stack.pop(0)
                v2 = stack.pop(0)
                result = v1 + v2
                stack.insert(0, result)
            elif cmd == 'mul':
                v1 = stack.pop(0)
                v2 = stack.pop(0)
                result = v1 * v2
                stack.insert(0, result)
            elif cmd == 'div':
                v1 = stack.pop(0)
                v2 = stack.pop(0)
                result = v2 // v1
                stack.insert(0, result)
            elif cmd == 'rem':
                v1 = stack.pop(0)
                v2 = stack.pop(0)
                result = v2 % v1
                stack.insert(0, result)
            elif cmd == 'lt':
                v1 = stack.pop(0)
                v2 = stack.pop(0)
                result = 1 if v2 < v1 else 0
                stack.insert(0, result)
            elif cmd == 'pop':
                stack.pop(0)
            elif cmd == 'swap':
                v1 = stack.pop(0)
                v2 = stack.pop(0)
                stack.insert(0, v1)
                stack.insert(0, v2)
            elif cmd == 'sel':
                v1 = stack.pop(0)
                v2 = stack.pop(0)
                v3 = stack.pop(0)
                if not isinstance(v3, int):
                    raise Exception()
                result = v1 if v3 == 0 else v2
                stack.insert(0, result)
            elif cmd == 'nget':
                vi = stack.pop(0)
                if not (1 <= vi <= len(stack)) or not isinstance(stack[vi - 1], int):
                    raise Exception()
                result = stack[vi - 1]
                stack.insert(0, result)
            elif cmd == 'exec':
                v1 = stack.pop(0)
                if not isinstance(v1, list):
                    raise Exception()
                cmds.pop(0)
                cmds[0:0] = v1
            if cmd != 'exec':
                cmds.pop(0)


def run(prog, inputs):
    postfix = Postfix()
    return postfix.run(prog, inputs)
