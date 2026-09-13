---@meta
---
--- legacy / ce
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFoundlist.pas#L48
---
--- Pre-6.3 spelling of `FoundList:deinitialize()`.
---@deprecated Use `FoundList:deinitialize()`.
---@param foundlist FoundList
function foundlist_deinitialize(foundlist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFoundlist.pas#L67
---
--- Pre-6.3 spelling of `FoundList:getAddress()`.
---@deprecated Use `FoundList:getAddress()`.
---@param foundlist FoundList
---@param index integer
---@return string
function foundlist_getAddress(foundlist, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFoundlist.pas#L58
---
--- Pre-6.3 spelling of `FoundList:getCount()`.
---@deprecated Use `FoundList:getCount()`.
---@param foundlist FoundList
---@return integer
function foundlist_getCount(foundlist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFoundlist.pas#L82
---
--- Pre-6.3 spelling of `FoundList:getValue()`.
---@deprecated Use `FoundList:getValue()`.
---@param foundlist FoundList
---@param index integer
---@return string
function foundlist_getValue(foundlist, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFoundlist.pas#L39
---
--- Pre-6.3 spelling of `FoundList:initialize()`.
---@deprecated Use `FoundList:initialize()`.
---@param foundlist FoundList
function foundlist_initialize(foundlist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L606
---
--- Pre-6.3 spelling of `MemoryRecord:appendToEntry()`.
---@deprecated Use `MemoryRecord:appendToEntry()`.
---@param memoryrecord MemoryRecord
---@param memrec MemoryRecord
function memoryrecord_appendToEntry(memoryrecord, memrec) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L622
---
--- Pre-6.3 spelling of `MemoryRecord:delete()`.
---@deprecated Use `MemoryRecord:delete()`.
---@param memoryrecord MemoryRecord
function memoryrecord_delete(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L557
---
--- Activates the record and then sets `AllowIncrease`/`AllowDecrease` from `direction`
--- (pluginexports.pas:1207). There is no `MemoryRecord:freeze()` class method; the
--- metatable exposes the published Pascal properties instead.
---@deprecated Use `memoryrecord.Active = true`, plus `memoryrecord.AllowIncrease` /
--- `memoryrecord.AllowDecrease` for the directional forms.
---@param memoryrecord MemoryRecord
---@param direction integer? 0 (the default) freezes the value outright, 1 freezes but allows the value to increase, 2 freezes but allows it to decrease. Only read when exactly two arguments are passed.
function memoryrecord_freeze(memoryrecord, direction) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L234
---
--- Not the same function as `MemoryRecord:getAddress()`: the global is bound to
--- `memoryrecord_getAddressOld` (LuaMemoryRecord.pas:1129) and returns the resolved
--- numeric address, while the method returns the interpretable address as a string.
---@deprecated Use `memoryrecord.CurrentAddress` for the numeric address, or
--- `MemoryRecord:getAddress()` if you want the interpretable address string.
---@param memoryrecord MemoryRecord
---@return integer address
---@return integer[]? offsets # base address followed by the pointer offsets, only for pointers
function memoryrecord_getAddress(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L152
---
--- Pre-6.3 spelling of `MemoryRecord:getDescription()`.
---@deprecated Use `MemoryRecord:getDescription()`.
---@param memoryrecord MemoryRecord
---@return string
function memoryrecord_getDescription(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L714
---
--- Pre-6.3 spelling of `MemoryRecord:getHotkey()`.
---@deprecated Use `MemoryRecord:getHotkey()`.
---@param memoryrecord MemoryRecord
---@param index integer
---@return MemoryRecordHotkey? hotkey Nothing when `index` is at or above `HotkeyCount`. A negative `index` is not filtered out and raises a list index error (MemoryRecordUnit.pas:1090).
function memoryrecord_getHotkey(memoryrecord, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L730
---
--- Pre-6.3 spelling of `MemoryRecord:getHotkeyByID()`.
---@deprecated Use `MemoryRecord:getHotkeyByID()`.
---@param memoryrecord MemoryRecord
---@param id integer
---@return MemoryRecordHotkey?
function memoryrecord_getHotkeyByID(memoryrecord, id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L705
---
--- Pre-6.3 spelling of `MemoryRecord:getHotkeyCount()`.
---@deprecated Use `MemoryRecord:getHotkeyCount()`.
---@param memoryrecord MemoryRecord
---@return integer
function memoryrecord_getHotkeyCount(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L640
---
--- Returns the record's id. There is no `MemoryRecord:getID()` class method; the
--- metatable exposes the published Pascal property instead.
---@deprecated Use `memoryrecord.ID`.
---@param memoryrecord MemoryRecord
---@return integer
function memoryrecord_getID(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L496
---
--- Pre-6.3 spelling of `MemoryRecord:getScript()`.
---@deprecated Use `MemoryRecord:getScript()`.
---@param memoryrecord MemoryRecord
---@return string? script Nothing when the record has no auto assembler script.
function memoryrecord_getScript(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L327
---
--- Pre-6.3 spelling of `MemoryRecord:getType()`.
---@deprecated Use `MemoryRecord:getType()`.
---@param memoryrecord MemoryRecord
---@return integer
function memoryrecord_getType(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L346
---
--- Pre-6.3 spelling of `MemoryRecord:getValue()`.
---@deprecated Use `MemoryRecord:getValue()`.
---@param memoryrecord MemoryRecord
---@return string
function memoryrecord_getValue(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L548
---
--- Pre-6.3 spelling of `MemoryRecord:getActive()`; the global name kept the `is`
--- prefix (LuaMemoryRecord.pas:1137).
---@deprecated Use `MemoryRecord:getActive()`.
---@param memoryrecord MemoryRecord
---@return boolean
function memoryrecord_isActive(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L522
---
--- Pre-6.3 spelling of `MemoryRecord:isSelected()`.
---@deprecated Use `MemoryRecord:isSelected()`.
---@param memoryrecord MemoryRecord
---@return boolean
function memoryrecord_isSelected(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L877
---
--- Sets the record's activate handler. There is no `MemoryRecord:onActivate()` class
--- method; the metatable exposes the published Pascal property instead.
---@deprecated Use `memoryrecord.OnActivate` (MemoryRecordUnit.pas:370).
---@param memoryrecord MemoryRecord
---@param f CECallback|string
function memoryrecord_onActivate(memoryrecord, f) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L916
---
--- Sets the record's deactivate handler. There is no `MemoryRecord:onDeactivate()`
--- class method; the metatable exposes the published Pascal property instead.
---@deprecated Use `memoryrecord.OnDeactivate` (MemoryRecordUnit.pas:371).
---@param memoryrecord MemoryRecord
---@param f CECallback|string
function memoryrecord_onDeactivate(memoryrecord, f) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L956
---
--- Sets the record's destroy handler. There is no `MemoryRecord:onDestroy()` class
--- method; the metatable exposes the published Pascal property instead.
---@deprecated Use `memoryrecord.OnDestroy` (MemoryRecordUnit.pas:372).
---@param memoryrecord MemoryRecord
---@param f CECallback|string
function memoryrecord_onDestroy(memoryrecord, f) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L288
---
--- Not the same function as `MemoryRecord:setAddress()`: the global is bound to
--- `memoryrecord_setAddressOld` (LuaMemoryRecord.pas:1130) and takes the pointer
--- offsets as varargs, while the method takes them as a single table.
---@deprecated Use `MemoryRecord:setAddress()`, passing the offsets as one table.
---@param memoryrecord MemoryRecord
---@param interpretableaddress string|integer
---@param ... integer # offsets
function memoryrecord_setAddress(memoryrecord, interpretableaddress, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L591
---
--- Sets the record's row colour. There is no `MemoryRecord:setColor()` class method;
--- the metatable exposes the published Pascal property instead.
---@deprecated Use `memoryrecord.Color`.
---@param memoryrecord MemoryRecord
---@param color integer
function memoryrecord_setColor(memoryrecord, color) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L141
---
--- Pre-6.3 spelling of `MemoryRecord:setDescription()`.
---@deprecated Use `MemoryRecord:setDescription()`.
---@param memoryrecord MemoryRecord
---@param value string
function memoryrecord_setDescription(memoryrecord, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L511
---
--- Pre-6.3 spelling of `MemoryRecord:setScript()`.
---@deprecated Use `MemoryRecord:setScript()`.
---@param memoryrecord MemoryRecord
---@param value string
function memoryrecord_setScript(memoryrecord, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L336
---
--- Pre-6.3 spelling of `MemoryRecord:setType()`.
---@deprecated Use `MemoryRecord:setType()`.
---@param memoryrecord MemoryRecord
---@param value integer
function memoryrecord_setType(memoryrecord, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L355
---
--- Pre-6.3 spelling of `MemoryRecord:setValue()`.
---@deprecated Use `MemoryRecord:setValue()`.
---@param memoryrecord MemoryRecord
---@param value string
function memoryrecord_setValue(memoryrecord, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L581
---
--- Deactivates the record. There is no `MemoryRecord:unfreeze()` class method; the
--- metatable exposes the published Pascal property instead.
---@deprecated Use `memoryrecord.Active = false`.
---@param memoryrecord MemoryRecord
function memoryrecord_unfreeze(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecordHotkey.pas#L126
---
--- Pre-6.3 spelling of `MemoryRecordHotkey:doHotkey()`.
---@deprecated Use `MemoryRecordHotkey:doHotkey()`.
---@param memoryrecordhotkey MemoryRecordHotkey
function memoryrecordhotkey_doHotkey(memoryrecordhotkey) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecordHotkey.pas#L18
---
--- Returns the hotkey's description. There is no `MemoryRecordHotkey:getDescription()`
--- class method; the metatable exposes the published Pascal property instead.
---@deprecated Use `memoryrecordhotkey.Description`.
---@param memoryrecordhotkey MemoryRecordHotkey
---@return string
function memoryrecordhotkey_getDescription(memoryrecordhotkey) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecordHotkey.pas#L27
---
--- Returns the key combination as text. There is no `MemoryRecordHotkey:getHotkeyString()`
--- class method; the metatable exposes it as a read-only property instead.
---@deprecated Use `memoryrecordhotkey.HotkeyString`.
---@param memoryrecordhotkey MemoryRecordHotkey
---@return string
function memoryrecordhotkey_getHotkeyString(memoryrecordhotkey) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecordHotkey.pas#L78
---
--- Returns the hotkey's id. There is no `MemoryRecordHotkey:getID()` class method;
--- the metatable exposes the published Pascal property instead.
---@deprecated Use `memoryrecordhotkey.ID`.
---@param memoryrecordhotkey MemoryRecordHotkey
---@return integer
function memoryrecordhotkey_getID(memoryrecordhotkey) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecordHotkey.pas#L117
---
--- Returns the owning memory record. There is no `MemoryRecordHotkey:getOwner()` class
--- method; the metatable exposes the published Pascal property instead.
---@deprecated Use `memoryrecordhotkey.Owner`.
---@param memoryrecordhotkey MemoryRecordHotkey
---@return MemoryRecord
function memoryrecordhotkey_getOwner(memoryrecordhotkey) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecordHotkey.pas#L87
---
--- Sets the hotkey's handler. There is no `MemoryRecordHotkey:onHotkey()` class method;
--- the metatable exposes the published Pascal property instead.
---@deprecated Use `memoryrecordhotkey.OnHotkey` (MemoryRecordUnit.pas:437).
---@param memoryrecordhotkey MemoryRecordHotkey
---@param f CECallback
function memoryrecordhotkey_onHotkey(memoryrecordhotkey, f) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecordHotkey.pas#L102
---
--- Sets the hotkey's post-handler. There is no `MemoryRecordHotkey:onPostHotkey()` class
--- method; the metatable exposes the published Pascal property instead.
---@deprecated Use `memoryrecordhotkey.OnPostHotkey` (MemoryRecordUnit.pas:438).
---@param memoryrecordhotkey MemoryRecordHotkey
---@param f CECallback
function memoryrecordhotkey_onPostHotkey(memoryrecordhotkey, f) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L33
---
--- Pre-6.3 spelling of `MemScan:firstScan()`.
---
--- All fourteen arguments or none. LuaMemscan.pas:52 reads the argument block only when at
--- least fourteen were passed, and in this flat form `paramcount` excludes the memscan
--- itself (LuaMemscan.pas:50, LuaClass.pas:253-257), so fourteen arguments have to follow
--- it. A shorter call falls through to the argument-less `TMemScan.FirstScan`
--- (LuaMemscan.pas:86, memscan.pas:752), which scans from the `ScanOption`, `VariableType`,
--- `Roundingtype`, `Scanvalue1` and related properties instead. A partial call is not an
--- error - everything passed is discarded silently.
---@deprecated Use `MemScan:firstScan()`.
---@param memscan MemScan
---@param scanOption integer?
---@param vartype integer?
---@param roundingtype integer?
---@param input1 string?
---@param input2 string?
---@param startAddress string|integer|nil
---@param stopAddress string|integer|nil
---@param protectionflags string?
---@param alignmenttype integer?
---@param alignmentparam string?
---@param isHexadecimalInput boolean?
---@param isNotABinaryString boolean?
---@param isunicodescan boolean?
---@param iscasesensitive boolean?
function memscan_firstScan(memscan, scanOption, vartype, roundingtype, input1, input2, startAddress, stopAddress, protectionflags, alignmenttype, alignmentparam, isHexadecimalInput, isNotABinaryString, isunicodescan, iscasesensitive) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L161
---
--- Pre-6.3 spelling of `MemScan:getAttachedFoundlist()`.
---@deprecated Use `MemScan:getAttachedFoundlist()`.
---@param memscan MemScan
---@return FoundList? foundlist Nothing until a FoundList has been attached to this scan.
function memscan_getAttachedFoundlist(memscan) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L258
---
--- Pre-6.3 spelling of `MemScan:getOnlyResult()`.
---@deprecated Use `MemScan:getOnlyResult()`.
---@param memscan MemScan
---@return integer? address Nothing unless the scan produced exactly one result.
function memscan_getOnlyResult(memscan) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L90
---
--- Pre-6.3 spelling of `MemScan:nextScan()`.
---
--- The first nine arguments are all-or-nothing. LuaMemscan.pas:105 reads the argument block
--- only when at least nine were passed, and in this flat form `paramcount` excludes the
--- memscan itself (LuaMemscan.pas:102, LuaClass.pas:253-257), so nine arguments have to
--- follow it. A shorter call falls through to the argument-less `TMemScan.NextScan`
--- (LuaMemscan.pas:128, memscan.pas:753), which scans from the `ScanOption`, `Roundingtype`,
--- `Scanvalue1`, `Percentage` and related properties instead, discarding everything that was
--- passed. Only `savedscanname` is truly optional (LuaMemscan.pas:118); leaving it out
--- compares against the previous scan rather than a saved one (LuaMemscan.pas:121-125).
---@deprecated Use `MemScan:nextScan()`.
---@param memscan MemScan
---@param scanOption integer?
---@param roundingtype integer?
---@param input1 string?
---@param input2 string?
---@param isHexadecimalInput boolean?
---@param isNotABinaryString boolean?
---@param isunicodescan boolean?
---@param iscasesensitive boolean?
---@param ispercentagescan boolean?
---@param savedscanname string?
function memscan_nextScan(memscan, scanOption, roundingtype, input1, input2, isHexadecimalInput, isNotABinaryString, isunicodescan, iscasesensitive, ispercentagescan, savedscanname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L248
---
--- Pre-6.3 spelling of `MemScan:setOnlyOneResult()`; the global kept the older name.
---
--- Broken in this form. `memscan_setreturnOnlyOneResult` reads the state with
--- `lua_toboolean(L, 1)` (LuaMemscan.pas:255), and in the flat call slot 1 holds the
--- memscan userdata, which is truthy, so `state` is ignored and only-one-result mode is
--- always turned on. Only `MemScan:setOnlyOneResult()` works.
---@deprecated Use `MemScan:setOnlyOneResult()`.
---@param memscan MemScan
---@param state boolean Ignored; always read as true.
function memscan_returnOnlyOneResult(memscan, state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L223
---
--- Pre-6.3 spelling of `MemScan:saveCurrentResults()`.
---@deprecated Use `MemScan:saveCurrentResults()`.
---@param memscan MemScan
---@param name string
function memscan_saveCurrentResults(memscan, name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemscan.pas#L145
---
--- Pre-6.3 spelling of `MemScan:waitTillDone()`.
---@deprecated Use `MemScan:waitTillDone()`.
---@param memscan MemScan
function memscan_waitTillDone(memscan) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L137
---
--- Pre-6.3 spelling of `Structure:addElement()`.
---@deprecated Use `Structure:addElement()`.
---@param structure Structure
---@return StructureElement
function structure_addElement(structure) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L238
---
--- Pre-6.3 spelling of `Structure:addToGlobalStructureList()`.
---@deprecated Use `Structure:addToGlobalStructureList()`.
---@param structure Structure
function structure_addToGlobalStructureList(structure) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L189
---
--- Pre-6.3 spelling of `Structure:autoGuess()`.
---
--- Broken in this form. The three arguments are read from positive stack slots 1, 2 and 3
--- (LuaStructure.pas:206-212), and in the flat call slot 1 holds the structure userdata, so
--- every argument lands one slot too low: the guess runs from base address 0 with
--- `baseaddresstoguessfrom` used as the offset and `offset` used as the size, and `size` is
--- ignored. Only `Structure:autoGuess()` works.
---@deprecated Use `Structure:autoGuess()`.
---@param structure Structure
---@param baseaddresstoguessfrom string|integer
---@param offset integer
---@param size integer
function structure_autoGuess(structure, baseaddresstoguessfrom, offset, size) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L218
---
--- Pre-6.3 spelling of `Structure:beginUpdate()`.
---@deprecated Use `Structure:beginUpdate()`.
---@param structure Structure
function structure_beginUpdate(structure) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L228
---
--- Pre-6.3 spelling of `Structure:endUpdate()`.
---@deprecated Use `Structure:endUpdate()`.
---@param structure Structure
function structure_endUpdate(structure) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L97
---
--- Pre-6.3 spelling of `Structure:getElement()`.
---
--- Broken in this form. `structure_getElement` reads the index with `lua_tointeger(L, 1)`
--- (LuaStructure.pas:109), and in the flat call slot 1 holds the structure userdata, which
--- converts to 0, so element 0 comes back whatever `index` is. Only `Structure:getElement()`
--- works.
---@deprecated Use `Structure:getElement()`.
---@param structure Structure
---@param index integer
---@return StructureElement? element Always element 0; nothing when the structure has no elements.
function structure_getElement(structure, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L119
---
--- Pre-6.3 spelling of `Structure:getElementByOffset()`.
---
--- Broken in this form. `structure_getElementByOffset` reads the offset with
--- `lua_tointeger(L, 1)` (LuaStructure.pas:131), and in the flat call slot 1 holds the
--- structure userdata, which converts to 0, so the lookup is always for offset 0 and the
--- first element comes back. Only `Structure:getElementByOffset()` works.
---@deprecated Use `Structure:getElementByOffset()`.
---@param structure Structure
---@param offset integer
---@return StructureElement? element Always the first element; nothing when the structure is empty.
function structure_getElementByOffset(structure, offset) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L88
---
--- Pre-6.3 spelling of `Structure:getElementCount()`.
---@deprecated Use `Structure:getElementCount()`.
---@param structure Structure
---@return integer
function structure_getElementCount(structure) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L59
---
--- Pre-6.3 spelling of `Structure:getName()`.
---@deprecated Use `Structure:getName()`.
---@param structure Structure
---@return string
function structure_getName(structure) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L79
---
--- Pre-6.3 spelling of `Structure:getSize()`.
---@deprecated Use `Structure:getSize()`.
---@param structure Structure
---@return integer
function structure_getSize(structure) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L248
---
--- Pre-6.3 spelling of `Structure:removeFromGlobalStructureList()`.
---@deprecated Use `Structure:removeFromGlobalStructureList()`.
---@param structure Structure
function structure_removeFromGlobalStructureList(structure) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L68
---
--- Pre-6.3 spelling of `Structure:setName()`.
---
--- Broken in this form. `structure_setName` reads the name with `Lua_ToString(L, 1)`
--- (LuaStructure.pas:76), and in the flat call slot 1 holds the structure userdata, not
--- the string, so the name is set to an empty string. Only `Structure:setName()` works.
---@deprecated Use `Structure:setName()`.
---@param structure Structure
---@param value string
function structure_setName(structure, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L552
---
--- Pre-6.3 spelling of `StructureElement:getBytesize()`.
---@deprecated Use `StructureElement:getBytesize()`.
---@param structureelement StructureElement
---@return integer
function structureElement_getBytesize(structureelement) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L497
---
--- Pre-6.3 spelling of `StructureElement:getChildStruct()`.
---@deprecated Use `StructureElement:getChildStruct()`.
---@param structureelement StructureElement
---@return Structure? childStruct Nothing when the element has no child structure.
function structureElement_getChildStruct(structureelement) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L533
---
--- Pre-6.3 spelling of `StructureElement:getChildStructStart()`.
---@deprecated Use `StructureElement:getChildStructStart()`.
---@param structureelement StructureElement
---@return integer
function structureElement_getChildStructStart(structureelement) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L449
---
--- Pre-6.3 spelling of `StructureElement:getName()`.
---@deprecated Use `StructureElement:getName()`.
---@param structureelement StructureElement
---@return string
function structureElement_getName(structureelement) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L371
---
--- Pre-6.3 spelling of `StructureElement:getOffset()`.
---@deprecated Use `StructureElement:getOffset()`.
---@param structureelement StructureElement
---@return integer
function structureElement_getOffset(structureelement) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L362
---
--- Pre-6.3 spelling of `StructureElement:getOwnerStructure()`.
---@deprecated Use `StructureElement:getOwnerStructure()`.
---@param structureelement StructureElement
---@return Structure
function structureElement_getOwnerStructure(structureelement) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L473
---
--- Pre-6.3 spelling of `StructureElement:getVartype()`.
---@deprecated Use `StructureElement:getVartype()`.
---@param structureelement StructureElement
---@return integer
function structureElement_getVartype(structureelement) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L561
---
--- Pre-6.3 spelling of `StructureElement:setBytesize()`.
---
--- Broken in this form. The size is read with `lua_tointeger(L, 1)`
--- (LuaStructure.pas:568), and in the flat call slot 1 holds the element userdata, which
--- converts to 0, so the byte size is always set to 0. Only
--- `StructureElement:setBytesize()` works.
---@deprecated Use `StructureElement:setBytesize()`.
---@param structureelement StructureElement
---@param value integer
function structureElement_setBytesize(structureelement, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L506
---
--- Pre-6.3 spelling of `StructureElement:setChildStruct()`.
---
--- Broken in this form. The child structure is read with `lua_ToCEUserData(L, 1)`
--- (LuaStructure.pas:522), and in the flat call slot 1 holds the element userdata, so the
--- class check at LuaStructure.pas:523 fails and every call raises
--- `Invalid child structure object:TStructelement`. Only `StructureElement:setChildStruct()`
--- works.
---@deprecated Use `StructureElement:setChildStruct()`.
---@param structureelement StructureElement
---@param value Structure?
function structureElement_setChildStruct(structureelement, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L542
---
--- Pre-6.3 spelling of `StructureElement:setChildStructStart()`.
---
--- Broken in this form. The value is read with `lua_tointeger(L, 1)`
--- (LuaStructure.pas:549), and in the flat call slot 1 holds the element userdata, which
--- converts to 0, so the start offset is always set to 0. Only
--- `StructureElement:setChildStructStart()` works.
---@deprecated Use `StructureElement:setChildStructStart()`.
---@param structureelement StructureElement
---@param value integer
function structureElement_setChildStructStart(structureelement, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L458
---
--- Pre-6.3 spelling of `StructureElement:setName()`.
---
--- Broken in this form. The new name is read with `Lua_ToString(L, 1)`
--- (LuaStructure.pas:468), and in the flat call slot 1 holds the element userdata, for which
--- `Lua_ToString` returns an empty string, so the name is always cleared. Only
--- `StructureElement:setName()` works.
---@deprecated Use `StructureElement:setName()`.
---@param structureelement StructureElement
---@param value string
function structureElement_setName(structureelement, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L380
---
--- Pre-6.3 spelling of `StructureElement:setOffset()`.
---
--- Broken in this form. The new offset is read with `Lua_Tointeger(L, 1)`
--- (LuaStructure.pas:388), and in the flat call slot 1 holds the element userdata, which
--- converts to 0, so the offset is always set to 0. Only `StructureElement:setOffset()` works.
---@deprecated Use `StructureElement:setOffset()`.
---@param structureelement StructureElement
---@param value integer
function structureElement_setOffset(structureelement, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructure.pas#L482
---
--- Pre-6.3 spelling of `StructureElement:setVartype()`.
---
--- Broken in this form. The type is read with `lua_tointeger(L, 1)`
--- (LuaStructure.pas:491), and in the flat call slot 1 holds the element userdata, which
--- converts to 0, so the element is always set to vtByte. Only
--- `StructureElement:setVartype()` works.
---@deprecated Use `StructureElement:setVartype()`.
---@param structureelement StructureElement
---@param value integer
function structureElement_setVartype(structureelement, value) end
