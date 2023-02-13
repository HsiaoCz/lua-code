-- lua 的语法
-- 默认全局变量 值为nil
-- 局部变量使用local关键字修饰

-- 1.数据类型
-- nil
print(type(nil))
local num
print(num)

-- boolean
local a=true
local b=false
print(a,b)

-- 数字类型
local c=100
print(type(c))
print(c)

-- lua单行注释两个杠，多行注释
-- 多行注释
--[[ 
多行注释     
--]]

-- lua的标识符，可以是字母数字下划线，但是最好不要使用大写字母和下划线
-- 区分大小写，@,$,%也可以用来定义标识符

-- 全局变量，默认的情况下，变量总是全局变量
-- 使用 verb=nil可以注销一个全局变量