-- lua数组
-- 数组就是相同数据类型的元素按一定的顺序排列的集合
-- lua数组的索引键值可以使用整数表示，数组的大小不是固定的

-- 一维数组
local array = { "lua", "hello" }

for i = 1, 2 do
    print(array[i])
end

-- 这里要注意的是，lua的索引是从1开始的

-- 可以自定义索引
local ass = {}

for i = -2, 2 do
    ass[i] = i * 2
end

for i = -2, 2 do
    print(ass[i])
end

-- 多维数组
local mutli_array = {}
for i = 1, 3 do
    mutli_array[i] = {}
    for j = 1, 3 do
        mutli_array[i][j] = i * j
    end
end

-- 访问多维数组
for i = 1, 3 do
    for j = 1, 3 do
        print(mutli_array[i][j])
    end
end
