-- lua协程
-- 也叫协同式多线程
-- 一个协程在lua中代表了一段独立的执行线程
-- 与多线程的区别，协程仅显式调用一个让出(yield)函数时才挂起当前的执行

-- 每一个协程在一个单独的线程上运行
-- 只不过是分时复用而已
-- coroutine.create(f) 创建一个thread类型
-- f必须是一个function

local co = coroutine.create(function()
    print("hello World")
    coroutine.yield(1, 2, 3)
    print("lua协程")
end)

print(type(co))

-- coroutine.resume()
-- 使协程开始或继续运行

coroutine.resume(co)

-- coroutine.yield()
-- 挂起协程
-- 可以传递参数
-- 传递的参数会返回给coroutine.resume()
-- 返回的有一个布尔值，如果无错，为true
-- 如果有错，返回false
-- coroutine.wrap() 返回的是一个函数类型
-- coroutine.status() 返回协程的状态
-- 在外面运行，要么全局的，要么死掉的
