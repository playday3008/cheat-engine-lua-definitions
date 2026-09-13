---@meta
---
--- classes / data
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCustomType.pas#L119
---
--- Pascal class: `TCustomType`. The fields below are published Pascal properties, reached
--- through the `lua_getProperty` RTTI fallback in `luaclass_index`.
---@class CustomType : Object
---@field name string
---@field functiontypename string
---@field CustomTypeType string Read-only. The enum member name: `cttAutoAssembler`, `cttLuaScript` or `cttPlugin`.
---@field script string
---@field scriptUsesFloat boolean
---@field scriptUsesString boolean
local CustomType = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCustomType.pas#L32
---@param bytetable ByteTable
---@param Address integer?
---@return string|number|integer
---@overload fun(bytetable: ByteTable, Address?: integer): string|number|integer
function CustomType:byteTableToValue(bytetable, Address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCustomType.pas#L72
---@param value string|number|integer
---@param Address integer?
---@return ByteTable
---@overload fun(value: string|number|integer, Address?: integer): ByteTable
function CustomType:valueToByteTable(value, Address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSettings.pas#L279
---
--- Pascal class: `TLuaSettings`.
---@class Settings : Object
---@field path string Read-only in effect. The registry subkey below Cheat Engine's key, as passed to `getSettings`. Reading resolves the published `TLuaSettings.path` (LuaSettings.pas:30) through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578, which runs before the string index handler at LuaClass.pas:607. Assigning does NOT change the subkey: `luaclass_newindex` consults `__defaultstringsetindexhandler` before `lua_setProperty` (LuaClass.pas:478-486 vs LuaClass.pas:494) and `luasettings_addMetaData` installs one (LuaSettings.pas:285), so `settings.path='sub'` runs `luasettings_setValue` (LuaSettings.pas:171) and writes a registry value named `path` in the current key. Pass the subkey to `getSettings` instead; the `..` guard in `TLuaSettings.setPath` (LuaSettings.pas:36-37) applies only to that constructor argument (LuaSettings.pas:139, LuaSettings.pas:149).
---@field Value table<string, string|number|boolean> Reading always gives a string: `TLuaSettings.getValue` starts at `''` and returns either `ReadString` or `inttostr(ReadInteger)` (LuaSettings.pas:88-101). Writing takes any of the three - a number goes through `lua_tostring` (LuaSettings.pas:193), a boolean stores `'1'`/`'0'` (LuaSettings.pas:190-191) - and assigning nil deletes the entry (LuaSettings.pas:184-187). celua.txt:3276 gives the number form, `Value["Count"]=12`.
---@field [string] string|number|boolean Same as `Value[name]`; also reachable as `settings.name`. Reading always gives a string - `TLuaSettings.getValue` (LuaSettings.pas:88-101) returns `''` for a key that does not exist. Writing takes a string, a number (converted by `lua_tostring`, LuaSettings.pas:193) or a boolean (stored as `'1'`/`'0'`, LuaSettings.pas:190-191), and assigning nil deletes the entry (LuaSettings.pas:184-187). `luaclass_setDefaultStringArrayProperty` installs the same `luasettings_getValue`/`luasettings_setValue` pair as `Value` (LuaSettings.pas:284-285), so both spellings reach identical code.
local Settings = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSettings.pas#L233
---@param index string
---@param stream Stream|ByteTable
---@param size integer? Bytes to take from `stream`; 0 or omitted means all of it. Ignored when a byte table is given.
---@overload fun(index: string, stream: Stream|ByteTable, size?: integer)
function Settings:setBinaryValue(index, stream, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSettings.pas#L199
---@param index string
---@param stream Stream?
---@return ByteTable? bytes Returned only when no `stream` is given; with a stream the data is written into it and nothing is returned.
---@overload fun(index: string, stream?: Stream): ByteTable?
function Settings:getBinaryValue(index, stream) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L395
---
--- Pascal class: `TStream`.
---@class Stream : Object
---@field Size integer Growing a `MemoryStream` or `StringStream` zero-fills the added bytes (LuaStream.pas:38-44); on any other stream this is a plain `Size` assignment with whatever the underlying stream leaves there.
---@field Position integer
local Stream = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L71
---@param stream Stream
---@param count integer
---@overload fun(stream: Stream, count: integer)
function Stream:copyFrom(stream, count) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L87
---
--- Reads `count` bytes from the current position and returns them as a table of integers
--- indexed from 1.
---
--- The table always has `count` entries, even at the end of the stream. The buffer comes
--- from an uninitialised `getmem` (LuaStream.pas:103), and the short-read count that
--- `stream.Read` returns is discarded (LuaStream.pas:105), so the copy loop hands out
--- `count` bytes regardless (LuaStream.pas:111-116) - everything past the end of the
--- stream is uninitialised heap, not nil. Compare `Position` against `Size` yourself when
--- the stream may be shorter than `count`.
---@param count integer
---@return integer[]? bytes Nothing when `count` is not a number (LuaStream.pas:100) and
--- nothing when the read raised, since the empty `except` leaves `result` at 0
--- (LuaStream.pas:96, LuaStream.pas:120).
---@overload fun(count: integer): integer[]?
function Stream:read(count) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L353
---@param bytetable ByteTable
---@param count integer? Bytes to write. Clamped to the table length; defaults to the whole table.
---@overload fun(bytetable: ByteTable, count?: integer)
function Stream:write(bytetable, count) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L128
---@return integer
---@overload fun(): integer
function Stream:readByte() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L142
---@param integer integer
---@overload fun(integer: integer)
function Stream:writeByte(integer) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L155
---@return integer
---@overload fun(): integer
function Stream:readWord() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L169
---@param integer integer
---@overload fun(integer: integer)
function Stream:writeWord(integer) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L178
---@return integer
---@overload fun(): integer
function Stream:readDword() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L192
---@param integer integer
---@overload fun(integer: integer)
function Stream:writeDword(integer) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L201
---@return integer
---@overload fun(): integer
function Stream:readQword() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L215
---@param integer integer
---@overload fun(integer: integer)
function Stream:writeQword(integer) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L224
---
--- Reads four bytes at the current position as a single-precision float.
---
--- Cannot report the end of the stream. It reads with `stream.Read` (LuaStream.pas:231) and
--- discards the byte count that call returns, exactly as `Stream:read` does (LuaStream.pas:105),
--- and the `f: single` it reads into is never initialised (LuaStream.pas:227) - so a read that
--- falls short pushes uninitialised stack memory as an ordinary number, with `lua_pushnumber`
--- and `result:=1` running unconditionally (LuaStream.pas:237-238). A short read does not reach
--- the `except` arm that raises `'stream error'` (LuaStream.pas:232-235) either. `readByte`,
--- `readWord`, `readDword` and `readQword` do report it: they read through the raising
--- `stream.ReadByte` family inside a `try`/`except` that turns the failure into that Lua error
--- (LuaStream.pas:133-138). Compare `Position` against `Size` yourself when the stream may be
--- shorter than four bytes.
---@return number
---@overload fun(): number
function Stream:readFloat() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L241
---@param v number
---@overload fun(v: number)
function Stream:writeFloat(v) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L252
---
--- Reads eight bytes at the current position as a double-precision float.
---
--- Does not report the end of the stream. It reads with `stream.Read` (LuaStream.pas:259),
--- the same call `Stream:read` uses: a short read returns a smaller count instead of failing,
--- and that count is discarded. The `d: double` being read into is never initialised
--- (LuaStream.pas:255), so a read past the end pushes uninitialised stack memory as an
--- ordinary number, and `lua_pushnumber` / `result:=1` run regardless (LuaStream.pas:265-266).
--- The `'stream error'` arm (LuaStream.pas:260-263) fires only if the underlying stream's own
--- `Read` raises, which a short read does not. Compare `Position` against `Size` yourself when
--- the stream may be shorter than eight bytes.
---@return number
---@overload fun(): number
function Stream:readDouble() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L269
---@param v number
---@overload fun(v: number)
function Stream:writeDouble(v) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L282
---@param size integer
---@return string
---@overload fun(size: integer): string
function Stream:readString(size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L307
---@param text string
---@param includeterminator boolean?
---@overload fun(text: string, includeterminator?: boolean)
function Stream:writeString(text, includeterminator) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L335
---@return string
---@overload fun(): string
function Stream:readAnsiString() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L344
---@param text string
---@overload fun(text: string)
function Stream:writeAnsiString(text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L500
---
--- Pascal class: `TMemoryStream`.
---@class MemoryStream : Stream
---@field Memory integer Read-only.
local MemoryStream = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L430
---@param filename string
---@overload fun(filename: string)
function MemoryStream:loadFromFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L440
---@param filename string
---@overload fun(filename: string)
function MemoryStream:saveToFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L450
---@param filename string
---@return boolean
---@return string? errorMessage
---@overload fun(filename: string): boolean, string?
function MemoryStream:loadFromFileNoError(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L472
---@param filename string
---@return boolean
---@return string? errorMessage
---@overload fun(filename: string): boolean, string?
function MemoryStream:saveToFileNoError(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L494
---@overload fun()
function MemoryStream:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaManualModuleLoader.pas#L161
---
--- Pascal class: `TModuleLoader`. Windows only; the whole unit sits inside an
--- `{$IFDEF windows}` block, so the `luaclass_register` at
--- `LuaManualModuleLoader.pas:175` never runs on other builds and the class does not
--- exist there.
---
--- Only `Exports` is registered (`LuaManualModuleLoader.pas:164`); `BaseAddress`,
--- `Loaded`, `EntryPoint` and `SymbolList` are published Pascal properties
--- (ManualModuleLoader.pas:47), reached through the `lua_getProperty` RTTI fallback
--- `luaclass_index` installs at LuaClass.pas:578.
---@class ModuleLoader : Object
---@field Exports table<string, integer> Read-only.
---@field BaseAddress integer Read-only. Address the module was mapped to.
---@field Loaded boolean Read-only. True when the module was mapped successfully.
---@field EntryPoint integer Read-only. Address of the module entrypoint.
---@field SymbolList SymbolListHandler Read-only. Symbol list built from the module exports.
local ModuleLoader = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L312
---
--- Pascal class: `TStrings`.
---@class Strings : Object
---@field Count integer Read-only.
---@field Text string
---@field LineBreak string
---@field Data table<integer, integer>
---@field String table<integer, string>
---@field [integer] string Same as `getString(index)` / `setString(index, s)`.
local Strings = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L24
---@param s string
---@param data integer?
---@return integer
---@overload fun(s: string, data?: integer): integer
function Strings:add(s, data) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L17
---@param text string
---@overload fun(text: string)
function Strings:addText(text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L44
---@overload fun()
function Strings:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L157
---@param index integer
---@overload fun(index: integer)
function Strings:delete(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L174
---@return string
---@overload fun(): string
function Strings:getText() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L183
---@param text string
---@overload fun(text: string)
function Strings:setText(text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L222
---@param s string
---@return integer
---@overload fun(s: string): integer
function Strings:indexOf(s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L239
---@param index integer
---@param s string
---@overload fun(index: integer, s: string)
function Strings:insert(index, s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L259
---@return integer
---@overload fun(): integer
function Strings:getCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L71
---@param s string
---@overload fun(s: string)
function Strings:remove(s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L119
---@param index integer
---@return string
---@overload fun(index: integer): string
function Strings:getString(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L138
---@param index integer
---@param s string
---@overload fun(index: integer, s: string)
function Strings:setString(index, s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L86
---@param index integer
---@return integer
---@overload fun(index: integer): integer
function Strings:getData(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L101
---@param index integer
---@param data integer
---@overload fun(index: integer, data: integer)
function Strings:setData(index, data) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L268
---@param filename string
---@param ignoreencoding boolean? Defaults to true (LuaStrings.pas:271). Ignored on builds below FPC 3.2, where the argument is compiled out (LuaStrings.pas:283).
---@return boolean
---@overload fun(filename: string, ignoreencoding?: boolean): boolean
function Strings:loadFromFile(filename, ignoreencoding) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L292
---@param filename string
---@return boolean
---@overload fun(filename: string): boolean
function Strings:saveToFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L53
---@overload fun()
function Strings:beginUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStrings.pas#L62
---@overload fun()
function Strings:endUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L84
---
--- Pascal class: `TStringList`.
---@class StringList : Strings
---@field Duplicates integer
---@field Sorted boolean
---@field CaseSensitive boolean
local StringList = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L23
---@return integer
---@overload fun(): integer
function StringList:getDuplicates() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L32
---@param value integer
---@overload fun(value: integer)
function StringList:setDuplicates(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L44
---@return boolean
---@overload fun(): boolean
function StringList:getSorted() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L53
---@param value boolean
---@overload fun(value: boolean)
function StringList:setSorted(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L64
---@return boolean
---@overload fun(): boolean
function StringList:getCaseSensitive() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L73
---@param value boolean
---@overload fun(value: boolean)
function StringList:setCaseSensitive(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStream.pas#L529
---
--- Pascal class: `TStringStream`.
---@class StringStream : MemoryStream
---@field DataString string Read-only.
local StringStream = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L400
---
--- Pascal class: `TSymbolListHandler`.
---
--- The fields below are published Pascal properties (symbollisthandler.pas:164), reached
--- through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578.
---@class SymbolListHandler : Object
---@field Name string A name that makes the list easier to identify, and the name it registers under.
---@field PID integer The process ID the list refers to.
---@field count integer Read-only. Number of symbols in the list.
---@field internalname string Read-only.
---@field refcount integer
---@field ExtraSymbolDataList Object Read-only. A `TList` of the extra symbol data records.
local SymbolListHandler = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L83
---@overload fun()
function SymbolListHandler:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L198
---@param address integer
---@return { modulename: string, searchkey: string, address: integer, symbolsize: integer }? symbol nil when no symbol covers the address.
---@overload fun(address: integer): { modulename: string, searchkey: string, address: integer, symbolsize: integer }?
function SymbolListHandler:getSymbolFromAddress(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L214
---@param searchkey string
---@return { modulename: string, searchkey: string, address: integer, symbolsize: integer }? symbol nil when the name is not in the list.
---@overload fun(searchkey: string): { modulename: string, searchkey: string, address: integer, symbolsize: integer }?
function SymbolListHandler:getSymbolFromString(searchkey) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L277
---@param modulename string
---@param searchkey string
---@param address integer
---@param size integer
---@param skipAddressToSymbol boolean?
---@param extradata { returntype: string?, parameters: string? }?
---@return { modulename: string, searchkey: string, address: integer, symbolsize: integer }? symbol nil when the symbol could not be added.
---@overload fun(modulename: string, searchkey: string, address: integer, size: integer, skipAddressToSymbol?: boolean, extradata?: { returntype: string?, parameters: string? }): { modulename: string, searchkey: string, address: integer, symbolsize: integer }?
function SymbolListHandler:addSymbol(modulename, searchkey, address, size, skipAddressToSymbol, extradata) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L360
---@param searchkey string|integer
---@overload fun(searchkey: string|integer)
function SymbolListHandler:deleteSymbol(searchkey) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L250
---@param modulename string
---@param modulepath string
---@param base integer
---@param size integer
---@param is64bit boolean? Defaults to the bitness of the attached process, `processhandler.is64bit` (luasymbollisthandler.pas:271), not to false.
---@overload fun(modulename: string, modulepath: string, base: integer, size: integer, is64bit?: boolean)
function SymbolListHandler:addModule(modulename, modulepath, base, size, is64bit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L230
---@param modulename string|integer
---@overload fun(modulename: string|integer)
function SymbolListHandler:deleteModule(modulename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L92
---@overload fun()
function SymbolListHandler:register() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L101
---@overload fun()
function SymbolListHandler:unregister() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L110
---@return { modulename: string, modulepath: string, baseaddress: integer, modulesize: integer, is64bitmodule: boolean }[] modules
---@overload fun(): { modulename: string, modulepath: string, baseaddress: integer, modulesize: integer, is64bitmodule: boolean }[]
function SymbolListHandler:getModuleList() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L151
---@return table<string, integer>
---@overload fun(): table<string, integer>
function SymbolListHandler:getSymbolList() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTableFile.pas#L177
---
--- Pascal class: `TLuafile`.
---@class TableFile : Object
---@field name string Name the file is stored under in the table.
---@field stream MemoryStream Read-only. Same object `getData()` returns.
---@field doNotSave boolean When true the file is not written into the saved table.
local TableFile = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTableFile.pas#L141
---@overload fun()
function TableFile:delete() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTableFile.pas#L153
---@param filename string? Defaults to the entry's own `name` (LuaTableFile.pas:160), which is a bare filename, so the file lands in Cheat Engine's current working directory.
---@overload fun(filename?: string)
function TableFile:saveToFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTableFile.pas#L168
---@return MemoryStream
---@overload fun(): MemoryStream
function TableFile:getData() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/frmedithistoryunit.pas#L489
---
--- Pascal class: `TWriteLog`.
---@class WriteLog : Object
---@field status boolean Set to true to start logging writes to the target process.
---@field logsize integer Maximum number of entries kept in the log.
local WriteLog = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/frmedithistoryunit.pas#L453
---@return table<integer, WriteLogEntry> log Keyed from 0 to the entry count minus one.
---@overload fun(): table<integer, WriteLogEntry>
function WriteLog:getLog() end
