-- 迭代器
-- 迭代器是一种对象，它能够用来遍历标准模板库容器中的部分或全部元素
-- ，每个迭代器对象代表容器中确定的地址
-- lua中迭代器是一种支持指针类型的结构，它可以遍历集合中的每一个元素

-- 泛型for迭代器
-- 泛型for在自己内部保存迭代函数，实际上它保存三个值：迭代函数、状态常量、控制变量
-- 泛型for迭代器提供了集合key/value对，语法格式如下

-- for k,v in pairs(t) do
-- print(k,v)
-- end
-- 这里 k,v 为变量列表；pairs(t)为表达式列表

local array = { "google", "runoob" }
for index, value in ipairs(array) do
    print(index, value)
end

-- ipairs是lua默认提供的迭代函数
-- for的执行过程
-- 首先，初始化，计算 in 后面表达式的值，
-- 表达式应该返回泛型 for 需要的三个值：迭代函数、状态常量、控制变量；
-- 与多值赋值一样，如果表达式返回的结果个数不足三个会自动用 nil 补足，
-- 多出部分会被忽略。
-- 第二，将状态常量和控制变量作为参数调用迭代函数
-- 注意：对于 for 结构来说，状态常量没有用处，
-- 仅仅在初始化时获取他的值并传递给迭代函数。
-- 第三，将迭代函数返回的值赋给变量列表。
-- 第四，如果返回的第一个值为nil循环结束，否则执行循环体。
-- 第五，回到第二步再次调用迭代函数

-- 无状态的迭代器
-- 无状态的迭代器是指不保留任何状态的迭代器，
-- 因此在循环中我们可以利用无状态迭代器避免创建闭包花费额外的代价
-- 每一次迭代，迭代函数都是用两个变量（状态常量和控制变量）的值作为参数被调用，
-- 一个无状态的迭代器只利用这两个值可以获取下一个元素。
-- 这种无状态迭代器的典型的简单的例子是 ipairs，它遍历数组的每一个元素，
-- 元素的索引需要是数值。

local function square(iteratorMaxCount, currentNumber)
    if currentNumber < iteratorMaxCount
    then
        currentNumber = currentNumber + 1
        return currentNumber, currentNumber * currentNumber
    end
end

for i, n in square, 3, 0
do
    print(i, n)
end

-- 迭代的状态包括被遍历的表
-- 循环过程中不会改变的状态常量
-- 和当前的索引下标（控制变量）

local function iter(a, i)
    i = i + 1
    local v = a[i]
    if v then
        return i, v
    end
end
function ipairs(a)
    return iter, a, 0
end

-- 多状态的迭代器
-- 很多情况下，迭代器需要保存多个状态信息而不是简单的状态常量和控制变量，最简单的方法是使用闭包
-- 还有一种方法就是将所有的状态信息封装到table内，将table作为迭代器的状态常量
-- 因为这种情况下可以将所有信息存放在table内，所以迭代器函数通常不需要第二个参数

local arrays = { "google", "hello" }

local function elementIterator(collection)
    local index = 0
    local count = #collection

    -- 闭包函数
    return function()
        index = index + 1
        if index <= count
        then
            -- 返回迭代器的当前元素
            return collection[index]
        end
    end
end

for element in elementIterator(arrays)
do
    print(element)
end
