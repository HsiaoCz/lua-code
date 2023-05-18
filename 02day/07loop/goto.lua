-- lua的goto
-- 代码块
-- lua的代码块
-- do end

do
    A = 10
    local a
    print(a)
end

print(A)

-- 使用goto实现死循环

-- flag有一个不可见原则
-- 1.不能从外面goto到代码块里面
-- 因为内部的flag对外面的代码来说是不可见的
-- 2.不能跳出或跳入一个函数，因为函数也是一个block(因为函数也是一个代码块)
-- 3.goto不能跳入本地变量作用域
do
    print("a")
    print("b")
    ::FLAF::
    print("c")
    print("d")
    ::FLAG::
end

do
    -- goto flah
    -- 这里跳不过去
    -- 这里goto在变量的作业域外面
    local a = 10
    local b = 10
    ::flah::
    print(b)
    print(a)
end
