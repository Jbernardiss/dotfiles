
def sayTwoTimes(func):
    def a():
        func()
        func()
    
    return a

@sayTwoTimes
def sayHi():
    print("Hi")

@sayTwoTimes
def sayHello():
    print("Hello")


sayHi()
print("")
sayHello()