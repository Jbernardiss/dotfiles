
function insertInto(alterationString, position, alteration)
    remaingPart = string.sub(alterationString, position, -1)
    alterationString = string.gsub(alterationString, remaingPart, "")

    newString = string.format("%s%s%s", alteration, alterationString)
    return newString
end


a = "Ola ua"

newA = insertInto(a, 3, "hello\n")

io.write(newA)
