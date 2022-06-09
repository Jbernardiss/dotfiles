
def saySometing(func):
    def a():
        print("I'm inside the wrapper")
        func()
    
    return a

def sayHi():
    print("Hello")

sayHi = saySometing(sayHi)

sayHi()