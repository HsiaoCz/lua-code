-- 闭包
-- 当一个函数内部嵌套另一个函数定义时，内部的函数体可以访问外部的函数的局部变量
-- 这个特征在lua中成为词法定界

local function f33(a, b)
    return function()
        print(a, b)
    end
end
f33(1, 2)()

local function f44(a, b)
    local x = 0;
    local y = 0;
    return function()
        x = x + 1 --类似于static属性
        print(a, b, x)
    end
end

local f = f44(1, 2)
f()

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
