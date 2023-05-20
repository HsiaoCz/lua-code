-- function 进阶，常见的表现形式
local function show(a, b)
    print(a, b)
end

-- 直接调用
show(1, 2)

-- 当右值
local func2 = show
func2(2, 3)


local f5 = function()
    return "hello"
end

f5()

-- 函数当参数
local function f6(func, a, c)
    func(a, c)
end

f6(f5, 1, 2)

-- 函数可以当返回值
local function func5()
    return f5
end

local ss = func5()
print(ss())

-- 匿名函数当返回值
local function func44()
    return function()
        print("hello")
    end
end

local f11 = func44()
f11()

-- 函数的多返回值

local function f33()
    return 1, 2, 3, 4
end

print(f33())
