

def parseBrowsers(text):
    for string in [" - Chromium", " - Firefox"]:
        titlePos = find(string)
        #parse_text=my_func