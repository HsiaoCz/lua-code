-- lua里面的string
local str1 = "abcd"
local str2 = string.upper(str1)

print(str2)

print(string.len(str2))     --获取字符串的长度
print(string.reverse(str1)) --反转字符串
print(str1 .. str2)         --连接字符串

local str5 = "hello World"
print(string.sub(str5, 1, 5))      --截取字符串
print(string.find(str5, "hell"))   --查找字符串
print(string.find(str5, "%hell", 1)) --开启正则匹配模式
-- string.gsub() 替换
-- string.char() 转码字符
-- string.byte() asscii转字符
