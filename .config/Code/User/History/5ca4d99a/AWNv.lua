
function insertInto(alterationString, position, alteration)
    remaingPart = string.sub(alterationString, position + 1, -1)

    newString = string.format("%s%s%s", alterationString, position, alteration)
    return newString
end


a = "Ola ua"

newA = insertInto(a, 3, "hello")

io.write(newA)
