-- lua的运算符
-- lua中的变量赋值之后，还可以随时赋不同的值

-- lua中的多重赋值

local aa, cc, ss = 1, 2, 3
print(aa, cc, ss)

-- 如果多重赋值左边多右边少，多的为nil
-- 多重赋值右边多，左边少，多的会去掉

-- // 地板除

local a = 10
local b = 3

local s = a // b
print(s)

-- 关系运算
-- ~= 表示不等于

local mm = 10
local mmm = 11
if mm ~= mmm then
    print("mm 不等于mmm")
end

-- 逻辑运算和python一样
-- and or not
-- 这里有点去别的是，lua逻辑运算返回的结果是参与运算的变量之一(not 除外)
-- 其他语言返回的是布尔值
-- 对and or 实行的是短路运算，当前面的表达式可以返回时，直接返回
-- not 只返回true或false

print(a and b)

local f = false

print(mm and f)

-- or

local c, d = 1, 2
print(c or d) -- c真返回c，后面的不运算

print(not c)  -- c真返回true,否则false

-- 用or 设置默认值
local function fun1(h, j)
    h = h or 10
    j = j or 100
    print(h, j)
end

fun1()
-- 实现三目运算,如果a为真

a, b, c = 1, 2, 3
d = (a and b) or c
print(b)

A, B, C = 1, 2, 3
D = ((A and { B }) or { C })[1] --这才是一个合格的三目运算
-- 其他运算符
-- .. 连接两个字符串
-- # 一元运算符，返回字符串的长度

local ra = "hello"
local bb = "hi"

print("连接字符串a和b:", ra .. bb)
print("求字符串的长度:", #aa)
