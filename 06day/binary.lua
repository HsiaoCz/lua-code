-- 二进制数据处理与打包
-- 大端和小端
-- string.pack(fmt,v1,v2)
-- 小端排序

local data = string.pack("<L", 1)
print(#data)
print(data:byte(1))
print(data:byte(2))
print(data:byte(3))
print(data:byte(4))

-- 大端排序
-- 使用>号，表示大端排序

-- 反转
-- string.unpack
local r = string.unpack(">L", data)
print(#r)
print(r:byte(1))
print(r:byte(2))
print(r:byte(3))
print(r:byte(4))


