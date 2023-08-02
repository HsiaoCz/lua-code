-- for循环
-- for 变量名=初始值，结束值，步长 do 语句 end

for i = 1, 10, 2 do
    io.write(i, "")
end
io.write('\n')


-- for 的泛型循环
local t1 = { 1, 2, 3, 4, 5, 6, 7 }
for k, v in ipairs(t1) do
    print(k, v)
end

-- ipairs 迭代函数
-- pairs 也是迭代函数，这两个迭代函数还是有点区别
-- ipairs 遇到k,v会直接跳过，遇到第一个nil会直接终止
-- ipairs 是顺序遍历，中间的序号不会断开，一般情况下用于数组类型的集合遍历

local t2 = { 12, 11, a = "hello", b = "hi", 13, 14 }
for key, value in pairs(t2) do
    print(key, value)
end
