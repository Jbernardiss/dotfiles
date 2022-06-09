
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


sayHi()
sayHello()