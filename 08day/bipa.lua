-- 使用闭包实现一个ipairs迭代器
-- 迭代器又称光标，是程序设计的软件设计模式
-- 可在容器对象上遍访的接口
-- 设计人员无需关心容器对象的内存分配细节

local t1 = { 11, 2, 3, 4, 44 }

for key, value in pairs(t1) do
    print(key, value)
end

local function myPairs(tab)
    local index = 0
    local count = #tab
    return function()
        index = index + 1
        if index <= count then
            if tab[index] ~= nil then
                return index, tab[index]
            else
                index = index + 1
                return index, tab[index]
            end
        end
    end
end

local t2 = { 1, 2, 3, 4, 5 }

myPairs(t2)
