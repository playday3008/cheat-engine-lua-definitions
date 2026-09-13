---@meta
---
--- system
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Windows API wrappers
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12655
---
--- Windows only. Either parameter may be left out to match anything.
---@param classname string?
---@param windowname string?
---@return integer? handle
---@nodiscard
function findWindow(classname, windowname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12675
---
--- Windows only.
---@param handle integer
---@param command integer `GW_*` constant.
---@return integer? handle
---@nodiscard
function getWindow(handle, command) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12693
---
--- Windows only.
---@param handle integer
---@return integer? processID
---@return integer? threadID
---@nodiscard
function getWindowProcessID(handle) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12718
---
--- Windows only. Truncated to 255 characters.
---@param handle integer
---@return string? caption
---@nodiscard
function getWindowCaption(handle) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12742
---
--- Windows only. Truncated to 255 characters.
---@param handle integer
---@return string? classname
---@nodiscard
function getWindowClassName(handle) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12767
---@return integer handle
---@nodiscard
function getForegroundWindow() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12607
---
--- All four parameters are required.
---@param handle integer
---@param message integer
---@param wParam integer
---@param lParam integer
---@return integer? result
function sendMessage(handle, message, wParam, lParam) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12626
---
--- Windows only.
---
--- Takes exactly four parameters: the body is guarded by `lua_gettop(L)=4`
--- (LuaHandler.pas:12636), so passing a fifth or sixth argument skips the whole body and the
--- call becomes a silent no-op that returns nothing. `flags` and `timeout` are read from
--- stack slots 5 and 6 (LuaHandler.pas:12642-12643), which are always past the top of the
--- stack under that guard, so `SendMessageTimeoutA` is always called with flags 0 and
--- timeout 0 and neither can be set from Lua.
---@param handle integer
---@param message integer
---@param wParam integer
---@param lParam integer
---@return integer? result nil when the call failed.
function sendMessageTimeout(handle, message, wParam, lParam) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13327
---
--- Hooks a window procedure by injecting `winhook-<arch>.dll` into the owning process
--- and routing the messages back over a pipe. Windows only.
---@param handle integer
---@param callback function Must be a function. Return 0 or 1 to swallow the message,
--- optionally followed by replacement hWnd, Msg, lParam and wParam values.
---@param async boolean? Do not wait for the Lua callback. Defaults to false.
---@return true? success
function hookWndProc(handle, callback, async) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13446
---
--- Windows only.
---@param handle integer
---@return true? success
function unhookWndProc(handle) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14313
---
--- Enumerates system handles. Windows only. Filters 2 and 3 load the DBK driver.
---@param filter HandleListFilter? Defaults to 0.
---@return HandleEntry[]? handles
---@nodiscard
function getHandleList(filter) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14421
---
--- Closes a handle owned by another process. Windows only.
---@param handle integer
---@param processID integer? Defaults to the opened process.
function closeRemoteHandle(handle, processID) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14760
---
--- Duplicates a handle between Cheat Engine and the target, or between two arbitrary
--- processes. Windows only.
---@param handle integer
---@param mode DuplicateHandleMode? Defaults to 0 (Cheat Engine to target).
---@return integer? newHandle
---@return string? errorMessage
---@overload fun(handle: integer, fromPID: integer, toPID: integer): integer?, string?
function duplicateHandle(handle, mode) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10525
---
--- Re-enables SeDebugPrivilege on Cheat Engine's own token. Windows only.
---@return true? success
function restoreSeDebugPrivilege() end


---------------------------------------------------------------------------------------
-- Sections and shared memory
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2463
---
--- `ZwCreateSection` with SECTION_ALL_ACCESS and PAGE_EXECUTE_READWRITE. Windows only.
---@param size integer
---@return integer? sectionHandle
---@return integer? ntstatus Returned instead when the call failed.
function createSection(size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2495
---
--- Maps a section into the target process. Windows only.
---@param sectionHandle integer
---@param baseAddress CEAddress? Preferred base address.
---@return integer? address
---@return integer? ntstatus Returned instead when the call failed.
function mapViewOfSection(sectionHandle, baseAddress) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2552
---
--- Windows only.
---@param address CEAddress
---@return integer? ntstatus Nothing on non-Windows builds.
function unMapViewOfSection(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7873
---
--- Creates or opens a named shared memory block and maps it into the target process.
---@param name string
---@param size integer? Defaults to 4096.
---@return integer? address
function allocateSharedMemory(name, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7902
---
--- Not implemented: always raises a Lua error.
---@param address integer
function deallocateSharedMemory(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7832
---
--- Same as `allocateSharedMemory`, mapped into Cheat Engine instead.
---@param name string
---@param size integer? Defaults to 4096.
---@return integer? address
function allocateSharedMemoryLocal(name, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7861
---@param address integer
function deallocateSharedMemoryLocal(address) end


---------------------------------------------------------------------------------------
-- Kernelmode driver (DBK)
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5231
---
--- Loads the DBK kernel driver if it is not loaded yet. Windows only.
---@param reason string? Ignored: the implementation stores it in a local and never reads it back.
---@return boolean? loaded nil on non-Windows builds.
---@return integer? deviceHandle The driver handle. Only returned when the driver was not already loaded, and nil in that case if loading failed.
function dbk_initialize(reason) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5265
function dbk_useKernelmodeOpenProcess() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5273
function dbk_useKernelmodeProcessMemoryAccess() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5281
function dbk_useKernelmodeQueryMemoryRegions() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5289
---
--- Switches Cheat Engine to physical memory access and relabels the process display.
function dbk_usePhysicalMemoryAccess() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5302
---@param state boolean
function dbk_setSaferPhysicalMemoryScanning(state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5311
---
--- Windows only. Raises an error when fewer than two parameters are given.
---@param physicalAddress integer
---@param size integer
---@return ByteTable? bytes
---@nodiscard
function dbk_readPhysicalMemory(physicalAddress, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5343
---
--- Windows only.
---@param physicalAddress integer
---@param bytes ByteTable
---@return boolean? success Nothing on non-Windows builds.
function dbk_writePhysicalMemory(physicalAddress, bytes) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5376
---
--- Windows only.
---@param processID integer
---@return integer? peprocess
---@nodiscard
function dbk_getPEProcess(processID) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5394
---
--- Windows only.
---@param threadID integer
---@return integer? pethread
---@nodiscard
function dbk_getPEThread(threadID) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5412
---
--- Executes kernel code at `address`. Windows only.
---@param address CEAddress
---@param parameter CEAddress? Defaults to 0.
function dbk_executeKernelMemory(address, parameter) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12501
---
--- Windows only.
---@param size integer
---@return integer? address
function allocateKernelMemory(size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12513
---
--- Windows only.
---@param address integer
function freeKernelMemory(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12523
---
--- Maps memory of one process into another through the driver. Windows only.
---@param address CEAddress
---@param size integer
---@param fromProcessID integer? Defaults to 0.
---@param toProcessID integer? Defaults to 0.
---@return integer? address
---@return integer? mdlAddress
function mapMemory(address, size, fromProcessID, toProcessID) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12558
---
--- Windows only.
---@param address CEAddress
---@param mdlAddress CEAddress
function unmapMemory(address, mdlAddress) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12573
---
--- Locks a memory region of the target process into physical memory. Windows only.
---@param address integer
---@param size integer
---@return integer? mdl
function lockMemory(address, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12593
---
--- Windows only.
---@param mdl integer
function unlockMemory(mdl) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5445
---
--- Makes kernelmode writes bypass page write protection. Windows only.
---@param state boolean
---@return boolean? success
function dbk_writesIgnoreWriteProtection(state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5547
---
--- Windows only.
---@param address CEAddress
---@return integer? physicalAddress
---@nodiscard
function dbk_getPhysicalAddress(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5567
---
--- Windows only.
---@return integer? cr0
---@nodiscard
function dbk_getCR0() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5576
---
--- CR3 of the opened process. Windows only.
---@return integer? cr3
---@nodiscard
function dbk_getCR3() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5590
---
--- Windows only.
---@return integer? cr4
---@nodiscard
function dbk_getCR4() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7745
---
--- Windows only.
---@param msr integer
---@return integer? value
---@nodiscard
function dbk_readMSR(msr) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7762
---
--- Windows only.
---@param msr integer
---@param value integer
function dbk_writeMSR(msr, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5623
---
--- Driver self test. Windows only.
function dbk_test() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14007
---
--- Registers Cheat Engine as a protected process through the driver. Windows only.
---@param preferredAltitude integer? Defaults to 0.
---@param protectedProcess integer|string? Process ID or name. Defaults to 0.
---@return boolean? success
function enableDRM(preferredAltitude, protectedProcess) end


---------------------------------------------------------------------------------------
-- CR3 based memory access
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5459
---
--- Windows only.
---@param cr3 integer
---@param virtualAddress integer
---@return integer? physicalAddress
---@nodiscard
function getPhysicalAddressCR3(cr3, virtualAddress) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5480
---
--- Windows only.
---@param cr3 integer
---@param address integer
---@param size integer
---@return ByteTable? bytes
---@nodiscard
function readProcessMemoryCR3(cr3, address, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5510
---
--- Windows only.
---@param cr3 integer
---@param address integer
---@param bytes ByteTable
---@return boolean? success Nothing on non-Windows builds.
function writeProcessMemoryCR3(cr3, address, bytes) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15625
---
--- Windows only.
---@param cr3 integer
---@param address CEAddress
---@return PageInfoCR3? info
---@nodiscard
function getPageInfoCR3(cr3, address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15601
---
--- Windows only.
---@param cr3 integer
---@param address CEAddress
---@return integer? nextAddress
---@nodiscard
function getNextReadablePageCR3(cr3, address) end


---------------------------------------------------------------------------------------
-- ceserver
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13778
---@param hostname string
---@param port integer
function connectToCEServer(hostname, port) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15962
---@return boolean connected
---@nodiscard
function isConnectedToCEServer() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15968
---@return string? path Path of the server binary, nil when not connected.
---@nodiscard
function getCEServerPath() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15935
---
--- Loads the ceserver extension into the opened process.
---@return boolean success
---@return string? errorMessage
function loadCEServerExtension() end
