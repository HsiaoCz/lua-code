-- function是一种基本的数据类型
-- 是第一类值

local a = function()
    print("hello")
end

a()

-- 传递参数
local b = function(s, b, c)
    print(s, b, c)
end

b(1, 2, 3)

-- 返回值
local function hello(ss, cc, dd)
    return ss, cc, dd, "hello", "world"
end

print(hello(11, 22, 33))

-- 可变参数
local function mi(...)
    print(...)
end

mi(1, 2, 3, 4)

-- 函数可以赋值给变量
local mm=function (as)
    print(as)
end

mm(12)

-- 函数作为其他函数的参数
-- 函数可以作为其他函数的返回值