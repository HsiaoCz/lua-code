-- lua的流程控制

local a, b = 1, 2

if a == 1 then
    print(b)
end

if a > 1 then
    print(a)
else
    print(b)
end

if a > 2 then
    print(a)
elseif a == 3 then
    print(a)
elseif a == 4 then
    print(a)
else
    print(b)
end

local c, d = 100, 101

if c > 100 then
    print("学神")
elseif c > 80 and c <= 100 then
    print(c)
elseif c > 60 and c <= 80 then
    print(c)
else
    print(d)
end
