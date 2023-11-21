-- lua中的table
-- 格式
-- tablename={}

-- table 表，不是指数据库的表，而是一种数据结构，类似于map
-- 用k-v的方式来表现，除了nil，其他字符都可以作为K值
-- tablename={k,v}

-- 有两种遍历方式
-- for k,v in pairs(tablename) do
-- print(k,v)
-- end

-- 这里的pairs和ipairs都是迭代器

local info = {
    a = 123,
    name = "zhangsna",
    gender = "nan",
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

-- 获取值
print(info.id)
print(info["country"])

-- 删除值
-- 将值置为nil
info.a = nil

-- 修改
info["name"] = "bob"

-- table的第二种格式
-- 类似数组
local hello = { 1, 2, 3 }
for k, v in pairs(hello) do
    print(k, v)
end

-- lua的索引从1开始
-- 增加值
hello[4] = 1222

-- 修改值
hello[2] = 122

-- 删除值
hello[1] = nil

-- 遍历
for k, v in pairs(hello) do
    print(k, v)
end

-- 第三种 混搭的table

local info1 = {
    name = "tom",
    age = 13,
    gender = false,
    111,
    "222",
    { "abc", "def", 789, son_k_1 = "son-key-1" },
    son2 = { son2_k_1 = "son2-k-1", name = "alex", false, 1234 },
    country = "china",
    333,
}

for k, v in pairs(info1) do
    print(k, "===", v);
    if type(v) == "table" then
        for k1, v1 in pairs(v) do
            print(k1, "==", v1)
        end
    end
end


-- 删除值

info1.gender = nil
info1[3] = nil
for k, v in pairs(info1) do
    print(k, "===", v);
    if type(v) == "table" then
        for k1, v1 in pairs(v) do
            print(k1, "==", v1)
        end
    end
end

-- 修改值
info1[3][2] = "def";
info[3]["son_k_1"] = 122

-- 增加值
info1[2][22] = 11
