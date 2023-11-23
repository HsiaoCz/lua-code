-- 使用pack处理可变参
-- table.pack(...)将可变参打包成一个table，且会在最后多出一个n键
-- 其对应的值是可变参的参数个数

local function f22(...)
    local t1 = table.pack(...)
    local sum = 0
    for k, v in pairs(t1) do
        if k ~= "n" then
            sum = sum + v
        end
        print(k, v)
    end
    print(table.pack(...))
    return sum
end

print(f22(1, 2, 3, 4, 5, "123"))
-- table.unpack()解包
local function f33()
    return 1, 2, 3
end

print(f33())

local a, b, c = f33()
print(a, b, c)


local function f44()
    return table.pack(1, 2, 3, 4, 5)
end

print(table.unpack(f44()))
print(table.unpack(f44(), 1, 4))
