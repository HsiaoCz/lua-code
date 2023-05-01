-- lua中false和nil为false
-- true 和非nil为true

if (0) then
    print("Hello")
end

-- if
-- if(布尔表达式)
-- then (表达式为true时执行的语句)
-- end(表达式为false时执行后面的语句)

local a = 0

if (a < 10) then
    print("a小于10")
end

print("a大于10")

-- if else
-- else是表达式为false时执行的代码

local b = 20

if (b < 10) then
    print("b小于10")
else
    print("b大于20")
end
print("b的结果为", b)

-- elseif

local m = 100

if (m == 10) then
    print("m的值为10")
elseif (m == 20) then
    print("m的值为20")
elseif (m == 30) then
    print("m的值为30")
else
    print("没有匹配的m的值")
end
print(m)

-- if 的嵌套使用

local s = 100
local v = 200

if (s == 100) then
    if (v == 200) then
        print("s的值为100,v的值为200")
    end
end
