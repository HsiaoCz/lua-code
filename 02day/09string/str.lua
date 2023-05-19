-- 字符串的处理操作

local str1 = "abcd"
local str2 = string.upper(str1) --转大写

print(str2)

local str3 = string.lower(str1)
print(str3)

print(string.len(str1))     --字符串长度

print(string.reverse(str1)) --反转字符串

print("abc" .. "cde")       --链接字符串
-- .. 连接字符串需要注意的是，如果number在左边的话
-- 数字后面需要空格

local str5 = "AB671225"
print(string.sub(str5, 1, 5)) --截取字符串，开始，结束位置，结束位置可以不写
print(string.sub(str5, -5)) --负数从右往左截取
