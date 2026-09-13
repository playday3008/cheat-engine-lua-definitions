---@meta
---
--- io
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Streams and files
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4878
---@return MemoryStream
---@nodiscard
function createMemoryStream() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4884
---@param filename string
---@param mode integer? `fm*` flags. Defaults to open read/write when the file exists,
--- create otherwise.
---@return FileStream? stream
---@return string? errorMessage
function createFileStream(filename, mode) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4952
---@param initialContents string?
---@return StringStream
---@nodiscard
function createStringStream(initialContents) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13693
---
--- Lists the files in `path`, descending into subdirectories only when
--- `subdirectories` is true.
---@param path string
---@param mask string? For example "*.lua". Defaults to "".
---@param subdirectories boolean? Recurse into subdirectories. Defaults to false.
---@param attributes integer? File attribute filter, passed on to `FindAllFiles` (LuaHandler.pas:13725). Defaults to the Pascal constant `faDirectory` (LuaHandler.pas:13721); Cheat Engine publishes no `fa*` constant to Lua, so pass a number.
---@return string[] files
---@nodiscard
function getFileList(path, mask, subdirectories, attributes) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13740
---@param path string
---@param subdirectories boolean? Defaults to false.
---@return string[] directories
---@nodiscard
function getDirectoryList(path, subdirectories) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15589
---@param path string
---@return boolean? exists
---@nodiscard
function fileExists(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15577
---@param path string
---@return boolean? success
function deleteFile(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14963
---@param path string
---@return string? filename
---@nodiscard
function extractFileName(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14951
---@param path string
---@return string? extension Leading dot included.
---@nodiscard
function extractFileExt(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14940
---@param path string
---@return string? name
---@nodiscard
function extractFileNameWithoutExt(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14974
---@param path string
---@return string? directory Trailing path delimiter included.
---@nodiscard
function extractFilePath(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8808
---
--- `ShellExecute` with the "open" verb.
---@param command string
---@param parameters string?
---@param folder string?
---@param showCommand integer? `SW_*` constant. Defaults to SW_NORMAL.
function shellExecute(command, parameters, folder, showCommand) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8735
---
--- Runs a program without a console window and captures its stdout.
---@param executable string
---@param parameters string|string[]?
---@param currentDirectory string?
---@return string? output
---@return integer|string|nil exitStatusOrError
function runCommand(executable, parameters, currentDirectory) end


---------------------------------------------------------------------------------------
-- Text, encoding and translation
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9159
---
--- Converts UTF-8 to the system code page.
---@param s string
---@return string? converted
---@nodiscard
function utf8ToAnsi(s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9179
---
--- Converts from the system code page to UTF-8.
---@param s string
---@return string? converted
---@nodiscard
function ansiToUtf8(s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L16051
---
--- Reinterprets bytes as text in `codepage` and converts them to UTF-8.
---
--- Returns nothing: `result` is set to 0 at LuaHandler.pas:16060 and never raised, so
--- the converted string pushed at LuaHandler.pas:16090 is discarded. Neither argument
--- form works either. The ByteTable form takes `lua_objlen` of argument 2 (the
--- codepage) rather than of the table (LuaHandler.pas:16068). The string form throws
--- away the pointer `lua_tolstring` returned: LuaHandler.pas:16079 stores it in `p`,
--- then LuaHandler.pas:16081 copies `size` bytes from `b` instead - a local that is
--- only ever assigned in the ByteTable branch (LuaHandler.pas:16069) - so passing a
--- string reads through a wild pointer and can crash Cheat Engine.
---@param data ByteTable|string
---@param codepage integer
function convertToUTF8(data, codepage) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10707
---
--- Translates a string through the loaded PO file. Returns the input unchanged when
--- there is no translation.
---
--- Called without an argument the implementation still claims one return value but
--- pushes nothing (LuaHandler.pas:10737-10738). The stack is empty on that path, so
--- `luaD_poscall` is handed the called function's own slot and copies that out
--- (ldo.c:340, ldo.c:394-399): `translate()` hands back the `translate` function
--- itself, always truthy, never nil.
---@param s string
---@return string translated
---@nodiscard
function translate(s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10668
---
--- Translates by PO identifier.
---@param id string
---@param original string? Fallback. Defaults to "".
---@return string? translated
---@nodiscard
function translateID(id, original) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10637
---
--- Merges a PO file into the active translation.
---@param filename string
---@return boolean? success
function loadPOFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10631
---@return string path
---@nodiscard
function getTranslationFolder() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15534
---
--- Sign extends `value` from bit `mostSignificantBit`.
---@param value integer
---@param mostSignificantBit integer
---@return integer? result
---@return string? errorMessage
---@nodiscard
function signExtend(value, mostSignificantBit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13536
---
--- Dumps a Lua function to bytecode, compresses it and returns it base85 encoded.
---@param func function
---@return string encoded
---@nodiscard
function encodeFunction(func) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13566
---
--- Compiles a script with an external Lua DLL and encodes the result, so bytecode for
--- another Lua version can be produced.
---@param script string
---@param luaDll string? Defaults to the Lua library Cheat Engine itself uses.
---@return string? encoded
---@nodiscard
function encodeFunctionEx(script, luaDll) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13648
---
--- Decodes a string produced by `encodeFunction` back into a callable function.
---
--- `result` is set to 1 before the argument check (LuaHandler.pas:13659), so a call that
--- is not exactly one string argument returns whatever sits on top of the stack - the
--- argument itself for a one-argument call, and for a zero-argument call `decodeFunction`
--- itself, because `luaD_poscall` is then handed `L->top - 1`, the called function's own
--- slot, and copies that out (ldo.c:340, ldo.c:394-399).
---@param encoded string
---@return function|string func The compiled chunk, or `lua_load`'s error message when `encoded` does not decode (LuaHandler.pas:13680).
---@nodiscard
function decodeFunction(encoded) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10288
---
--- Reads a value from the `HKCU\Environment` registry key. Returns nothing when the key
--- does not open or the value does not exist (LuaHandler.pas:10301-10307).
---
--- Not compiled out off Windows: neither the body (LuaHandler.pas:10288-10314) nor the
--- registration (LuaHandler.pas:16891) is guarded by `{$IFDEF windows}`, and `registry` sits
--- in the unconditional uses clause (LuaHandler.pas:29) - unlike `broadcastEnvironmentUpdate`
--- just below, whose body is guarded at LuaHandler.pas:10347. Only meaningful on Windows.
---@param name string
---@return string? value
---@nodiscard
function getUserRegistryEnvironmentVariable(name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10316
---
--- Writes a value to the `HKCU\Environment` registry key. Does nothing unless at least two
--- arguments are passed (LuaHandler.pas:10322) and the key opens (LuaHandler.pas:10330).
---
--- Not compiled out off Windows: neither the body (LuaHandler.pas:10316-10336) nor the
--- registration (LuaHandler.pas:16892) is guarded by `{$IFDEF windows}`, and `registry` sits
--- in the unconditional uses clause (LuaHandler.pas:29) - unlike `broadcastEnvironmentUpdate`
--- just below, whose body is guarded at LuaHandler.pas:10347. Only meaningful on Windows.
---@param name string
---@param value string
function setUserRegistryEnvironmentVariable(name, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10338
---
--- Broadcasts `WM_SETTINGCHANGE` so running programs pick up environment changes.
--- Windows only.
function broadcastEnvironmentUpdate() end
