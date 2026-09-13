---@meta
---
--- aliases / case-flip twins
---
--- `LuaHandler.lua_register` registers every name twice, flipping the case of the first
--- character (LuaHandler.pas:226). Only the spelling Cheat Engine passes to `lua_register`
--- is declared - see `scope.d.lua` - with these exceptions: Cheat Engine's own shipped
--- scripts call the flipped form, so leaving them out reports an undefined global in code
--- that ships with the program.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.


--- Case-flip twin of `createMenuItem`, created by the `lua_register` override
--- (LuaHandler.pas:226). Cheat Engine's own scripts use this spelling.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L63
---@param ownermenu Component
---@return MenuItem
function CreateMenuItem(ownermenu) end

--- Case-flip twin of `messageDialog`, created by the `lua_register` override
--- (LuaHandler.pas:226). Cheat Engine's own scripts use this spelling.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3822
---@param message string
---@param dialogType MsgDlgType?
---@param ... MsgDlgButton
---@return integer? modalResult
---@overload fun(title: string, message: string): integer?
---@overload fun(title: string, message: string, dialogType: MsgDlgType, ...: MsgDlgButton): integer?
function MessageDialog(message, dialogType, ...) end

--- Case-flip twin of `getTickCount`, created by the `lua_register` override
--- (LuaHandler.pas:226). Cheat Engine's own scripts use this spelling.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8846
---@return integer
---@nodiscard
function GetTickCount() end

--- Case-flip twin of `openProcess`, created by the `lua_register` override
--- (LuaHandler.pas:226). Cheat Engine's own scripts use this spelling.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3275
---@param processID integer
---@return true? success
---@overload fun(processName: string): true?
function OpenProcess(processID) end

--- Case-flip twin of `checkSynchronize`, created by the `lua_register` override
--- (LuaHandler.pas:226). Cheat Engine's own scripts use this spelling.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3399
---@param timeout integer? Milliseconds to wait. Defaults to 0.
function CheckSynchronize(timeout) end
