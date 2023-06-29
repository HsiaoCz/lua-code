print("hello")

-- require
-- 运行指定文件
-- 末尾不带扩展名
-- 目录层级用"."分割
-- 只会运行一次
-- 会从package.path里面查找

local b = require("05day.hello")
print(b)

-- 多次调用

local h1 = require("05day.hello1")
h1.say()
