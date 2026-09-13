---@meta
---
--- globals
---
--- Objects and variables Cheat Engine assigns, and the callbacks it looks up by name.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Globals
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1174
---
--- ID of the thread the debugger currently has stopped.
--- Set by `LUA_SetCurrentContextState` before a breakpoint callback runs, and by
--- `getDebugContext`.
---@type integer
THREADID = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/cheatengine.lpr#L212
---
--- Directory the table Cheat Engine was started with was loaded from, assigned before
--- the table's own Lua runs. Only set when a table was passed on the command line and
--- its path is non-empty, so a script that may run outside that case must check it.
---@type string?
TrainerOrigin = nil


---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1188
---
--- Flags register of the stopped thread. x86 only.
--- Writing to it and calling `setDebugContext` applies the change to the thread.
---@type integer
EFLAGS = nil

--- The general purpose registers of the stopped thread are published as uppercase
--- globals by `LUA_SetCurrentContextState`, and read back by `LUA_GetNewContextState`
--- (`debug_setContext`). Which names exist depends on the target architecture: RAX..R15
--- on x86-64, EAX..EDI on x86-32, X0..X30/SP/PC on ARM.
---
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1178
---@type integer
RAX = nil
---@type integer
RBX = nil
---@type integer
RCX = nil
---@type integer
RDX = nil
---@type integer
RSI = nil
---@type integer
RDI = nil
---@type integer
RBP = nil
---@type integer
RSP = nil
---@type integer
RIP = nil
---@type integer
R8 = nil
---@type integer
R9 = nil
---@type integer
R10 = nil
---@type integer
R11 = nil
---@type integer
R12 = nil
---@type integer
R13 = nil
---@type integer
R14 = nil
---@type integer
R15 = nil
---@type integer
EAX = nil
---@type integer
EBX = nil
---@type integer
ECX = nil
---@type integer
EDX = nil
---@type integer
ESI = nil
---@type integer
EDI = nil
---@type integer
EBP = nil
---@type integer
ESP = nil
---@type integer
EIP = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/contexthandler.pas#L929
---
--- ARM64 general purpose registers of the stopped thread, published by the same
--- loop that publishes RAX/EAX on x86: `X0`..`X30`, `SP` and `PC`.
---@type integer
X0 = nil
---@type integer
X1 = nil
---@type integer
X2 = nil
---@type integer
X3 = nil
---@type integer
X4 = nil
---@type integer
X5 = nil
---@type integer
X6 = nil
---@type integer
X7 = nil
---@type integer
X8 = nil
---@type integer
X9 = nil
---@type integer
X10 = nil
---@type integer
X11 = nil
---@type integer
X12 = nil
---@type integer
X13 = nil
---@type integer
X14 = nil
---@type integer
X15 = nil
---@type integer
X16 = nil
---@type integer
X17 = nil
---@type integer
X18 = nil
---@type integer
X19 = nil
---@type integer
X20 = nil
---@type integer
X21 = nil
---@type integer
X22 = nil
---@type integer
X23 = nil
---@type integer
X24 = nil
---@type integer
X25 = nil
---@type integer
X26 = nil
---@type integer
X27 = nil
---@type integer
X28 = nil
---@type integer
X29 = nil
---@type integer
X30 = nil
---@type integer
SP = nil
---@type integer
PC = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/contexthandler.pas#L379
---
--- ARM32 general purpose registers of the stopped thread. `SP` and `PC` are
--- shared with the ARM64 set above, and `R8`..`R10` with the x86-64 set.
---@type integer
ORIG_R0 = nil
---@type integer
R0 = nil
---@type integer
R1 = nil
---@type integer
R2 = nil
---@type integer
R3 = nil
---@type integer
R4 = nil
---@type integer
R5 = nil
---@type integer
R6 = nil
---@type integer
R7 = nil
---@type integer
FP = nil
---@type integer
IP = nil
---@type integer
LR = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1191
---
--- With `extraregs` enabled, the FPU and SSE registers of the stopped thread are
--- published as byte-table globals under the names the context handler reports
--- (`FP0`..`FP7`, `XMM0`..`XMM15`, ...).
---@type ByteTable
XMM0 = nil
---@type ByteTable
XMM1 = nil
---@type ByteTable
XMM2 = nil
---@type ByteTable
XMM3 = nil
---@type ByteTable
XMM4 = nil
---@type ByteTable
XMM5 = nil
---@type ByteTable
XMM6 = nil
---@type ByteTable
XMM7 = nil
---@type ByteTable
XMM8 = nil
---@type ByteTable
XMM9 = nil
---@type ByteTable
XMM10 = nil
---@type ByteTable
XMM11 = nil
---@type ByteTable
XMM12 = nil
---@type ByteTable
XMM13 = nil
---@type ByteTable
XMM14 = nil
---@type ByteTable
XMM15 = nil
---@type ByteTable
FP0 = nil
---@type ByteTable
FP1 = nil
---@type ByteTable
FP2 = nil
---@type ByteTable
FP3 = nil
---@type ByteTable
FP4 = nil
---@type ByteTable
FP5 = nil
---@type ByteTable
FP6 = nil
---@type ByteTable
FP7 = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17235
---
--- Empty table Cheat Engine creates at startup. Nothing in Cheat Engine writes into it:
--- `registerBinUtil` stores its definition in the Pascal `binutilslist` and adds a menu
--- item (LuaHandler.pas:10869-10896). Free for scripts to use.
---@type table
BinUtils = {}

