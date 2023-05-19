-- for循环
-- for循环的语法
-- for 变量名=初始值，结束值，步长 do 语句 end


for i = 1, 10, 2 do
    io.write(i, " ")
end
io.write("\n")

-- for循环分为数值循环或者泛型

for i = 1, 10, -1 do
    io.write(i, " ")
end


-- 泛型循环

local t1 = { 1, 2, 3, 5, 6, 7, 8 }

for k, v in ipairs(t1) do
    print(k, v)
end

-- ipairs 迭代函数
-- pairs 也是迭代函数，这两个迭代函数还有点区别
-- ipairs 遇到k,v 会直接跳过，遇到第一个nil会直接终止
-- ipairs 是顺序遍历，中间的序号不会断开，一般情况下用于数组类型的集合遍历

local t2 = { 11, 12, 14, 15, 16, 17 }
for key, value in pairs(t2) do
    print(key, value)
end

-- pairs遇到nil会直接跳过
-- 同时适用数组类型和k=v类型的集合，混搭也没问题
-- 如果是混搭，会优先获取数组类型的数据

-- pairs的适用范围大于ipairs
-- 如果不确定用哪个，就用pairs

local t3 = { a1 = "hello", a2 = "hi", a3 = "lis" }

for key, value in pairs(t3) do
    print(key, value)
end

-- 写个99乘法表
for i = 1, 9 do
    for j = 1, i do
        io.write(j, "*", i, "=", i * j, "\t")
    end
    io.write("\n")
end
