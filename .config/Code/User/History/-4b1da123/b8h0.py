
def saySometing(func):
    def a():
        print("I'm inside the wrapper")
        func()
    
    return a


@saySometing
def sayHi():
    print("Hi")

@saySometing
def sayHello():
    print("Hello")

sayHi()
sayHello()