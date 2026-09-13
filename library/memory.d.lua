---@meta
---
--- memory
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Reading target memory
--
-- Every `*Local` variant does the same thing against Cheat Engine's own process, and
-- resolves symbol strings with the local symbol handler instead of the target one.
-- All of them return nothing when the read fails.
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1713
---
--- Reads 1 byte. Alias of `readShortInteger`.
---@param address CEAddress
---@param signed boolean? Defaults to false.
---@return integer? value
---@nodiscard
function readByte(address, signed) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1713
---
--- Reads 1 byte.
---@param address CEAddress
---@param signed boolean? Defaults to false.
---@return integer? value
---@nodiscard
function readShortInteger(address, signed) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1662
---
--- Reads 2 bytes.
---@param address CEAddress
---@param signed boolean? Defaults to false.
---@return integer? value
---@nodiscard
function readSmallInteger(address, signed) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1766
---
--- Reads 4 bytes.
---@param address CEAddress
---@param signed boolean? Defaults to false.
---@return integer? value
---@nodiscard
function readInteger(address, signed) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1810
---
--- Reads 8 bytes. Only accepts exactly one parameter.
---@param address CEAddress
---@return integer? value
---@nodiscard
function readQword(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1824
---
--- Reads 4 or 8 bytes depending on the target's pointer size.
---@param address CEAddress
---@return integer? value
---@nodiscard
function readPointer(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1868
---
--- Reads a 4 byte single. Only accepts exactly one parameter.
---@param address CEAddress
---@return number? value
---@nodiscard
function readFloat(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1909
---
--- Reads an 8 byte double. Only accepts exactly one parameter.
---@param address CEAddress
---@return number? value
---@nodiscard
function readDouble(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1994
---@param address CEAddress
---@param maxLength integer? Defaults to 50.
---@param wideChar boolean? Read UTF-16 instead of 8-bit. Defaults to false.
---@return string? value
---@nodiscard
function readString(address, maxLength, wideChar) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2447
---
--- Reads `count` bytes. By default the bytes come back as separate return values;
--- pass `returnAsTable` to get a byte table instead. Returns nothing when the read
--- fails.
---@param address CEAddress
---@param count integer? Defaults to 1.
---@param returnAsTable false? Defaults to false.
---@return integer ... The individual bytes.
---@overload fun(address: CEAddress, count: integer, returnAsTable: true): ByteTable?
---@nodiscard
function readBytes(address, count, returnAsTable) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1708
---@param address CEAddress
---@param signed boolean?
---@return integer? value
---@nodiscard
function readByteLocal(address, signed) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1708
---@param address CEAddress
---@param signed boolean?
---@return integer? value
---@nodiscard
function readShortIntegerLocal(address, signed) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1657
---@param address CEAddress
---@param signed boolean?
---@return integer? value
---@nodiscard
function readSmallIntegerLocal(address, signed) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1761
---@param address CEAddress
---@param signed boolean?
---@return integer? value
---@nodiscard
function readIntegerLocal(address, signed) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1805
---@param address CEAddress
---@return integer? value
---@nodiscard
function readQwordLocal(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1815
---@param address CEAddress
---@return integer? value
---@nodiscard
function readPointerLocal(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1863
---@param address CEAddress
---@return number? value
---@nodiscard
function readFloatLocal(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1904
---@param address CEAddress
---@return number? value
---@nodiscard
function readDoubleLocal(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1989
---@param address CEAddress
---@param maxLength integer? Defaults to 50.
---@param wideChar boolean? Defaults to false.
---@return string? value
---@nodiscard
function readStringLocal(address, maxLength, wideChar) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2457
---@param address CEAddress
---@param count integer? Defaults to 1.
---@param returnAsTable false?
---@return integer ...
---@overload fun(address: CEAddress, count: integer, returnAsTable: true): ByteTable?
---@nodiscard
function readBytesLocal(address, count, returnAsTable) end


---------------------------------------------------------------------------------------
-- Writing target memory
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2031
---
--- Writes 1 byte. Requires exactly two parameters.
---@param address CEAddress
---@param value integer
---@return boolean? success
function writeByte(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2031
---@param address CEAddress
---@param value integer
---@return boolean? success
function writeShortInteger(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2068
---@param address CEAddress
---@param value integer
---@return boolean? success
function writeSmallInteger(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2105
---@param address CEAddress
---@param value integer
---@return boolean? success
function writeInteger(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2142
---@param address CEAddress
---@param value integer
---@return boolean? success
function writeQword(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2156
---
--- Writes 4 or 8 bytes depending on the target's pointer size.
---@param address CEAddress
---@param value integer
---@return boolean? success
function writePointer(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2198
---@param address CEAddress
---@param value number
---@return boolean? success
function writeFloat(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2237
---@param address CEAddress
---@param value number
---@return boolean? success
function writeDouble(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2291
---
--- Writes the string without a terminating zero.
---@param address CEAddress
---@param text string
---@param wideChar boolean? Write UTF-16 instead of 8-bit. Defaults to false.
---@return boolean? success
function writeString(address, text, wideChar) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2442
---
--- Writes a byte table, or the bytes given as separate parameters.
--- Temporarily makes the page writable, and suspends the process first on systems
--- without writable-executable memory.
---@param address CEAddress
---@param bytes ByteTable
---@return integer bytesWritten
---@overload fun(address: CEAddress, ...: integer): integer
function writeBytes(address, bytes) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2026
---@param address CEAddress
---@param value integer
---@return boolean? success
function writeByteLocal(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2026
---@param address CEAddress
---@param value integer
---@return boolean? success
function writeShortIntegerLocal(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2063
---@param address CEAddress
---@param value integer
---@return boolean? success
function writeSmallIntegerLocal(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2100
---@param address CEAddress
---@param value integer
---@return boolean? success
function writeIntegerLocal(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2137
---@param address CEAddress
---@param value integer
---@return boolean? success
function writeQwordLocal(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2147
---@param address CEAddress
---@param value integer
---@return boolean? success
function writePointerLocal(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2193
---@param address CEAddress
---@param value number
---@return boolean? success
function writeFloatLocal(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2232
---@param address CEAddress
---@param value number
---@return boolean? success
function writeDoubleLocal(address, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2286
---@param address CEAddress
---@param text string
---@param wideChar boolean?
---@return boolean? success
function writeStringLocal(address, text, wideChar) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2452
---@param address CEAddress
---@param bytes ByteTable
---@return integer bytesWritten
---@overload fun(address: CEAddress, ...: integer): integer
function writeBytesLocal(address, bytes) end


---------------------------------------------------------------------------------------
-- Memory management, protection and copying
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14168
---
--- `VirtualAllocEx` in the target process. When the preferred base fails, a free block
--- near it is looked up and tried once more.
---@param size integer
---@param base integer? Preferred base address.
---@param protection integer? Win32 page protection constant. Defaults to
--- PAGE_EXECUTE_READWRITE, or PAGE_READWRITE on systems without writable-executable
--- memory.
---@return integer? address
function allocateMemory(size, base, protection) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2588
---
--- `VirtualFreeEx(MEM_RELEASE)` in the target process.
---@param address CEAddress
---@param size integer? Ignored, the whole allocation is released.
---@return boolean success
function deAlloc(address, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L2593
---@param address CEAddress
---@param size integer?
---@return boolean success
function deAllocLocal(address, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9200
---
--- Makes the region PAGE_EXECUTE_READWRITE.
---@param address CEAddress
---@param size integer
---@return boolean? success
function fullAccess(address, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9225
---
--- Sets the page protection of a region. Requires exactly three parameters; with any
--- other count nothing happens and nothing is returned.
--- Passing W and X together fails on systems that do not allow writable-executable
--- memory.
---@param address CEAddress
---@param size integer
---@param protection MemoryProtectionFlags|integer Table of R/W/X flags, or a raw Win32
--- protection constant (undocumented form).
---@return integer|false|nil result The previous Win32 protection constant on success (the
--- `true` pushed alongside it is dropped, only the top value is returned), `false` when
--- `VirtualProtectEx` fails or on either early failure path, nil when the parameter count
--- was not exactly 3.
---@return string? errorMessage Only on the two early failure paths: W and X requested
--- together on a system without writable-executable memory, or `protection` being
--- neither a table nor a number.
function setMemoryProtection(address, size, protection) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13792
---
--- Copies `size` bytes. When `destinationAddress` is nil or missing, memory is
--- allocated in whichever process `method` writes to.
---@param sourceAddress CEAddress
---@param size integer
---@param destinationAddress CEAddress? nil to allocate.
---@param method CopyMemoryMethod? Defaults to 0.
---@return integer? destination Nothing on failure.
function copyMemory(sourceAddress, size, destinationAddress, method) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13906
---@param address1 CEAddress
---@param address2 CEAddress
---@param size integer
---@param method CompareMemoryMethod? Defaults to 0.
---@return boolean? equal Nothing is returned when `size` is 0.
---@return integer? matchingBytes Only returned when the regions differ.
---@nodiscard
function compareMemory(address1, address2, size, method) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14626
---@param maxAddress integer? Stop enumerating here. 0 or nil means no limit.
---@return MemoryRegion[]
---@nodiscard
function enumMemoryRegions(maxAddress) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14551
---
--- Enumerates memory by walking the page tables of the given CR3. Windows only;
--- on other platforms it returns nil plus "Not yet implemented".
---@param cr3 integer Only read when at least two arguments are passed; with a single
--- argument Cheat Engine silently enumerates with CR3 0 instead.
---@param maxAddress integer Stop enumerating here; 0 means no limit. Effectively
--- required: both reads are guarded by "at least two parameters".
---@return MemoryRegion[]? regions
---@return string? errorMessage
---@nodiscard
function enumMemoryRegionsCR3(cr3, maxAddress) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14543
---
--- Makes `VirtualQueryEx` go through the CR3 based implementation.
---@param state boolean
function setForceCR3VirtualQueryEx(state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15661
---
--- Reallocates a private committed region in place so it becomes `newsize` bytes.
--- Windows only; other builds return nothing at all.
--- The process is suspended for the duration. Fails when the region is not private,
--- not committed, not standalone, when the new size is smaller, or when the following
--- region is not free. Cannot be used on Cheat Engine itself.
---@param address CEAddress
---@param newsize integer
---@return integer? addedRegionStart Address just past the original region.
---@return string? errorMessage
function growMemoryRegion(address, newsize) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12446
---@param filename string
---@return string? md5 Hex digest.
---@nodiscard
function md5file(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L12467
---@param address CEAddress
---@param size integer
---@return string? md5 Hex digest, nothing when the read fails.
---@nodiscard
function md5memory(address, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10473
---@param text string
---@return string? md5 Hex digest.
---@nodiscard
function stringToMD5String(text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4976
---
--- Loads a file and writes its full contents to `address` in the target process.
---@param filename string
---@param address CEAddress
---@return integer? bytesWritten
function readRegionFromFile(filename, address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5013
---
--- Dumps `size` bytes from the target process to a new file.
---@param filename string
---@param address CEAddress
---@param size integer
---@return integer? bytesWritten
function writeRegionToFile(filename, address, size) end
