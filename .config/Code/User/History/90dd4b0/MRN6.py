

from yaml import parse


def parseBrowsers(text):
    for string in [" - Chromium", " - Mozilla Firefox"]:
        titlePos = text.find(string)

        if titlePos != -1:
            return string.split(2)[1]
        
        #parse_text=my_func

newText = parseBrowsers(" abc ")
newText2 = parseBrowsers(" garry - Mozilla Firefox")


print(newText)
print(newText2)