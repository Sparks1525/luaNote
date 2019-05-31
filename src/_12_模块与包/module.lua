module = {}
module.constant = "这是一个常量"
module.constant2 = "第二个常量"
function module.func1()
    print("这是一个公有函数")
end
local function func2()
    print("这是一个私有函数")
end
function module.func3()
    func2()
end
return module