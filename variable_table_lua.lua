local t = {
    literal_key = "a string",
    ["an expression"] = "also works",
    [function() end] = true
}

print("literal_key   : ", t.literal_key)
print("an expression : ", t["an expression"])
print("function() end: ", t[function() end])
