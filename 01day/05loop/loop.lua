-- lua中支持这样几种循环
-- while循环，条件为true时，让程序重复执行某些语句，执行前会先检查条件是否为true
-- for循环，重复次数可在for语句中控制
-- repeat...until重复执行循环，直到循环条件为真时为止
-- 循环嵌套，可以在循环内嵌套循环

-- 循环控制语句
-- break 退出当前循环，并开始脚本执行接着的语句
-- goto语句，将程序的控制点转移到一个标签处

-- 无限循环
while (true) do
    print("循环将一直进行下去")
end

-- while

local a = 10

while (a < 100) do
    print("a的值为:", a)
    a = a + 1
end

-- for循环分为两大类
-- 数值for循环
-- 泛型for循环

-- for var=exp1,exp2,exp3 do ... end
-- var 从exp1变化到exp2,变化的步长为exp3

for i = 10, 1, -1 do
    print(i)
end

function f(x)
    print("function")
    return x * 2
end

for i = 1, f(5) do
    print(i)
end


-- 泛型for循环，使用一个迭代器函数来遍历所有的值
-- 类似于foreach

local m = { "one", "two", "three" }

for index, value in ipairs(m) do
    print(index, value)
end

-- repeat until
-- 在当前循环的条件语句在当前循环结束后判断
-- 类似于do while

local mm = 10

repeat
    print("mm的值是:", mm)
    mm = mm + 1
until (mm < 100)


-- break

local s = 10

while (s < 20) do
    print("s的值为:", s)
    s = s + 1

    if (s > 15) then
        break
    end
end

-- goto语句，将程序的控制点转移到一个标签处

local ss = 1
::label::
print("goto the label")

ss = ss + 1

if ss < 3 then
    goto label
end

-- 实现contuine

for i = 1, 3 do
    if i <= 2 then
        print(i, "yes continue")
        goto continue
    end
    print(i, " no continue")
    ::continue::
    print([[i'm end]])
end
