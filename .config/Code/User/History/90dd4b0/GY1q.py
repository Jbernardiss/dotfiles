

def parseBrowsers(text):
    for string in [" - Chromium", " - Firefox"]:
        titlePos = text.find(string)

        if titlePos == -1:
            continue
        
        
        #parse_text=my_func