--- Address of `kernel32.OpenProcess`. Windows builds only.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17194
---@type integer
windows_OpenProcess = nil
--- Address of `kernel32.ReadProcessMemory`. Windows builds only.
---@type integer
windows_ReadProcessMemory = nil
--- Address of `kernel32.WriteProcessMemory`. Windows builds only.
---@type integer
windows_WriteProcessMemory = nil
--- Address of `kernel32.VirtualQueryEx`. Windows builds only.
---@type integer
windows_VirtualQueryEx = nil

--- Addresses of the DBK32 kernelmode implementations, for use with `setAPIPointer`.
--- Windows builds only.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17200
---@type integer
dbk_OpenProcess = nil
---@type integer
dbk_NtOpenProcess = nil
---@type integer
dbk_ReadProcessMemory = nil
---@type integer
dbk_WriteProcessMemory = nil
---@type integer
dbk_VirtualQueryEx = nil
---@type integer
dbk_ReadPhysicalMemory = nil
---@type integer
dbk_WritePhysicalMemory = nil
---@type integer
VirtualQueryExPhysical = nil

--- Addresses of the DBVM implementations, for use with `setAPIPointer`.
--- Windows builds only.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17209
---@type integer
dbvm_ReadPhysicalMemory = nil
---@type integer
dbvm_WritePhysicalMemory = nil
---@type integer
dbvm_block_interrupts = nil
---@type integer
dbvm_raise_privilege = nil
---@type integer
dbvm_restore_interrupts = nil
---@type integer
dbvm_changeselectors = nil

--- `clWindow` system colour. Taken from the LCL value on Windows builds; `defines.lua`
--- falls back to `SYS_COLOR_BASE|COLOR_WINDOW` on every other build.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17218
---@type integer
clWindow = nil
--- `clWindowText` system colour. Taken from the LCL value on Windows builds; `defines.lua`
--- falls back to `SYS_COLOR_BASE|COLOR_WINDOWTEXT` on every other build.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L17219
---@type integer
clWindowText = nil


