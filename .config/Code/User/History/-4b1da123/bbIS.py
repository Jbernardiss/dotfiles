
def saySometing(func):
    def a():
        print("I'm inside the wrapper")
        func()
    
    return a


@saySometing
def sayHi():
    print("Hello")


sayHi()