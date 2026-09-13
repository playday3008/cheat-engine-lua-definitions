---@meta
---
--- aliases
---
--- Type aliases and the enumerations Cheat Engine passes as plain integers.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Type aliases
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L571
---
--- A number, or any string the symbol handler can resolve to an address.
---@alias CEAddress integer|string

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3463
---
--- A Lua function, or the name of a global Lua function, used as a callback.
--- Cheat Engine wraps either form in a `TLuaCaller`.
---@alias CECallback function|string

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L22
---
--- Byte table: 1-based array of byte values, as built by
--- `CreateByteTableFromPointer` and consumed by `readBytesFromTable`.
---@alias ByteTable integer[]


---------------------------------------------------------------------------------------
-- Enumerations
--
-- Cheat Engine passes these across the Lua boundary as plain integers. The names come
-- from the Pascal enums the values are cast to.
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/debuggertypedefinitions.pas#L44
---
--- `TBreakpointTrigger`
---@alias BreakpointTrigger
---| 0 # bptExecute
---| 1 # bptAccess
---| 2 # bptWrite

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/debuggertypedefinitions.pas#L37
---
--- `TBreakpointMethod`
---@alias BreakpointMethod
---| 0 # bpmInt3
---| 1 # bpmDebugRegister
---| 2 # bpmException
---| 3 # bpmDBVM
---| 4 # bpmDBVMNative
---| 5 # bpmGDB

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/debuggertypedefinitions.pas#L34
---
--- `TContinueOption`
---@alias ContinueOption
---| 0 # co_run
---| 1 # co_stepinto
---| 2 # co_stepover
---| 3 # co_runtill

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3344
---
--- Debugger interface selector, as accepted by `debugProcess` and returned by
--- `debug_getCurrentDebuggerInterface`.
---@alias DebuggerInterface
---| 0 # default / current
---| 1 # Windows debugger
---| 2 # VEH debugger
---| 3 # Kernelmode debugger
---| 4 # macOS debugger
---| 5 # GDB server debugger

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/commontypedefs.pas#L20
---
--- `TFastScanMethod`
---@alias FastScanMethod
---| 0 # fsmNotAligned
---| 1 # fsmAligned - alignmentparam is the alignment size
---| 2 # fsmLastDigits - alignmentparam is the required last digit(s)

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/Assemblerunit.pas#L2712
---
--- `TassemblerPreference`
---@alias AssemblerPreference
---| 0 # apNone
---| 1 # apShort
---| 2 # apLong
---| 3 # apFar

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/symbolhandler.pas#L422
---
--- `TSymbolLookupCallbackPoint`
---@alias SymbolLookupCallbackPoint
---| 0 # slStart - very start of the lookup, before tokenization
---| 1 # slNotInt - the string is not hexadecimal only
---| 2 # slNotModule - the token is not a module name
---| 3 # slNotUserdefinedSymbol - the token is not a userdefined symbol
---| 4 # slNotSymbol - the token is not in the symbol list
---| 5 # slFailure - nothing matched

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/windows7taskbar.pas#L13
---
--- `TTaskBarProgressState`
---@alias TaskBarProgressState
---| 0 # tbpsNone
---| 1 # tbpsIndeterminate
---| 2 # tbpsNormal
---| 3 # tbpsError
---| 4 # tbpsPaused

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3867
---
--- LCL `TMsgDlgType`, the dialog kind for `messageDialog`.
---@alias MsgDlgType
---| 0 # mtWarning
---| 1 # mtError
---| 2 # mtInformation
---| 3 # mtConfirmation
---| 4 # mtCustom

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3876
---
--- Button constants for `messageDialog`. The return value of `messageDialog` is the
--- LCL modal result, not one of these.
---@alias MsgDlgButton
---| 0 # mbYes
---| 1 # mbNo
---| 2 # mbOK
---| 3 # mbCancel
---| 4 # mbAbort
---| 5 # mbRetry
---| 6 # mbIgnore
---| 7 # mbAll
---| 8 # mbNoToAll
---| 9 # mbYesToAll
---| 10 # mbHelp
---| 11 # mbClose

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10976
---
--- Calling convention for `executeCode*` / `executeMethod` / stub builders.
---@alias CallMethod
---| 0 # stdcall
---| 1 # cdecl

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10986
---
--- Parameter types for `executeCodeEx`, `executeMethod`, `executeCodeLocalEx` and the
--- stub builders. Type 5 (bytetable) is only valid for `createExecuteMethodStub` /
--- `createExecuteCodeExStub`.
---
--- Where types 3 and 4 put the string depends on the function. `executeCodeEx` and
--- `executeMethod` allocate it in the target with `VirtualAllocEx` and copy it over with
--- `WriteProcessMemory` (LuaHandler.pas:11701-11702, :11708-11709), so the callee receives
--- a target-process pointer. `executeCodeLocalEx` runs the code inside Cheat Engine itself
--- and keeps the string in Cheat Engine's own memory, passing a `pchar` into a local Pascal
--- string (LuaHandler.pas:12253-12254) or a `pwidechar` (LuaHandler.pas:12260-12261);
--- nothing is written to the target there. The stub builders only record the parameter type
--- at build time (LuaHandler.pas:11226-11317) and write no string at all.
---@alias ExecuteParamType
---| 0 # integer / pointer
---| 1 # float (single)
---| 2 # double
---| 3 # ascii string - passed as a pointer to the string
---| 4 # widestring - passed as a pointer to the string
---| 5 # bytetable (stub builders only)

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L11121
---
--- Register that receives the `this` pointer in `executeMethod` /
--- `createExecuteMethodStub`. On 32-bit targets only 0-7 are valid (eax..edi).
---@alias InstanceRegister
---| 0 # rax/eax
---| 1 # rcx/ecx (default)
---| 2 # rdx/edx
---| 3 # rbx/ebx
---| 4 # rsp/esp
---| 5 # rbp/ebp
---| 6 # rsi/esi
---| 7 # rdi/edi
---| 8 # r8
---| 9 # r9
---| 10 # r10
---| 11 # r11
---| 12 # r12
---| 13 # r13
---| 14 # r14
---| 15 # r15

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13841
---
--- Copy direction for `copyMemory`.
---@alias CopyMemoryMethod
---| 0 # target process to target process
---| 1 # target process to Cheat Engine
---| 2 # Cheat Engine to target process
---| 3 # Cheat Engine to Cheat Engine

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13945
---
--- Compare mode for `compareMemory`.
---@alias CompareMemoryMethod
---| 0 # both addresses in the target process
---| 1 # address1 in the target process, address2 in Cheat Engine
---| 2 # both addresses in Cheat Engine

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14347
---
--- Filter for `getHandleList`.
---@alias HandleListFilter
---| 0 # everything
---| 1 # all handles owned by the opened process
---| 2 # all handles pointing to the opened process
---| 3 # all handles pointing to Cheat Engine

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14763
---
--- Mode for the 2-parameter form of `duplicateHandle`.
---@alias DuplicateHandleMode
---| 0 # Cheat Engine to target process
---| 1 # target process to Cheat Engine

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14865
---
--- Return value of `getOperatingSystem`.
---@alias OperatingSystem
---| 0 # Windows
---| 1 # other (Linux/macOS build)

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/ProcessHandlerUnit.pas#L25
---
--- `TOperatingsystemABI`, returned by `getABI`.
---@alias OperatingSystemABI
---| 0 # abiWindows
---| 1 # abiSystemV

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5204
---
--- Ad window docking side for `supportCheatEngine`.
---@alias AdWindowPosition
---| 0 # top
---| 1 # right
---| 2 # bottom
---| 3 # left

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8499
---
--- API slot for `setAPIPointer`.
---@alias APIPointerID
---| 0 # OpenProcess
---| 1 # ReadProcessMemory
---| 2 # WriteProcessMemory
---| 3 # VirtualQueryEx

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14160
---
--- Pointer size override for `setAssemblerMode`.
---@alias AssemblerMode
---| 0 # 32-bit
---| 1 # 64-bit

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/dbk32/vmxfunctions.pas#L111
---
--- DBVM EPT watch options (`EPTO_*`). Combine with `|`.
---@alias DBVMWatchOption
---| 1 # EPTO_MULTIPLERIP - log the same RIP multiple times
---| 2 # EPTO_LOG_ALL - log every access in the page
---| 4 # EPTO_SAVE_FXSAVE - logs contain the xsave state
---| 8 # EPTO_SAVE_STACK - logs contain a 4KB stack snapshot
---| 16 # EPTO_PMI_WHENFULL - raise a PMI when the log is full
---| 32 # EPTO_GROW_WHENFULL - grow the log when full
---| 64 # EPTO_INTERRUPT - debug interrupt on hit, no logging
---| 128 # EPTO_DBVMBP - save state and park RIP in an int3 loop (needs a usermode loop address)
