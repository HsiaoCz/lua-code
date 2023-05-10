-- 元表
-- lua无法对两个table进行相加操作，因此提供了元表
-- 允许改变table的行为，每个行为关联了对应的元方法
-- 例如，使用元表可以定义lua如何计算两个table的相加操作a+b
-- 当lua试图对两个表相加时，先检查两者之一是否 有元素，之后检查是否有一个叫做_add的字段
-- 若找到，则调用相应的值。_add等即时字段，其对应的值就是元方法

-- 两个很重要的函数来处理元表
-- setmatetable(table,metatable),对指定table设置元表(metatable),如果元表(metatable)中存在_matetable键值,setmetatable会失败
-- getmetatable(teble):返回对象的元表(metaable)

local mytable = {}
local mymetatable = {}

setmetatable(mytable, mymetatable)

-- 也可以直接这样写
-- mytable=setmatetable({},{})
local nt = getmetatable(mytable)
print(nt)

-- __index元方法
-- 当通过键来访问table的时候，如果这个键没有值，那么lua就会寻找table的metatable(假定有metatable)
-- 中的__index键，如果__index包含一个表格,lua会在表格中查找相应的键

