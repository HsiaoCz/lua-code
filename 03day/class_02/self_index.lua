-- 自索引：自己索引自己

local t1 = { id = 123, name = "tom" }

local indexTable = { phone = 123456 }

local meta = {
    -- __index = { phone = 123456 },
    __index = indexTable
}

meta.__index = meta
