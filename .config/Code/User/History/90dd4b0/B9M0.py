

from yaml import parse


def parseBrowsers(text):
    for string in [" - Chromium", " - Mozilla Firefox"]:
        titlePos = text.find(string)
        titleFinPos = text.rfind(string)

        if titlePos != -1:
            newString = f" {string.replace(" - ", "")}"
        
        #parse_text=my_func

newText = parseBrowsers(" abc ")
newText2 = parseBrowsers("garry - Mozilla Firefox")


print(newText)
print(newText2)