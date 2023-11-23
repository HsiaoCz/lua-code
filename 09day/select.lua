-- lua中的select用来处理可变参数

print(1)
print(1, 2)
print(1, 2, 3, 4)

-- 固定参数的函数
local function f1(a, b)
    print(a, b)
end

f1(1, 2)

local function ff(...)
    print(...)
end

ff(1, 2, 3, 4, 5)

-- select(n,...) 表示获取可变参的一部分数据，从第n个位置开始
-- select("#",...) 表示获取可变参的长度

local function f22(...)
    -- 获取可变参数的一部分数据
    print(select(1, ...))
    -- 获取可变参数的长度
    print(select("#", ...))
end

f22(1, 2, 3, 4, 5, 6, 7, 8)
