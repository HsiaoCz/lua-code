-- 元表与元方法
-- metatable
-- __tostring 用函数接管本表的返回值 返回一个string
-- __call 把表当类处理，此处类似于类中的构造函数，可传值，本表是第一个参数
-- rawget(t1,"phone") 取本表中的index索引对应的值，不受元素干扰，没有就返回nil

local t1 = { id = 123, name = "tom" }

local meta = {}

setmetatable(t1, meta)


meta.__tostring = function(t)
    -- return "tostring"
    local str = ""

    for k, v in pairs(t) do
        str = str .. k .. ":" .. v .. "; "
    end

    t.phone = 12334
    return str
end

print(t1)

print(t1.phone)

-- 类似于构造函数
meta.__call = function(t, ...)
    print(t)
    print(...)

    local t2 = { ... }
    for k, v in pairs(t2) do
        print(k, v)
    end
end

-- rawget(t1,"phone")
