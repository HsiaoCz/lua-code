-- table里面的一些方法

local t = { "abc", "hello", "xyv", 1, 2, 3 }
print(table.concat(t, "--", 2, 1))

-- 删除一个元素，不写后面的，删除最后一个
-- 指定则删除指定值

table.remove(t, 1)
table.insert(t, 2, "1221")
table.sort(t)

-- table.sort 默认时按照从小到大排列的

-- 从大到小排列
local function func1(a, b)
    return a > b
end

table.sort(t, func1)

-- table.move可以将一个table里面的元素移动到另一个表中
