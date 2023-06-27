-- lua的流程控制
-- if

local a, b = 1, 2

if a > b then
	print(a)
elseif a > 12 then
	print(12)
else
	print(b)
end

-- lua的代码块
-- do end

do
	A = 10
	local ms = 12
	print(a)
end

print(A)

-- 代码块外面可以访问代码块里面的全局变量
-- 但是访问不了代码块里的局部变量

-- 可以使用goto实现死循环

do
	local mm = 12
	local ss = 13

	::FLAF::
	print(mm)
	print(ss)
	goto FLAF
end

-- lua的for循环

for i = 1, 10, 1 do
	io.write(i, " ")
end

-- for 还有ipairs 和pairs
-- ipairs遇到key value会直接跳过
-- 遇到nil会直接终止

-- pairs遇到key value也没问题
-- 遇到nil会直接跳过

-- lua的while do
-- lua里面没有++ -- += -=
-- break只能跳出当前循环，goto能跳到指定位置

local i, sum = 0, 0

while i < 101 do
	i = i + 1
	sum = sum + 1
end

-- repeat until
-- 类似与do while

local s = 1

repeat
	s = s + 1
until s == 100

-- repeat until 直到满足条件结束
-- while 当条件不成立时，结束循环
