---@meta
---
--- classes / threads
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L484
---
--- Pascal class: `TCriticalSection`.
---@class CriticalSection : Object
local CriticalSection = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L466
---@overload fun()
function CriticalSection:enter() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L472
---@overload fun()
function CriticalSection:leave() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L466
---@overload fun()
function CriticalSection:acquire() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L472
---@overload fun()
function CriticalSection:release() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L478
---@return boolean
---@overload fun(): boolean
function CriticalSection:tryEnter() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadotnetpipe.pas#L571
---
--- Pascal class: `TDotNetPipe`.
---@class DotNetPipe : Object
---@field Connected boolean Read-only. True while the pipe to the .NET data collector is open.
---@field Attached boolean Read-only. True once the collector has attached to the target process.
---@field SupportsDotNet4_5 boolean Read-only. True when the attached runtime is .NET 4.5 or newer.
local DotNetPipe = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadotnetpipe.pas#L16
---@return { DomainHandle: integer, Name: string }[]
---@overload fun(): { DomainHandle: integer, Name: string }[]
function DotNetPipe:enumDomains() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadotnetpipe.pas#L49
---@param domain integer
---@return { ModuleHandle: integer, BaseAddress: integer, Name: string }[]
---@overload fun(domain: integer): { ModuleHandle: integer, BaseAddress: integer, Name: string }[]
function DotNetPipe:enumModuleList(domain) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadotnetpipe.pas#L91
---@param modulehandle integer
---@return { TypeDefToken: integer, Name: string, Flags: integer, Extends: integer }[]
---@overload fun(modulehandle: integer): { TypeDefToken: integer, Name: string, Flags: integer, Extends: integer }[]
function DotNetPipe:enumTypeDefs(modulehandle) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadotnetpipe.pas#L137
---@param modulehandle integer
---@param typedeftoken integer
---@return { MethodToken: integer, Name: string, Attributes: integer, ImplementationFlags: integer, ILCode: integer, NativeCode: integer, SecondaryNativeCode: integer[] }[]
---@overload fun(modulehandle: integer, typedeftoken: integer): { MethodToken: integer, Name: string, Attributes: integer, ImplementationFlags: integer, ILCode: integer, NativeCode: integer, SecondaryNativeCode: integer[] }[]
function DotNetPipe:getTypeDefMethods(modulehandle, typedeftoken) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadotnetpipe.pas#L278
---@param module integer
---@param typedef integer
---@return { ObjectType: integer, ElementType: integer, CountOffset: integer, ElementSize: integer, FirstElementOffset: integer, ClassName: string, Fields: { Token: integer, Offset: integer, FieldType: integer, Name: string, FieldTypeClassName: string, IsStatic: boolean, Attribs: integer }[] }? nil when the typedef has no class name.
---@overload fun(module: integer, typedef: integer): { ObjectType: integer, ElementType: integer, CountOffset: integer, ElementSize: integer, FirstElementOffset: integer, ClassName: string, Fields: { Token: integer, Offset: integer, FieldType: integer, Name: string, FieldTypeClassName: string, IsStatic: boolean, Attribs: integer }[] }?
function DotNetPipe:getTypeDefData(module, typedef) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadotnetpipe.pas#L247
---@param module integer
---@param typedef integer
---@return { ModuleHandle: integer, TypedefToken: integer }? nil when the typedef has no parent.
---@overload fun(module: integer, typedef: integer): { ModuleHandle: integer, TypedefToken: integer }?
function DotNetPipe:getTypeDefParent(module, typedef) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadotnetpipe.pas#L210
---@param modulehandle integer
---@param methoddef integer
---@return { Name: string, CType: integer }[]
---@overload fun(modulehandle: integer, methoddef: integer): { Name: string, CType: integer }[]
function DotNetPipe:getMethodParameters(modulehandle, methoddef) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadotnetpipe.pas#L371
---@param address integer
---@return { StartAddress: integer, ObjectType: integer, ElementType: integer, CountOffset: integer, ElementSize: integer, FirstElementOffset: integer, ClassName: string, Fields: { Token: integer, Offset: integer, FieldType: integer, Name: string, FieldTypeClassName: string, IsStatic: boolean }[] }? nil when no object starts at that address.
---@overload fun(address: integer): { StartAddress: integer, ObjectType: integer, ElementType: integer, CountOffset: integer, ElementSize: integer, FirstElementOffset: integer, ClassName: string, Fields: { Token: integer, Offset: integer, FieldType: integer, Name: string, FieldTypeClassName: string, IsStatic: boolean }[] }?
function DotNetPipe:getAddressData(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadotnetpipe.pas#L493
---@return { StartAddress: integer, Size: integer, TypeID: { token1: integer, token2: integer }, ClassName: string }[]
---@overload fun(): { StartAddress: integer, Size: integer, TypeID: { token1: integer, token2: integer }, ClassName: string }[]
function DotNetPipe:enumAllObjects() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadotnetpipe.pas#L460
---@param module integer
---@param typedef integer
---@return integer[]
---@overload fun(module: integer, typedef: integer): integer[]
function DotNetPipe:enumAllObjectsOfType(module, typedef) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L515
---
--- Pascal class: `TEvent`.
---@class Event : Object
local Event = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L494
---@overload fun()
function Event:resetEvent() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L500
---@overload fun()
function Event:setEvent() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L507
---@param timeout integer Timeout in milliseconds.
---@return integer result A `TWaitResult` ordinal: `wrSignaled` (0), `wrTimeout` (1), `wrAbandoned` (2) or `wrError` (3).
---@overload fun(timeout: integer): integer
function Event:waitFor(timeout) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L1072
---
--- Pascal class: `TPipeConnection`.
---@class Pipe : Object
---@field ErrorOnMainThreadLockObtaining boolean Makes `lock()` raise `'No mainthread access to this pipe allowed'`. Despite the name it never tests the calling thread: Pascal binds `and` tighter than `or`, so the guard at luapipe.pas:105 reads `fError or (fWarn and mainthread)` and every `lock()` raises while this is true (luapipe.pas:107-109). Only the warning print (luapipe.pas:112-114) belongs to the main-thread test. Published property of `TPipeConnection` (luapipe.pas:73).
---@field WarnOnMainThreadLockObtaining boolean Warn when `lock()` is called from the main thread.
---@field OnError CECallback Called when the pipe hits an I/O error.
---@field OnTimeout CECallback Called when a read or write hits the timeout.
---@field Handle integer The OS handle of the pipe.
---@field Timeout integer Milliseconds a read, write or `lock()` waits before giving up. Defaults to 5000 (luapipe.pas:99). 0 means no timeout rather than an immediate one: `lock()` then blocks untimed (luapipe.pas:117-120) and the overlapped read/write loop runs until the pipe closes (luapipe.pas:250, luapipe.pas:271). Published property of `TPipeConnection` (luapipe.pas:68).
---@field connected boolean Read-only. True while the pipe is connected.
local Pipe = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L1053
---@overload fun()
function Pipe:lock() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L1062
---@overload fun()
function Pipe:unlock() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L501
---@param bytetable ByteTable
---@param size integer? Bytes to send. Defaults to `#bytetable` (luapipe.pas:519-522).
---@return integer? bytesWritten The requested `size` echoed back, not a count from the OS; nil when the write failed.
---@overload fun(bytetable: ByteTable, size?: integer): integer?
function Pipe:writeBytes(bytetable, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L539
---@param size integer
---@return ByteTable?
---@overload fun(size: integer): ByteTable?
function Pipe:readBytes(size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L570
---@return number?
---@overload fun(): number?
function Pipe:readDouble() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L585
---@return number?
---@overload fun(): number?
function Pipe:readFloat() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L600
---@return integer?
---@overload fun(): integer?
function Pipe:readQword() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L615
---@param count integer
---@return integer[]?
---@overload fun(count: integer): integer[]?
function Pipe:readQwords(count) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L646
---@return integer?
---@overload fun(): integer?
function Pipe:readDword() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L661
---@param count integer
---@return integer[]?
---@overload fun(count: integer): integer[]?
function Pipe:readDwords(count) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L692
---@return integer?
---@overload fun(): integer?
function Pipe:readWord() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L707
---@param count integer
---@return integer[]?
---@overload fun(count: integer): integer[]?
function Pipe:readWords(count) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L738
---@return integer?
---@overload fun(): integer?
function Pipe:readByte() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L753
---@param size integer
---@return string?
---@overload fun(size: integer): string?
function Pipe:readString(size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L789
---
--- Reads `size` BYTES of UTF-16 from the pipe, not `size` characters:
--- `TPipeConnection.readWideString` hands the count straight to `ReadBytes`
--- (luapipe.pas:228).
---
--- The text that comes back is longer than the data that was read. The buffer is
--- `size+2` bytes (luapipe.pas:227), but the two zero terminators are stored at
--- widechar indices `size` and `size+1` (luapipe.pas:230-231), that is at byte
--- offsets `2*size` and `2*size+2`, so nothing terminates the string where the
--- pipe data ends and the `result:=x` conversion (luapipe.pas:233) keeps reading
--- uninitialised heap until it happens to meet a zero widechar. The value is then
--- pushed with `lua_pushstring` (luapipe.pas:811), which additionally truncates at
--- the first embedded NUL. When the text matters, read the bytes with `readBytes`
--- and decode them yourself.
---@param size integer Number of bytes to read, not characters.
---@return string? text Nil when the pipe is no longer connected (luapipe.pas:808).
---@overload fun(size: integer): string?
function Pipe:readWideString(size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L991
---@param stream Stream
---@param size integer
---@return integer? bytesWritten nil when the pipe read failed.
---@overload fun(stream: Stream, size: integer): integer?
function Pipe:readIntoStream(stream, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L817
---@param v number
---@return integer? bytesWritten nil when the pipe is no longer connected.
---@overload fun(v: number): integer?
function Pipe:writeDouble(v) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L834
---@param v number
---@return integer? bytesWritten nil when the pipe is no longer connected.
---@overload fun(v: number): integer?
function Pipe:writeFloat(v) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L851
---@param v integer
---@return integer? bytesWritten nil when the pipe is no longer connected.
---@overload fun(v: integer): integer?
function Pipe:writeQword(v) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L868
---@param v integer
---@return integer? bytesWritten nil when the pipe is no longer connected.
---@overload fun(v: integer): integer?
function Pipe:writeDword(v) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L885
---@param v integer
---@return integer? bytesWritten nil when the pipe is no longer connected.
---@overload fun(v: integer): integer?
function Pipe:writeWord(v) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L902
---@param v integer
---@return integer? bytesWritten nil when the pipe is no longer connected.
---@overload fun(v: integer): integer?
function Pipe:writeByte(v) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L919
---@param text string
---@param include0terminator boolean? Append a 0 byte after the string. Unlike `writeWideString`'s flag it is genuinely written and is included in the returned count (luapipe.pas:940-950). Only read when exactly two arguments are passed (luapipe.pas:932).
---@return integer? bytesWritten `#text`, or `#text+1` with the terminator; nil when the pipe is no longer connected.
---@overload fun(text: string, include0terminator?: boolean): integer?
function Pipe:writeString(text, include0terminator) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L957
---
--- Sends `str` down the pipe as UTF-16.
---
--- The returned count is not what was written. Both branches of
--- `TPipeConnection.writeWideString` are identical (luapipe.pas:206-209), so the UTF-16
--- zero terminator is always sent, but this wrapper only adds it to the count when
--- `include0terminator` is true. The count is also taken from the length of the UTF-8
--- Lua string rather than from the widechars that went out, so it is wrong again for any
--- non-ASCII text. Do not use it to frame messages; compute the length yourself.
---@param str string
---@param include0terminator boolean? Only affects the returned count; the terminator is written either way.
---@return integer? bytesWritten Reported count, `(#str+1)*2` or `#str*2`; nil when the pipe is no longer connected.
---@overload fun(str: string, include0terminator?: boolean): integer?
function Pipe:writeWideString(str, include0terminator) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipe.pas#L1019
---
--- Reads `size` bytes from `stream` and sends them down the pipe. When `size` is
--- omitted, `stream.Size - stream.Position` is used.
---
--- Cheat Engine then writes the same buffer back into `stream` and returns that
--- count, so the stream is modified from its post-read position onwards.
---@param stream Stream
---@param size integer? Defaults to the rest of the stream.
---@return integer? bytesWritten Bytes written back into `stream`; nil when the pipe write failed.
---@overload fun(stream: Stream, size?: integer): integer?
function Pipe:writeFromStream(stream, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipeserver.pas#L112
---
--- Pascal class: `TLuaPipeServer`.
---@class PipeServer : Pipe
---@field valid boolean Read-only. False when the named pipe could not be created.
local PipeServer = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipeserver.pas#L103
---@overload fun()
function PipeServer:acceptConnection() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L567
---
--- Pascal class: `TMultiReadExclusiveWriteSynchronizer`.
---@class MultiReadExclusiveWriteSynchronizer : Object
local MultiReadExclusiveWriteSynchronizer = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L543
---@overload fun()
function MultiReadExclusiveWriteSynchronizer:beginWrite() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L549
---@overload fun()
function MultiReadExclusiveWriteSynchronizer:endWrite() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L555
---@overload fun()
function MultiReadExclusiveWriteSynchronizer:beginRead() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L561
---@overload fun()
function MultiReadExclusiveWriteSynchronizer:endRead() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaremoteexecutor.pas#L911
---
--- Pascal class: `TRemoteExecutor`.
---@class RemoteExecutor : Object
local RemoteExecutor = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaremoteexecutor.pas#L706
---@param stubdata ExecuteMethodStub
---@param values (integer|number|string|ByteTable)[]? One value per entry of `stubdata.Parameters`, in the same order. The count must match exactly or the call fails with nil plus `'Incorrect parameter count'` (luaremoteexecutor.pas:765-772), and a non-table here fails with `'Invalid value field. Has to be a table'` (luaremoteexecutor.pas:852-854). Each element is read according to its parameter code (luaremoteexecutor.pas:789-810): `0` as an integer, `1` and `2` as numbers, `3` and `4` as strings, and any negative code as a byte table - a non-table in a negative slot fails with `'Parameter N is supposed to be a table'` (luaremoteexecutor.pas:815, 838-841).
---@param timeout integer? Milliseconds to wait for the stub. Defaults to INFINITE (luaremoteexecutor.pas:858-861).
---@param dontwait boolean? When true the call returns immediately with no values at all (luaremoteexecutor.pas:863-877); pick the result up later with `waitTillDoneAndGetResult`. An exception is still reported as nil plus a message.
---@return integer? result
---@return { Data: ByteTable, Parameter: integer }|string ... Buffer tables on success; the error message when the first value is nil.
---@overload fun(stubdata: ExecuteMethodStub, values?: (integer|number|string|ByteTable)[], timeout?: integer, dontwait?: boolean): integer?, { Data: ByteTable, Parameter: integer }|string
function RemoteExecutor:executeStub(stubdata, values, timeout, dontwait) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaremoteexecutor.pas#L661
---@param timeout integer? Milliseconds to wait. Defaults to INFINITE (luaremoteexecutor.pas:671-674).
---@return integer? result
---@return { Data: ByteTable, Parameter: integer }|string ... Buffer tables on success; the error message when the first value is nil.
---@overload fun(timeout?: integer): integer?, { Data: ByteTable, Parameter: integer }|string
function RemoteExecutor:waitTillDoneAndGetResult(timeout) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaremotethread.pas#L135
---
--- Pascal class: `TRemoteThread`.
---@class RemoteThread : Object
---@field Result integer Read-only. The remote thread's exit code, or -1 when it cannot be read.
local RemoteThread = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaremotethread.pas#L68
---
--- Waits for the remote thread to finish.
---@param timeout integer? Milliseconds to wait. Defaults to INFINITE (luaremotethread.pas:75-78).
---@return boolean signalled True only when the thread finished inside the timeout.
---@return integer result The thread's exit code when `signalled` is true (-1 when `GetExitCodeThread` fails), -2 when the wait timed out, -3 on any other wait result (luaremotethread.pas:82-99).
---@overload fun(timeout?: integer): boolean, integer
function RemoteThread:waitForThread(timeout) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L536
---
--- Pascal class: `TSemaphore`.
---@class Semaphore : Object
local Semaphore = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L524
---@overload fun()
function Semaphore:acquire() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L530
---@overload fun()
function Semaphore:release() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L455
---
--- Pascal class: `TThread`.
---
--- The fields below are published properties of `TCEThread` (LuaThread.pas:51), the class
--- the `create*Thread*` functions instantiate, reached through the `lua_getProperty` RTTI
--- fallback `luaclass_index` installs at LuaClass.pas:578. A `TThread` that came from
--- anywhere else does not have them.
---@class Thread : Object
---@field Name string Stored on the object, but the setter `TCEThread.setname` (LuaThread.pas:87-91) also calls `NameThreadForDebugging(newname, GetCurrentThreadId)`, which names whichever thread runs the assignment rather than this one - assigning from the creating thread renames the caller and leaves the worker nameless to a debugger, so assign it from inside the thread function to name the worker itself. Both constructors assign through the same setter before `inherited create`, so creating a thread also renames its caller: `createThread` to `'Unnamed'` (LuaThread.pas:194, reached from LuaThread.pas:275) and `createThreadNewState` to `'Unnamed newstate'` (LuaThread.pas:208, reached from LuaThread.pas:358). Published property of `TCEThread` (LuaThread.pas:52); a string property is written by the default `SetPropValue` arm of `lua_setProperty` at LuaObject.pas:310.
---@field Terminated boolean Read-only.
---@field Finished boolean Read-only.
---@field Result string Read-only. What the thread function returned, converted to a string. Empty until the thread finishes, and only readable afterwards on a `createThreadNewState`/`createNativeThreadNewState` thread - the other variants are created free-on-terminate (LuaThread.pas:279) and free themselves the moment they finish.
local Thread = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L365
---@param FreeOnTerminate boolean
---@overload fun(FreeOnTerminate: boolean)
function Thread:freeOnTerminate(FreeOnTerminate) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L375
---
--- Runs `f` on the main thread and waits for it. `f` is called as `f(thread, ...)` - the
--- thread object is always its first argument - and as `f(thread, nil)` when no extra
--- arguments are given. Returns the single value `f` returned.
---@param f function|string A function, or the name of a global function.
---@param ... any Passed on to `f` after the thread object.
---@return any
---@overload fun(f: function|string, ...: any): any
function Thread:synchronize(f, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L427
---@overload fun()
function Thread:waitfor() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L437
---@overload fun()
function Thread:terminate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L443
---@overload fun()
function Thread:suspend() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L449
---@overload fun()
function Thread:resume() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTimer.pas#L173
---
--- Wrapper that `initializeLuaTimer` defines in Lua on top of `createTimerInternal`.
---
--- Called as `createTimer(delay, callback, ...)` it makes a run-once timer that fires
--- after `delay` milliseconds, passes the extra arguments to `callback`, and destroys
--- itself afterwards. Do not touch the timer after it has run.
---
--- Called as `createTimer(owner, enabled)` it makes an ordinary timer. `owner` may be
--- nil, in which case destroying it is your job. `enabled` defaults to true, and the
--- timer starts once an `onTimer` handler has been assigned.
---@param delay integer
---@param callback function
---@param ... any Passed on to `callback`.
---@return Timer
---@overload fun(owner: Component?, enabled: boolean?): Timer
function createTimer(delay, callback, ...) end
