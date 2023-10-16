-- lua的循环
-- while 直到型循环

-- 在lua中没有++ -- += -=
-- a=b=1 这种写法也不允许

-- break continue
-- break 只能跳出一层循环
-- 没有continue
-- 有goto

-- break只能跳出当前循环，goto能跳到指定位置

-- repeat until 类似于do while
-- while和repeat两者之间的区别
-- while循环，当条件不成立时，结束循环
-- repeat until 当条件成立时，结束循环


local i, sum = 0, 0
while i < 101 do
    i = i + 1
    sum = sum + i
end
print(sum)


local m = 0
while m < 20 do
    if m == 10 then
        break
    end
    if m == 14 then
        goto FALG
    end
end

::FALG::
print("hello")

local s = 1
repeat
    s = s + 1
until s == 100
print(s)
