-- 声明局部变量
local a = 12

-- 全局变量
-- 默认使用_加大写字符表示全局变量
_SS = "Hello"

print(a)
print(_SS)

local function Hello(m)
    if m == 0 then
        print(false)
    end
end

Hello(11)
