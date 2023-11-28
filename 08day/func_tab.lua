-- table中的function

local function show(a, b)
    print(a, b)
end

local t1 = {
    t1_show = show,
    t1_add = function(a, b)
        return a + b
    end
}

t1.t1_show("abc", 123)
t1["t1_show"]("abc", 123)

t1.t1_add(123, 456)

Calc = {
    c = 0,
    d = 1,
    add = function(a, b)
        return a + b
    end,

    sub = function(a, b)
        return a - b
    end,
    mult = function(a, b)
        return a * b
    end,
    show = function(a)
        print(a)
    end,
    sl = function()
        print(Calc.c, Calc.d)
    end
}

Calc.add(1, 2)
Calc.mult(1, 2)
Calc.sub(1, 2)
Calc.show(1)
