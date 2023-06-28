-- 元表与元方法
-- 元表matetable
-- 元表并不是一个普通的表
-- 而是一套自定义的计算规则，用这些规则，可以实现表与表之间的运算


local t1 = { 11, 22, 33, 44 }
local t2 = { 111, 222, 333, 444, 555 }

local metaT3 = {}

setmetatable(t1, metaT3)
setmetatable(t2, metaT3)

metaT3.__add = function(tab1, tab2)
    local len1 = #t1
    local len2 = #t2
    local rs = {}

    if len1 > len2 then
        len1 = len2
    end

    for i = 1, len2 do
        local a = t1[i] or 0
        local b = t2[i] or 0
        rs[i] = a + b
    end
    return rs
end

