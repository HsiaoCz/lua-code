-- 元表与元方法
-- __index 当在一个表中，去取某个key，如果该表中有对应的key，就直接返回
-- 如果没有，看有没有元表，没有元表，返回nil，如果有元表，看元表中有没有__index，没有返回nil
-- 如果有__index,如果__index是个表，并且有key,返回值，没有返回nil
-- 如果__index是一个function，则直接调用该function，且表和key都会作为该function的参数

-- __newindex
-- 如果是表，则在本表里设一个key的时候，会写道_-newindex对应的表中
-- 如果是function，则直接调用本表key,value都可作为参数

local t1 = { id = 123, name = "tom" };
local meta = {
    -- __index = { phone = "index_phone" }
    __index = function(t, k)
        -- print(k, v)
        t[k] = "new_phone"
        return "index_phone"
    end

};

setmetatable(t1, meta)

print(t1.phone)
