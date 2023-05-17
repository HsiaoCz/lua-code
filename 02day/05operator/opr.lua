-- lua的运算符

-- 赋值= lua 中变量是弱类型，就是说变量名是没有类型的，其类型取决于所赋的值
-- 同一个变量，可以随时赋值不同类型的值
-- 比较特殊的
--  // 整除运算，和python的地板除一样

-- lua中的多重赋值
local aa, vv, cc = 1, 2, 4
print(aa, cc, vv)

-- 多重赋值还有这两种情况
local as, av, ad = 1, 23, 4 -- 5
print(as, ad, av)           -- 这里会多出个nil来

-- local a,n,v,d=1,2,3 这里d也是nil

local a = 10
local b = 3

local s = a // b

print(s)

-- 关系运算
-- 这里的区别是~=这个是不等于

local m = 10
local mm = 11

if m ~= mm then
    print("m不等于mm")
end

-- 逻辑运算和python一样
-- and or not
-- 这里有点去别的是，lua逻辑运算返回的结果是参与运算的变量之一(not 除外)
-- 其他语言返回的是布尔值
-- 对and or 实行的是短路运算，当前面的表达式可以返回时，直接返回
-- not 只返回true或false
print(a and b)  -- 3 如果a为真，返回b
local ms = false
print(ms and b) --false 如果a为假,则返回false

local c, d = 1, nil
print(c and d) -- 1 如果c为真，返回c,后面不运算

print(not c)   -- 如果c为真，返回false

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

A,B,C=1,2,3
D=((A and {B}) or {C})[1] --这才是一个合格的三目运算
-- 其他运算符
-- .. 连接两个字符串
-- # 一元运算符，返回字符串的长度

local ra = "hello"
local bb = "hi"

print("连接字符串a和b:", ra .. bb)
print("求字符串的长度:", #aa)
