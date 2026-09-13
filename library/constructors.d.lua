---@meta
---
--- constructors
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Constructors and standalone functions from the other Lua*.pas units
--
-- Registered as plain globals by the `initializeLuaX` routine of each unit.
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaBinary.pas#L34
---@param int1 integer
---@param int2 integer
---@return integer
function bAnd(int1, int2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaBinary.pas#L61
---@param int integer
---@return integer
function bNot(int) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaBinary.pas#L16
---@param int1 integer
---@param int2 integer
---@return integer
function bOr(int1, int2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaBinary.pas#L43
---@param int integer
---@param int2 integer
---@return integer
function bShl(int, int2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaBinary.pas#L52
---@param int integer
---@param int2 integer
---@return integer
function bShr(int, int2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaBinary.pas#L25
---@param int1 integer
---@param int2 integer
---@return integer
function bXor(int1, int2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L272
---@param bytetable ByteTable
---@param tablestartindex integer?
---@return number
function byteTableToDouble(bytetable, tablestartindex) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L197
---@param bytetable ByteTable
---@param signed boolean?
---@param tablestartindex integer?
---@return integer
function byteTableToDword(bytetable, signed, tablestartindex) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L296
---
--- Unlike every other `byteTableTo*` function, `tablestartindex` defaults to 0 instead of 1
--- when omitted, so the read starts at `bytetable[0]`, an index a byte table never has. The
--- one-argument form therefore always returns 0; pass `1` explicitly to read from the start.
---@param bytetable ByteTable
---@param tablestartindex integer? Defaults to 0, not 1.
---@return number
function byteTableToExtended(bytetable, tablestartindex) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L247
---@param bytetable ByteTable
---@param tablestartindex integer?
---@return number
function byteTableToFloat(bytetable, tablestartindex) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L224
---@param bytetable ByteTable
---@param tablestartindex integer?
---@return integer
function byteTableToQword(bytetable, tablestartindex) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L327
---@param bytetable ByteTable
---@param tablestartindex integer?
---@return string
function byteTableToString(bytetable, tablestartindex) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L354
---
--- Takes exactly one argument, unlike every other `byteTableTo*` function. Cheat
--- Engine's own documentation lists a `tableindex` parameter for it
--- (bin/celua.txt:115), but the body is guarded on `lua_gettop(L)=1`
--- (LuaByteTable.pas:363), so passing a start index makes the call return nothing
--- at all instead of a string. The `tablestartindex` branch inside
--- (LuaByteTable.pas:365-372) is unreachable for the same reason, and the read
--- always starts at `bytetable[1]`.
---
--- The result is pushed with `lua_pushstring` (LuaByteTable.pas:388), not
--- `lua_pushlstring` as `byteTableToString` uses, so it is cut short at the first
--- embedded zero byte of the decoded text.
---@param bytetable ByteTable
---@return string
function byteTableToWideString(bytetable) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L171
---@param bytetable ByteTable
---@param signed boolean?
---@param tablestartindex integer?
---@return integer
function byteTableToWord(bytetable, signed, tablestartindex) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacalendar.pas#L124
---@param date string
---@param format string? `'localshort'` or `''` selects the OS short date format, `'locallong'` the long one, anything else is used verbatim. Defaults to `yyyy-mm-dd`.
---@return integer
function calendarDateToNumber(date, format) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacalendar.pas#L101
---@param date string
---@param baseDate string Subtracted from `date`, so the result is `date - baseDate` in whole days.
---@param format string? `'localshort'` or `''` selects the OS short date format, `'locallong'` the long one, anything else is used verbatim. Defaults to `yyyy-mm-dd`.
---@return integer
function calendarDiffDays(date, baseDate, format) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacalendar.pas#L143
---@param dateNumber integer
---@param format string? `'localshort'` or `''` selects the OS short date format, `'locallong'` the long one, anything else is used verbatim. Defaults to `yyyy-mm-dd`.
---@return string
function calendarNumberToDate(dateNumber, format) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipeclient.pas#L73
---@param pipename string Name of the pipe, without the `\\.\pipe\` prefix.
---@param timeout integer? Milliseconds to wait for the connection. Defaults to 0.
---@return Pipe? pipe Nothing when the pipe name is empty or the connection failed.
function connectToPipe(pipename, timeout) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaButton.pas#L17
---@param owner WinControl
---@return Button
function createButton(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacalendar.pas#L18
---@param owner WinControl?
---@return Calendar
function createCalendar(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacecustombutton.pas#L30
---
--- Unlike `createTrackBar` or `createCheckBox`, this constructor uses the argument only as the
--- owner (luacecustombutton.pas:34) and never assigns `Parent`, and neither does
--- `TCECustomButton.Create` (betterControls/cecustombutton.pas:560), so the button stays
--- invisible until you set `button.Parent` yourself. Exactly one argument is required:
--- luacecustombutton.pas:32 tests `lua_gettop(L)=1` and returns nothing otherwise.
---@param owner Component
---@return CECustomButton
function createCECustomButton(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheckbox.pas#L16
---@param owner WinControl?
---@return CheckBox
function createCheckBox(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luachecklistbox.pas#L16
---@param owner WinControl?
---@return CheckListBox
function createCheckListBox(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCombobox.pas#L19
---@param owner WinControl?
---@return ComboBox
function createComboBox(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDisassembler.pas#L231
---
--- Windows only; other builds return nothing.
---@return CR3Disassembler? disassembler
function createCR3Disassembler() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L290
---@return CriticalSection
function createCriticalSection() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaD3DHook.pas#L17
---
--- Windows only; `LuaD3DHook.pas:265` registers the global inside a `{$ifdef windows}`
--- block, so on other builds the name does not exist.
---
--- Cheat Engine only reads `size` when it is the sole argument, and only reads `hookwindow`
--- when exactly two arguments are passed. Passing both leaves `size` at its 16 MB default.
---@param size integer? Shared memory size in bytes. Default 16777216. Ignored when `hookwindow` is also passed.
---@param hookwindow boolean? Default true.
---@return D3DHook? hook Nothing when `safed3dhook` swallowed the constructor's exception (the shared memory object could not be created or mapped) or when the previously hooked process has exited.
function createD3DHook(size, hookwindow) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagram.pas#L272
---@param owner WinControl?
---@return Diagram
function createDiagram(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDisassembler.pas#L225
---@return Disassembler
function createDisassembler() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L17
---@param owner WinControl
---@return Edit
function createEdit(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L298
---@param ManualReset boolean
---@param InitialState boolean
---@return Event
function createEvent(ManualReset, InitialState) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFindDialog.pas#L64
---@param owner Component?
---@return FindDialog
function createFindDialog(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L16
---@return Font
function createFont() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L32
---@param visible boolean?
---@return CEForm
function createForm(visible) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L330
---@param filename string
---@return CEForm
function createFormFromFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L352
---@param stream Stream
---@return CEForm
function createFormFromStream(stream) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFoundlist.pas#L22
---@param memscan MemScan
---@return FoundList
function createFoundList(memscan) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGroupbox.pas#L17
---@param owner WinControl
---@return GroupBox
function createGroupBox(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGenericHotkey.pas#L27
---
--- At most 5 keys are used: `LuaGenericHotkey.pas:51` clamps the argument count to 6,
--- the callback included. The table form is only recognised when it is the sole argument
--- after the callback (`LuaGenericHotkey.pas:55`); a table followed by more keys falls into
--- the vararg branch at `LuaGenericHotkey.pas:76` and is read as key 0.
---@overload fun(callback: CECallback, keys: integer[]): GenericHotkey
---@param callback CECallback
---@param key integer
---@param ... integer
---@return GenericHotkey
function createHotkey(callback, key, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L16
---@param owner WinControl
---@return Image
function createImage(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacustomimagelist.pas#L16
---@param owner Component?
---@return CustomImageList
function createImageList(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListbox.pas#L17
---@param owner WinControl?
---@return ListBox
function createListBox(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L16
---@param owner WinControl?
---@return ListView
function createListView(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L16
---@param owner WinControl?
---@return ListView
function createListview(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L28
---@param form Component
---@return Menu
function createMainMenu(form) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L16
---@param owner WinControl
---@return Memo
function createMemo(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryView.pas#L16
---@return MemoryView
function createMemoryView() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L63
---
--- Creates a menu item owned by `ownermenu`. Exactly one argument is required:
--- LuaMenu.pas:70 tests `parameters=1` and returns nothing otherwise. The Pascal types the
--- argument `TMenu` (LuaMenu.pas:65) but reads it with `lua_ToCEUserData` (LuaMenu.pas:72),
--- which does no class check (LuaHandler.pas:560), and only uses it as the `TComponent`
--- owner passed to `TMenuItem.Create` (LuaMenu.pas:75), so any component works. Cheat
--- Engine's own scripts pass a `Menu` (bin/autorun/splitscanintonewtab.lua:17), a
--- `MenuItem` (bin/autorun/java.lua:3161) and a form (bin/autorun/ceshare.lua:50). Owning
--- is not parenting: the new item is not in any menu until something calls
--- `MenuItem:add()` or `MenuItem:insert()` on it.
---@param ownermenu Component
---@return MenuItem
function createMenuItem(ownermenu) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L322
---@return MultiReadExclusiveWriteSynchronizer
function createMultiReadExclusiveWriteSynchronizer() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L336
---@param callback CECallback
---@param ... any
---@return Thread
function createNativeThread(callback, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L346
---
--- Runs `script` on a new thread in a brand new Lua state, so it shares nothing with the
--- caller's state and only sees the limited function set `InitLimitedLuastate` registers.
--- The script is wrapped in `function(t) ... end` and called with the thread object. Unlike
--- `createNativeThread`, this thread is deliberately not free-on-terminate, so its `Result`
--- stays readable until you free it yourself.
---@param script string
---@return Thread? # nothing when `script` is the empty string.
function createNativeThreadNewState(script) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L341
---@param callback CECallback
---@param ... any
---@return Thread
function createNativeThreadSuspended(callback, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L199
---@param owner Component?
---@return ODBCConnection
function createODBCConnection(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapagecontrol.pas#L16
---@param owner WinControl?
---@return PageControl
function createPageControl(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L17
---@param owner WinControl
---@return Panel
function createPanel(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L16
---@return Picture
function createPicture() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapipeserver.pas#L77
---
--- Creates a named pipe server. Windows only; the whole unit is compiled out elsewhere.
---@param pipename string Name of the pipe, without the `\\.\pipe\` prefix.
---@param inputsize integer? Input buffer size in bytes. Defaults to 4096.
---@param outputsize integer? Output buffer size in bytes. Defaults to 4096.
---@return PipeServer
function createPipe(pipename, inputsize, outputsize) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L45
---@param owner Component
---@return Menu
function createPopupMenu(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L18
---@param owner WinControl?
---@return ProgressBar
function createProgressBar(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L16
---@param owner WinControl?
---@return RadioGroup
function createRadioGroup(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRegion.pas#L16
---@return Region
function createRegion() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaremoteexecutor.pas#L895
---
--- Alias of `createStubExecutor`, registered against the same implementation
--- (`luaremoteexecutor.pas:923`). Windows only; that registration sits inside a
--- `{$ifdef windows}` block, so on other builds the name does not exist.
---@return RemoteExecutor|nil
---@return string? errormessage
function createRemoteExecutor() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaremotethread.pas#L103
---
--- Creates a thread in the target process at `address`, called with `parameter` as its
--- single argument. Returns nothing when the thread could not be created.
---@param address CEAddress
---@param parameter CEAddress? Defaults to 0.
---@return RemoteThread?
function createRemoteThread(address, parameter) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/pointervaluelist.pas#L1625
---
--- Broken in Cheat Engine: `pointervaluelist.pas:1642` reads the progress bar with the raw
--- `lua_touserdata` instead of `lua_ToCEUserData`, so for the heavy userdata it hands
--- `TReversePointerListHandler.createFromStream` the address of the pointer slot rather than
--- the progress bar itself, and the constructor's first writes to it
--- (`pointervaluelist.pas:926-928`, past the non-nil guard at `pointervaluelist.pas:924`)
--- land on that slot. Leave the argument out.
---@param filename string
---@param progressbar ProgressBar? Do not pass one; see above.
---@return ReversePointerListHandler|nil
---@return string? errormessage
function createReversePointerListHandlerFromFile(filename, progressbar) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRIPRelativeScanner.pas#L16
---@overload fun(startaddress: integer|string, stopaddress: integer|string, includelongjumps: boolean?): RIPRelativeScanner
---@param modulename string
---@param includelongjumps boolean?
---@return RIPRelativeScanner
function createRipRelativeScanner(modulename, includelongjumps) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L310
---@param count integer
---@return Semaphore
function createSemaphore(count) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L145
---@param owner Component?
---@return SQLite3Connection
function createSQLite3Connection(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L119
---@param owner Component?
---@return SQLQuery
function createSQLQuery(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L133
---@param owner Component?
---@return SQLTransaction
function createSQLTransaction(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L17
---@return StringList
function createStringList() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStringlist.pas#L17
---@return StringList
function createStringlist() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L338
---@param name string
---@return Structure
function createStructure(name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructureFrm.pas#L42
---@param address string?
---@param groupname string?
---@param structname string?
---@return StructureForm
function createStructureForm(address, groupname, structname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L296
---@param name string
---@return Structure? structure Nothing when the symbol handler finds no structure elements for the name.
function createStructureFromName(name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaremoteexecutor.pas#L895
---
--- Windows only; `luaremoteexecutor.pas:922` registers the global inside a
--- `{$ifdef windows}` block, so on other builds the name does not exist.
---@return RemoteExecutor|nil
---@return string? errormessage
function createStubExecutor() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L44
---
--- Creates a symbol list. A table argument is read as symbolname -> address pairs and
--- each pair is added as a symbol; a string argument is used as the list's name and
--- registers the list with the symbol handler.
---
--- Broken in Cheat Engine: `luasymbollisthandler.pas:53` pushes the new list onto the
--- stack before the argument checks, so the `lua_gettop(L)>=2` test at
--- `luasymbollisthandler.pas:67` is already satisfied by that pushed userdata. A
--- table-only call therefore still takes the `name` branch, reads the userdata in slot 2
--- as the name (`Lua_ToString` yields `""` for a full userdata) and registers the list
--- under an empty name. Call `SymbolListHandler:unregister()` if that is not wanted.
---@param initlist table|string|nil Table of symbol name to address, or the name to register the list under.
---@param name string? Name to register the list under, when `initlist` is a table.
---@return SymbolListHandler
function createSymbolList(initlist, name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasynedit.pas#L17
---@param owner WinControl
---@param mode integer? Highlighter to attach: 0 Lua, 1 auto assembler, 2 C/C++. Any other value, or leaving it out, gives no highlighter.
---@return SynEdit
function createSynEdit(owner, mode) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTableFile.pas#L93
---@return TableFile
---@param filename string
---@param filepath string?
function createTableFile(filename, filepath) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L336
---@param callback CECallback
---@param ... any
---@return Thread
function createThread(callback, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L346
---
--- Runs `script` on a new thread in a brand new Lua state, so it shares nothing with the
--- caller's state and only sees the limited function set `InitLimitedLuastate` registers.
--- The script is wrapped in `function(t) ... end` and called with the thread object. Unlike
--- `createThread`, this thread is deliberately not free-on-terminate, so its `Result` stays
--- readable until you free it yourself.
---@param script string
---@return Thread? # nothing when `script` is the empty string.
function createThreadNewState(script) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L341
---@param callback CECallback
---@param ... any
---@return Thread
function createThreadSuspended(callback, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTimer.pas#L31
---@overload fun(owner: Component?, enabled: boolean?): Timer
---@param interval integer
---@param callback function
---@return Timer
function createTimerInternal(interval, callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L17
---@param owner WinControl?
---@return TrackBar
function createTrackBar(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreeview.pas#L16
---@param owner WinControl?
---@return TreeView
function createTreeView(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreeview.pas#L16
---@param owner WinControl?
---@return TreeView
function createTreeview(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L23
---@param owner WinControl?
---@return VirtualStringTree
function createVirtualStringTree(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDebug.pas#L52
---
--- Reads one entry out of the current debugger interface's last branch record buffer.
---@param index integer 0-based. Accepted values run from 0 to `debug_getMaxLastBranchRecord()`
--- inclusive; the guard is `index<=max` (LuaDebug.pas:77). Cheat Engine sizes the buffer with
--- `getmem(lbrbuf, max*sizeof(qword))` (LuaDebug.pas:74), which is `max` slots, while the kernel
--- debugger interface writes `max+1` entries into it (KernelDebuggerInterface.pas:382-383,
--- KernelDebuggerInterface.pas:386), so the highest accepted index is written and read one qword
--- past the end of that allocation.
---@return integer? record Nil only when no debugger interface is attached, where the function
--- returns no values at all - `result` stays 0 (LuaDebug.pas:62, LuaDebug.pas:71). An `index`
--- past the last record does NOT come back nil: the argument is popped first (LuaDebug.pas:69),
--- so the stack is empty when that path pushes nothing (LuaDebug.pas:77-78) and still reports one
--- return value (LuaDebug.pas:80); `luaD_poscall` is then handed `L->top - 1`, the called
--- function's own slot, and copies that out (ldo.c:340, ldo.c:394-399), so what comes back is the
--- `debug_getLastBranchRecord` function itself - a truthy value. Compare `index` against
--- `debug_getMaxLastBranchRecord()` yourself instead of testing the result.
function debug_getLastBranchRecord(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDebug.pas#L37
---
--- Highest valid index into the current debugger interface's last branch record buffer.
---
--- Not a count. The virtual base comments it as one (DebuggerInterface.pas:156), but the only
--- interface that actually fills the buffer returns `LBR_Count-1`: KernelDebuggerInterface.pas:382
--- writes `l[0]`..`l[LBR_Count-1]` and KernelDebuggerInterface.pas:386 returns `LBR_Count-1`.
--- `debug_getLastBranchRecord` guards its read with `index<=max` (LuaDebug.pas:77), so the records
--- run from 0 to this value inclusive.
---@return integer maxIndex `-1` when no debugger interface is active (LuaDebug.pas:43-46) and also
--- when the attached interface does not implement last branch records, since the virtual base
--- returns `-1` (DebuggerInterface.pas:154-158). The kernel interface also returns `-1` while it is
--- not stopped on an event (KernelDebuggerInterface.pas:388-389), and the network debugger
--- interface returns `0` without ever filling the buffer (networkdebuggerinterface.pas:652-655).
--- Check for a negative value before using it as a bound for `debug_getLastBranchRecord`.
function debug_getMaxLastBranchRecord() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDebug.pas#L91
---
--- Address of an XMM register inside the saved context of the thread the debugger is
--- currently stopped on.
---@param xmmregnr integer Not range checked; it indexes the context's `XmmRegisters` array
--- directly (LuaDebug.pas:106).
---@return integer address `0` when the debugger is not stopped on a thread, and also when the
--- call is not given exactly one argument (LuaDebug.pas:98, 102, 105-106).
function debug_getXMMPointer(xmmregnr) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDebug.pas#L17
---
--- Windows only; on other builds the body is compiled out and the call does nothing.
---@param boolean boolean
function debug_setLastBranchRecording(boolean) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L108
---@param number number
---@return ByteTable
function doubleToByteTable(number) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L72
---@param number integer
---@return ByteTable
function dwordToByteTable(number) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L25
---@return SymbolListHandler[]
function enumRegisteredSymbolLists() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructureFrm.pas#L27
---@return StructureForm[]
function enumStructureForms() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L120
---@param number number
---@return ByteTable
function extendedToByteTable(number) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTableFile.pas#L115
---@return TableFile?
---@param filename string
function findTableFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L96
---@param number number
---@return ByteTable
function floatToByteTable(number) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L113
---
--- Pre-6.3 spelling of `CustomForm:centerScreen()`.
---@deprecated Use `CustomForm:centerScreen()`.
---@param form CustomForm
function form_centerScreen(form) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L131
---
--- Pre-6.3 spelling of `CustomForm:close()`.
---@deprecated Use `CustomForm:close()`.
---@param form CustomForm
function form_close(form) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L248
---
--- Pre-6.3 spelling of `CustomForm:dragNow()`. Windows only; the body sits inside a
--- `{$ifdef windows}` block, so other builds do nothing.
---@deprecated Use `CustomForm:dragNow()`.
---@param form CustomForm
function form_dragNow(form) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L457
---
--- Pre-6.3 spelling of `CEForm:getDoNotSaveInTable()`.
---@deprecated Use `CEForm:getDoNotSaveInTable()`.
---@param form CEForm
---@return boolean
function form_getDoNotSaveInTable(form) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L168
---
--- Pre-6.3 spelling of `CustomForm:getMenu()`.
---@deprecated Use `CustomForm:getMenu()`.
---@param form CustomForm
---@return Menu? menu Nothing when the form has no menu assigned.
function form_getMenu(form) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L122
---
--- Pre-6.3 spelling of `CustomForm:hide()`.
---@deprecated Use `CustomForm:hide()`.
---@param form CustomForm
function form_hide(form) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L159
---
--- Pre-6.3 spelling of `CustomForm:isForegroundWindow()`.
---@deprecated Use `CustomForm:isForegroundWindow()`.
---@param form CustomForm
---@return boolean
function form_isForegroundWindow(form) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L74
---
--- Pre-6.3 spelling of `CustomForm:setOnClose()`.
---
--- Broken in this flat form: LuaForm.pas:92 tests `lua_isfunction(L,1)` and LuaForm.pas:102
--- tests `lua_isstring(L,1)`, but stack index 1 here is the form itself, so neither branch
--- runs. The call only clears a handler that was already installed; it can never set one.
--- Use `CustomForm:setOnClose()` or the `OnClose` property instead.
---@deprecated Use `CustomForm:setOnClose()`.
---@param form CustomForm
---@param callback CECallback Ignored - see above.
function form_onClose(form, callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L226
---
--- Pre-6.3 spelling of `CustomForm:printToRasterImage()`. Windows only; the body sits
--- inside a `{$ifdef windows}` block, so other builds leave `rasterimage` untouched.
---@deprecated Use `CustomForm:printToRasterImage()`.
---@param form CustomForm
---@param rasterimage RasterImage
function form_printToRasterImage(form, rasterimage) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L416
---
--- Pre-6.3 spelling of `CEForm:saveToFile()`.
---@deprecated Use `CEForm:saveToFile()`.
---@param form CEForm
---@param filename string
---@return true? success
---@return string? errormessage
function form_saveToFile(form, filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L466
---
--- Pre-6.3 spelling of `CEForm:setDoNotSaveInTable()`.
---@deprecated Use `CEForm:setDoNotSaveInTable()`.
---@param form CEForm
---@param value boolean
function form_setDoNotSaveInTable(form, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L178
---
--- Pre-6.3 spelling of `CustomForm:setMenu()`.
---@deprecated Use `CustomForm:setMenu()`.
---@param form CustomForm
---@param menu Menu
function form_setMenu(form, menu) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L217
---
--- Pre-6.3 spelling of `CustomForm:show()`.
---@deprecated Use `CustomForm:show()`.
---@param form CustomForm
function form_show(form) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L149
---
--- Pre-6.3 spelling of `CustomForm:showModal()`.
---@deprecated Use `CustomForm:showModal()`.
---@param form CustomForm
---@return integer
function form_showModal(form) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luanetworkinterface.pas#L276
---@return CEConnection? connection Nothing when there is no active ceserver connection.
function getCEServerInterface() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/frmcodefilterunit.pas#L1228
---@return CodeFilterForm? # nil until the Code Filter window has been opened.
function getCodeFilter() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaThread.pas#L330
---@return integer
function getCPUCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCustomType.pas#L16
---@param typename string
---@return CustomType? customtype Nothing when no custom type by that name exists.
function getCustomType(typename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDisassembler.pas#L241
---@return Disassembler
function getDefaultDisassembler() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDissectCode.pas#L22
---@return DissectCode
function getDissectCode() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadotnetpipe.pas#L565
---
--- Windows only; other builds return nothing. `TSymhandler.getDotNetDataCollector`
--- returns nil off Windows (symbolhandler.pas:3296), and `luaclass_newClass` pushes nil
--- for a nil object.
---@return DotNetPipe? collector
function getDotNetDataCollector() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaInternet.pas#L369
---@param string string?
---@return WinInternet
function getInternet(string) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasymbollisthandler.pas#L18
---@return SymbolListHandler
function getMainSymbolList() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaObject.pas#L334
---@param Class Object|integer|string
---@param propertyname string
---@return CECallback|nil
function getMethodProperty(Class, propertyname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaObject.pas#L154
---@return any
---@param class Object|integer|string
---@param propertyname string
function getProperty(class, propertyname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaObject.pas#L136
---
--- Method properties are left out: `ce_getPropertylist` adds a name only when the property's
--- kind is not `tkMethod` (pluginexports.pas:2533-2534), so events such as `OnClick` never
--- appear in the list even though `getProperty`, `setProperty` and `getMethodProperty` reach
--- them by name (`lua_getProperty` handles `tkMethod` at LuaObject.pas:209).
---@param class Object
---@return StringList? list nil only when the object has no published properties at all: the nil test is `GetPropList`'s raw count (pluginexports.pas:2526-2527), taken before the `tkMethod` filter, so a class whose published properties are all events yields an empty list rather than nil.
function getPropertyList(class) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSettings.pas#L146
---@param path string?
---@return Settings
function getSettings(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L31
---@param index integer
---@return Structure|nil
---@return string? errormessage
function getStructure(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L25
---@return integer
function getStructureCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/frmUltimap2Unit.pas#L4185
---@return Ultimap2Form? # nil until the Ultimap 2 window has been opened, and again after it is closed.
function getUltimap2() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaDisassembler.pas#L247
---@return Disassembler
function getVisibleDisassembler() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/frmedithistoryunit.pas#L444
---@return WriteLog
function getWriteLog() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaManualModuleLoader.pas#L20
---
--- Windows only; `LuaManualModuleLoader.pas:169` registers the global inside a
--- `{$IFDEF windows}` block, so on other builds the name does not exist.
---@overload fun(stream: MemoryStream|TableFile, filename: string?, executeEntryPoint: boolean?, timeout: integer?): ModuleLoader|nil, string?
---@param modulepath string
---@param executeEntryPoint boolean?
---@param timeout integer?
---@return ModuleLoader|nil
---@return string? errormessage
function loadModule(modulepath, executeEntryPoint, timeout) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryView.pas#L30
---@param memoryview MemoryView
---@return DisassemblerView
function memoryview_getDisassemblerView(memoryview) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryView.pas#L22
---@param memoryview MemoryView
---@return HexadecimalView
function memoryview_getHexadecimalView(memoryview) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L84
---@param number integer
---@return ByteTable
function qwordToByteTable(number) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/CustomTypeHandler.pas#L1014
---@overload fun(typename: string, bytecount: integer, script: string): CustomType|nil, string?
---@return CustomType|nil
---@return string? errormessage
---@param script string
function registerCustomTypeAutoAssembler(script) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/CustomTypeHandler.pas#L918
---
--- Broken in Cheat Engine for the string form of `bytesToValue`: the name-lookup branch
--- at `CustomTypeHandler.pas:953` stores the registry reference into `f_valuetobytes`
--- instead of `f_bytestovalue`, so the bytes-to-value reference stays 0 (and the ref it
--- did store is overwritten by the `valueToBytes` handling at `:966`/`:975`). Pass a
--- function value for `bytesToValue`, never a function name.
---
--- `bytesToValue` is not handed a byte table. Cheat Engine pushes the `bytecount` bytes as
--- separate integer arguments and then the address, and calls it for exactly one return
--- value: `bytesToValue(b1, b2, ..., bN, address)` with N = `bytecount`
--- (CustomTypeHandler.pas:294-299). Return an integer, or a number when `isFloat` is set
--- (CustomTypeHandler.pas:431-437).
---
--- `valueToBytes` is called as `valueToBytes(value, address)` and may return either one
--- table of `bytecount` bytes or up to `min(16, bytecount)` separate byte values
--- (`lua_pcall(l,2,min(16,bytesize),0)` at CustomTypeHandler.pas:218, then
--- `if lua_istable(L,1)` at :223 and the copy loop at :227-232). Anything past the 16th
--- returned value is dropped, so use the table form for a type wider than 16 bytes.
---@return CustomType
---@param typename string
---@param bytecount integer
---@param bytesToValue CECallback|string Called as `f(b1, ..., bN, address)` with N = `bytecount`; the address is the last argument. A name string is accepted but does not work; see above.
---@param valueToBytes CECallback|string Called as `f(value, address)`. Return a table of `bytecount` bytes, or the bytes as separate return values. A name string does work here - it is looked up as a global (CustomTypeHandler.pas:971-975).
---@param isFloat boolean? When true the value passed to and from the callbacks is a Lua number rather than an integer; it is stored as `scriptUsesFloat` (CustomTypeHandler.pas:1001).
function registerCustomTypeLua(typename, bytecount, bytesToValue, valueToBytes, isFloat) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaObject.pas#L395
---@param class Object|integer|string
---@param propertyname string
---@param callback CECallback|nil Nil clears the method property.
function setMethodProperty(class, propertyname, callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaObject.pas#L226
---
--- Writes a published Pascal property. `class` may be the object itself, or its address as a
--- number or as a string holding that number (LuaObject.pas:239-249).
---
--- Every failure is silent. Only a name `GetPropInfo` resolves is written as a property; any
--- other name is stored into the object's metatable instead (LuaObject.pas:313-323), and
--- `luaclass_index` looks the key up in that metatable first (LuaClass.pas:522-531), so a
--- misspelled property name turns into an ordinary Lua field that reads back fine. The write
--- itself sits inside an empty `except` (LuaObject.pas:267, LuaObject.pas:325-326), so a
--- rejected or out-of-range value reports nothing either, and a call that does not pass
--- exactly three arguments writes nothing at all (LuaObject.pas:237).
---
--- After `setThreadSafetyCheck(true)`, writing to a `TLCLComponent` from any thread but the
--- main one raises a Lua error instead (LuaObject.pas:252-260).
---@param class Object|integer|string
---@param propertyname string
---@param value any
function setProperty(class, propertyname, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L157
---@param value string
function setSQLiteLibraryName(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L143
---@param text string
---@return ByteTable
function stringToByteTable(text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L157
---@param text string
---@return ByteTable
function wideStringToByteTable(text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaByteTable.pas#L60
---@param number integer
---@return ByteTable
function wordToByteTable(number) end
