
def sayTwoTimes(func):
    def a(*args, **kwargs):
        func(*args, **kwargs)
        return func(*args, **kwargs)
        print()
    
    return a

@sayTwoTimes
def sayHi():
    print("Hi")

@sayTwoTimes
def sayHello():
    print("Hello")

@sayTwoTimes # sayWhatever = sayTwoTimes(sayWhatever)
def sayWhatever(whatever):
    print(f"{whatever}")
    return f"I said {whatever}"


sayHi()
sayHello()
abc = sayWhatever("ouioui")
print(abc)