---------------------------------------------------------------------------------------
-- Objects and variables Cheat Engine keeps in the global state
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/MainUnit.pas#L6386
---
--- The main Cheat Engine window. Set once at startup; `InitializeLuaScripts` shows an
--- error dialog if it is undefined, and after any autorun script that sets it to nil.
---@type MainForm
MainForm = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/MainUnit.pas#L6389
---
--- The cheat table's address list.
---@type AddressList
AddressList = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/ProcessHandlerUnit.pas#L208
---
--- File name of the opened process, without its path. Only assigned when a process is
--- opened (`ProcessHandlerUnit.pas:203`), so it is nil until then.
---@type string?
process = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaXMPlayer.pas#L141
---
--- The built-in tracker music player.
---@type XMPlayer
xmplayer = nil

--- `TDiagramBlockSide` (diagramtypes.pas), registered as globals by `initializeLuaDiagram`.
---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagram.pas#L327
dbsTop = 0
dbsLeft = 1
dbsRight = 2
dbsBottom = 3
dbsTopLeft = 4
dbsTopRight = 5
dbsBottomLeft = 6
dbsBottomRight = 7


---------------------------------------------------------------------------------------
-- Callbacks Cheat Engine looks up by name
--
-- None of these exist until a script defines them; Cheat Engine calls whatever it finds
-- under the name at the moment of the event.
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L260
---
--- Replaces the default Lua error handler. Whatever it returns becomes the error value;
--- when it is not defined Cheat Engine falls back to `debug.traceback`.
---@type fun(errorMessage: string): string
onLuaError = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L936
---
--- Called whenever a breakpoint without its own handler is hit. The register globals
--- (`RAX`, `EFLAGS`, `THREADID`, ...) are filled in before the call and read back after,
--- so assigning to them changes the thread's context.
---
--- Return a non-zero value to tell Cheat Engine the breakpoint was handled and the GUI
--- does not have to show it.
---@type fun(): integer
debugger_onBreakpoint = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/debugeventhandler.pas#L2350
---
--- Called when the debugged process loads a module. Return 1 to break on the load.
---@type fun(moduleName: string, baseAddress: integer): integer
debugger_onModuleLoad = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/ProcessHandlerUnit.pas#L212
---
--- Called after a process has been opened.
---@type fun(processID: integer)
onOpenProcess = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/OpenSave.pas#L337
---
--- Called twice per table load: with `true` before anything is read, and with `false`
--- once the load has finished. `tableIsLoading` tracks the same window.
---@type fun(starting: boolean)
onTableLoad = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/MemoryRecordUnit.pas#L2599
---
--- Called before a memory record is activated or deactivated.
---@type fun(memoryrecord: MemoryRecord, wantedState: boolean)
onMemRecPreExecute = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/MemoryRecordUnit.pas#L2552
---
--- Called after a memory record was activated or deactivated. `succeeded` is false when
--- the record did not reach the state that was asked for.
---@type fun(memoryrecord: MemoryRecord, wantedState: boolean, succeeded: boolean)
onMemRecPostExecute = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/pointervaluelist.pas#L1073
---
--- Called when a pointermap scan starts.
---@type fun(pointermap: ReversePointerListHandler)
onPointerMapGenerationStart = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/pointervaluelist.pas#L1620
---
--- Called when a pointermap scan has finished.
---@type fun(pointermap: ReversePointerListHandler)
onPointerMapGenerationFinish = nil

--- One entry of `wndhooklist`.
---@class WndProcHookEntry
---@field f function The callback passed to `hookWndProc`.
---@field orig integer Address of the original window procedure.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13356
---
--- Table `hookWndProc` creates and fills, keyed by window handle. Internal bookkeeping
--- for the window procedure hook; `CEWindowProcEvent_Internal` dispatches through it.
---@type table<integer, WndProcHookEntry>
wndhooklist = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13357
---
--- Dispatcher `hookWndProc` defines in Lua and the injected winhook dll calls. Not meant
--- to be called directly.
---@type fun(hWnd: integer, Msg: integer, lParam: integer, wParam: integer): integer, integer?, integer?, integer?, integer?
CEWindowProcEvent_Internal = nil


