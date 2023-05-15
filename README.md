## lua 基础

lua hello.lua 执行命令
luac hello.lua 编译命令
luac -o [outputname] hello.lua 自定义编译出的文件

`--` ：单行注释
`--[[多行注释]]--`

### 1、lua 代码的变量命名规范

1. 弱类型语言，动态类型语言，定义变量的时候，不需要类型修饰
   变量类型还可以随意改变

```lua
a=123
print(a)

a="abc"
print(a)

```

2. 每行代码结束的时候，要不要分号都可以

3. 命名规范
   变量名 由数字，字母下划线组成，不能以数字开头，不能使用保留字
   不能是特殊字符 @,$,%也可以用来定义标识符，区分大小写，避免创建下划线加大写字母的变量名

4. 变量类型

- 全局变量

默认创建的都是全局变量，现在好像推荐首字母大写

- 局部变量

局部变量使用 local 关键字修饰，并且推荐使用首字母小写
局部变量的作业域只在当前代码块里

```lua
do
  这就相当于作于域(也是代码块)
end

```

- 表字段

### 2、变量类型

lua 中有基本数据类型：
nil、boolean、number、string、function、thread、userdata、table

- nil:表示一个无效值
- boolean:表示布尔类型的值，true false 只有 nil false 为 false
- number:不区分整形和浮点型
- string:单双引号都可以 原始输出[[\]\]
- function:表示函数
- userdata:自定义数据格式
- thread:协程
- table:表