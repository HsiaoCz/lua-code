-- lua中的table
-- tablename={}

-- table 表，不是指数据库的表，而是一种数据结构，类似于map
-- 用k-v的方式来表现，除了nil，其他字符都可以作为K值(索引值)
-- tablename={k=v}

-- for 循环遍历
-- for k,v in pairs(tablename) do
-- print(k,v)
-- end

-- 这里的pairs和ipairs都是迭代器
-- pairs和ipairs的区别
-- ipairs只能遍历数字索引的元素
-- 而pairs可以遍历所有类型的元素
-- ipairs遍历时按照数字索引的顺序遍历
-- 而pairs遍历时是无序的
-- ipairs遍历时遇到nil值会停止遍历
-- 而pairs会一直遍历到table的末尾

local info = {
    a = 123,
    name = "zhangsan",
    gender = "nan",
}

for k, v in pairs(info) do
    print(k, v)
end

-- 给table增加值
info.age = 123
info["country"] = "china"

for k, v in pairs(info) do
    print(k, v)
end

-- 删除lua中table的值
-- 将值置为nil

-- table还可以类似数组

local m = { 1, 2, 3, 4, 5 }

for k, v in ipairs(m) do
    print(k, v)
end

