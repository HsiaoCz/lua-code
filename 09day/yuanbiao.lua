-- 元表与元方法
-- 元表metatable
-- 元表并不是一个普通的表
-- 而是一套自定义的计算规则，用这些规则，可以实现表与表之间的运算
-- 而这些规则，都以函数的方式，写在元表中，所以又称为元方法（就是写在元表里面的方法）
-- 起到一个类似其他语言中的运算符重载的作用

local t1 = { 1, 2, 3, 4, 5 }
local t2 = { 111, 222, 333, 444 }

local metaT3 = {}

setmetatable(t1, metaT3)
setmetatable(t2, metaT3)

metaT3._add = function(tab1, tab2)
    local len1 = #tab1
    local len2 = #tab2
    local rs = {}
    if len1 > len2 then
        len2 = len1
    end
    for i = 1, len2 do
        local a = t1[i] or 0
        local b = t2[i] or 0
        rs[i] = a + b
    end
    return rs
end

local t3 = t1 + t2

metaT3._sub = function(tab3, tab4)
    print(tab3, tab4)
end

-- 元表与元方法
-- __index 当在一个表中，去取某个key，如果该表中有对应的key，就直接返回
-- 如果没有，看有没有元表，没有元表，返回nil，如果有元表，看元表中有没有__index，没有返回nil
-- 如果有__index,如果__index是个表，并且有key,返回值，没有返回nil
-- 如果__index是一个function，则直接调用该function，且表和key都会作为该function的参数

-- __newindex
-- 如果是表，则在本表里设一个key的时候，会写道_-newindex对应的表中
-- 如果是function，则直接调用本表key,value都可作为参数

local t11 = { id = 123, name = "tom" };
local meta = {
    -- __index = { phone = "index_phone" }
    __index = function(t, k)
        -- print(k, v)
        t11[k] = "new_phone"
        return "index_phone"
    end

};

setmetatable(t11, meta)

print(t11.phone)
