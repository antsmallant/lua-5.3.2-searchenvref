local b = 100
local xyz = 10

local function f()
    print(b)
    print(a)

    _ENV.d = 100

    local function m()
        print(b)
        print(x)

        local function n()
            print(b)
            print(x)
        end
    end

    local function g()
        print(xyz)
    end
end

print("----------------------------------------")
print("test1 output:")
local r = assert(debug.searchenvref(f))
if r then
    for k, v in pairs(r) do
        print(k, v)
    end
end

--[[
expect output (kv may not in the sample order):
d       true
print   true
x       true
a       true
]]


print("----------------------------------------")
print("test2 output:")
local function g()
end
local r = debug.searchenvref(g)
print(r)
assert(r == nil)

--[[
expect output:
nil
]]
