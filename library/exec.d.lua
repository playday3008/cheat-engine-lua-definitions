---@meta
---
--- exec
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Executing code in the target
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L11943
---
--- Creates a remote thread that calls `stdcall function(parameter): pointer` and waits
--- for it. The generated stub is freed again unless the wait timed out.
---@param address CEAddress
---@param parameter CEAddress? Defaults to 0.
---@param timeout integer? Milliseconds. Defaults to INFINITE.
---@return integer? result
---@return string? errorMessage
function executeCode(address, parameter, timeout) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L11922
---
--- Calls a function in the target with arbitrary parameters.
--- Untyped parameters are guessed: strings become ascii strings, integers become
--- integers, other numbers become floats.
---@param callMethod CallMethod
---@param timeout integer? Milliseconds. nil means infinite, 0 means do not wait.
---@param address CEAddress
---@param ... number|string|ExecuteParameter
---@return integer? result
---@return string? errorMessage
function executeCodeEx(callMethod, timeout, address, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L11417
---
--- Like `executeCodeEx`, with an explicit `this` pointer.
---@param callMethod CallMethod
---@param timeout integer? Milliseconds. nil means infinite, 0 means do not wait.
---@param address CEAddress
---@param instance integer|MethodInstance|nil Pass nil for a plain function.
---@param ... number|string|ExecuteParameter
---@return integer? result
---@return string? errorMessage
function executeMethod(callMethod, timeout, address, instance, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10970
---
--- Assembles a reusable stub that reads its parameters from a block of memory, so the
--- same call can be made repeatedly without reassembling.
---@param callMethod CallMethod
---@param address CEAddress
---@param instance StubInstance|integer|nil Only the register is read; any non-nil,
--- non-table value selects rcx/ecx.
---@param ... ExecuteParamType|StubParameter Parameter descriptors.
---@return ExecuteMethodStub? stub
---@return string? errorMessage
function createExecuteMethodStub(callMethod, address, instance, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L11395
---
--- `createExecuteMethodStub` with a nil instance.
---@param callMethod CallMethod
---@param address CEAddress
---@param ... ExecuteParamType|StubParameter
---@return ExecuteMethodStub? stub
---@return string? errorMessage
function createExecuteCodeExStub(callMethod, address, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12413
---
--- Calls `stdcall function(parameter): pointer` inside Cheat Engine itself. `address` is
--- resolved against Cheat Engine's OWN symbol table, not the target's
--- (`lua_toaddress(L, 1, true)`, LuaHandler.pas:12424).
---@param address CEAddress
---@param parameter CEAddress? Defaults to 0. A number is passed through unchanged: the test at LuaHandler.pas:12429 is LuaHandler's own `lua_isstring` (LuaHandler.pas:408-411), which hides the `lua` unit's and answers true only for LUA_TSTRING. A string is resolved with `selfsymhandler.getAddressFromName`, where a bare digit string is parsed as HEX (symbolhandler.pas:5225-5226), so `'20'` means 0x20.
---@return integer? result
function executeCodeLocal(address, parameter) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12119
---
--- Calls a function inside Cheat Engine itself with arbitrary parameters.
--- 64-bit x86 builds only; the 32-bit and aarch64 builds raise an error.
---@param address CEAddress
---@param ... number|string|ExecuteParameter
---@return integer? result
---@return string? errorMessage
function executeCodeLocalEx(address, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14140
---
--- Queues an APC at `address` on a thread of the target process. Windows only.
---@param address CEAddress
function createAPC(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3932
---
--- Injects a DLL and, unless told not to, reloads the symbols afterwards.
---@param filename string
---@param skipSymbolWait boolean? Defaults to false.
---@return boolean success
---@return string? errorMessage
function injectDLL(filename, skipSymbolWait) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3932
---
--- Alias of `injectDLL`.
---@param filename string
---@param skipSymbolWait boolean?
---@return boolean success
---@return string? errorMessage
function injectLibrary(filename, skipSymbolWait) end


---------------------------------------------------------------------------------------
-- C, C# and .NET compilation
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15351
---
--- Compiles C source with the built-in tcc and writes it into the target process.
--- When no address is given, memory is allocated automatically.
---@param source string|string[] One script, or several scripts compiled together.
---@param address CEAddress? Defaults to 0 (allocate).
---@param targetSelf boolean? Compile into Cheat Engine itself. Defaults to false.
---@param useKernelAlloc boolean? Allocate kernel memory. Windows only. Defaults to false.
---@param noDebug boolean? Skip source line info. Defaults to false.
---@return table<string, integer>? symbols Symbol name to address, nil on failure.
---@return string? errorsOrWarnings
function compile(source, address, targetSelf, useKernelAlloc, noDebug) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15356
---
--- Same as `compile`, but the strings are file paths compiled as one project.
---@param files string|string[]
---@param address CEAddress?
---@param targetSelf boolean?
---@param useKernelAlloc boolean?
---@param noDebug boolean?
---@return table<string, integer>? symbols
---@return string? errorsOrWarnings
function compileFiles(files, address, targetSelf, useKernelAlloc, noDebug) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15377
---
--- Compiles `tcclib/lib/libtcc1.c` into the target and registers its symbols under the
--- module name "tcc.lib".
---@return true|table<string, integer>|nil success `true` when the symbols were registered; the raw symbol table when the compile produced warnings, in which case the symbols are NOT registered; nil on failure.
---@return string? errorsOrWarnings
function compileTCCLib() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15361
---@param path string
function addCIncludePath(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15368
---@param path string
function removeCIncludePath(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15480
---
--- Compiles C# source and returns the path of the produced assembly.
---@param script string
---@param references string|string[]? Assembly references.
---@param coreAssembly string? Path to the core assembly to build against.
---@return string? assemblyPath
---@return string? errorMessage
function compileCS(script, references, coreAssembly) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15480
---
--- Alias of `compileCS`.
---@param script string
---@param references string|string[]?
---@param coreAssembly string?
---@return string? assemblyPath
---@return string? errorMessage
function compileCSharp(script, references, coreAssembly) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15452
---
--- Loads a .NET assembly in the target and calls a static method. All five parameters
--- are required.
---@param assemblyPath string
---@param namespace string
---@param classname string
---@param methodname string
---@param parameters string
---@return integer? result
---@return string? errorMessage
function dotNetExecuteClassMethod(assemblyPath, namespace, classname, methodname, parameters) end
