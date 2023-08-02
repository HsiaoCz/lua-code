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


