-- table有两种格式
-- array
-- hash

local t1 = { "abc", "dec", "xyv", 1, 2, 4 }

print(table.concat(t1, "--", 2, 1))

-- 删除一个元素，不写后面的，删除最后一个
-- 删除指定值

table.remove(t1, 1)

-- insert
table.insert(t1,2,"1233")

-- sort
table.sort(t1)