local vector_mt = {}
vector_mt.__add = function(left, right)
  return setmetatable({
    left[1] + right[1],
    left[2] + right[2],
    left[3] + right[3],
  }, vector_mt)
end

local v1 = setmetatable({ 3, 1, 5 }, vector_mt)
local v2 = setmetatable({ -3, 2, 2 }, vector_mt)
local v3 = v1 + v2
print(v3[1], v3[2], v3[3])  -- Correct: Prints 0 3 7

local v4 = v3 + v3
print(v4) -- This prints the *table itself*, not its contents

-- To print the contents of v4, you need to do this:
print(v4[1], v4[2], v4[3]) -- Correct way to print the elements of v4