
def saySometing(func):
    def a():
        func()
    
    return a

def sayHi():
    print("Hello")

sayHi = saySometing(sayHi)

sayHi()