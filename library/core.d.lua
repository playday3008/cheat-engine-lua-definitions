---@meta
---
--- core
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Output, timing and misc
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1530
---
--- Writes the arguments, space separated, to the Lua engine output (or to the output
--- object set with `print` redirection). Thread safe: when called off the main thread it
--- synchronizes itself. Userdata is printed as its hexadecimal pointer.
---@param ... any
---@return string? printed The text that was written; nothing when called with no arguments.
function print(...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1481
---
--- Blocks the current thread. Does nothing unless exactly one parameter is given.
---@param milliseconds integer
function sleep(milliseconds) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8846
---
--- Milliseconds since system start (`GetTickCount64`).
---@return integer
---@nodiscard
function getTickCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8853
---
--- Reads the CPU timestamp counter. Returns nothing on the darwin/aarch64 build.
---@return integer? tsc
---@nodiscard
function rdtsc() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14488
---@param eax integer
---@param ecx integer? Subleaf. Defaults to 0.
---@return CPUIDResult? result Nothing when `eax` is missing.
---@nodiscard
function cpuid(eax, ecx) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8890
---
--- Runs the message loop once, so the GUI stays responsive inside a long Lua loop.
function processMessages() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3306
---
--- System beep.
function beep() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10280
---@param message string
function outputDebugString(message) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14209
---
--- Calls `func` with the remaining arguments inside a Pascal try/except block.
---@param func function
---@param ... any Arguments passed to `func`.
---@return boolean success
---@return any ... The function results, or the error message when `success` is false.
function try(func, ...) end


---------------------------------------------------------------------------------------
-- Target process
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3275
---
--- Opens a process by ID, or by process name when a string is given.
--- Returns nothing when the process could not be opened.
---@param processID integer
---@return true? success
---@overload fun(processName: string): true?
function openProcess(processID) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3252
---@param processName string
---@return integer? processID Nothing when no process with that name is running.
---@nodiscard
function getProcessIDFromProcessName(processName) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4228
---@return integer processID 0 when no process is open.
---@nodiscard
function getOpenedProcessID() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4234
---@return integer processHandle 0 when no process is open.
---@nodiscard
function getOpenedProcessHandle() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8257
---
--- Process ID owning the foreground window. Windows only.
---@return integer? processID
---@nodiscard
function getForegroundProcess() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4051
---@param path string
---@param parameters string?
---@param debug boolean? Start it under the debugger. Defaults to false.
---@param breakOnEntryPoint boolean? Defaults to false.
function createProcess(path, parameters, debug, breakOnEntryPoint) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9384
---
--- Without a parameter, returns a table keyed by process ID with the process name as
--- value. With a `Strings` object, fills that object instead and returns nothing.
---@return table<integer, string> processes
---@overload fun(list: Strings)
---@nodiscard
function getProcessList() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9312
---
--- Without a parameter, returns a table keyed by process ID whose values are arrays of
--- window captions. With a `Strings` object, fills that object instead.
---@return table<integer, string[]> windows
---@overload fun(list: Strings)
---@nodiscard
function getWindowList() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9428
---
--- Fills `list` with the thread IDs of the opened process. Unlike `getProcessList`
--- there is no table form: called with no parameter it does nothing
--- (LuaHandler.pas:9446), and called with anything that is not a `Strings` object -
--- including a non-userdata value, which `lua_toceuserdata` turns into nil - it raises
--- a Lua error (LuaHandler.pas:9442-9443), so guard it with `pcall` rather than an `if`.
---@param list Strings
function getThreadList(list) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3313
---
--- Suspends the target process.
function pause() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3320
---
--- Resumes the target process.
function unpause() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14116
---
--- Address of the target process' PEB. Windows only.
---@return integer? peb
---@nodiscard
function getPEB() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14059
---
--- Detaches from the current process and opens `filename` as if it were a process.
---@param filename string
---@param is64bit boolean? Defaults to false.
---@param startaddress integer? Address the file contents are mapped at. Defaults to 0.
---@return boolean? success Nothing is pushed when the call is made without arguments: `result` is set to 1 at LuaHandler.pas:14072, before the `parameters>=1` guard at LuaHandler.pas:14074 that wraps every push.
function openFileAsProcess(filename, is64bit, startaddress) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14048
---@return integer? size Nothing when no file is opened as a process.
---@nodiscard
function getOpenedFileSize() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14038
---
--- Writes the pending changes of the file opened with `openFileAsProcess` back to disk.
---@param filename string? Write to this path instead of the original file.
function saveOpenedFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9629
---
--- Detaches the debugger and closes the process handle if that is currently possible.
function detachIfPossible() end


---------------------------------------------------------------------------------------
-- Target properties
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8273
---
--- True when Cheat Engine itself is the 64-bit build.
---@return boolean
---@nodiscard
function cheatEngineIs64Bit() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8280
---@return boolean
---@nodiscard
function targetIs64Bit() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8287
---@return boolean
---@nodiscard
function targetIsX86() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8294
---@return boolean
---@nodiscard
function targetIsArm() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8301
---
--- True when the connected ceserver reports Android, or when Cheat Engine itself was
--- built for Android.
---@return boolean
---@nodiscard
function targetIsAndroid() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8315
---
--- True when the target runs under Rosetta. macOS builds only.
---@return boolean
---@nodiscard
function targetIsRosetta() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8325
---@return OperatingSystemABI
---@nodiscard
function getABI() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10914
---@return integer size 4 or 8.
---@nodiscard
function getPointerSize() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10906
---
--- Overrides the pointer size the process handler reports.
---@param size integer
function setPointerSize(size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14153
---
--- Forces the assembler and disassembler into 32 or 64-bit mode by flipping the
--- process handler's `is64Bit` flag.
---@param mode AssemblerMode
function setAssemblerMode(mode) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14863
---@return OperatingSystem
---@nodiscard
function getOperatingSystem() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9147
---@return number version The `ceversion` constant, 7.51 in this build.
---@nodiscard
function getCEVersion() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15565
---@return string name The (possibly renamed) product name.
---@nodiscard
function getCEName() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7915
---@return string path Trailing path delimiter included.
---@nodiscard
function getCheatEngineDir() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7922
---@return integer processID Cheat Engine's own process ID.
---@nodiscard
function getCheatEngineProcessID() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14934
---@return string path Autorun folder, trailing path delimiter included.
---@nodiscard
function getAutoRunPath() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15571
---@return string path
---@nodiscard
function getTempFolder() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15558
---@return boolean darkMode True when the system asks apps to use dark mode.
---@nodiscard
function darkMode() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13271
---
--- Windows only.
---@param filepath string
---@return integer? version Packed 64-bit version, nothing on failure.
---@return FileVersion? parts
---@nodiscard
function getFileVersion(filepath) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13320
---
--- Windows only: it forwards to `getFileVersion`, whose body is Windows-guarded.
---@return integer? version
---@return FileVersion? parts
---@nodiscard
function getCheatEngineFileVersion() end
