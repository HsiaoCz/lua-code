-- lua的运算符
-- 比较特殊的//和python的地板除类似
-- lua可以多重赋值

local aa, cc, xx = 12, 13, 14
-- 多重赋值，左边多，多的会被设置为nil
-- 右边多，多的会被忽略

-- 和别的语言不同的是这里!=是~=

local m = 12

if m ~= 13 then
    print("m小于13")
end

-- 逻辑判断
-- and or not
-- 和python的一样

local a = 12
local b = 13

-- false 和 nil 为false
print(a and b)
print(a or b)
print(not a)

-- 实现三目运算

local l, v, z = 1, 2, 3
local d = (l and v) or z

local ss = "hello"
local sm = "hi"

-- ..连接两个字符串
print(ss .. sm)
-- 获取字符串的长度
print(#ss)
