---@meta
---
--- aliases-spelling
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Alternate spellings
--
-- Each of these is its own `lua_register` call, sitting one to three lines away from the
-- canonical spelling it duplicates - five in `InitLimitedLuastate` (LuaHandler.pas:16219),
-- the other five in `InitializeLua` (LuaHandler.pas:16397), which calls it. They are the
-- same functions, and not products of the first-character case flip described in
-- scope.d.lua; the canonical spellings are declared in the file that covers their part of
-- the API.
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9159
--- See `utf8ToAnsi`.
---@param s string
---@return string? converted
---@nodiscard
function UTF8ToAnsi(s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9179
--- See `ansiToUtf8`.
---@param s string
---@return string? converted
---@nodiscard
function ansiToUTF8(s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15480
--- See `compileCS`.
---@param script string
---@param references string|string[]?
---@param coreAssembly string?
---@return string? assemblyPath
---@return string? errorMessage
function compilecsharp(script, references, coreAssembly) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14934
--- See `getAutoRunPath`.
---@return string path
---@nodiscard
function getAutorunPath() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9384
--- See `getProcessList`.
---@return table<integer, string> processes
---@overload fun(list: Strings)
---@nodiscard
function getProcesslist() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9428
--- See `getThreadList`.
---@param list Strings
function getThreadlist(list) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9312
--- See `getWindowList`.
---@return table<integer, string[]> windows
---@overload fun(list: Strings)
---@nodiscard
function getWindowlist() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4508
--- See `waitForExports`.
function waitforExports() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4515
--- See `waitForDotNet`.
function waitforDotNet() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4521
--- See `waitForPDB`.
function waitforPDB() end
