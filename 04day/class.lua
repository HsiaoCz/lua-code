-- lua的一个语法糖

local t = {
    a = 0,
    add = function(tab, sum)
        tab.a = tab.a + sum
    end
}

-- t.add(t, 10)
-- 当表中有一个方法，这个方法的第一个参数是它自己
-- 那么这个参数可以省略
-- 并写成
t:add(10)
-- 这个和t.add(t,10)这个是等价的
-- string也有这样的使用

local str = "hello"
local res = str:sub(1, 2)
print(res)

print(t["a"])


-- 在lua里面实现面向对象

local bag = {}
local bagmt = {
    -- 装入东西
    put = function(tas, item)
        table.insert(tas.items, item)
    end,

    -- 拿出东西
    take = function(tas, item)
        return table.remove(tas.items, item)
    end,
    -- 列出表
    list = function(tas)
        return table.concat(tas.items, ",")
    end,
    -- 清空表
    clear = function(tas)
        tas.items = {}
    end
}
bagmt["__index"] = bagmt
-- 构造方法
function bag.new()
    local tas = {
        items = {}
    }
    setmetatable(tas, bagmt)
    return tas
end
