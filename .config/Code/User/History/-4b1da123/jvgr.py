
def saySometing(func):
    def a():
        func()
    
    return a