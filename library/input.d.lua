---@meta
---
--- input
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Input
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3073
---
--- Accepts a virtual key code, or a string whose first character is used.
--- Keys at or above `VK_PAD_A` are routed to the XInput handler.
---@param key integer|string
---@return boolean? pressed
---@nodiscard
function isKeyPressed(key) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3148
---
--- Sends a key down event. Windows only.
---@param key integer|string
function keyDown(key) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3182
---
--- Sends a key up event. Windows only.
---@param key integer|string
function keyUp(key) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3215
---
--- Key down, 110 ms wait, key up. Windows only.
---@param key integer|string
function doKeyPress(key) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3125
---
--- Raw `mouse_event`. Windows only. Only `flags` is required.
---@param flags integer MOUSEEVENTF_* combination.
---@param x integer?
---@param y integer?
---@param data integer?
---@param extraInfo integer?
function mouse_event(flags, x, y, data, extraInfo) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3005
---@return integer? x
---@return integer? y
---@nodiscard
function getMousePos() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3021
---@param x integer
---@param y integer
function setMousePos(x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2973
---
--- Colour of a screen pixel.
---@param x integer
---@param y integer
---@return integer? color
---@nodiscard
function getPixel(x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10487
---
--- Formats up to 5 key codes as a hotkey string. Accepts them as separate parameters
--- or as one table.
---@param key1 integer
---@param ... integer
---@return string
---@overload fun(keys: integer[]): string
---@nodiscard
function convertKeyComboToString(key1, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10258
---@param shortcut integer LCL shortcut value.
---@return string? text
---@nodiscard
function shortCutToText(shortcut) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10269
---@param text string For example "Ctrl+Alt+F5".
---@return integer? shortcut
---@nodiscard
function textToShortCut(text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12773
---
--- Reads one buffered keystroke from an XBox 360 controller. Windows only.
--- Without an index the first responding controller is used.
---@param controllerIndex integer?
---@return XBoxKeystroke? keystroke
---@nodiscard
function getXBox360ControllerKeyPress(controllerIndex) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12826
---
--- Windows only.
---@param controllerIndex integer?
---@return XBoxControllerState? state
---@nodiscard
function getXBox360ControllerState(controllerIndex) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12901
---
--- Windows only.
---@param controllerIndex integer
---@param leftMotorSpeed integer 0-65535.
---@param rightMotorSpeed integer 0-65535.
---@return boolean? success
function setXBox360ControllerVibration(controllerIndex, leftMotorSpeed, rightMotorSpeed) end
