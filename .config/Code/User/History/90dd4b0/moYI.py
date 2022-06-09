

def parseBrowsers(text):
    for string in [" - Chromium", " - Firefox"]:
        titlePos = text.find(string)
        #parse_text=my_func