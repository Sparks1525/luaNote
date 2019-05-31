

--[[
参考博文pdf:
lua 中pairs 和 ipairs区别 - _Witch__的专栏 - CSDN博客
Lua内容关于for循环的总结（一） - StrayInWorld的博客 - CSDN博客
Lua内容关于for循环的总结（二） - StrayInWorld的博客 - CSDN博客
]]--

-- test

--function list_iter(tab)
--    local i=0
--    return function()
--        i=i+1
--        return tab[i]
--    end
--end
--
--tab={12,233,1221,231}
--
--for k in list_iter(tab) do
--    print(k)
--end


-- -----------------------------------------

--function list_iter(tab)
--    local i=0
--    --因为下面的函数返回的第一个值是i,所以var=i
--    return function(s,var)
--        i=i+1
--        if tab[i]==nil then
--            return nil
--        end
--        print("恒定值"..s,"控制变量"..var)
--        return i,tab[i]
--    end,10,0   --这里就是返回迭代器函数以及恒定状态和控制变量值。
--end
--
--t={"aaaa","aaa","aa"}
--for k,v in list_iter(t) do
--    print(k,v)
--end

--function list_iter(tab)
--    local i=0
--    --因为下面的函数返回的第一个值是i,所以var=i
--    return function()
--        i=i+1
--        if tab[i]==nil then
--            return nil
--        end
--        --print("恒定值"..s,"控制变量"..var)
--        return i,tab[i]
--    end   --这里就是返回迭代器函数以及恒定状态和控制变量值。
--end
--
--t={"aaaa","aaa","aa"}
--for k,v in list_iter(t) do
--    print(k,v)
--end

-- -----------------------------------------

--function square(iteratorMaxCount, currentNumber)
--    if currentNumber < iteratorMaxCount
--    then
--        currentNumber = currentNumber + 1
--        return currentNumber, currentNumber * currentNumber
--    end
--end
--
--function list_iter(tb, len, idx)
--    local tt = idx
--    return function()
--        tt = tt + 1
--        return square(len, tt - 1)
--    end
--end
--
--for i, n in list_iter(square, 3, 0) do
--    print(i, n)
--end

-- -----------------------------------------

--[[
    in 后面有三个值:
    迭代器函数 list_iter
    恒定状态 3
    控制变量的初值 0

    把 3 和 0 传入 function(s,v) 并返回 键 v, 值 tab[v]
    把 3 和 1 传入 function(s,v) 并返回 键 v, 值 tab[v]
    把 3 和 2 传入 function(s,v) 并返回 键 v, 值 tab[v]

    结果:
    1	12
    2	233
    3	1221
]]--

--function list_iter(tab)
--
--    return function(s,v)
--        v=v+1
--        if v > s then
--            return nil
--        end
--        return v,tab[v]
--    end,3,0
--end
--
--tab={12,233,1221,231}
--
--for k,v in list_iter(tab) do
--    print(k,v)
--end

-- -----------------------------------------
--function list_iter(tab)
--    local i=0
--    return function()
--        print("i:"..i)
--        -- 当 i = 4时 tab[4]为nil 闭包函数返回nil 循环跳出
--        i=i+1
--        return tab[i]
--    end
--end
--
--tab={12,233,1221,231}
--
--for k in list_iter(tab) do
--    print(k)
--end
