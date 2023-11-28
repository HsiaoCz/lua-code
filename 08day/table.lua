-- table
-- table两种格式
-- array
-- hash

-- 自定义下标
-- 自定义下标不建议使用

local t1 = { 11, 22, 33 }
t1[5] = 55

for k, v in pairs(t1) do
    print(k, v)
end

for k, v in ipairs(t1) do
    print(k, v)
end


local t2 = {}

for i = -4, 4 do
    t2[i] = i * 10
end

-- 这里ipairs无法遍历负数的下标
for key, value in ipairs(t2) do
    print(key, value)
end

for key, value in pairs(t2) do
    print(key, value)
end


-- 二维数组
local t3 = {
    { 11, 22, 33 },
    { 44, 55, 66 }
}

for i = 1, 2 do
    for j = 1, 3 do
        print(i, j, t3[i][j])
    end
    print("")
end

for key, value in pairs(t3) do
    for k, v in pairs(value) do
        print(key, k, v)
    end
    print("")
end

-- table.concat(list,sep,i,j) 将table中的元素拼接成一个字符串
local t4 = { "abc", "dec", "xyv", 1, 2, 3 }
print(table.concat(t4, "--", 2, 1))

-- 删除一个元素，不写后面的，删除最后一个
-- 指定则删除指定值
table.remove(t4, 1)

-- insert
table.insert(t4, 2, "1222")

-- sort
table.sort(t4)
-- 这个排序默认是从小到大排

-- 从到往小排
local function func1(a, b)
    return a > b
end

table.sort(t4, func1)

-- table.move()将一个table里的元素移动到另一个表中
