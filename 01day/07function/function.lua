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
