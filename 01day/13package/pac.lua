-- lua中的模块与包
-- lua中的模块是由变量、函数等已知元素组成的table
-- 创建一个模块：新建一个table，然后将常量、函数放入其中，最后返回这个table

-- 文件名pac.lua
-- 定义一个pac的模块
Pac = {}

-- 定义一个常量

Pac.constant = "这是一个常量"

-- 定义一个函数
function Pac.hello()
    io.write("这是一个共有的函数..\n")
end

local function hi()
    print("这是一个私有的函数")
end

hi()
function Pac.hello2()
    hi()
end

return Pac

-- 模块的结构就是一个table结构，因此可以像操作table里的元素那样来操作调用模块里的常量或函数
-- 私有函数的访问 需要通过共有模块函数
-- require函数 可以加载模块
-- require("模块名")
-- require "模块名"
