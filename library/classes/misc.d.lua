---@meta
---
--- classes / misc
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGenericHotkey.pas#L150
---
--- Pascal class: `TGenericHotkey`.
---@class GenericHotkey : Object
---@field OnHotkey CECallback
---@field delayBetweenActivate integer Minimum number of milliseconds between two activations of this hotkey. Reachable through the published-property fallback; reads 0 while the hotkey is not registered.
local GenericHotkey = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGenericHotkey.pas#L90
---
--- Replaces the whole key combination. Pass at most five keys: `TGenericHotkey.keys` is a
--- `TKeyCombo`, an `array[0..4] of word` (commontypedefs.pas:136), and the copy loop at
--- LuaGenericHotkey.pas:103-104 is bounded only by the argument count, so a sixth or later
--- argument writes past the end of the array, into the padding or the fields the compiler
--- laid out after `keys` in the object (genericHotkey.pas:12-13). `createHotkey` clamps its
--- own key list to five (LuaGenericHotkey.pas:51); this does not.
---@param key integer
---@param ... integer
---@overload fun(key: integer, ...: integer)
function GenericHotkey:setKeys(key, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGenericHotkey.pas#L108
---@return integer ...
---@overload fun(): integer
function GenericHotkey:getKeys() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGenericHotkey.pas#L135
---@param callback CECallback? nil clears the handler.
---@overload fun(callback?: CECallback)
function GenericHotkey:setOnHotkey(callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGenericHotkey.pas#L126
---@return CECallback|nil
---@overload fun(): CECallback|nil
function GenericHotkey:getOnHotkey() end
