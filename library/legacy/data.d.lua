---@meta
---
--- legacy / data
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L64
---
--- Pre-6.3 spelling of `StringList:getCaseSensitive()`.
---@deprecated Use `StringList:getCaseSensitive()`.
---@param stringlist StringList
---@return boolean
function stringlist_getCaseSensitive(stringlist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L23
---
--- Pre-6.3 spelling of `StringList:getDuplicates()`.
---@deprecated Use `StringList:getDuplicates()`.
---@param stringlist StringList
---@return integer
function stringlist_getDuplicates(stringlist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L44
---
--- Pre-6.3 spelling of `StringList:getSorted()`.
---@deprecated Use `StringList:getSorted()`.
---@param stringlist StringList
---@return boolean
function stringlist_getSorted(stringlist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L73
---
--- Pre-6.3 spelling of `StringList:setCaseSensitive()`.
---@deprecated Use `StringList:setCaseSensitive()`.
---@param stringlist StringList
---@param value boolean
function stringlist_setCaseSensitive(stringlist, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L32
---
--- Pre-6.3 spelling of `StringList:setDuplicates()`.
---@deprecated Use `StringList:setDuplicates()`.
---@param stringlist StringList
---@param value integer
function stringlist_setDuplicates(stringlist, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L53
---
--- Pre-6.3 spelling of `StringList:setSorted()`.
---@deprecated Use `StringList:setSorted()`.
---@param stringlist StringList
---@param value boolean
function stringlist_setSorted(stringlist, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L24
---
--- Pre-6.3 spelling of `Strings:add()`.
---@deprecated Use `Strings:add()`.
---@param strings Strings
---@param s string
---@param data integer?
---@return integer
function strings_add(strings, s, data) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L44
---
--- Pre-6.3 spelling of `Strings:clear()`.
---@deprecated Use `Strings:clear()`.
---@param strings Strings
function strings_clear(strings) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L157
---
--- Pre-6.3 spelling of `Strings:delete()`.
---@deprecated Use `Strings:delete()`.
---@param strings Strings
---@param index integer
function strings_delete(strings, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L259
---
--- Pre-6.3 spelling of `Strings:getCount()`.
---@deprecated Use `Strings:getCount()`.
---@param strings Strings
---@return integer
function strings_getCount(strings) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L119
---
--- Pre-6.3 spelling of `Strings:getString()`.
---@deprecated Use `Strings:getString()`.
---@param strings Strings
---@param index integer
---@return string
function strings_getString(strings, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L174
---
--- Pre-6.3 spelling of `Strings:getText()`.
---@deprecated Use `Strings:getText()`.
---@param strings Strings
---@return string
function strings_getText(strings) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L222
---
--- Pre-6.3 spelling of `Strings:indexOf()`.
---@deprecated Use `Strings:indexOf()`.
---@param strings Strings
---@param s string
---@return integer
function strings_indexOf(strings, s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L239
---
--- Pre-6.3 spelling of `Strings:insert()`.
---@deprecated Use `Strings:insert()`.
---@param strings Strings
---@param index integer
---@param s string
function strings_insert(strings, index, s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L268
---
--- Pre-6.3 spelling of `Strings:loadFromFile()`.
---@deprecated Use `Strings:loadFromFile()`.
---@param strings Strings
---@param filename string
---@param ignoreencoding boolean?
---@return boolean
function strings_loadFromFile(strings, filename, ignoreencoding) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L71
---
--- Pre-6.3 spelling of `Strings:remove()`.
---@deprecated Use `Strings:remove()`.
---@param strings Strings
---@param s string
function strings_remove(strings, s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L292
---
--- Pre-6.3 spelling of `Strings:saveToFile()`.
---@deprecated Use `Strings:saveToFile()`.
---@param strings Strings
---@param filename string
---@return boolean
function strings_saveToFile(strings, filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L138
---
--- Pre-6.3 spelling of `Strings:setString()`.
---@deprecated Use `Strings:setString()`.
---@param strings Strings
---@param index integer
---@param s string
function strings_setString(strings, index, s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L183
---
--- Pre-6.3 spelling of `Strings:setText()`.
---@deprecated Use `Strings:setText()`.
---@param strings Strings
---@param text string
function strings_setText(strings, text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTableFile.pas#L141
---
--- Pre-6.3 spelling of `TableFile:delete()`.
---@deprecated Use `TableFile:delete()`.
---@param tablefile TableFile
function tablefile_delete(tablefile) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTableFile.pas#L168
---
--- Pre-6.3 spelling of `TableFile:getData()`.
---@deprecated Use `TableFile:getData()`.
---@param tablefile TableFile
---@return MemoryStream
function tablefile_getData(tablefile) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTableFile.pas#L153
---
--- Pre-6.3 spelling of `TableFile:saveToFile()`.
---
--- Broken in the flat form: `LuaTableFile.pas:162` reads the filename from stack index 1,
--- which here is the TableFile itself, so `filename` is ignored and the save target becomes
--- the stringified userdata (empty for a 6.3+ heavy userdata). Use `TableFile:saveToFile()`.
---@deprecated Use `TableFile:saveToFile()`.
---@param tablefile TableFile
---@param filename string? Ignored - see above.
function tablefile_saveToFile(tablefile, filename) end
