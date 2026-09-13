---@meta
---
--- classes / ce
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luanetworkinterface.pas#L288
---
--- Pascal class: `TCEConnection`.
---@class CEConnection : Object
---@field Option table<string, string?> Server option name to value. Nothing when there is no ceserver connection: `ceconnection_getOption` returns no values when `getconnection` gives nil (luanetworkinterface.pas:21-23), and the array-property `__index` forces exactly one result (LuaClassArray.pas:58), so the read comes back nil.
---@field connected boolean Read-only. Published property, reached through the RTTI fallback; true while the ceserver connection is live.
---@field path string Read-only. Published property, reached through the RTTI fallback; the ceserver's own path, as returned by `getServerPath`.
local CEConnection = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luanetworkinterface.pas#L51
---@return { optname: string, parentoptname: string, optdescription: string, acceptablevalues: string, currentvalue: string, optiontype: integer }[]? options Nothing when there is no live ceserver connection. `optiontype`: 0=label, 1=bool, 2=int, 3=float, 4=double, 5=text.
---@overload fun(): { optname: string, parentoptname: string, optdescription: string, acceptablevalues: string, currentvalue: string, optiontype: integer }[]?
function CEConnection:getOptionList() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luanetworkinterface.pas#L106
---@param value string
---@return boolean? success Nothing when there is no ceserver connection.
---@overload fun(value: string): boolean?
function CEConnection:setCurrentPath(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luanetworkinterface.pas#L119
---@return string? path Nothing when there is no ceserver connection.
---@overload fun(): string?
function CEConnection:getCurrentPath() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luanetworkinterface.pas#L129
---@param path string? Defaults to the connection's current path.
---@return { name: string, type: integer }[]? files Nothing when there is no ceserver connection. `type` is the raw POSIX `dirent.d_type` byte: ceserver sends it after each name (ceserver.c:1473), `TCEConnection.enumfiles` stows it in the string list's `Objects` (networkInterface.pas:2548), and `ceconnection_enumFiles` pushes it as an integer (luanetworkinterface.pas:158). Cheat Engine defines the matching globals in `defines.lua`: `DT_UNKNOWN`=0, `DT_FIFO`=1, `DT_CHR`=2, `DT_DIR`=4, `DT_BLK`=6, `DT_REG`=8, `DT_LNK`=10, `DT_SOCK`=12, `DT_WHT`=14 (defines.lua:620-628).
---@overload fun(path?: string): { name: string, type: integer }[]?
function CEConnection:enumFiles(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luanetworkinterface.pas#L167
---@param path string
---@return boolean? success Nothing when there is no ceserver connection.
---@overload fun(path: string): boolean?
function CEConnection:createDir(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luanetworkinterface.pas#L183
---
--- The same implementation as `deleteFile`: `ceconnection_addMetaData` binds both names to
--- `ceconnection_deleteFile` (luanetworkinterface.pas:297-298). `TCEConnection` has no
--- remove-directory method at all, so what is sent is `CMD_DELETEFILE`
--- (networkInterface.pas:2648, networkInterface.pas:2654) - whether that removes a
--- directory is up to the ceserver on the other end.
---@param path string
---@return boolean? success Nothing when there is no ceserver connection.
---@overload fun(path: string): boolean?
function CEConnection:removeDir(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luanetworkinterface.pas#L183
---@param path string
---@return boolean? success Nothing when there is no ceserver connection.
---@overload fun(path: string): boolean?
function CEConnection:deleteFile(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luanetworkinterface.pas#L199
---@param path string
---@return integer? permissions Nothing when there is no ceserver connection, or when the query failed - `ceconnection_getFilePermission` only sets a return count inside the success branch (luanetworkinterface.pas:212-216). The value is the low 12 bits of the file's POSIX `st_mode`: the setuid/setgid/sticky bits plus the usual `chmod` rwx triples. ceserver answers `CMD_GETFILEPERMISSIONS` by `lstat`ing the path and sending `s.st_mode & 0xfff` (ceserver.c:1494).
---@overload fun(path: string): integer?
function CEConnection:getFilePermission(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luanetworkinterface.pas#L220
---@param path string
---@param perm integer
---@return boolean? success Nothing when there is no ceserver connection.
---@overload fun(path: string, perm: integer): boolean?
function CEConnection:setFilePermission(path, perm) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luanetworkinterface.pas#L240
---
--- Downloads the remote file at `path` from the ceserver host into `stream`, replacing the
--- stream's contents: `TCEConnection.getFile` (networkInterface.pas:2590) writes
--- `CMD_GETFILE` at networkInterface.pas:2597 and then
--- `s.Position:=0; s.Size:=0; s.WriteBuffer(f^,filelength)` at networkInterface.pas:2608-2610.
--- `celua.txt:4198` describes this the other way round; the Pascal is the authority.
---
--- Returns nothing. `ceconnection_getFile` pushes `TCEConnection.getFile`'s boolean at
--- luanetworkinterface.pas:254 but leaves its return count at the `result:=0` it starts with
--- (luanetworkinterface.pas:246), so success and failure are indistinguishable from Lua.
--- Compare `deleteFile`, which does set `result:=1` (luanetworkinterface.pas:195).
---@param path string Path on the ceserver host.
---@param stream Stream Receives the file's bytes.
---@overload fun(path: string, stream: Stream)
function CEConnection:getFile(path, stream) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luanetworkinterface.pas#L258
---
--- Uploads `stream`'s full contents to the ceserver host, creating the file at `path`:
--- `TCEConnection.putFile` (networkInterface.pas:2617) writes `CMD_PUTFILE` at
--- networkInterface.pas:2623, then `s.Size` and `buf.CopyFrom(s,0)` at
--- networkInterface.pas:2626-2627, and sends. `celua.txt:4199` describes this the other way
--- round; the Pascal is the authority.
---
--- Returns nothing. `ceconnection_putFile` pushes `TCEConnection.putFile`'s boolean at
--- luanetworkinterface.pas:272 but leaves its return count at the `result:=0` it starts with
--- (luanetworkinterface.pas:264), so success and failure are indistinguishable from Lua.
--- Compare `deleteFile`, which does set `result:=1` (luanetworkinterface.pas:195).
---@param path string Path on the ceserver host.
---@param stream Stream Source of the bytes to send.
---@overload fun(path: string, stream: Stream)
function CEConnection:putFile(path, stream) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDisassembler.pas#L253
---
--- Pascal class: `TDisassembler`.
---@class Disassembler : Object
---@field LastDisassembleData LastDisassembleData Read-only.
---@field OnPostDisassemble CECallback Called as `f(sender, address, ldd, result, description)` after the built-in decoder ran, with its output in `result`/`description`; return `result, description` to replace them. Reachable through the published-property fallback.
---@field OnDisassembleOverride CECallback Called as `f(sender, address, ldd, opcode, description)` instead of the built-in decoder; `opcode` and `description` are nil on this hook. Return `opcode, description` to supply the result, or nil to fall through. Reachable through the published-property fallback.
---@field aggressivealignment boolean Reachable through the published-property fallback.
---@field syntaxhighlighting boolean Wrap register, hex and symbol text in Cheat Engine's colour codes. Reachable through the published-property fallback.
local Disassembler = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDisassembler.pas#L19
---@param address CEAddress
---@return string
---@overload fun(address: CEAddress): string
function Disassembler:disassemble(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDisassembler.pas#L41
---@return string
---@overload fun(): string
function Disassembler:decodeLastParametersToString() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDisassembler.pas#L137
---
--- The decoded form of the last instruction a `Disassembler` handled, as built by
--- `LastDisassemblerDataToTable`. The same table shape is passed to the
--- `OnDisassembleOverride` and `OnPostDisassemble` handlers.
---@class LastDisassembleData
---@field address integer
---@field opcode string
---@field parameters string
---@field description string
---@field commentsoverride string
---@field bytes integer[]
---@field modrmValueType integer One of the `dvtNone` / `dvtAddress` / `dvtValue` constants. `dvtNone` (0) is the reset value disassembler.pas:1783 writes before every decode, so that is what an instruction with no modrm value reads back as.
---@field modrmValue integer
---@field parameterValueType integer One of the `dvtNone` / `dvtAddress` / `dvtValue` constants. `dvtNone` (0) is the reset value disassembler.pas:1784 writes before every decode, so that is what an instruction with no parameter value reads back as.
---@field parameterValue integer
---@field isJump boolean
---@field isCall boolean
---@field isRet boolean
---@field isRep boolean Written out only; `LastDisassemblerDataFromTable` does not read it back.
---@field isConditionalJump boolean

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDisassembler.pas#L210
---@return LastDisassembleData
---@overload fun(): LastDisassembleData
function Disassembler:getLastDisassembleData() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDissectCode.pas#L315
---
--- Pascal class: `TDissectCodeThread`.
---@class DissectCode : Object
local DissectCode = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDissectCode.pas#L31
---
--- Dissects a whole module, taking its base and size from the symbol handler. Called with
--- two arguments the overload below is taken instead, and any other argument count raises
--- `Invalid parameters for dissect` (LuaDissectCode.pas:70).
---@overload fun(self: DissectCode, baseaddress: CEAddress, size: integer)
---@param modulename string
function DissectCode:dissect(modulename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDissectCode.pas#L86
---@overload fun()
function DissectCode:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDissectCode.pas#L94
---@param fromaddress CEAddress
---@param toaddress CEAddress
---@param type integer
---@param isstring boolean?
---@overload fun(fromaddress: CEAddress, toaddress: CEAddress, type: integer, isstring?: boolean)
function DissectCode:addReference(fromaddress, toaddress, type, isstring) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDissectCode.pas#L123
---@param fromaddress CEAddress
---@param toaddress CEAddress
---@overload fun(fromaddress: CEAddress, toaddress: CEAddress)
function DissectCode:deleteReference(fromaddress, toaddress) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDissectCode.pas#L144
---@param address CEAddress
---@return table<integer, integer>? references Address of the referencing instruction to jump type.
---@overload fun(address: CEAddress): table<integer, integer>?
function DissectCode:getReferences(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDissectCode.pas#L179
---@return table<integer, string>? strings Address to the string read at that address.
---@overload fun(): table<integer, string>?
function DissectCode:getReferencedStrings() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDissectCode.pas#L241
---@return integer[]? addresses
---@overload fun(): integer[]?
function DissectCode:getReferencedFunctions() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDissectCode.pas#L273
---@param filename string
---@return boolean success
---@return string? errorMessage
---@overload fun(filename: string): boolean, string?
function DissectCode:saveToFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDissectCode.pas#L294
---@param filename string
---@return boolean success
---@return string? errorMessage
---@overload fun(filename: string): boolean, string?
function DissectCode:loadFromFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFoundlist.pas#L102
---
--- Pascal class: `TFoundList`.
---@class FoundList : Object
---@field Count integer Read-only.
---@field Address table<integer, string> Read-only.
---@field Value table<integer, string> Read-only.
---@field [integer] string Read-only. Same as `getAddress(index)`.
---@field listName string
---@field isUnknownInitialValue boolean Read-only. Set when the scan was an unknown-initial-value scan.
---@field isCodePage boolean Read-only. Set for a codepage string scan.
---@field isUnicode boolean Read-only. Set for a unicode string scan.
---@field isSigned boolean Read-only. Whether results are shown as signed.
---@field isHexadecimal boolean Read-only. Whether `getValue` formats results as hexadecimal.
---@field CustomType CustomType? Read-only. nil unless the scan used a custom type.
---@field vartype string Read-only. `TVariableType` enum name, e.g. `'vtDword'`.
---@field memscan MemScan Read-only. The scan this list was created from.
local FoundList = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFoundlist.pas#L39
---@overload fun()
function FoundList:initialize() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFoundlist.pas#L48
---@overload fun()
function FoundList:deinitialize() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFoundlist.pas#L58
---@return integer
---@overload fun(): integer
function FoundList:getCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFoundlist.pas#L67
---@param index integer 0-based: valid values run from 0 to `getCount()-1`. `TFoundList.GetAddressOnly` bails out on `i>=foundlist.Items.Count` (foundlisthelper.pas:515), so an out-of-range index yields address 0.
---@return string # The address formatted with `inttohex(..., 8)` (LuaFoundlist.pas:77): uppercase hex, at least 8 digits, no `0x` prefix.
---@overload fun(index: integer): string
function FoundList:getAddress(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFoundlist.pas#L82
---@param index integer 0-based, the same index `getAddress` takes: valid values run from 0 to `getCount()-1`. Out of range is not reported and does not give an empty string. `TFoundList.GetAddressOnly` bails out at `i>=foundlist.Items.Count` (foundlisthelper.pas:515) leaving the address 0, but the caller carries on: it reaches `readAndParseAddress(0, ...)` (foundlisthelper.pas:717), which returns `"???"` for an unreadable address (byteinterpreter.pas:402), or hands back whatever that `valuelist` slot cached earlier. There is no second bounds check either - `j:=i-addresslistfirst` (foundlisthelper.pas:603) indexes the fixed 1024-entry `valuelist` (foundlisthelper.pas:63), so an index far enough past the end reads that array out of bounds.
---@return string
---@overload fun(index: integer): string
function FoundList:getValue(index) end

--- Record property of `MemoryRecord`, for entries of a string type.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L1096
---@class MemoryRecordString
---@field Size integer
---@field Unicode boolean
---@field Codepage boolean

--- Record property of `MemoryRecord`, for entries of the binary type.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L1108
---@class MemoryRecordBinary
---@field Startbit integer
---@field Size integer

--- Record property of `MemoryRecord`, for entries of the array of byte type.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L1115
---@class MemoryRecordAob
---@field Size integer

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L1006
---
--- Pascal class: `TMemoryRecord`.
---
--- The fields from `ID` down are published Pascal properties (MemoryRecordUnit.pas:336),
--- reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at
--- LuaClass.pas:578. Enumeration properties read back as the enum member name and accept
--- either that name or the matching integer constant; set properties are bracketed strings.
---@class MemoryRecord : Object
---@field Description string
---@field Address string|integer Reads back the interpretable address as a string; assigning a number stores it as an 8 digit hex string (LuaMemoryRecord.pas:205-206). Assigning also drops the pointer chain: the property setter is `memoryrecord_setAddress`, which sets `offsetCount` to 0 unconditionally (LuaMemoryRecord.pas:211) and only refills it from a second argument, which a property set never supplies (`luaclass_newindex` calls the setter with just the new value, LuaClass.pas:444-445), so a pointer entry becomes a plain address. Use `MemoryRecord:setAddress(address, offsets)` to keep it a pointer.
---@field CurrentAddress integer Read-only.
---@field Type integer
---@field Value string
---@field NumericalValue number? `Value` parsed as a number. Always nil while `ShowAsHex` is set: `memoryrecord_getNumericalValue` appends rather than prepends the Pascal hex marker (`r:=r+'$'` at LuaMemoryRecord.pas:382) to a `Value` that is already bare hex digits (`inttohex`, MemoryRecordUnit.pas:3120), so `StrToInt64` is handed something like `"0000000A$"` and raises (LuaMemoryRecord.pas:385-390), leaving `validinteger` false, and the `ShowAsHex` arm then bails out with `exit(0)` (LuaMemoryRecord.pas:434-435) so nothing is pushed. Read `Value` and convert it yourself for hex-displayed entries. With `ShowAsHex` clear it is nil only when `Value` genuinely does not parse: as a float for `vtSingle`, `vtDouble` and a float `vtCustom` (LuaMemoryRecord.pas:440-448), as an integer otherwise (LuaMemoryRecord.pas:452-456). Assigning is unaffected - the setter writes `IntToHex` when `ShowAsHex` is set (LuaMemoryRecord.pas:478-479).
---@field Script string? nil when the record has no auto assembler script.
---@field Active boolean
---@field Selected boolean Read-only.
---@field HotkeyCount integer Read-only.
---@field OffsetCount integer
---@field Hotkey table<integer, MemoryRecordHotkey?> Read-only. Indexed from 0; nil at or above `HotkeyCount` (MemoryRecordUnit.pas:1088-1091).
---@field Offset table<integer, integer>
---@field OffsetText table<integer, string> Text form of pointer offset `index`. A plain (hex) number is stored as a fixed offset (MemoryRecordUnit.pas:644); otherwise the symbol handler is tried (MemoryRecordUnit.pas:648), and failing that Cheat Engine compiles the text as `local memrec, address=... ; return <text>` (MemoryRecordUnit.pas:662) and re-invokes it with the memory record and the current pointer base on every resolution, using the number it returns (MemoryRecordUnit.pas:560). A chunk that does not return a number is discarded and the text is parsed again.
---@field DropDownValue table<integer, string> Read-only.
---@field DropDownDescription table<integer, string> Read-only.
---@field Child table<integer, MemoryRecord?> Read-only. Indexed from 0; nil at or above `Count` (MemoryRecordUnit.pas:1003). Same getter as `memoryrecord[index]`.
---@field String MemoryRecordString
---@field Binary MemoryRecordBinary
---@field Aob MemoryRecordAob
---@field [integer] MemoryRecord? Read-only. Same as `getChild(index)`; nil at or above `Count` (MemoryRecordUnit.pas:1003).
---@field ID integer
---@field Index integer Read-only. 0 is the top entry.
---@field IsGroupHeader boolean
---@field IsAddressGroupHeader boolean
---@field IsReadableAddress boolean Read-only. Only set once Value has been read at least once.
---@field IsReadable boolean Read-only. Same field as IsReadableAddress.
---@field Collapsed boolean
---@field Color integer
---@field Count integer Read-only. Number of children.
---@field AddressString string Read-only. The address as shown in the address list.
---@field VarType string|integer Reads back the enum member name, e.g. `"vtDword"`; accepts that name or the `vt*` constant.
---@field CustomTypeName string
---@field CustomType CustomType? Read-only. Nil unless VarType is vtCustom and the named custom type exists (MemoryRecordUnit.pas:2813).
---@field DisplayValue string Read-only.
---@field DontSave boolean
---@field AllowDecrease boolean
---@field AllowIncrease boolean
---@field ShowAsHex boolean
---@field ShowAsSigned boolean
---@field Options string Set of `TMemrecOption` members (MemoryRecordUnit.pas:49), read back and assigned in bracketed form, e.g. `[moHideChildren,moRecursiveSetValue]`. The members are `moHideChildren`, `moActivateChildrenAsWell`, `moDeactivateChildrenAsWell`, `moRecursiveSetValue`, `moAllowManualCollapseAndExpand`, `moManualExpandCollapse` and `moAlwaysHideChildren`.
---@field DropDownLinked boolean
---@field DropDownLinkedMemrec string
---@field DropDownList StringList Read-only.
---@field DropDownReadOnly boolean
---@field DropDownDescriptionOnly boolean
---@field DisplayAsDropDownListItem boolean
---@field DropDownCount integer Read-only.
---@field Parent MemoryRecord? Nil for a top-level record. Assigning appends this record to the given entry.
---@field Async boolean
---@field AsyncProcessing boolean Read-only.
---@field AsyncProcessingTime integer Read-only. Milliseconds spent processing.
---@field ScriptHotKey MemoryRecordHotkey? Read-only. Only set while a hotkey is toggling this record; nil otherwise.
---@field LastAAExecutionFailed boolean Read-only.
---@field LastAAExecutionFailedReason string Read-only.
---@field CachedAddress integer Read-only.
---@field HasMouseFocus boolean Read-only. celua.txt calls this `HasMouseOver`, but only `HasMouseFocus` resolves.
---@field OnActivate CECallback `function(memoryrecord, before, currentstate): boolean`
---@field OnDeactivate CECallback `function(memoryrecord, before, currentstate): boolean`
---@field OnDestroy CECallback `function(memoryrecord)`
---@field OnGetDisplayValue CECallback `function(memoryrecord, valuestring): boolean, string`
---@field OnValueChanged CECallback `function(memoryrecord, oldvalue, newvalue)`
---@field OnValueChangedByUser CECallback `function(memoryrecord, oldvalue, newvalue)`
local MemoryRecord = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L141
---@param value string
---@overload fun(value: string)
function MemoryRecord:setDescription(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L152
---@return string
---@overload fun(): string
function MemoryRecord:getDescription() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L170
---@return string
---@return integer[]? offsets
---@overload fun(): string, integer[]?
function MemoryRecord:getAddress() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L194
---@param interpretableaddress CEAddress
---@param offsets integer[]? Supplying offsets makes the record a pointer. A table of more than 512 entries is discarded entirely.
---@overload fun(interpretableaddress: CEAddress, offsets?: integer[])
function MemoryRecord:setAddress(interpretableaddress, offsets) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L17
---@return integer
---@overload fun(): integer
function MemoryRecord:getOffsetCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L26
---@param value integer
---@overload fun(value: integer)
function MemoryRecord:setOffsetCount(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L36
---@param index integer 0-based. Outside 0..OffsetCount-1 `TMemoryRecord.getPointerOffset` returns nil (MemoryRecordUnit.pas:2149) and LuaMemoryRecord.pas:46 reads `.offset` off that nil object, faulting Cheat Engine.
---@return integer
---@overload fun(index: integer): integer
function MemoryRecord:getOffset(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L51
---@param index integer 0-based. Outside 0..OffsetCount-1 `TMemoryRecord.getPointerOffset` returns nil (MemoryRecordUnit.pas:2149) and LuaMemoryRecord.pas:61 assigns through that nil object, faulting Cheat Engine. Grow the list with `setOffsetCount` first.
---@param offset integer
---@overload fun(index: integer, offset: integer)
function MemoryRecord:setOffset(index, offset) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L161
---@return integer
---@overload fun(): integer
function MemoryRecord:getCurrentAddress() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L327
---@return integer
---@overload fun(): integer
function MemoryRecord:getType() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L336
---@param value integer
---@overload fun(value: integer)
function MemoryRecord:setType(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L346
---@return string
---@overload fun(): string
function MemoryRecord:getValue() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L355
---@param value string
---@overload fun(value: string)
function MemoryRecord:setValue(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L496
---@return string? script Nothing when the record has no auto assembler script.
---@overload fun(): string?
function MemoryRecord:getScript() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L511
---
--- Silently does nothing unless the record is already an auto assembler entry:
--- LuaMemoryRecord.pas:518 assigns only when `AutoAssemblerData.script` is non-nil, and that
--- string list is allocated solely by the `vtAutoAssembler` arm of `TMemoryRecord.setVarType`
--- (MemoryRecordUnit.pas:1275-1277) or by `TMemoryRecord.setXMLnode` when the cheat table
--- carries an `AssemblerScript` node (MemoryRecordUnit.pas:1521). Set `memrec.Type =
--- vtAutoAssembler` first. Assigning the `Script` property has the same restriction - it is
--- bound to this same function (LuaMemoryRecord.pas:1059).
---@param value string
---@overload fun(value: string)
function MemoryRecord:setScript(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L548
---@return boolean
---@overload fun(): boolean
function MemoryRecord:getActive() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L537
---@param value boolean
---@overload fun(value: boolean)
function MemoryRecord:setActive(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L531
---@overload fun()
function MemoryRecord:disableWithoutExecute() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L126
---@param index integer 0-based.
---@return MemoryRecord? child Nothing when `index` is at or above `Count`. A negative `index` is not filtered out: MemoryRecordUnit.pas:1003 tests only `index<Count`, so the nil branch is skipped and `treenode.Items[index].Data` is dereferenced anyway.
---@overload fun(index: integer): MemoryRecord?
function MemoryRecord:getChild(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L522
---@return boolean
---@overload fun(): boolean
function MemoryRecord:isSelected() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L606
---
--- Moves this record so that it becomes a child of `memrec`, not the other way around:
--- LuaMemoryRecord.pas:617 runs `memrec1.treenode.MoveTo(memrec2.treenode, naAddChild)` with
--- the receiver as `memrec1` and the argument as `memrec2`. Same operation as assigning
--- `memoryrecord.Parent = memrec` - the published `Parent` property is written through this
--- routine (MemoryRecordUnit.pas:369).
---@param memrec MemoryRecord The entry this record becomes a child of.
---@overload fun(memrec: MemoryRecord)
function MemoryRecord:appendToEntry(memrec) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L622
---@overload fun()
function MemoryRecord:delete() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L631
---@overload fun()
function MemoryRecord:reinterpret() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L705
---@return integer
---@overload fun(): integer
function MemoryRecord:getHotkeyCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L714
---@param index integer
---@return MemoryRecordHotkey? hotkey Nothing when `index` is at or above `HotkeyCount`. A negative `index` is not filtered out and raises a list index error (MemoryRecordUnit.pas:1090).
---@overload fun(index: integer): MemoryRecordHotkey?
function MemoryRecord:getHotkey(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L730
---@param id integer
---@return MemoryRecordHotkey?
---@overload fun(id: integer): MemoryRecordHotkey?
function MemoryRecord:getHotkeyByID(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L649
---@param keys integer[] Up to 5 virtual key codes; reading stops at the first nil entry.
---@param action integer
---@param value string?
---@param description string?
---@return MemoryRecordHotkey
---@overload fun(keys: integer[], action: integer, value?: string, description?: string): MemoryRecordHotkey
function MemoryRecord:createHotkey(keys, action, value, description) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L994
---@overload fun()
function MemoryRecord:beginEdit() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L1000
---@overload fun()
function MemoryRecord:endEdit() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecordHotkey.pas#L136
---
--- Pascal class: `TMemoryRecordHotkey`.
---
--- The fields from `Owner` down are published Pascal properties (MemoryRecordUnit.pas:425),
--- reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at
--- LuaClass.pas:578.
---@class MemoryRecordHotkey : Object
---@field HotkeyString string Read-only.
---@field Keys integer[]
---@field Owner MemoryRecord Read-only. The memory record this hotkey belongs to.
---@field ID integer Read-only.
---@field Description string
---@field Action string|integer Enum member name, e.g. `"mrhToggleActivation"`, or the `mrh*` constant.
---@field Value string Value used by the mrhSetValue/mrhIncreaseValue/mrhDecreaseValue actions.
---@field Active boolean False makes the hotkey be ignored.
---@field OnlyWhileDown boolean
---@field ActivateSound string Table file name of the WAV played on activate.
---@field DeactivateSound string Table file name of the WAV played on deactivate.
---@field ActivateSoundFlag string|integer `"hksPlaySound"`, `"hksSpeakText"` or `"hksSpeakTextEnglish"`, or its ordinal.
---@field DeactivateSoundFlag string|integer `"hksPlaySound"`, `"hksSpeakText"` or `"hksSpeakTextEnglish"`, or its ordinal.
---@field OnHotkey CECallback `function(memoryrecordhotkey)`, called when the hotkey fires.
---@field OnPostHotkey CECallback `function(memoryrecordhotkey)`, called after the action ran.
local MemoryRecordHotkey = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecordHotkey.pas#L126
---@overload fun()
function MemoryRecordHotkey:doHotkey() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L296
---
--- Pascal class: `TMemScan`.
---
--- The fields from `GUIScanner` down are published Pascal properties (memscan.pas:773),
--- reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at
--- LuaClass.pas:578. Setting these and then calling `scan()` is the documented
--- argument-less scan flow. Enumeration properties read back as the enum member name and
--- accept either that name or the matching integer constant.
---@class MemScan : Object
---@field FoundList FoundList? Read-only. Nothing until a FoundList has been attached to this scan.
---@field OnlyOneResult boolean
---@field Result integer? Read-only. Nothing unless the scan produced exactly one result.
---@field GUIScanner boolean
---@field inverseScan boolean
---@field floatscanWithoutExponents boolean
---@field OnlyOne boolean Same field as OnlyOneResult.
---@field IsUnique boolean AOB scans only. Like OnlyOneResult, but multithreaded.
---@field CodePage boolean
---@field LuaFormula boolean
---@field NewLuaState boolean
---@field LastScanWasRegionScan boolean Read-only. True when the previous scan was an unknown initial value scan.
---@field isUnicode boolean Read-only.
---@field isHexadecimal boolean Read-only.
---@field LastScanValue string Read-only.
---@field LastScanType string Read-only. `"stNewScan"`, `"stFirstScan"` or `"stNextScan"`.
---@field ScanresultFolder string Read-only. Where the results are stored.
---@field BusyformIsModal boolean
---@field OnScanDone CECallback `function(memscan)`
---@field OnScanStart CECallback `function(memscan)`
---@field OnInitialScanDone CECallback `function(memscan)`
---@field OnGuiUpdate CECallback `function(memscan, totalAddressesToScan, currentlyScanned, resultsFound)`
---@field ScanOption string|integer Enum member name, e.g. `"soExactValue"`, or the `so*` constant.
---@field VariableType string|integer Enum member name, e.g. `"vtDword"`, or the `vt*` constant.
---@field VarType string|integer Same field as VariableType.
---@field Roundingtype string|integer Enum member name, e.g. `"rtRounded"`, or the `rt*` constant.
---@field Scanvalue string Value to scan for. Same field as Scanvalue1.
---@field Scanvalue1 string
---@field Scanvalue2 string Secondary value, for value-between scans.
---@field Startaddress integer
---@field Stopaddress integer
---@field Hexadecimal boolean
---@field BinaryStringAsDecimal boolean
---@field Unicode boolean
---@field UTF16 boolean Same field as Unicode.
---@field Casesensitive boolean
---@field Fastscanmethod string|integer Enum member name, e.g. `"fsmAligned"`, or the `fsm*` constant.
---@field Fastscanparameter string
---@field Customtype CustomType? Nil until a custom type is assigned.
---@field WorkingSetOnly boolean
---@field PresentOnly boolean Same field as WorkingSetOnly.
---@field Percentage boolean
---@field CompareToSavedScan boolean
---@field SavedScanName string
---@field SavedScanCount integer Read-only.
---@field ScanWritable string|integer `"scanDontCare"`, `"scanExclude"` or `"scanInclude"`, or its ordinal.
---@field ScanExecutable string|integer `"scanDontCare"`, `"scanExclude"` or `"scanInclude"`, or its ordinal.
---@field ScanCopyOnWrite string|integer `"scanDontCare"`, `"scanExclude"` or `"scanInclude"`, or its ordinal.
local MemScan = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L131
---@overload fun()
function MemScan:scan() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L33
---
--- All fourteen arguments or none. LuaMemscan.pas:52 reads the argument block only when at
--- least fourteen were passed; a shorter call falls through to the argument-less
--- `TMemScan.FirstScan` (LuaMemscan.pas:86, memscan.pas:752), which scans from the
--- `ScanOption`, `VariableType`, `Roundingtype`, `Scanvalue1` and related properties
--- instead. A partial call is not an error - everything passed is discarded silently.
---@param scanOption integer?
---@param vartype integer?
---@param roundingtype integer?
---@param input1 string?
---@param input2 string?
---@param startAddress integer|string|nil
---@param stopAddress integer|string|nil
---@param protectionflags string?
---@param alignmenttype integer?
---@param alignmentparam string?
---@param isHexadecimalInput boolean?
---@param isNotABinaryString boolean?
---@param isunicodescan boolean?
---@param iscasesensitive boolean?
---@overload fun(scanOption?: integer, vartype?: integer, roundingtype?: integer, input1?: string, input2?: string, startAddress: integer|string|nil, stopAddress: integer|string|nil, protectionflags?: string, alignmenttype?: integer, alignmentparam?: string, isHexadecimalInput?: boolean, isNotABinaryString?: boolean, isunicodescan?: boolean, iscasesensitive?: boolean)
function MemScan:firstScan(scanOption, vartype, roundingtype, input1, input2, startAddress, stopAddress, protectionflags, alignmenttype, alignmentparam, isHexadecimalInput, isNotABinaryString, isunicodescan, iscasesensitive) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L90
---
--- The first nine arguments are all-or-nothing. LuaMemscan.pas:105 reads the argument block
--- only when at least nine were passed; a shorter call falls through to the argument-less
--- `TMemScan.NextScan` (LuaMemscan.pas:128, memscan.pas:753), which scans from the
--- `ScanOption`, `Roundingtype`, `Scanvalue1`, `Percentage` and related properties instead,
--- discarding everything that was passed. Only `savedscanname` is truly optional
--- (LuaMemscan.pas:118); leaving it out compares against the previous scan rather than a
--- saved one (LuaMemscan.pas:121-125).
---@param scanOption integer?
---@param roundingtype integer?
---@param input1 string?
---@param input2 string?
---@param isHexadecimalInput boolean?
---@param isNotABinaryString boolean?
---@param isunicodescan boolean?
---@param iscasesensitive boolean?
---@param ispercentagescan boolean?
---@param savedscanname string?
---@overload fun(scanOption?: integer, roundingtype?: integer, input1?: string, input2?: string, isHexadecimalInput?: boolean, isNotABinaryString?: boolean, isunicodescan?: boolean, iscasesensitive?: boolean, ispercentagescan?: boolean, savedscanname?: string)
function MemScan:nextScan(scanOption, roundingtype, input1, input2, isHexadecimalInput, isNotABinaryString, isunicodescan, iscasesensitive, ispercentagescan, savedscanname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L24
---@overload fun()
function MemScan:newScan() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L145
---@overload fun()
function MemScan:waitTillDone() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L273
---@return { TotalAddressesToScan: integer, CurrentlyScanned: integer, ResultsFound: integer }
---@overload fun(): { TotalAddressesToScan: integer, CurrentlyScanned: integer, ResultsFound: integer }
function MemScan:getProgress() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L223
---@param name string
---@overload fun(name: string)
function MemScan:saveCurrentResults(name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L199
---@return string[]
---@overload fun(): string[]
function MemScan:getSavedResultList() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L170
---@param name string
---@return SavedScanHandler?
---@return string? errorMessage
---@overload fun(name: string): SavedScanHandler?, string?
function MemScan:getSavedResultHandler(name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L161
---@return FoundList? foundlist Nothing until a FoundList has been attached to this scan.
---@overload fun(): FoundList?
function MemScan:getAttachedFoundlist() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L248
---@param value boolean
---@overload fun(value: boolean)
function MemScan:setOnlyOneResult(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L258
---@return integer? address Nothing unless the scan produced exactly one result.
---@overload fun(): integer?
function MemScan:getOnlyResult() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/pointervaluelist.pas#L1769
---
--- Pascal class: `TReversePointerListHandler`.
---@class ReversePointerListHandler : Object
local ReversePointerListHandler = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/pointervaluelist.pas#L1720
---@param startvalue integer
---@param stopvalue integer?
---@return integer[]? addresses
---@return integer? previousValue
---@overload fun(startvalue: integer, stopvalue?: integer): integer[]?, integer?
function ReversePointerListHandler:findPointerValue(startvalue, stopvalue) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/pointervaluelist.pas#L1701
---@return table<string, integer>
---@overload fun(): table<string, integer>
function ReversePointerListHandler:enumModules() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/pointervaluelist.pas#L1664
---@return { BaseAddress: integer, MemorySize: integer, InModule: boolean, ValidPointerRange: boolean }[]
---@overload fun(): { BaseAddress: integer, MemorySize: integer, InModule: boolean, ValidPointerRange: boolean }[]
function ReversePointerListHandler:enumMemoryRegions() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRIPRelativeScanner.pas#L99
---
--- Pascal class: `TRIPRelativeScanner`.
---@class RIPRelativeScanner : Object
---@field Address table<integer, integer> Read-only. Indexed from 0, so the results are `Address[0]` through `Address[Count-1]`. The array metatable calls `RipRelativeScanner_getAddress` with the Lua key as its only argument (LuaClassArray.pas:57-58), and that getter hands the key straight to `TRIPRelativeScanner.getAddress` (LuaRIPRelativeScanner.pas:93-94), which returns 0 - not nil - for any index below 0 or at or above `Count` (riprelativescanner.pas:48-53). Iterating `1..Count` therefore skips the first result and reads a bogus 0 as the last.
---@field Count integer Read-only. Number of entries in `Address`.
local RIPRelativeScanner = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/savedscanhandler.pas#L905
---
--- Pascal class: `TSavedScanHandler`.
---@class SavedScanHandler : Object
local SavedScanHandler = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/savedscanhandler.pas#L864
---@param address CEAddress
---@param hexadecimal boolean? Never pass this without also passing `signed`: with exactly two arguments the stray `lua_getProperty(L)` at savedscanhandler.pas:891 takes its `parameters=2` branch (LuaObject.pas:171), casts `address` to a TObject and calls `GetPropInfo` on it (LuaObject.pas:191), dereferencing that raw address inside Cheat Engine's own process, and an address string that is not a plain number is fed to `StrToInt64` (LuaObject.pas:182) outside any exception handler.
---@param signed boolean? Currently ignored: the implementation tests `lua_getProperty` where it means `lua_gettop`, so the value is always taken as false. Pass it anyway - with three arguments that call returns 0 without touching the stack.
---@return string? value
---@return string? errorMessage
---@overload fun(address: CEAddress, hexadecimal?: boolean, signed?: boolean): string?, string?
function SavedScanHandler:getStringFromAddress(address, hexadecimal, signed) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructureFrm.pas#L289
---
--- Pascal class: `TStructColumn`.
---@class StructColumn : Object
---@field Address integer The address the column is showing.
---@field AddressText string The address as typed into the column's edit box.
---@field Focused boolean
---@field CompareValue string
---@field Name string Read-only.
---@field GlobalIndex integer Read-only. Index among all columns of the form.
---@field EditWidth integer Read-only.
---@field EditLeft integer Read-only.
---@field PopupMenu Menu Read-only.
---@field SavedState integer The saved-state buffer, exposed as a raw pointer.
---@field SavedStateSize integer
local StructColumn = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructureFrm.pas#L239
---@overload fun()
function StructColumn:focus() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructureFrm.pas#L281
---
--- Pascal class: `TStructGroup`.
---@class StructGroup : Object
---@field Column table<integer, StructColumn> Read-only.
---@field name string The group name. `groupname` is the same property.
---@field groupname string Same property as `name`.
---@field box GroupBox Read-only. The group box control.
---@field columnCount integer Read-only.
---@field currentString string Read-only.
local StructGroup = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructureFrm.pas#L249
---@return StructColumn
---@overload fun(): StructColumn
function StructGroup:addColumn() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L261
---
--- Pascal class: `TDissectedStruct`.
---@class Structure : Object
---@field Name string
---@field Size integer Read-only.
---@field Count integer Read-only.
---@field Element table<integer, StructureElement?> Read-only. Indexed from 0; nil outside 0..`Count`-1 (LuaStructure.pas:110). Same getter as `structure[index]`.
---@field [integer] StructureElement? Read-only. Same as `getElement(index)`.
---@field DefaultHex boolean Values of this structure's elements are shown in hexadecimal by default.
local Structure = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L68
---@param value string
---@overload fun(value: string)
function Structure:setName(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L59
---@return string
---@overload fun(): string
function Structure:getName() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L79
---@return integer
---@overload fun(): integer
function Structure:getSize() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L88
---@return integer
---@overload fun(): integer
function Structure:getElementCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L97
---@param index integer
---@return StructureElement? element Nothing when `index` is outside 0..elementCount-1.
---@overload fun(index: integer): StructureElement?
function Structure:getElement(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L119
---@param offset integer
---@return StructureElement? element Nothing when no element is at or after `offset`.
---@overload fun(offset: integer): StructureElement?
function Structure:getElementByOffset(offset) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L137
---@return StructureElement
---@overload fun(): StructureElement
function Structure:addElement() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L189
---
--- Guesses this structure's layout by sampling the target's memory. All three arguments
--- are required; with fewer than three the call silently does nothing (LuaStructure.pas:203).
---@param base CEAddress Pass a string. The branch test is `lua_isstring(L, 1)` (LuaStructure.pas:205), which the Lua C API answers true for numbers too, so a number never reaches the `lua_tointeger` branch at LuaStructure.pas:208: it is formatted as decimal digits and handed to `symhandler.getAddressFromNameL`, which parses a bare digit string as hexadecimal (`val('$'+name,...)` at symbolhandler.pas:5225). Passing the number `0x400000` therefore guesses at `0x4194304`.
---@param offset integer Offset from `base` where the guessed structure starts.
---@param size integer Number of bytes to cover.
---@overload fun(base: CEAddress, offset: integer, size: integer)
function Structure:autoGuess(base, offset, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L151
---@param address CEAddress
---@param changename boolean?
---@overload fun(address: CEAddress, changename?: boolean)
function Structure:fillFromDotNetAddress(address, changename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L218
---@overload fun()
function Structure:beginUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L228
---@overload fun()
function Structure:endUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L238
---@overload fun()
function Structure:addToGlobalStructureList() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L248
---@overload fun()
function Structure:removeFromGlobalStructureList() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L571
---
--- Pascal class: `TStructelement`.
---@class StructureElement : Object
---@field Owner Structure Read-only.
---@field Offset integer
---@field Name string
---@field Vartype integer
---@field ChildStruct Structure? Nil when this element is not a pointer to a structure.
---@field parent Structure Read-only. Same object as `Owner`.
---@field index integer Read-only. Position of this element inside its owner structure.
---@field DisplayMethod string|integer Reads back the enum name (`'dtUnsignedInteger'`, `'dtSignedInteger'`, `'dtHexadecimal'`); accepts that name or its index 0-2.
---@field ExpandChangesAddress boolean
---@field BackgroundColor integer Row colour in the structure dissect window.
---@field CustomType CustomType? Nil unless Vartype is the custom-type variable type.
---@field ChildStructStart integer Offset into the child structure this pointer starts at.
---@field Bytesize integer Number of bytes this element covers. Assigning always stores the value, clamped to at least 1 (StructuresFrm2.pas:1246), but reading gives that stored value back only when `Vartype` is `vtByteArray`, `vtString` or `vtUnicodeString`; for every other type the getter derives the size from the variable type and the stored value never shows (StructuresFrm2.pas:1219-1237), so `element.Bytesize=16` on a `vtDword` element reads back 4. Published Pascal property (StructuresFrm2.pas:121) served by the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), since `structureElement_addMetaData` registers no entry for it (LuaStructure.pas:571-607). Cheat Engine's own documentation states the same restriction at `Cheat Engine/bin/celua.txt:2757`.
---@field NestedStructure boolean Expand the pointer inline instead of following it. Published Pascal property (StructuresFrm2.pas:129), compiled in because the project defines `NESTEDSTRUCTURES`; served by the `lua_getProperty` RTTI fallback (LuaClass.pas:578). Reads back false unless `Vartype` is the pointer type, whatever was stored (StructuresFrm2.pas:1354).
---@field VarType string|integer The same underlying property as `Vartype`, but reached by a different path and with a different type. `luaclass_addPropertyToTable` registers the metatable entry only as `Vartype` plus its lowercase-first twin `vartype` (LuaStructure.pas:593, LuaClass.pas:387-392), so this exact spelling misses the metatable and is served by the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494) against the published Pascal property (StructuresFrm2.pas:117). A tkEnumeration property reads back as the member name (`'vtDword'`) through LuaObject.pas:212-214, not as the integer `Vartype` gives, and assigning accepts either the name or the `vt*` constant (LuaObject.pas:299-306).
local StructureElement = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L362
---@return Structure
---@overload fun(): Structure
function StructureElement:getOwnerStructure() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L371
---@return integer
---@overload fun(): integer
function StructureElement:getOffset() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L380
---@param value integer
---@overload fun(value: integer)
function StructureElement:setOffset(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L449
---@return string
---@overload fun(): string
function StructureElement:getName() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L458
---@param value string
---@overload fun(value: string)
function StructureElement:setName(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L392
---@param address CEAddress
---@return string
---@overload fun(address: CEAddress): string
function StructureElement:getValue(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L405
---
--- `structureElement_setValue` pushes nothing but reports one return value
--- (`result:=1` at LuaStructure.pas:417), so Lua takes whatever is on top of the stack:
--- the `value` argument comes straight back out.
---@param address CEAddress
---@param value string
---@return string value The `value` argument, echoed back.
---@overload fun(address: CEAddress, value: string): string
function StructureElement:setValue(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L420
---@param address CEAddress
---@return string
---@overload fun(address: CEAddress): string
function StructureElement:getValueFromBase(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L433
---
--- `structureElement_setValueFromBase` pushes nothing but reports one return value
--- (`result:=1` at LuaStructure.pas:445), so Lua takes whatever is on top of the stack:
--- the `value` argument comes straight back out.
---@param address CEAddress
---@param value string
---@return string value The `value` argument, echoed back.
---@overload fun(address: CEAddress, value: string): string
function StructureElement:setValueFromBase(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L473
---@return integer
---@overload fun(): integer
function StructureElement:getVartype() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L482
---@param value integer
---@overload fun(value: integer)
function StructureElement:setVartype(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L497
---@return Structure? childStruct Nothing when the element has no child structure.
---@overload fun(): Structure?
function StructureElement:getChildStruct() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L506
---@param value Structure? nil clears the child structure.
---@overload fun(value?: Structure)
function StructureElement:setChildStruct(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L533
---@return integer
---@overload fun(): integer
function StructureElement:getChildStructStart() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L542
---@param value integer
---@overload fun(value: integer)
function StructureElement:setChildStructStart(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L552
---@return integer
---@overload fun(): integer
function StructureElement:getBytesize() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L561
---
--- Takes effect only for the length-carrying types. `TStructelement.setBytesize` stores
--- the value unconditionally, clamped to at least 1 (StructuresFrm2.pas:1246), but
--- `getBytesize` returns that stored value only when `Vartype` is `vtByteArray`,
--- `vtString` or `vtUnicodeString`; for every other type it derives the size from the
--- variable type (StructuresFrm2.pas:1219-1237), so the assignment is invisible.
--- Called off the main thread it raises `Structure access outside of main thread is not
--- allowed. Synchronize first` (StructuresFrm2.pas:1240-1242, StructuresFrm2.pas:832).
---@param value integer
---@overload fun(value: integer)
function StructureElement:setBytesize(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaInternet.pas#L429
---
--- Pascal class: `TWinInternet`.
---@class WinInternet : Object
---@field Header string Extra request header text, applied to `getURL` only. On Windows `getURL` hands it to `InternetOpenUrl` when it is not empty (LuaInternet.pas:300-303) while `postURL` builds its own `Content-Type: application/x-www-form-urlencoded` header and never reads it (LuaInternet.pas:208, LuaInternet.pas:252); on other platforms it is `TFPHTTPClient.RequestHeaders.Text` (LuaInternet.pas:63-71) and `postURL` drops it by calling `recreateFPHTTPClient` first, which frees and recreates the client (LuaInternet.pas:149, LuaInternet.pas:177-185). The only published property of `TWinInternet` (LuaInternet.pas:47 on Windows, LuaInternet.pas:49 elsewhere), and `wininternet_addMetaData` registers only `getURL` and `postURL` (LuaInternet.pas:429-435), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. Cheat Engine's own documentation calls it the additional header to be sent with the next getURL request (bin/celua.txt:3357).
local WinInternet = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaInternet.pas#L379
---@param path string
---@return string? contents Nothing when the request failed.
---@overload fun(path: string): string?
function WinInternet:getURL(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaInternet.pas#L401
---@param path string
---@param param string?
---@return string? contents Nothing when the request failed.
---@overload fun(path: string, param?: string): string?
function WinInternet:postURL(path, param) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/disassembler.pas#L201
---
--- Pascal class: `TCR3Disassembler`. Windows only, created by `createCR3Disassembler()`.
--- It has no metatable of its own, so it inherits every `Disassembler` method.
---@class CR3Disassembler : Disassembler
---@field CR3 integer The CR3 (page directory base) that addresses are translated with. Reachable through the published-property fallback.
local CR3Disassembler = {}