-- lua是动态语言，变量不定义类型，直接赋值
-- 值存储在变量当中，作为参数传递或结果返回

-- lua有八个类型
-- nil 只有值nil属于该类，表示一个无效值
-- boolean 包含两个值false和true
-- number表示双精度的实浮点数
-- string 字符串由一对双引号或单引号表示
-- function 由c或者lua编写的函数
-- userdata 表示任意存储在变量当中的c数据结构
-- thread 表示独立的线路。用于执行协调程序
-- table lua中的表，其实是一个关联数组，数组的索引可以是数字、字符串或表类型
-- 在Lua里，table的创建是通过"构造表达式”来完成的，最简单的构造表达式是{},用来创建一个空表
local x
print(type("hello world"))
print(type(10))
print(type(12.33))
print(type(print))
print(type(type))
print(nil)
print(type(type(x)))

-- nil 表示一个无效值

local tab1 = {
    key1 = "hello",
    key2 = "hi",
}
-- 对于table
-- 将一个tab的key赋值为nil即可删掉其值
for k, v in pairs(tab1) do
    print(k .. "-" .. v)
end

tab1.key1 = nil
for key, value in pairs(tab1) do
    print(key .. "-" .. value)
end

-- nil作比较时应该加上双引号
local a
print(type(a))
print(type(a) == nil)
print(type(a) == "nil")
-- type(a)本质上是一个字符串，是string类型
print(type(type(a)))
