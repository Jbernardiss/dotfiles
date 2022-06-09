
def sayTwoTimes(func):
    def a():
        func()
        func()
        print()
    
    return a

@sayTwoTimes
def sayHi():
    print("Hi")

@sayTwoTimes
def sayHello():
    print("Hello")

@sayTwoTimes
def sayWhatever(whatever):
    print(f"{whatever}")


sayHi()
sayHello()