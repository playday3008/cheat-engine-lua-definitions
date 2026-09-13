---@meta
---
--- symbols
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Symbols and modules
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4342
---
--- Resolves a symbol string to an address. A number is returned unchanged.
--- On the 64-bit Windows build a failed lookup raises a Lua error and the 32-bit
--- Windows build re-raises the Pascal exception; on other platforms it returns nil
--- plus the message instead.
---@param addressString CEAddress
---@param local_ boolean? Resolve against Cheat Engine itself. Defaults to false.
---@return integer? address Nil only on non-Windows builds, where a failed lookup does not raise.
---@return string? errorMessage
---@nodiscard
function getAddress(addressString, local_) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4284
---
--- Like `getAddress`, but returns nothing instead of erroring when the lookup fails.
---@param addressString CEAddress
---@param local_ boolean? Resolve against Cheat Engine itself. Defaults to false.
---@param shallow boolean? Skip the deeper lookup stages. Defaults to false.
---@return integer? address
---@nodiscard
function getAddressSafe(addressString, local_, shallow) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4399
---@param address CEAddress
---@param moduleNames boolean? Allow "module+offset" results. Defaults to true.
---@param symbols boolean? Allow symbol name results. Defaults to true.
---@param sections boolean? Allow section name results. Defaults to false.
---@return string? name
---@nodiscard
function getNameFromAddress(address, moduleNames, symbols, sections) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4240
---
--- Looks a symbol up and returns its descriptor table (built by `pushSymbol` in
--- `luasymbollisthandler.pas`). Returns nothing when the symbol is not found.
---@param symbolname string
---@return { modulename: string, searchkey: string, address: integer, symbolsize: integer }? symbolinfo
---@nodiscard
function getSymbolInfo(symbolname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5057
---
--- Registers a userdefined symbol, replacing an existing one with the same name.
---@param symbolname string
---@param address CEAddress
---@param doNotSave boolean? Keep it out of the saved table. Defaults to false.
---@return boolean success
---@return string? errorMessage
function registerSymbol(symbolname, address, doNotSave) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5092
---@param symbolname string
function unregisterSymbol(symbolname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15880
---@return RegisteredSymbol[]
---@nodiscard
function enumRegisteredSymbols() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15929
function deleteAllRegisteredSymbols() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4483
---
--- Reloads the symbols of the target process.
---@param waitTillDone boolean? Defaults to true.
function reinitializeSymbolhandler(waitTillDone) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4535
---
--- Reloads the symbols of Cheat Engine itself.
---@param waitTillDone boolean? Defaults to true.
function reinitializeSelfSymbolhandler(waitTillDone) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4471
---@param modulename string? Limit the reload to this module. Defaults to all.
function reinitializeDotNetSymbolhandler(modulename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4502
function waitForSections() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4508
function waitForExports() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4515
function waitForDotNet() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4521
function waitForPDB() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4527
---@param state boolean
function searchPDBWhileLoading(state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9082
---
--- Reads, and optionally sets, the flag that makes symbol lookups block until the
--- symbol loader is done.
---@param state boolean? New value.
---@return boolean previousState
function waitforsymbols(state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9093
---
--- Controls whether a failed symbol lookup from Lua raises an error.
---@param state boolean
---@return boolean? previousState
function errorOnLookupFailure(state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15874
---
--- Stops the symbol loader thread so the debug files it holds open can be replaced.
function releaseDebugFiles() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14690
function enableWindowsSymbols() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14696
---
--- Turns kernelmode symbols on and reinitializes the symbol handler.
function enableKernelSymbols() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L16095
---@param retrieveOnly boolean? Only fetch, do not publish. Defaults to false.
function syncSymbolsNow(retrieveOnly) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4553
---
--- Enumerates the modules of a process using a toolhelp snapshot.
---@param processID integer? Defaults to the opened process.
---@return ModuleEntry[]? modules
---@nodiscard
function enumModules(processID) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4263
---@param modulename string
---@return integer? size
---@nodiscard
function getModuleSize(modulename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4425
---@param address CEAddress
---@return boolean? inModule
---@nodiscard
function inModule(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4444
---@param address CEAddress
---@return boolean? inSystemModule
---@nodiscard
function inSystemModule(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4462
---
--- The list of modules Cheat Engine considers "common" (system) modules.
---@return StringList
---@nodiscard
function getCommonModuleList() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14704
---
--- Reads the export table of a loaded module, or of a file on disk. Windows only.
---@param addressOrPath CEAddress Module address, or a path when the address lookup fails.
---@param local_ boolean? Resolve the address in Cheat Engine itself.
---@return table<string, integer>? exports Export name to address.
---@nodiscard
function enumExports(addressOrPath, local_) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14917
---@param address integer Address of an object with RTTI.
---@return string? classname
---@nodiscard
function getRTTIClassName(address) end


---------------------------------------------------------------------------------------
-- Array of byte scanning
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4155
---
--- Scans the target process for a byte pattern and returns every hit as a string list
--- of hexadecimal addresses. Free the list when done. Returns nothing when the scan
--- found nothing.
---
--- The first argument picks the form. A string is the scan string, and the arguments
--- after it are the scan options. Anything else takes the byte-list branch
--- (LuaHandler.pas:4190-4208), where every argument becomes one byte of the pattern: a
--- value above 255 becomes a wildcard, 0 becomes "00", and an argument that is not a
--- number becomes a wildcard as well (bin/celua.txt:554-556). The branch test at
--- LuaHandler.pas:4174 is LuaHandler's own `lua_isstring` (LuaHandler.pas:408-411),
--- which hides the one from the `lua` unit and answers true only for LUA_TSTRING, so
--- numbers do reach that branch and `AOBScan(0x48, 0x8B, 0x05)` works.
---@param scanString string For example "48 8B ?? 24".
---@param protectionFlags string? For example "+W-C*X". Defaults to "".
---@param alignmentType FastScanMethod? Defaults to 0.
---@param alignmentParam string? Defaults to "1".
---@return StringList? results
---@overload fun(firstByte: integer, ...: any): StringList?
---@nodiscard
function AOBScan(scanString, protectionFlags, alignmentType, alignmentParam) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4137
---
--- Scans the whole process and returns the address only when the pattern is unique.
---@param scanString string
---@param protectionFlags string? Defaults to "*X*W*C".
---@param alignmentType FastScanMethod? Defaults to 0.
---@param alignmentParam string? Defaults to "1".
---@return integer? address
---@nodiscard
function AOBScanUnique(scanString, protectionFlags, alignmentType, alignmentParam) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4082
---
--- Same as `AOBScanUnique` but restricted to one module.
---@param module string
---@param scanString string
---@param protectionFlags string? Defaults to "*X*W*C".
---@param alignmentType FastScanMethod? Defaults to 0.
---@param alignmentParam string? Defaults to "1".
---@return integer? address
---@nodiscard
function AOBScanModuleUnique(module, scanString, protectionFlags, alignmentType, alignmentParam) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12961
---
--- Builds a unique AOB string covering the instructions at `address`.
---@param address integer
---@param codesize integer? Defaults to the number of bytes a 5 byte jmp would overwrite.
---@return string? aob
---@return integer? offset Offset of `address` inside the returned pattern.
---@nodiscard
function getUniqueAOB(address, codesize) end


---------------------------------------------------------------------------------------
-- Assembler and disassembler
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2914
---
--- Assembles a single instruction and returns the encoded bytes.
---@param instruction string
---@param address CEAddress? Address the instruction is assembled for. Defaults to 0.
---@param preference AssemblerPreference? Defaults to 0 (apNone).
---@param skipRangeCheck boolean? Defaults to false.
---@return ByteTable? bytes nil when the instruction could not be assembled.
---@return string? errorMessage
---@nodiscard
function assemble(instruction, address, preference, skipRangeCheck) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8029
---
--- Disassembles one instruction of the target process, without module, symbol or
--- section names.
---@param address CEAddress
---@return string? disassembledString
---@nodiscard
function disassemble(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7979
---
--- Disassembles a buffer instead of process memory.
---@param bytes ByteTable|string Byte table, or a hexadecimal byte string.
---@param address CEAddress? Address the bytes are treated as living at. Defaults to 0.
---@return string? disassembledString
---@return LastDisassembleData|string extraOrError `LastDisassembleData` table (LuaHandler.pas:8010), or the error message.
---@nodiscard
function disassembleBytes(bytes, address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8060
---
--- Splits a line produced by `disassemble`. Note the return order. Requires exactly one
--- parameter; with any other count nothing is returned (LuaHandler.pas:8068, 8081-8082).
---@param disassembledString string
---@return string? extra
---@return string? opcode
---@return string? bytes
---@return string? address
---@nodiscard
function splitDisassembledString(disassembledString) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7931
---@param address CEAddress
---@return integer? size
---@nodiscard
function getInstructionSize(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7957
---@param address CEAddress
---@return integer? address Start of the instruction before `address`.
---@nodiscard
function getPreviousOpcode(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9636
---@param address CEAddress
---@return string? comment
---@nodiscard
function getComment(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9649
---@param address CEAddress
---@param comment string
function setComment(address, comment) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9664
---@param address CEAddress
---@return string? header
---@nodiscard
function getHeader(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9677
---@param address CEAddress
---@param header string
function setHeader(address, header) end


---------------------------------------------------------------------------------------
-- Auto assembler
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2641
---
--- Executes an auto assembler script.
---
--- With no second parameter, or with `targetSelf`, the enable part runs and the second
--- return value is the disable information. Pass that table back later to run the
--- disable part with the same allocations and symbols.
---@param script string
---@param targetSelf boolean? Assemble into Cheat Engine itself. Defaults to false.
---@param disableInfo DisableInfo? Pass the table from a previous enable to disable.
---@return boolean success
---@return DisableInfo|string|nil disableInfoOrError Disable information after a
--- successful enable, the error message after a failure.
---@overload fun(script: string, disableInfo: DisableInfo): boolean, string?
function autoAssemble(script, targetSelf, disableInfo) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2598
---
--- Syntax checks a script without executing it.
---@param script string
---@param enable boolean? Check the enable part. Defaults to true.
---@param targetSelf boolean? Defaults to false.
---@return boolean success
---@return string? errorMessage
---@nodiscard
function autoAssembleCheck(script, enable, targetSelf) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13070
---
--- Appends a code injection template to `script`.
---@param script Strings
---@param address string? Defaults to the selected address in the memory viewer.
---@param farJmp boolean? Use a 14 byte jmp. Defaults to false.
---@return true? success
function generateCodeInjectionScript(script, address, farJmp) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13101
---@param script Strings
---@param symbolname string Name given to the AOB result.
---@param address string? Defaults to the selected address in the memory viewer.
---@param lineCountToCopy integer? Defaults to 20.
---@param farJmp boolean? Accepted but ignored: the wrapper reads it and then calls the generator without it, so a 14 byte jmp is never used here.
---@return true? success
function generateAOBInjectionScript(script, symbolname, address, lineCountToCopy, farJmp) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13138
---@param script Strings
---@param address string? Defaults to the selected address in the memory viewer.
---@param lineCountToCopy integer? Defaults to 20.
---@param farJmp boolean? Accepted but ignored: the wrapper reads it and then calls the generator without it, so a 14 byte jmp is never used here.
---@return true? success
function generateFullInjectionScript(script, address, lineCountToCopy, farJmp) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3992
---
--- Builds an API hook script and returns its enable and disable sections separately.
---@param address string Address of the API to hook.
---@param addressTo string Address the hook jumps to.
---@param addressToGetNewCallAddress string? Symbol receiving the original address.
---@param extension string? Suffix for the generated symbol names.
---@param targetSelf boolean? Defaults to false.
---@return string? enableScript
---@return string? disableScript
---@nodiscard
function generateAPIHookScript(address, addressTo, addressToGetNewCallAddress, extension, targetSelf) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12928
---
--- Appends a disassembly snapshot around `address` to `script` as comment lines.
---@param script Strings
---@param address integer
---@param radius integer? Lines above and below. Defaults to 10.
---@return integer leftover The implementation returns 1 value without pushing one, so this is the last argument passed: `radius`, or `address` when `radius` was omitted.
function addSnapshotAsComment(script, address, radius) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12949
---
--- Lowest unused `newmem`/`alloc` number in the script.
---@param script Strings
---@return integer? number
---@nodiscard
function getNextAllocNumber(script) end
