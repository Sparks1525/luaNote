--
--file = io.open("D:/Sparks/Github/luaNote/src/_21_test/_test.lua")
--
--
--io.input(file)
--
--print(file)
--print(io.read("*n"))
--print(io.read("*l"))
--print(io.read(10))
--
--io.close()
--
--
--file = io.open("D:/Sparks/Github/luaNote/src/_21_test/_test2.lua","a")
--
--io.output(file)
--
--io.write("-- test.lua 文件末位注释")
--
--io.close()



file = io.open("D:/Sparks/Github/luaNote/src/_21_test/_test.lua","r")

print(file:read())
file.close()






