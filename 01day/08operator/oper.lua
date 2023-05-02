-- lua的运算符
-- 比较特殊的
--  // 整除运算，和python的地板除一样

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

-- 其他运算符
-- .. 连接两个字符串
-- # 一元运算符，返回字符串的长度

local aa = "hello"
local bb = "hi"

print("连接字符串a和b:", aa .. bb)
print("求字符串的长度:", #aa)
