-- lua的代码块

do
    A = 10
    print(A)
end

-- lua中的goto

-- flag有一个不可见原则
-- 1.不能从外面goto到代码块里面
-- 因为内部的flag对外面的代码来说是不可见的
-- 2.不能跳出或跳入一个函数，因为函数也是一个block(因为函数也是一个代码块)
-- 3.goto不能跳入本地变量作用域

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
-- lua的循环
-- while 直到型循环

-- 在lua中没有++ -- += -=
-- a=b=1 这种写法也不允许

-- break continue
-- break 只能跳出一层循环
-- 没有continue
-- 有goto

-- break只能跳出当前循环，goto能跳到指定位置

-- repeat until 类似于do while
-- while和repeat两者之间的区别
-- while循环，当条件不成立时，结束循环
-- repeat until 当条件成立时，结束循环

-- for循环
-- for循环的语法
-- for 变量名=初始值，结束值，步长 do 语句 end


for i = 1, 10, 2 do
    io.write(i, " ")
end
io.write("\n")

-- for循环分为数值循环或者泛型

for i = 1, 10, -1 do
    io.write(i, " ")
end


-- 泛型循环

local t1 = { 1, 2, 3, 5, 6, 7, 8 }

for k, v in ipairs(t1) do
    print(k, v)
end

-- ipairs 迭代函数
-- pairs 也是迭代函数，这两个迭代函数还有点区别
-- ipairs 遇到k,v 会直接跳过，遇到第一个nil会直接终止
-- ipairs 是顺序遍历，中间的序号不会断开，一般情况下用于数组类型的集合遍历

local t2 = { 11, 12, 14, 15, 16, 17 }
for key, value in pairs(t2) do
    print(key, value)
end

-- pairs遇到nil会直接跳过
-- 同时适用数组类型和k=v类型的集合，混搭也没问题
-- 如果是混搭，会优先获取数组类型的数据

-- pairs的适用范围大于ipairs
-- 如果不确定用哪个，就用pairs

local t3 = { a1 = "hello", a2 = "hi", a3 = "lis" }

for key, value in pairs(t3) do
    print(key, value)
end

-- 写个99乘法表
for i = 1, 9 do
    for j = 1, i do
        io.write(j, "*", i, "=", i * j, "\t")
    end
    io.write("\n")
end
