import logging

logger = logging.getLogger("checker")


def type_check(prog, prog_type):
    logger.info('prog: {}'.format(prog))
    logger.info('prog_type: {}'.format(prog_type))
