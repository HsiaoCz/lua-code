-- lua table 使用关联数组，可以使用任意类型的值作为数组的索引，但是注意这个值不能为nil
-- lua table 不固定大小，可以根据需要扩容
-- lua 通过table来解决模块(module)、包(package)和对象(Object)

-- table的构造

-- 初始化表
local mytable = {}

-- 指定值
mytable[1] = "lua"

-- 移除引用
mytable = nil
-- 移除引用后lua的垃圾回收会自动释放内存

-- 如果a,b两个table都指向同一个内存，如果a设置为nil
-- b同样能访问table的元素，如果没有指定的变量指向a，lua的垃圾回收机制会清理相应的内存

mytable = {}
print("mytable 的类型是 ", type(mytable))

mytable[1] = "Lua"
mytable["wow"] = "修改前"
print("mytable 索引为 1 的元素是 ", mytable[1])
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- alternatetable和mytable的是指同一个 table
local alternatetable = mytable

print("alternatetable 索引为 1 的元素是 ", alternatetable[1])
print("mytable 索引为 wow 的元素是 ", alternatetable["wow"])

alternatetable["wow"] = "修改后"

print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- 释放变量
alternatetable = nil
print("alternatetable 是 ", alternatetable)

-- mytable 仍然可以访问
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

mytable = nil
print("mytable 是 ", mytable)

-- table的操作
-- table.concat(table[,sep[,start[,end]]])
-- table.concat()输出一个列表中元素连接成的字符串

local fruits = { "banana", "orange", "apple" }

-- 返回table连接后的字符串
print("连接后的字符串", table.concat(fruits))
-- 指定连接字符
print("连接后的字符串 ", table.concat(fruits, ", "))

-- 指定索引来连接 table
print("连接后的字符串 ", table.concat(fruits, ", ", 2, 3))


-- 插入和移除

-- 在末尾插入
table.insert(fruits, "mango")
print("索引为 4 的元素为 ", fruits[4])

-- 在索引为 2 的键处插入
table.insert(fruits, 2, "grapes")
print("索引为 2 的元素为 ", fruits[2])

print("最后一个元素为 ", fruits[5])
table.remove(fruits)
print("移除后最后一个元素为 ", fruits[5])

-- table排序
print("排序前")
for k, v in ipairs(fruits) do
    print(k, v)
end

table.sort(fruits)
print("排序后")
for k, v in ipairs(fruits) do
    print(k, v)
end
