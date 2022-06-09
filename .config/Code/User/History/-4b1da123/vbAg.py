
from operator import mul
from libqtile.command import lazy
from libqtile.log_utils import logger


@lazy.function
def multiply(qtile, value, multiplier=10):
    logger.warning(f"Multiplication results: {value * multiplier}")
    lazy.spawn("kitty")


multiply(10, multiplier=2)
