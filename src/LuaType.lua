---
--- Lua的基本数据类型 Lua 是动态类型语言，变量不要类型定义,只需要为变量赋值。 值可以存储在变量中，作为参数传递或结果返回。
--- Lua 中有 8 个基本类型分别为：nil、boolean、number、string、userdata、function、thread 和 table。
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by qi.zhang.
--- DateTime: 2020/4/26 15:57
--- nil         这个最简单，只有值nil属于该类，表示一个无效值（在条件表达式中相当于false）。
--- boolean	    包含两个值：false和true。
--- number	    表示双精度类型的实浮点数
--- string	    字符串由一对双引号或单引号来表示
--- function	由 C 或 Lua 编写的函数
--- userdata	表示任意存储在变量中的C数据结构
--- thread	    表示执行的独立线路，用于执行协同程序
--- table	    Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字、字符串或表类型。在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。
---

-- 定义判断函数
function printType(tp)
    print(type(tp))
end

printType("Hello")
printType(10)
printType(10.4)
printType(10.4 * 3)
printType(print)
printType(true)
printType(nil)
printType(type(x))
printType({"key1", 70, "key2", "Hello"})
--- string
--- number
--- number
--- number
--- function
--- boolean
--- nil
--- string
--- table


--- 对于全局变量和 table，nil 还有一个"删除"作用，
--- 给全局变量或者 table 表里的变量赋一个 nil 值，等同于把它们删掉，
--- 执行下面代码就知：
tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end


print("able 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil。")
--- table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil。
a3 = {}
for i = 1, 10 do
    a3[i] = i
end

a3["key"] = "val"
print(a3["key"])
print(a3["none"])
print(a3[1])
print(a3[10])
print(a3)