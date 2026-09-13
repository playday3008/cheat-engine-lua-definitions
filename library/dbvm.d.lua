---@meta
---
--- dbvm
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- DBVM hypervisor
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8513
---
--- Loads DBVM when it is not running yet. Windows only. Default passwords are set when
--- none were configured.
---@param offload boolean? Actually launch the hypervisor. Defaults to false.
---@param reason string? Shown to the user. Defaults to "No reason given".
---@return boolean? running
function dbvm_initialize(offload, reason) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8573
---
--- Configures the DBVM passwords. All three are required.
---@param password1 integer
---@param password2 integer
---@param password3 integer
---@return boolean? valid
---@return string? errorMessage
function dbvm_setKeys(password1, password2, password3) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8596
---@return integer size
---@return integer pages
---@nodiscard
function dbvm_getMemory() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8608
---
--- Donates pages to DBVM. Windows only.
---@param pagecount integer
---@return integer? newPageCount
function dbvm_addMemory(pagecount) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5599
---@return integer? cr0
---@nodiscard
function dbvm_getCR0() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5608
---@return integer? cr3
---@nodiscard
function dbvm_getCR3() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5617
---@return integer cr4
---@nodiscard
function dbvm_getCR4() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5638
---@param msr integer
---@return integer? value
---@nodiscard
function dbvm_readMSR(msr) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5652
---@param msr integer
---@param value integer
function dbvm_writeMSR(msr, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5696
---
--- Raises an error when not all bytes could be read.
---@param physicalAddress integer
---@param size integer
---@return ByteTable bytes
---@nodiscard
function dbvm_readPhysicalMemory(physicalAddress, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5670
---@param physicalAddress integer
---@param bytes ByteTable
---@return boolean success
function dbvm_writePhysicalMemory(physicalAddress, bytes) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7149
---@return integer cr3 CR3 of the opened process, found by DBVM.
---@nodiscard
function dbvm_findCR3() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5632
---@return boolean success
function dbvm_jtagbp() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5722
---
--- Triggers a purple screen of death.
---@return string
function dbvm_psod() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5729
---@return integer count
---@nodiscard
function dbvm_getNMIcount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5735
---@param timeout integer
function dbvm_debug_setSpinlockTimeout(timeout) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5743
---@return DBVMStatistics statistics
---@return integer count
---@nodiscard
function dbvm_get_statistics() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5780
---
--- Starts logging writes to a physical page. Raises a Lua error when no address is
--- given. With EPTO_DBVMBP a usermode loop address is required.
---@param physicalAddress integer
---@param size integer? Defaults to 4.
---@param options integer? `DBVMWatchOption` combination. Defaults to 0.
---@param maxEntryCount integer? Defaults to 16.
---@param usermodeLoop integer? Required with EPTO_DBVMBP.
---@param kernelmodeLoop integer? Not recommended.
---@return integer? id
---@return string? errorMessage
function dbvm_watch_writes(physicalAddress, size, options, maxEntryCount, usermodeLoop, kernelmodeLoop) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5838
---
--- Starts logging reads of a physical page. Raises a Lua error when no address is
--- given. With EPTO_DBVMBP a usermode loop address is required.
---@param physicalAddress integer
---@param size integer? Defaults to 4.
---@param options integer? `DBVMWatchOption` combination. Defaults to 0.
---@param maxEntryCount integer? Defaults to 16.
---@param usermodeLoop integer? Required with EPTO_DBVMBP.
---@param kernelmodeLoop integer? Not recommended.
---@return integer? id
---@return string? errorMessage
function dbvm_watch_reads(physicalAddress, size, options, maxEntryCount, usermodeLoop, kernelmodeLoop) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5895
---
--- Starts logging executes on a physical page. Raises a Lua error when no address is
--- given (the message says `dbvm_watch_reads`, LuaHandler.pas:5912). With EPTO_DBVMBP
--- a usermode loop address is required.
---@param physicalAddress integer
---@param size integer? Defaults to 4.
---@param options integer? `DBVMWatchOption` combination. Defaults to 0.
---@param maxEntryCount integer? Defaults to 16.
---@param usermodeLoop integer? Required with EPTO_DBVMBP.
---@param kernelmodeLoop integer? Not recommended.
---@return integer? id
---@return string? errorMessage
function dbvm_watch_executes(physicalAddress, size, options, maxEntryCount, usermodeLoop, kernelmodeLoop) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6252
---@param id integer
---@return PageEvent[]? log
---@return string? errorMessage
function dbvm_watch_retrievelog(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6372
---@param id integer
function dbvm_watch_disable(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6384
---@return DBVMWatchStatus? status
---@nodiscard
function dbvm_watch_getstatus() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6463
---
--- Cloaks a physical page so the target sees the original contents.
---@param physicalAddress integer
---@param virtualAddress integer? Defaults to 0.
---@param mode integer? Defaults to 1.
---@return integer? result
function dbvm_cloak_activate(physicalAddress, virtualAddress, mode) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6486
---@param physicalAddress integer
---@return boolean? success
function dbvm_cloak_deactivate(physicalAddress) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6498
---@param physicalAddress integer
---@return ByteTable? page 4096 bytes.
---@nodiscard
function dbvm_cloak_readOriginal(physicalAddress) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6516
---@param physicalAddress integer
---@param page ByteTable 4096 bytes.
---@return integer? result
function dbvm_cloak_writeOriginal(physicalAddress, page) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6750
---
--- Changes registers whenever the cloaked breakpoint at `physicalAddress` is hit.
---@param physicalAddress integer
---@param changes ChangeRegOnBPInfo
---@param virtualAddress integer? Defaults to 0.
---@return boolean? success
function dbvm_changeregonbp(physicalAddress, changes, virtualAddress) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6962
---@param physicalAddress integer
---@return boolean? success
function dbvm_removechangeregonbp(physicalAddress) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6539
---
--- Traces `count` instructions after the cloaked breakpoint hits.
---@param physicalAddress integer
---@param count integer Must be greater than 0.
---@param virtualAddress CEAddress? Defaults to 0.
---@param options TraceOnBPOptions?
---@return integer? result
---@return string? errorMessage
function dbvm_traceonbp(physicalAddress, count, virtualAddress, options) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6712
---@return integer result
---@return integer count
---@return integer maxcount
---@nodiscard
function dbvm_traceonbp_getstatus() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6725
---
--- Tells a running `dbvm_traceonbp` trace to stop, without deleting it.
---
--- Returns a variable, mostly meaningless number of values: the implementation pushes one
--- integer, the status DBVM handed back, and then reports that same status as its return
--- count (`result:=r`, LuaHandler.pas:6728-6730). `ept_cloak_traceonbp_stoptrace` answers 0
--- (no trace going on), 1 (configured but not triggered yet), 2 (triggered but not finished)
--- or 3 (finished) (epthandler.c:918-922, epthandler.c:946), and the vmcall substitutes
--- 0xcedead when the host supports neither EPT nor NP (vmcall.c:1806-1809).
---
--- Only status 1 matches the single value pushed. Status 0 reports no results at all, so the
--- call reads as nil. Status 2 and 3 report two and three, and `luaD_poscall` is handed
--- `L->top - r` and copies upward from there (ldo.c:340, ldo.c:394-399), so the count reaches
--- below the pushed integer and the status arrives LAST: for 2 the `dbvm_traceonbp_stoptrace`
--- function object, then the integer 2; for 3 the caller stack slot below it, the function
--- object, then the integer 3. Collect them all and read the final value -
--- `local r = {dbvm_traceonbp_stoptrace()}` then `r[#r]`, which is nil for status 0.
--- A 0xcedead status asks for over 13 million results off a stack holding one.
---@return any ... Nothing for status 0; the integer 1 for status 1; for status 2 and 3
--- leaked stack values followed by the status integer last.
function dbvm_traceonbp_stoptrace() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6733
---@param physicalAddress integer? Defaults to 0.
---@param force boolean? Defaults to false.
---@return integer result
function dbvm_traceonbp_remove(physicalAddress, force) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6607
---@return PageEvent[]? log
---@return string? errorMessage
function dbvm_traceonbp_retrievelog() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7168
---@return integer size
---@nodiscard
function dbvm_bp_getBrokenThreadListSize() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7255
---@param id integer
---@return DBVMBrokenThreadShortState? state
---@return string? errorMessage
---@nodiscard
function dbvm_bp_getBrokenThreadEventShort(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7324
---
--- Carries extra `Status`, `WatchID` and `Heartbeat` fields. `Count` is explicitly
--- cleared here (LuaHandler.pas:7345) and its value moved into `Heartbeat`, so unlike
--- a watch log entry this table has no `Count` key.
---@param id integer
---@return PageEvent? state
---@return string? errorMessage
---@nodiscard
function dbvm_bp_getBrokenThreadEventFull(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7380
---
--- Applies register changes to a halted DBVM breakpoint thread. Fields left out keep
--- their current value. Only these keys are read: FLAGS, RAX, RBX, RCX, RDX, RSI, RDI,
--- R8 to R15, RBP, RSP, RIP, DR0 to DR3, DR6, DR7, plus a sub-table of FPU/SSE state.
---
--- The FPU/SSE sub-table is read under the key `FXSAVBE64` - a typo in Cheat Engine
--- (LuaHandler.pas:7516). `dbvm_bp_getBrokenThreadEventFull` writes that same data out
--- under `FXSAVE64`, so a table taken from the getter and passed straight back here
--- applies none of its FPU/SSE registers unless the key is renamed. Inside it the keys
--- FCW, FSW, FTW, FOP, IP, DP, MXCSR, MXCSR_MASK, FP_MM0 to FP_MM7 and XMM0 to XMM15
--- are read.
---@param id integer
---@param state table
---@return integer? result
---@return string? errorMessage
function dbvm_bp_setBrokenThreadEventFull(id, state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7710
---@param id integer
---@param continueMethod integer
---@return true? success
---@return string? errorMessage
function dbvm_bp_resumeBrokenThread(id, continueMethod) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7174
---
--- Resolves a broken thread event table to the process and thread it belongs to.
--- Needs at least the GSBASE, GSBASE_KERNEL, FSBASE and CR3 fields.
---@param event table
---@return integer? processID
---@return integer|string|nil threadIDOrError
---@nodiscard
function dbvm_bp_getProcessAndThreadIDFromEvent(event) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6974
---
--- Drops all EPT entries.
function dbvm_ept_reset() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6982
---@return boolean success
function dbvm_log_cr3_start() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L6988
---@return integer[]? cr3values Up to 512 non-zero values.
function dbvm_log_cr3_stop() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7017
---
--- Note: the implementation reads parameter 2 for both the size and the type.
---@param pluginAddress integer
---@param pluginSize integer
---@param pluginType integer
---@return integer? result
function dbvm_registerPlugin(pluginAddress, pluginSize, pluginType) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7037
---
--- Raises a performance monitor interrupt. Debugging aid.
function dbvm_raisePMI() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7043
function dbvm_ultimap2_hideRangeUsage() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7049
---@return integer result
---@return UltimapDebugInfo info
---@nodiscard
function dbvm_ultimap_getDebugInfo() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7107
---@param enabled boolean
---@param timeout integer? Only used when enabling. Defaults to 2000.
function dbvm_setTSCAdjust(enabled, timeout) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7125
---@param speed number
function dbvm_speedhack_setSpeed(speed) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7137
function dbvm_enableTSCHook() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7143
---@return boolean success
function dbvm_disableTSCHook() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7155
---
--- Hides DBVM's own physical memory from the system.
function dbvm_hidephysicalmemory() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7161
function dbvm_hidephysicalmemoryall() end
