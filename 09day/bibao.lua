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
