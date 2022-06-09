
from libqtile.command import lazy
from libqtile.log_utils import logger


def sayTwoTimes(func):
    def a(*args, **kwargs):
        func(*args, **kwargs)
        retValue = func(*args, **kwargs)
        print()
        return retValue

    return a

@sayTwoTimes # sayWhatever = sayTwoTimes(sayWhatever)
def sayWhatever(whatever):
    print(f"{whatever}")
    return f"I said {whatever}"


abc = sayWhatever("ouioui")
print(abc)