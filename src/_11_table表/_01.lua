temp = 1
tab = {[temp] = 1, 11}
print(tab[temp])

for k,v in ipairs(tab) do
    print(k.. ":" .. v)
end

print("------------")

temp = 1
tab = {11, [temp] = 1}
print(tab[temp])

for k,v in ipairs(tab) do
    print(k.. ":" .. v)
end

print("------------")

tab = {[1] = 1,[2] = 2,[3] = 3,10,11,12,13}
for k,v in ipairs(tab) do
    print(k..":"..v)
end

print("------------")

tab = {10,11,12,["aa"]=13,[4] = 1,[2] = 2,[7] = 3}
for k,v in ipairs(tab) do
    print(k..":"..v)
end

print("------------")

tab={a="a", b="b",1,["c"] = "c"}
print(tab[1])
print(tab.a)
print(tab[a])
print(tab.b)
print(tab["b"])
print(tab["c"])
for k,v in ipairs(tab) do
    print(k..":"..v)
end