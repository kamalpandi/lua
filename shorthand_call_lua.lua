local single_string = function(s)
    return s .. " - WOW!" -- explain this part
end

local x = single_string("hi                          1")
local y = single_string "hi"
print(x, y)
