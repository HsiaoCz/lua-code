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
print(string.sub(str5, -5))   --负数从右往左截取

-- 查找字符串
local str6 = "122222aaac"
print(string.find(str6, "22"))
print(string.find(str6, "22", 1))  --从指定位置开始查找
print(string.find(str6, "22", -6)) -- 如果是负数，则是从字符串长度+负数的位置开始找


print(string.find(str6, "%c", 6))       --开启正则匹配模式
print(string.find(str6, "%c", 1, true)) --最后一个参数，默认是false，开启正则匹配，如果为true，是直接当子串处理

local str6 = "abc123"
print(string.gsub(str6, "bc", "cd")) --替换
print(string.gsub(str6, "bc", "cd",2)) --替换，最多替换两次

print(string.char(65)) -- asscii 转码字符，数字只能从零到255

print(string.byte("a")) --字符转asscii
