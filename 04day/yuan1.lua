-- 元表
-- 元表实际还是一张普通的表

local t = { a = 1 }

-- 这里可以定义一个元表

local mt = {
    __add = function(a, b)
        return a.a + b
    end,
}

-- 设置元表
-- 第一个参数是被设置的table
-- 第二个参数是我们设置的matetable
-- 这样t里面的__add这个元方法，就被mt里面的__add这个函数给替换掉了
setmetatable(t, mt)
-- 这里直接打印t+1是会报错的
print(t + 1)

-- 一个比较特殊的元方法
-- __index 这个元方法在元表遇到不存在的key的时候，会调用
-- 一般一个表如果调用了不存在的key，会直接返回nil
-- 设置了这个元方法，返回的就不是了

local t1 = { a = 11 }

local mt1 = {
    __index = function(table, key)
        return 111
    end
}

setmetatable(t1, mt1)
print(t1["qqq"])

-- __index 不仅可以是一个函数
-- 还可以是一个表
-- 当调用t1["abc"]找不到数据的时候
-- Lua就去找元方法__index里面有没有这个key
-- 如果找到，就会输出这个值
local mt2 = {
    __index = {
        abc = 122,
        def = 111,
    }
}

setmetatable(t1, mt2)
print(t1["def"])


-- __newindex
-- 使用这个方法，可以阻止直接给t赋值
-- 这个时候想要赋值，需要调用rawset来进行赋值
-- rawset这个方法在不触发任何元方法的情况下，将table[index]设为value
-- table必须是一张表
local mt3 = {
    __newindex = function(tt, k, v)
        rawset(tt, k, v)
    end
}

local t3 = { a = 111 }
setmetatable(t3, mt3)

t3["abc"] = 11
