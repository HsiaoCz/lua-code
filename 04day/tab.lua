-- table
-- table 里面除了nil别的都可以作为索引

-- for k,v in pairs(table) do
-- end
-- 使用这种方式进行遍历

local info = {
    a = 123,
    name = "zhangsan",
    gender = "nan",
}

for index, value in ipairs(info) do
    print(index, value)
end

-- table增加值
-- table[index]=value

info["hello"] = 12

for index, value in ipairs(info) do
    print(index, value)
end

-- 删除值
-- 删除值将某个值置为nil
info["hello"] = nil

-- table还可以像数组一样

local hello = { 1, 2, 3, 4, 5 }
for index, value in ipairs(hello) do
    print(index, value)
end

-- 有一点，table的索引从1开始

-- table还可以混搭

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
