
function insertInto(alterationString, position, alteration)
    newString = alterationString[1, position] .. alteration .. alterationString[position + 1, -1]
    return newString
end


io.write(a)

io.write("Enter your name: \n")

io.write("\u{2135} First: ")
firstName = io.read()
io.write("Last: ")
lastName = io.read()

fullName = firstName .. " " ..  lastName
io.write("Full Name: " .. fullName .. "\n")

