
function insertInto(alterationString, position, alteration)
    newString = alterationString[1, position] .. alteration .. alterationString[position + 1, -1]
    return newString
end


a = "Ola ua"

insertInto(a, 3, "hello")
