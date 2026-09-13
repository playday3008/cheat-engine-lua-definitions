---@meta
---
--- stdlib
---
--- Additions Cheat Engine makes to the Lua standard library, and its compatibility shims.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Standard library additions and compatibility shims
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15000
---
--- Splits `s` on every occurrence of `separator` and returns the parts as separate
--- return values, not as a table.
---@param s string
---@param separator string
---@return string ...
---@nodiscard
function string.split(s, separator) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15027
---@param s string
---@param suffix string
---@param ignoreCase boolean? Defaults to false.
---@return boolean
---@nodiscard
function string.endsWith(s, suffix, ignoreCase) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15048
---@param s string
---@param prefix string
---@param ignoreCase boolean? Defaults to false.
---@return boolean
---@nodiscard
function string.startsWith(s, prefix, ignoreCase) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14986
---
--- Strips leading and trailing whitespace. Returns nil when called without arguments.
---@param s string?
---@return string?
---@nodiscard
function string.trim(s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10562
---
--- Splits `x` into a normalized fraction and an exponent.
---@param x number
---@return number mantissa
---@return number exponent
---@nodiscard
function math.frexp(x) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10585
---@param x number
---@return number
---@nodiscard
function math.cosh(x) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10601
---@param x number
---@return number
---@nodiscard
function math.sinh(x) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10616
---@param x number
---@return number
---@nodiscard
function math.tanh(x) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17241
---
--- `print(string.format(...))`.
---@param format string
---@param ... any
function printf(format, ...) end

--- Lua 5.2 compatibility shims installed by Cheat Engine.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17223
---@deprecated Use `math.log(v, 10)`.
---@param v number
---@return number
---@nodiscard
function math.log10(v) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17224
---@deprecated Use `load`.
---@param chunk string|function
---@param chunkname string?
---@param mode string?
---@param env table?
---@return function?
---@return string? errormessage
function loadstring(chunk, chunkname, mode, env) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17226
---@deprecated Use `package.searchers`.
---@type function[]
package.loaders = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17225
---@deprecated Use `table.unpack`.
---@generic T
---@param list T[]
---@param i integer?
---@param j integer?
---@return T ...
function unpack(list, i, j) end

--- Lua 5.3 compatibility shims installed by Cheat Engine.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17229
---@deprecated Use `x ^ y`.
---@param x number
---@param y number
---@return number
---@nodiscard
function math.pow(x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17230
---@deprecated Use `math.atan`.
---@param y number
---@param x number?
---@return number
---@nodiscard
function math.atan2(y, x) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17231
---@deprecated
---@param x number
---@param exp number
---@return number
---@nodiscard
function math.ldexp(x, exp) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17232
---@deprecated Use `math.fmod`.
---@param x number
---@param y number
---@return number
---@nodiscard
function math.mod(x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17233
---@deprecated Use `string.gmatch`.
---@param s string
---@param pattern string
---@return fun():string, ...
function string.gfind(s, pattern) end

--- Cheat Engine 6.0 compatibility aliases. Each forwards to the `strings_*` function
--- of the same name.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17165

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17165
---@deprecated Use `strings_getCount`.
---@param stringlist Strings
---@return integer
function stringlist_getCount(stringlist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17166
---@deprecated Use `strings_getString`.
---@param stringlist Strings
---@param index integer
---@return string
function stringlist_getString(stringlist, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17167
---@deprecated Use `strings_add`.
---@return integer
---@param stringlist Strings
---@param s string
---@param data integer?
function stringlist_add(stringlist, s, data) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17168
---@deprecated Use `strings_remove`.
---@param stringlist Strings
---@param s string
function stringlist_remove(stringlist, s) end

--- Cheat Engine 6.x `memrec_*` aliases, kept after the rename to `memoryrecord_*`.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17171

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17171
---@deprecated Use `memoryrecord_setDescription`.
---@param memoryrecord MemoryRecord
---@param value string
function memrec_setDescription(memoryrecord, value) end
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17172
---@deprecated Use `memoryrecord_getDescription`.
---@param memoryrecord MemoryRecord
---@return string
function memrec_getDescription(memoryrecord) end
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17173
---@deprecated Use `memoryrecord_getAddress`.
---@param memoryrecord MemoryRecord
---@return integer address
---@return integer[]? offsets # base address followed by the pointer offsets, only for pointers
function memrec_getAddress(memoryrecord) end
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17174
---@deprecated Use `memoryrecord_setAddress`.
---@param memoryrecord MemoryRecord
---@param interpretableaddress string|integer
---@param ... integer # offsets
function memrec_setAddress(memoryrecord, interpretableaddress, ...) end
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17175
---@deprecated Use `memoryrecord_getType`.
---@param memoryrecord MemoryRecord
---@return integer
function memrec_getType(memoryrecord) end
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17176
---@deprecated Use `memoryrecord_setType`.
---@param memoryrecord MemoryRecord
---@param value integer
function memrec_setType(memoryrecord, value) end
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17177
---@deprecated Use `memoryrecord_getValue`.
---@param memoryrecord MemoryRecord
---@return string
function memrec_getValue(memoryrecord) end
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17178
---@deprecated Use `memoryrecord_setValue`.
---@param memoryrecord MemoryRecord
---@param value string
function memrec_setValue(memoryrecord, value) end
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17179
---@deprecated Use `memoryrecord_getScript`.
---@param memoryrecord MemoryRecord
---@return string? script Nothing when the record has no auto assembler script.
function memrec_getScript(memoryrecord) end
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17180
---@deprecated Use `memoryrecord_isActive`.
---@param memoryrecord MemoryRecord
---@return boolean
function memrec_isActive(memoryrecord) end
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17181
---@deprecated Use `memoryrecord_freeze`.
---@param memoryrecord MemoryRecord
---@param direction integer?
function memrec_freeze(memoryrecord, direction) end
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17182
---@deprecated Use `memoryrecord_unfreeze`.
---@param memoryrecord MemoryRecord
function memrec_unfreeze(memoryrecord) end
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17183
---@deprecated Use `memoryrecord_setColor`.
---@param memoryrecord MemoryRecord
---@param color integer
function memrec_setColor(memoryrecord, color) end
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17184
---@deprecated Use `memoryrecord_appendToEntry`.
---@param memoryrecord MemoryRecord
---@param memrec MemoryRecord
function memrec_appendToEntry(memoryrecord, memrec) end
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17185
---@deprecated Use `memoryrecord_delete`.
---@param memoryrecord MemoryRecord
function memrec_delete(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17186
---@deprecated Use `getAddress`.
---@nodiscard
---@param addressString CEAddress
---@param local_ boolean? Resolve against Cheat Engine itself. Defaults to false.
---@return integer? address Nil only on non-Windows builds, where a failed lookup does not raise.
---@return string? errorMessage
function getAddressFromName(addressString, local_) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17189
---@deprecated Use `timer_onTimer`.
---@param timer Timer
---@param f CECallback
function timer_onInterval(timer, f) end