---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/trainergenerator.pas#L544
---
--- Close handler of the default trainer form. The trainer generator defines it in
--- Cheat Engine's own Lua state the first time it builds that form, and binds it to
--- both the close button's OnClick (called as `f(sender)`) and the form's OnClose
--- (called as `f(sender, closeAction)`, returning the new close action). The default
--- body warns the user and returns `caHide`; a generated trainer script replaces it.
---@type fun(sender: any, closeAction: integer?): integer?
CloseClick = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/trainergenerator.pas#L485
---
--- About handler of the default trainer form. The trainer generator binds the about
--- button's OnClick to this name in Cheat Engine's own Lua state and calls it as
--- `f(sender)`. Unlike `CloseClick` no default body is installed, so the button does
--- nothing until a script (usually a generated trainer) defines it.
---@type fun(sender: any)
AboutClick = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/contexthandler.pas#L951
---
--- ARM64 vector registers of the stopped thread, published as byte-table globals by the
--- same `extraregs` path that publishes `XMM0`..`XMM15` on x86.
---@type ByteTable
V0 = nil
---@type ByteTable
V1 = nil
---@type ByteTable
V2 = nil
---@type ByteTable
V3 = nil
---@type ByteTable
V4 = nil
---@type ByteTable
V5 = nil
---@type ByteTable
V6 = nil
---@type ByteTable
V7 = nil
---@type ByteTable
V8 = nil
---@type ByteTable
V9 = nil
---@type ByteTable
V10 = nil
---@type ByteTable
V11 = nil
---@type ByteTable
V12 = nil
---@type ByteTable
V13 = nil
---@type ByteTable
V14 = nil
---@type ByteTable
V15 = nil
---@type ByteTable
V16 = nil
---@type ByteTable
V17 = nil
---@type ByteTable
V18 = nil
---@type ByteTable
V19 = nil
---@type ByteTable
V20 = nil
---@type ByteTable
V21 = nil
---@type ByteTable
V22 = nil
---@type ByteTable
V23 = nil
---@type ByteTable
V24 = nil
---@type ByteTable
V25 = nil
---@type ByteTable
V26 = nil
---@type ByteTable
V27 = nil
---@type ByteTable
V28 = nil
---@type ByteTable
V29 = nil
---@type ByteTable
V30 = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/OpenSave.pas#L336
---
--- True while a cheat table is being loaded. Set around the whole load, including the
--- table's own Lua script (OpenSave.pas:815). Nothing defines it at startup - the only two
--- writers are `LUA_DoScript('tableIsLoading=true')` at OpenSave.pas:336 and
--- `LUA_DoScript('tableIsLoading=false')` at OpenSave.pas:996 - so it is nil until the first
--- table load begins.
---@type boolean?
tableIsLoading = nil

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/pointerscannerfrm.pas#L2683
---
--- Filter called for every pointer a pointerscan rescan evaluates, once "Lua filter" is
--- ticked in the rescan window. Return true to keep the pointer, false to drop it; the
--- result is read with `lua_toboolean` (pointerscannerfrm.pas:2918), so any truthy value
--- keeps it.
---
--- The name is whatever the rescan window's function edit box holds - `RescanFilter` is the
--- shipped default (frmRescanPointerUnit.lfm:329). The rescan refuses to start unless a
--- global of that name is a function (frmRescanPointerUnit.pas:232-235).
---
--- `base` is the base address of the pointer. `offsets` holds the pointer's offsets at
--- indices 1..n in stored order, with a nil at index n+1 (pointerscannerfrm.pas:2902-2910);
--- the same table object is reused for every call, so entries past that nil may be left
--- over from an earlier, longer pointer and `#offsets` is not a reliable length. `address`
--- is the address the chain resolves to, always an integer (pointerscannerfrm.pas:2916)
--- despite the control hint at frmRescanPointerUnit.lfm:308 saying it can be nil.
---@type fun(base: integer, offsets: integer[], address: integer): boolean
RescanFilter = nil