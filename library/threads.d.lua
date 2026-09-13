---@meta
---
--- threads
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Threads, synchronisation and hotkeys
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3450
---@return integer threadID
---@nodiscard
function getCurrentThreadID() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3496
---@return boolean
---@nodiscard
function inMainThread() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3456
---
--- Runs `func` on the main thread and waits for it to finish.
---@param func CECallback
---@param ... any Passed on to `func`. When none are given, `TLuaCaller.synchronize` pushes
--- a single nil instead (LuaCaller.pas:379), so `func` always receives at least one argument.
---@return any result The one value `lua_pcall` is asked to keep (LuaCaller.pas:383), so
--- nil when `func` returns nothing.
function synchronize(func, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3409
---
--- Queues `func` to run on the main thread and returns immediately. The queued call is
--- executed by `checkSynchronize`.
---@param func CECallback
---@param ... any Accepted and recorded on the TLuaCaller, but never delivered:
--- `TLuaCaller.queue` calls `lua_pcall(Luavm, 0, 0, 0)` (LuaCaller.pas:395), so `func`
--- always runs with no arguments.
function queue(func, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3399
---
--- Runs the pending `synchronize`/`queue` calls of this thread.
---@param timeout integer? Milliseconds to wait. Defaults to 0.
function checkSynchronize(timeout) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L16108
---
--- Turns the "this call is not thread safe" check on or off.
---@param state boolean
function setThreadSafetyCheck(state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/hotkeyhandler.pas#L42
---
--- Pascal class: `THotkeythread`, the thread `getHotkeyHandlerThread` returns.
---
--- `THotkeythread` is never passed to `luaclass_register`, so the userdata carries the
--- metatable of `TThread` (registered at LuaThread.pas:597) and every `Thread` method
--- works on it. The fields inherited from `Thread` do not: those are published properties
--- of `TCEThread` (LuaThread.pas:51-56), a different `TThread` descendant, so reading them
--- on this object yields nil. `state` below is `THotkeythread`'s only published property
--- (hotkeyhandler.pas:59-60), reached through the `lua_getProperty` RTTI fallback
--- `luaclass_index` installs at LuaClass.pas:578.
---@class HotkeyThread : Thread
---@field state string|integer Whether the hotkey poll loop acts on hotkeys, and on which kind. Reads back the `THotkeyThreadState` member name (hotkeyhandler.pas:39) - `'htsActive'`, `'htsMemrecOnly'`, `'htsNoMemrec'` or `'htsDisabled'` - because a tkEnumeration property falls through to `GetPropValue(c, p, true)` at LuaObject.pas:213; assigning takes that name or the matching integer 0..3 (LuaObject.pas:299-307).

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14536
---@return HotkeyThread thread The thread that polls the hotkeys.
---@nodiscard
function getHotkeyHandlerThread() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4703
---@param interval integer Milliseconds between key state polls.
function setGlobalKeyPollInterval(interval) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4711
---@param milliseconds integer Idle time enforced between two hotkey activations.
function setGlobalDelayBetweenHotkeyActivation(milliseconds) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15979
---
--- Creates a thread in the target process through the mach API. macOS only.
---
--- ARM64 only in practice: the working body is guarded by `SystemArchitecture=archArm`
--- (LuaHandler.pas:16007) and the x86 branch is empty (LuaHandler.pas:16023-16026), so on
--- any other target architecture the call returns no values at all, after leaking the 64KB
--- stack it allocated in the target with `VirtualAllocEx` (LuaHandler.pas:15993).
---@param address integer Address in the target process the new thread starts executing at.
---@return integer? resumeResult The `ResumeThread` return value; nil when the stack allocation or `thread_create` failed, and nothing at all on a non-ARM64 target.
---@return integer|string|nil threadHandle Thread handle on success; `'stack creation failure'` or `'thread_create failure'` on failure.
function createMachThread(address) end
