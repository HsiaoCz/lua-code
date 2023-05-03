-- lua字符串有以下三种表示方法
-- 单引号间的一串字符串
-- 双引号间的一串字符串
-- [[]]间的一串字符串

local string1 = "lua"
print("\"字符串1是\"", string1)

local string2 = 'hello'
print(string2)

local string3 = [["lua hello"]]
print(string3)

-- 字符串操作
-- string.upper():字符串转为大写
-- string.lower():字符串转为小写
-- string.gsub(mainString,findString,replaceString,num)替换字符串
local ss = string.gsub("aaaa", "a", "z", 2)
print(ss)

-- string.find(str,substr,[init,[plain]])
-- 在一个指定的目标字符串 str 中搜索指定的内容 substr，如果找到了一个匹配的子串，
-- 就会返回这个子串的起始索引和结束索引，不存在则返回 nil。
-- init 指定了搜索的起始位置，默认为 1，可以一个负数，表示从后往前数的字符个数。
-- plain 表示是否使用简单模式，默认为 false，true 只做简单的查找子串的操作，
-- false 表示使用使用正则模式匹配

local sss = string.find("hello lua user", "lua", 1)
print(sss)

-- string.reverse(arg)
-- 字符串反转

-- string.format()
-- 返回一个格式化的字符串

-- string.char(arg)和string.byte(arg[,int])
-- char将整形数字转换成字符并连接,byte转换字符串为整数值

-- string.len(arg)
-- 计算字符串长度

-- string.rep(string,n)
-- 返回字符串string的n个拷贝

-- ..连接字符串

-- string.gmath(str,pattern)
-- 返回一个迭代器函数，没一次调用这个函数，返回一个字符串str找到下一个符合pattern
-- 描述的字符串，如果描述的字符串没有找到，迭代器函数返回nil

for word in string.gmatch("hello lua user", "%a+") do
    print(word)
end

-- string.match(str,pattern,init)
-- string.match()只寻找源字串str中的第一个配对. 参数init可选, 指定搜寻过程的起点, 默认为1。
-- 在成功配对时, 函数将返回配对表达式中的所有捕获结果; 如果没有设置捕获标记, 则返回整个配对字符串.
-- 当没有成功的配对时, 返回nil

-- 字符串截取
-- 字符串截取使用sub()方法
-- string.sub()用于截取字符串
-- string.sub(s,i[,j])
-- 参数说明：
-- s:要截取的字符串
-- i:截取开始位置
-- j:截取结束位置，默认为-1，最后一个字符

local sourcestr = "prefix--runoobgoogletaobao--suffix"
print("\n原始字符串", string.format("%q", sourcestr))

-- 格式化字符串
-- Lua 提供了 string.format() 函数来生成具有特定格式的字符串, 函数的第一个参数是格式 ,
--  之后是对应格式中每个代号的各种数据。
-- 由于格式字符串的存在, 使得产生的长字符串可读性大大提高了。
-- 这个函数的格式很像 C 语言中的 printf()。
-- 以下实例演示了如何对字符串进行格式化操作：
-- 格式字符串可能包含以下的转义码:
-- %c - 接受一个数字, 并将其转化为ASCII码表中对应的字符
-- %d, %i - 接受一个数字并将其转化为有符号的整数格式
-- %o - 接受一个数字并将其转化为八进制数格式
-- %u - 接受一个数字并将其转化为无符号整数格式
-- %x - 接受一个数字并将其转化为十六进制数格式, 使用小写字母
-- %X - 接受一个数字并将其转化为十六进制数格式, 使用大写字母
-- %e - 接受一个数字并将其转化为科学记数法格式, 使用小写字母e
-- %E - 接受一个数字并将其转化为科学记数法格式, 使用大写字母E
-- %f - 接受一个数字并将其转化为浮点数格式
-- %g(%G) - 接受一个数字并将其转化为%e(%E, 对应%G)及%f中较短的一种格式
-- %q - 接受一个字符串并将其转化为可安全被Lua编译器读入的格式
-- %s - 接受一个字符串并按照给定的参数格式化该字符串
-- 为进一步细化格式, 可以在%号后添加参数. 参数将以如下的顺序读入:
-- (1) 符号: 一个+号表示其后的数字转义符将让正数显示正号. 默认情况下只有负数显示符号.
-- (2) 占位符: 一个0, 在后面指定了字串宽度时占位用. 不填时的默认占位符是空格.
-- (3) 对齐标识: 在指定了字串宽度时, 默认为右对齐, 增加-号可以改为左对齐.
-- (4) 宽度数值
-- (5) 小数位数/字串裁切: 在宽度数值后增加的小数部分n, 若后接f(浮点数转义符, 如%6.3f)则设定该浮点数的小数只保留n位, 
-- 若后接s(字符串转义符, 如%5.3s)则设定该字符串只显示前n位.