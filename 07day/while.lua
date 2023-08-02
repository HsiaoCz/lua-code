-- lua的循环
-- lua里面不允许有++ --
-- a=b=1这种也不允许

-- repeat until 类似于do while
-- while 和 repeat 两者之间的区别
-- while循环，当循环条件不成立时，结束循环
-- repeat until 当条件成立时，结束循环

local i, sum = 0, 0

while i < 101 do
    i = i + 1
    sum = sum + 1
end

local m = 0
while m < 20 do
    if m == 10 then
        break
    end
    if m == 14 then
        goto FALG
    end
end

::FALG::
print("hello")


-- break 只能跳出一层循环，goto能够跳到指定位置
-- flag有一个不可见原则
-- 1.不能从外面goto到代码块里面
-- 因为内部的flag对外面的代码来说是不可见的
-- 2.不能跳出或跳入一个函数，因为函数也是一个block(因为函数也是一个代码块)
-- 3.goto不能跳入本地变量作用域
