---
---table 是 Lua 的一种数据结构用来帮助我们创建不同的数据类型，如：数组、字典等。
---Lua table 使用关联型数组，你可以用任意类型的值来作数组的索引，但这个值不能是 nil。
---Lua table 是不固定大小的，你可以根据自己需要进行扩容。
---Lua也是通过table来解决模块（module）、包（package）和对象（Object）的。
---例如string.format表示使用"format"来索引table string。
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by qi.zhang.
--- DateTime: 2020/4/28 9:54
---


---表的构造
---构造器是创建和初始化表的表达式。表是Lua特有的功能强大的东西。最简单的构造函数是{}，用来创建一个空表。
---可以直接初始化数组
-- 初始化表
myTable = {}

-- 指定值
myTable[1]= "Lua"

-- 移除引用
myTable = nil
-- lua 垃圾回收会释放内存

---倒序排列
myTable2 = {1, 2, 3, 4, 5}
function myCmp(a, b)
    return a > b;
end
print(myTable2[1])
table.sort(myTable2, myCmp)
print(myTable2[1])