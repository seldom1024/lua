---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by seldom.
--- DateTime: 2020/5/1 22:29
---

myTable = {"apple", "orange", "banana"}

print(collectgarbage("count"))

myTable = nil

print(collectgarbage("count"))

print(collectgarbage("collect"))

print(collectgarbage("count"))