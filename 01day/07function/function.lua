-- lua函数
-- lua函数主要有两种用途
-- 完成指定的任务，这种情况下的函数作为调用语句使用
-- 计算并返回值，这种情况下函数作为赋值语句的表达式使用

-- 函数的定义
-- optional_function_scope function function_name(argument1,argument2,argument3...,argument)
-- funtion_body
-- return result_params_comma_separated
-- end

-- optional_function_scope:该参数是可选的指定函数是全局函数还是局部函数，未设置该参数时指定未全局函数，局部函数关键字local
-- function_name:指定函数名称
-- argument1,argument2,argument3...argumentn:函数参数，以逗号分隔
-- function_body:函数体
-- result_params_comma_separated:函数的返回值
local result

local function max(num1, num2)
    if (num1 > num2) then
        result = num1
    else
        result = num2
    end
    return result
end

print("两值比较的最大值...", max(10, 20))

-- 将函数作为参数

local myprint = function(param)
    print("这是打印函数...", param)
end

local function add(num1, num2, functionPrint)
    local res
    res = num1 + num2
    functionPrint(res)
end

myprint(10)
add(10, 2, myprint)

-- 多返回值函数

local function maximum(a)
    local mi = 1
    local m = a[mi]

    for i, val in ipairs(a) do
        if val > m then
            mi = i
            m = val
        end
    end
    return m, mi
end

print(maximum({ 1, 2, 3, 4, 5, 6 }))

-- 可变参数
local function add1(...)
    local ss = 0
    for index, value in ipairs { ... } do
        ss = ss + value
    end
    return ss
end

print(add1(1, 2, 3, 4, 5))

-- 获取可变参数传入的数量

local function average(...)
    result = 0
    local arg = { ... }
    for i, v in ipairs(arg) do
        result = result + v
    end
    print("总共传入 " .. select("#", ...) .. " 个数")
    return result / select("#", ...)
end

print("平均值为", average(10, 5, 3, 4, 5, 6))

-- 这里需要注意的是，固定参数需要在可变参数之前
-- 在遍历变成参数的时候只需要使用{...}
-- 但是变成参数可能包含一些nil，可以使用select函数来访问变成参数:select('#',...)或者select(n,...)
-- 对于select('#',...)返回可变参数的长度
-- select(n,...)用于返回从起点n开始到结束位置的所有参数列表
-- 调用 select 时，必须传入一个固定实参 selector(选择开关) 和一系列变长参数。
-- 如果 selector 为数字 n，
-- 那么 select 返回参数列表中从索引 n 开始到结束位置的所有参数列表，
-- 否则只能为字符串 #，这样 select 返回变长参数的总数。
function f(...)
    local a = select(3, ...) -->从第三个位置开始，变量 a 对应右边变量列表的第一个参数
    print(a)
    print(select(3, ...))    -->打印所有列表参数
end

f(0, 1, 2, 3, 4, 5)


do
    local function foo(...)
        for i = 1, select('#', ...) do  -->获取参数总数
            local arg = select(i, ...); -->读取参数，arg 对应的是右边变量列表的第一个参数
            print("arg", arg);
        end
    end

    foo(1, 2, 3, 4);
end
