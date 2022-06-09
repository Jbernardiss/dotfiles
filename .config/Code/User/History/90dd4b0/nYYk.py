

def parseBrowsers(text):
    for string in [" - Chromium", " - Mozilla Firefox"]:
        titlePos = text.find(string)

        if titlePos != -1:
            return string 
        
        #parse_text=my_func