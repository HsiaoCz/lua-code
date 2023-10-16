-- for循环
-- for 变量名=初始值，结束值，步长 do 语句 end

for i = 1, 10, 2 do
    io.write(i, "")
end

io.write('\n')

-- for 的泛型循环
local t1 = { 1, 2, 3, 4, 5, 6, 7 }
for index, value in ipairs(t1) do
    print(index, value)
end

-- ipairs 迭代函数
-- pairs 也是迭代函数，这两个迭代函数还是有点区别
-- ipairs 遇到k,v会直接跳过，遇到第一个nil会直接终止
-- ipairs 是顺序遍历，中间的序号不会断开，一般情况下用于数组类型的集合遍历

-- pairs遇到nil会直接跳过
-- 同时适用数组类型和k=v类型的集合，混搭也没问题
-- 如果是混搭，会优先获取数组类型的数据

-- pairs的适用范围大于ipairs
-- 如果不确定用哪个，就用pairs

local t2 = { 12, 11, a = "hello", b = "hi", 13, 14 }
for key, value in pairs(t2) do
    print(key, value)
end
