-- 字符串操作
local str1 = "accd"

-- 小写字符转大写
local str2 = string.upper(str1)

print(str2)

-- 转小写操作
local str3 = string.lower(str1)

-- 获取字符串长度
print(string.len(str1))

-- 反转字符串
print(string.reverse(str1))

-- 链接字符串
print(str1 .. str2)

-- 在连接字符串的时候，如果左边是number，那么数字后面需要空格

local str5 = "ABFF033A"

local str6 = "abc123"
-- 截取字符串，开始，结束位置
-- 可以是负数，代表从右往左截取
print(string.sub(str1, 1, 3))

print(string.find(str6, "%c", 6))       --开启正则匹配模式
print(string.find(str6, "%c", 1, true)) --最后一个参数，默认是false，开启正则匹配，如果为true，是直接当子串处理

print(string.gsub(str6, "bc", "cd"))    --替换
print(string.gsub(str6, "bc", "cd", 2)) --替换，最多替换两次

print(string.char(65))                  -- asscii 转码字符，数字只能从零到255

print(string.byte("a"))                 --字符转asscii
