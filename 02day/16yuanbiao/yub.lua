-- 元表与元方法
-- 元表matatable
-- 元表并不是一个普通的表
-- 而是一套自定义的计算规则，用这些规则，可以实现表与表之间的运算
-- 而这些规则，都以函数的方式，写在元表中，所以又称为元方法（就是写在元表里面的方法）
-- 起到一个类似其他语言中的运算符重载的作用

local t1 = { 11, 21, 22, 33 }
local t2 = { 111, 222, 333, 444 }

local metaT3 = {}

setmetatable(t1, metaT3)
setmetatable(t2, metaT3)

metaT3.__add = function(tab1, tab2)
    local len1 = #t1
    local len2 = #t2
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

metaT3.__sub = function(tab3, tab4)

end
