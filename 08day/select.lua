-- select处理可变参数

print(1)
print(1, 2)
print(1, 2, 3)

print(1, 2, 3, 4, 4, 5, "acv")

-- 定参
local function f1(a, b)
    print(a, b)
end

f1(1, 2)

local function ff(...)
    print(...)
end

ff(1, 2, 3, 4, 5, 5)

-- select(n,...) 表示获取可变参的一部分数据，从第n个位置开始
-- select("#",...) 表示获取可变参的长度

local function f22(...)
    print(select(1, ...))
    print(select(2, ...))
    print(select(3, ...))
    print(select("#", ...))
end

f22(1, 2, 2, 3, 4, 5, 6, 7, 8, 8)
