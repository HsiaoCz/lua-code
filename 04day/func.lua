-- lua的func也是第一类值
-- 可以作为参数，可以赋值给变量
-- 函数还可以作为返回值
-- 函数还可以返回多个值
-- python也可以返回多个值
-- python返回的多个值为元组

local function show(a, b)
    print(a, b)
end

show(1, 2)

local a = function(s)
    return s + 1
end

print(a(1))

-- table里面也可以加func

local t = {
    t_show = show,
    t_add = function(q, v)
        return q + v
    end
}

print(t.t_add(1, 2))

-- select 处理可变参数

local function ff(...)
    print(...)
end

ff(1, 2, 3, 4)

-- select(n,...) 表示获取可变参数的部分
-- select("#",...) 获取可变参数的长度

local function fff(...)
    print(select(1, ...))
    print(select(2, ...))
    print(select("#", ...))
end

fff(1, 3, 4, 5, 6, 7, 8)

-- pack 将可变参打包成一个table，且会在最后多出一个n键
-- unpack 将可变参解包