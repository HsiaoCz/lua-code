-- 类 class
-- 对象

-- table{}
-- metatable{}

-- self

local t1 = {
    id = 123,
    name = "tom",
    getId = function(obj)
        return obj.id
    end,
}

print(t1.id, t1.name, t1.getId())

-- self
function t1:getName()
    return self.name
end
