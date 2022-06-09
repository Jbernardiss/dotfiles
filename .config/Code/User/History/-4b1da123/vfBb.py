
def sayTwoTimes(func):
    def a():
        func()
        func()
    
    return a

@saySometing
def sayHi():
    print("Hi")

@saySometing
def sayHello():
    print("Hello")

sayBye()

@saySometing
sayBye()

sayHi()
sayHello()