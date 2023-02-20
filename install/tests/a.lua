local b = 100;
local function f()
    print(b);
    print(a);
end

local function g()
end

print(debug.searchenvref(f))

print(debug.searchenvref(g))