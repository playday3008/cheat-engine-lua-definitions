---@meta
---
--- legacy / threads
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L365
---
--- Pre-6.3 spelling of `Thread:freeOnTerminate()`.
---
--- This form always turns free-on-terminate ON. It reads its flag from absolute stack slot
--- 1, which in the flat form holds the thread object itself, and `lua_toboolean` reports
--- any userdata as true - so `FreeOnTerminate` never reaches the thread. Use the method
--- form to turn the flag off.
---@deprecated Use `Thread:freeOnTerminate()`.
---@param thread Thread
---@param FreeOnTerminate boolean Ignored; this form always sets the flag to true.
function thread_freeOnTerminate(thread, FreeOnTerminate) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L375
---
--- Pre-6.3 spelling of `Thread:synchronize()`.
---@deprecated Use `Thread:synchronize()`.
---@return any
---@param thread Thread
---@param f CECallback|string
---@param ... any
function thread_synchronize(thread, f, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L427
---
--- Pre-6.3 spelling of `Thread:waitfor()`.
---@deprecated Use `Thread:waitfor()`.
---@param thread Thread
function thread_waitfor(thread) end
