---@meta
---
--- debugger
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Debugger
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3328
---
--- Attaches the debugger to the opened process.
---@param debuggerInterface DebuggerInterface? Defaults to 0 (the configured default).
function debugProcess(debuggerInterface) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3502
---@return boolean
---@nodiscard
function debug_isDebugging() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3344
---
--- Which debugger interface is attached. Returns nothing when the debugger is not
--- attached (LuaHandler.pas:3369-3370).
---
--- Two of the six `TDebuggerInterface` descendants have no branch here:
--- `TNetworkDebuggerInterface`, used whenever Cheat Engine debugs over a network
--- connection (debughelper.pas:3386), and `TDBVMDebugInterface` (debughelper.pas:3402).
--- With either of those attached the function still reports one return value
--- (LuaHandler.pas:3367) without having pushed anything - only a macOS build escapes it,
--- because line 3361 pushes 4 there unconditionally. `luaD_poscall` is then handed
--- `L->top - 1`, the called function's own stack slot, and copies that out (ldo.c:340,
--- ldo.c:394-399). The caller gets this function object back: truthy, and never one of
--- the numbers. Compare against the value you expect instead of testing for nil.
---@return DebuggerInterface|function|nil debuggerInterface
---@nodiscard
function debug_getCurrentDebuggerInterface() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3510
---
--- True when there is at least one breakpoint, or a thread is already halted.
---@return boolean
---@nodiscard
function debug_canBreak() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3525
---@return boolean
---@nodiscard
function debug_isBroken() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3533
---@return boolean
---@nodiscard
function debug_isStepping() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3688
---
--- Suspends one thread of the target, starting the debugger first if needed.
---@param threadID integer
function debug_breakThread(threadID) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3373
---@return integer[]? addresses
---@nodiscard
function debug_getBreakpointList() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3664
---
--- The parameter list is position dependent: as soon as a function (or function name)
--- is found the remaining slots are not parsed, so `debug_setBreakpoint(addr, cb)` and
--- `debug_setBreakpoint(addr, size, trigger, method, cb)` are both valid.
---@param address CEAddress
---@param size integer? Watch size. Defaults to 1.
---@param trigger BreakpointTrigger? Defaults to 0 (bptExecute).
---@param method BreakpointMethod? Defaults to the configured preferred method.
---@param callback CECallback? Called when the breakpoint hits.
---@overload fun(address: CEAddress, callback: CECallback)
---@overload fun(address: CEAddress, size: integer, trigger: BreakpointTrigger, callback: CECallback)
function debug_setBreakpoint(address, size, trigger, method, callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3541
---
--- Same as `debug_setBreakpoint`, restricted to one thread. Raises an error when called
--- with no parameters at all; a missing address alone is read as 0.
---@param threadID integer
---@param address CEAddress
---@param size integer? Defaults to 1.
---@param trigger BreakpointTrigger? Defaults to 0 (bptExecute).
---@param method BreakpointMethod? Defaults to the configured preferred method.
---@param callback CECallback?
---@overload fun(threadID: integer, address: CEAddress, callback: CECallback)
---@overload fun(threadID: integer, address: CEAddress, size: integer, trigger: BreakpointTrigger, callback: CECallback)
function debug_setBreakpointForThread(threadID, address, size, trigger, method, callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3671
---
--- Returns nothing usable. `debug_removeBreakpoint` pushes `ce_debug_removeBreakpoint`'s
--- boolean and reports one return value (LuaHandler.pas:3681-3682), but then runs
--- `lua_pop(L, lua_gettop(L))` (LuaHandler.pas:3685), which empties the stack before that
--- return count is honoured. `luaD_poscall` is then handed `L->top - 1`, the called
--- function's own stack slot, and copies that slot out as the single result (ldo.c:340,
--- ldo.c:394-399), so the caller gets the `debug_removeBreakpoint` function object back -
--- a truthy value, never the boolean and never nil. Never test the result. Cheat Engine's
--- own documentation lists no return value either (`Cheat Engine/bin/celua.txt:775`).
---@param address CEAddress
---@return any unused The called function itself; carries no information - see above.
function debug_removeBreakpoint(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3725
---@param method ContinueOption
function debug_continueFromBreakpoint(method) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3740
---@param threadID integer
---@return boolean success False when the debugger is not attached.
function debug_addThreadToNoBreakList(threadID) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3752
---@param threadID integer
---@return boolean success False when the debugger is not attached.
function debug_removeThreadFromNoBreakList(threadID) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10921
---
--- Publishes the context of the halted thread as the `THREADID`, `EFLAGS` and register
--- globals.
---@param extraRegisters boolean? Also publish FPU/SSE registers. Slower. Defaults to false.
---@return boolean success False when no thread is halted.
function debug_getContext(extraRegisters) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10940
---
--- Writes the register globals back into the halted thread's context.
---@param extraRegisters boolean? Defaults to false.
---@return boolean success False when no thread is halted.
function debug_setContext(extraRegisters) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10921
---@param extraRegisters boolean?
---@return boolean success
function getDebugContext(extraRegisters) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10940
---@param extraRegisters boolean?
---@return boolean success
function setDebugContext(extraRegisters) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10958
---
--- Refreshes the memory viewer with the halted thread's context.
function debug_updateGUI() end


---------------------------------------------------------------------------------------
-- GDB server debugger interface
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L16116
---@return boolean? connected Nothing when the GDB interface is not the active one.
---@nodiscard
function gdb_connected() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L16126
---@return boolean? stopped
---@nodiscard
function gdb_stopped() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L16136
---
--- Takes the interface lock and suspends the target.
---@return any unused
---@return true? success
function gdb_break() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L16171
---
--- Resumes the target and releases the interface lock.
---@return any leftover
function gdb_resumefrombreak() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L16183
---
--- Sends a raw GDB remote packet and returns the reply.
---@param packet string? Defaults to "".
---@param timeout integer? Milliseconds. Defaults to 2000.
---@return string? reply
function gdb_command(packet, timeout) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L16209
---
--- Note the registered name is misspelled in Cheat Engine.
---@return string? stopPacket
---@nodiscard
function gdb_getcurrentstopreaon() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L16149
---@return integer? programCounter
---@nodiscard
function gdb_getCurrentInstructionPointer() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L16159
---@param address CEAddress
function gdb_setCurrentInstructionPointer(address) end
