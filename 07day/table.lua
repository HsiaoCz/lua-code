-- lua中的table
-- tablename={}

-- lua中的table类似于map
-- 使用k-v的方式来表现，除了nil，其他字符都可以作为K值
-- tablename={k=v}

-- 遍历方式
-- for k,v in pairs(tablename) do
-- print(k,v)
-- end

-- 这里的ipairs和pairs都是lua的迭代器

local info = {
    a = 123,
    name = "zhangsan",
    gedner = "male",
}

for k, v in pairs(info) do
    print(k, v)
end

-- table增加值
info.age = 123
info["country"] = "china"

for k, v in pairs(info) do
    print(k, v)
end

-- 获取table的值
print(info.a)
print(info.name)

-- 删除值
-- 直接将值置为nil即可
info.a = nil

-- table还可以类似于数组
local h = { 1, 2, 3, 4, 5 }
for k, v in pairs(h) do
    print(k, v)
end

-- 这里k表示索引，值从1开始
-- 增加值
h[6] = 7
h[7] = 8

-- 修改值
h[4] = 10

-- 删除值，将要删除的位置置为nil

h[1] = nil

-- table可以混搭，什么都有
-- 可以有值，键值队，方法，里面还可以嵌套表
