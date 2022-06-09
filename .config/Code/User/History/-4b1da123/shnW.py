
def sayTwoTimes(func):
    def a(*args, **kwargs):
        func(*args, **kwargs)
        return func(*args, **kwargs)
        print()
    
    return a

@sayTwoTimes # sayWhatever = sayTwoTimes(sayWhatever)
def sayWhatever(whatever):
    print(f"{whatever}")
    return f"I said {whatever}"


abc = sayWhatever("ouioui")
print(abc)