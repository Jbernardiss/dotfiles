
function insertInto(alterationString, position, alteration)
    remaingPart = string.sub(alterationString, position, -1)

    newString = string.format("%s%s", alterationString, alteration)
    return newString
end


a = "Ola ua"

newA = insertInto(a, 3, "hello\n")

io.write(newA)
