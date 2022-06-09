

def parseBrowsers(text):
    for string in [" - Chromium", " - Firefox"]:
        text = text.replace(string, "") 
        return text
        parse_text=my_func