---@meta
---
--- legacy / lists
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L108
---
--- Pre-6.3 spelling of `AddressList:createMemoryRecord()`.
---@deprecated Use `AddressList:createMemoryRecord()`.
---@param addresslist AddressList
---@return MemoryRecord
function addresslist_createMemoryRecord(addresslist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L124
---
--- Pre-6.3 spelling of `AddressList:doAddressChange()`.
---@deprecated Use `AddressList:doAddressChange()`.
---@param addresslist AddressList
function addresslist_doAddressChange(addresslist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L117
---
--- Pre-6.3 spelling of `AddressList:doDescriptionChange()`.
---@deprecated Use `AddressList:doDescriptionChange()`.
---@param addresslist AddressList
function addresslist_doDescriptionChange(addresslist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L130
---
--- Pre-6.3 spelling of `AddressList:doTypeChange()`.
---@deprecated Use `AddressList:doTypeChange()`.
---@param addresslist AddressList
function addresslist_doTypeChange(addresslist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L151
---
--- Pre-6.3 spelling of `AddressList:doValueChange()`.
---@deprecated Use `AddressList:doValueChange()`.
---@param addresslist AddressList
function addresslist_doValueChange(addresslist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L17
---
--- Pre-6.3 spelling of `AddressList:getCount()`.
---@deprecated Use `AddressList:getCount()`.
---@param addresslist AddressList
---@return integer
function addresslist_getCount(addresslist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L53
---
--- Pre-6.3 spelling of `AddressList:getMemoryRecord()`.
---@deprecated Use `AddressList:getMemoryRecord()`.
---@param addresslist AddressList
---@param index integer|string Row number, or a description. Row numbers are 0-based: `TAddresslist.GetMemRecItemByIndex` (addresslist.pas:391) indexes `treeview.Items` directly.
---@return MemoryRecord? record Nothing when the index is out of range or the description is unknown.
function addresslist_getMemoryRecord(addresslist, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L77
---
--- Pre-6.3 spelling of `AddressList:getMemoryRecordByDescription()`.
---@deprecated Use `AddressList:getMemoryRecordByDescription()`.
---@param addresslist AddressList
---@param description string
---@return MemoryRecord? record Nothing when no row carries that description.
function addresslist_getMemoryRecordByDescription(addresslist, description) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L93
---
--- Pre-6.3 spelling of `AddressList:getMemoryRecordByID()`.
---@deprecated Use `AddressList:getMemoryRecordByID()`.
---@param addresslist AddressList
---@param ID integer
---@return MemoryRecord? record Nothing when no record has that id.
function addresslist_getMemoryRecordByID(addresslist, ID) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L157
---
--- Pre-6.3 spelling of `AddressList:getSelectedRecord()`.
---@deprecated Use `AddressList:getSelectedRecord()`.
---@param addresslist AddressList
---@return MemoryRecord? record Nothing when no row is selected.
function addresslist_getSelectedRecord(addresslist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L26
---
--- Pre-6.3 spelling of `AddressList:getSelectedRecords()`.
---
--- The table is keyed by each selected row's position in the whole list plus one
--- (LuaAddresslist.pas:42), not by 1..n, so it has holes whenever the selection does not
--- start at the first row: selecting rows 5 and 9 yields keys 6 and 10. Walk it with
--- `pairs`, not `ipairs`, and do not trust `#`.
---@deprecated Use `AddressList:getSelectedRecords()`.
---@param addresslist AddressList
---@return table<integer, MemoryRecord>? records Nothing when no row is selected.
function addresslist_getSelectedRecords(addresslist) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L166
---
--- Pre-6.3 spelling of `AddressList:setSelectedRecord()`.
---@deprecated Use `AddressList:setSelectedRecord()`.
---@param addresslist AddressList
---@param value MemoryRecord
function addresslist_setSelectedRecord(addresslist, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L37
---
--- Reads a list column's caption. `TListColumn` is never passed to `luaclass_register`, so
--- a column userdata gets `TCollectionItem`'s metatable (`findBestClassForObject`,
--- LuaClass.pas:136; LuaCollectionItem.pas:78) and `listcolumn_addMetaData`
--- (LuaListcolumn.pas:114) is dead code: the method form `listcolumn:getCaption()` does not
--- exist. This global (registered at LuaListcolumn.pas:138) and the `Caption` field, which
--- resolves through the `lua_getProperty` RTTI fallback (LuaClass.pas:578), are the only
--- ways to read it.
---@deprecated Use the `Caption` field: `listcolumn.Caption`.
---@param listcolumn ListColumn
---@return string
function listcolumn_getCaption(listcolumn) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L56
---
--- Reads a list column's maximum width. `TListColumn` is never passed to
--- `luaclass_register`, so a column userdata gets `TCollectionItem`'s metatable
--- (`findBestClassForObject`, LuaClass.pas:136; LuaCollectionItem.pas:78) and
--- `listcolumn_addMetaData` (LuaListcolumn.pas:114) is dead code: the method form
--- `listcolumn:getMaxWidth()` does not exist. This global (registered at
--- LuaListcolumn.pas:140) and the `MaxWidth` field, which resolves through the
--- `lua_getProperty` RTTI fallback (LuaClass.pas:578), are the only ways to read it.
---@deprecated Use the `MaxWidth` field: `listcolumn.MaxWidth`.
---@param listcolumn ListColumn
---@return integer
function listcolumn_getMaxWidth(listcolumn) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L76
---
--- Reads a list column's minimum width. `TListColumn` is never passed to
--- `luaclass_register`, so a column userdata gets `TCollectionItem`'s metatable
--- (`findBestClassForObject`, LuaClass.pas:136; LuaCollectionItem.pas:78) and
--- `listcolumn_addMetaData` (LuaListcolumn.pas:114) is dead code: the method form
--- `listcolumn:getMinWidth()` does not exist. This global (registered at
--- LuaListcolumn.pas:142) and the `MinWidth` field, which resolves through the
--- `lua_getProperty` RTTI fallback (LuaClass.pas:578), are the only ways to read it.
---@deprecated Use the `MinWidth` field: `listcolumn.MinWidth`.
---@param listcolumn ListColumn
---@return integer
function listcolumn_getMinWidth(listcolumn) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L95
---
--- Reads a list column's width. `TListColumn` is never passed to `luaclass_register`, so a
--- column userdata gets `TCollectionItem`'s metatable (`findBestClassForObject`,
--- LuaClass.pas:136; LuaCollectionItem.pas:78) and `listcolumn_addMetaData`
--- (LuaListcolumn.pas:114) is dead code: the method form `listcolumn:getWidth()` does not
--- exist. This global (registered at LuaListcolumn.pas:144) and the `Width` field, which
--- resolves through the `lua_getProperty` RTTI fallback (LuaClass.pas:578), are the only
--- ways to read it.
---@deprecated Use the `Width` field: `listcolumn.Width`.
---@param listcolumn ListColumn
---@return integer
function listcolumn_getWidth(listcolumn) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L25
---
--- Turns a list column's autosizing on or off. `TListColumn` is never passed to
--- `luaclass_register`, so a column userdata gets `TCollectionItem`'s metatable
--- (`findBestClassForObject`, LuaClass.pas:136; LuaCollectionItem.pas:78) and
--- `listcolumn_addMetaData` (LuaListcolumn.pas:114) is dead code: the method form
--- `listcolumn:setAutosize()` does not exist. This global (registered at
--- LuaListcolumn.pas:137) and the `Autosize` field, which resolves through the
--- `lua_setProperty` RTTI fallback (LuaClass.pas:494), are the only ways to set it;
--- `initializeLuaListcolumn` (LuaListcolumn.pas:135-146) registers no matching getter, so
--- reading autosize is only possible through the field.
---@deprecated Use the `Autosize` field: `listcolumn.Autosize = value`.
---@param listcolumn ListColumn
---@param value boolean
function listcolumn_setAutosize(listcolumn, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L46
---
--- Sets a list column's caption. `TListColumn` is never passed to `luaclass_register`, so a
--- column userdata gets `TCollectionItem`'s metatable (`findBestClassForObject`,
--- LuaClass.pas:136; LuaCollectionItem.pas:78) and `listcolumn_addMetaData`
--- (LuaListcolumn.pas:114) is dead code: the method form `listcolumn:setCaption()` does not
--- exist. This global (registered at LuaListcolumn.pas:139) and the `Caption` field, which
--- resolves through the `lua_setProperty` RTTI fallback (LuaClass.pas:494), are the only
--- ways to set it.
---@deprecated Use the `Caption` field: `listcolumn.Caption = value`.
---@param listcolumn ListColumn
---@param value string
function listcolumn_setCaption(listcolumn, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L65
---
--- Sets a list column's maximum width. `TListColumn` is never passed to
--- `luaclass_register`, so a column userdata gets `TCollectionItem`'s metatable
--- (`findBestClassForObject`, LuaClass.pas:136; LuaCollectionItem.pas:78) and
--- `listcolumn_addMetaData` (LuaListcolumn.pas:114) is dead code: the method form
--- `listcolumn:setMaxWidth()` does not exist. This global (registered at
--- LuaListcolumn.pas:141) and the `MaxWidth` field, which resolves through the
--- `lua_setProperty` RTTI fallback (LuaClass.pas:494), are the only ways to set it.
---@deprecated Use the `MaxWidth` field: `listcolumn.MaxWidth = value`.
---@param listcolumn ListColumn
---@param value integer
function listcolumn_setMaxWidth(listcolumn, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L85
---
--- Sets a list column's minimum width. `TListColumn` is never passed to
--- `luaclass_register`, so a column userdata gets `TCollectionItem`'s metatable
--- (`findBestClassForObject`, LuaClass.pas:136; LuaCollectionItem.pas:78) and
--- `listcolumn_addMetaData` (LuaListcolumn.pas:114) is dead code: the method form
--- `listcolumn:setMinWidth()` does not exist. This global (registered at
--- LuaListcolumn.pas:143) and the `MinWidth` field, which resolves through the
--- `lua_setProperty` RTTI fallback (LuaClass.pas:494), are the only ways to set it.
---@deprecated Use the `MinWidth` field: `listcolumn.MinWidth = value`.
---@param listcolumn ListColumn
---@param value integer
function listcolumn_setMinWidth(listcolumn, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L104
---
--- Sets a list column's width. `TListColumn` is never passed to `luaclass_register`, so a
--- column userdata gets `TCollectionItem`'s metatable (`findBestClassForObject`,
--- LuaClass.pas:136; LuaCollectionItem.pas:78) and `listcolumn_addMetaData`
--- (LuaListcolumn.pas:114) is dead code: the method form `listcolumn:setWidth()` does not
--- exist. This global (registered at LuaListcolumn.pas:145) and the `Width` field, which
--- resolves through the `lua_setProperty` RTTI fallback (LuaClass.pas:494), are the only
--- ways to set it.
---@deprecated Use the `Width` field: `listcolumn.Width = value`.
---@param listcolumn ListColumn
---@param value integer
function listcolumn_setWidth(listcolumn, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListColumns.pas#L16
---
--- Pre-6.3 spelling of `ListColumns:add()`.
---@deprecated Use `ListColumns:add()`.
---@param listcolumns ListColumns
---@return ListColumn
function listcolumns_add(listcolumns) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListColumns.pas#L25
---
--- Pre-6.3 spelling of `ListColumns:getColumn()`.
---@deprecated Use `ListColumns:getColumn()`.
---@param listcolumns ListColumns
---@param index integer
---@return ListColumn
function listcolumns_getColumn(listcolumns, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L16
---
--- Pre-6.3 spelling of `ListItem:delete()`.
---@deprecated Use `ListItem:delete()`.
---@param listitem ListItem
function listitem_delete(listitem) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L107
---
--- Pre-6.3 spelling of `ListItem:getCaption()`.
---@deprecated Use `ListItem:getCaption()`.
---@param listitem ListItem
---@return string
function listitem_getCaption(listitem) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L127
---
--- Pre-6.3 spelling of `ListItem:getChecked()`.
---@deprecated Use `ListItem:getChecked()`.
---@param listitem ListItem
---@return boolean
function listitem_getChecked(listitem) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L158
---
--- Pre-6.3 spelling of `ListItem:getSubItems()`.
---@deprecated Use `ListItem:getSubItems()`.
---@param listitem ListItem
---@return Strings
function listitem_getSubItems(listitem) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L116
---
--- Pre-6.3 spelling of `ListItem:setCaption()`.
---@deprecated Use `ListItem:setCaption()`.
---@param listitem ListItem
---@param value string
function listitem_setCaption(listitem, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L136
---
--- Pre-6.3 spelling of `ListItem:setChecked()`.
---@deprecated Use `ListItem:setChecked()`.
---@param listitem ListItem
---@param value boolean
function listitem_setChecked(listitem, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItems.pas#L89
---
--- Pre-6.3 spelling of `ListItems:add()`.
---@deprecated Use `ListItems:add()`.
---@param listitems ListItems
---@return ListItem
function listitems_add(listitems) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItems.pas#L28
---
--- Pre-6.3 spelling of `ListItems:clear()`.
---@deprecated Use `ListItems:clear()`.
---@param listitems ListItems
function listitems_clear(listitems) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItems.pas#L79
---
--- Pre-6.3 spelling of `ListItems:getCount()`.
---@deprecated Use `ListItems:getCount()`.
---@param listitems ListItems
---@return integer
function listitems_getCount(listitems) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItems.pas#L37
---
--- Pre-6.3 spelling of `ListItems:getItem()`.
---@deprecated Use `ListItems:getItem()`.
---@param listitems ListItems
---@param index integer
---@return ListItem
function listitems_getItem(listitems, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L36
---
--- Pre-6.3 spelling of `ListView:clear()`.
---@deprecated Use `ListView:clear()`.
---@param listview ListView
function listview_clear(listview) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L161
---
--- Pre-6.3 spelling of `ListView:getCanvas()`.
---@deprecated Use `ListView:getCanvas()`.
---@param listview ListView
---@return Canvas
function listview_getCanvas(listview) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L63
---
--- Pre-6.3 spelling of `ListView:getColumns()`.
---@deprecated Use `ListView:getColumns()`.
---@param listview ListView
---@return ListColumns
function listview_getColumns(listview) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L121
---
--- Pre-6.3 spelling of `ListView:getItemIndex()`.
---@deprecated Use `ListView:getItemIndex()`.
---@param listview ListView
---@return integer
function listview_getItemIndex(listview) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L112
---
--- Pre-6.3 spelling of `ListView:getItems()`.
---@deprecated Use `ListView:getItems()`.
---@param listview ListView
---@return ListItems
function listview_getItems(listview) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L130
---
--- Pre-6.3 spelling of `ListView:setItemIndex()`.
---@deprecated Use `ListView:setItemIndex()`.
---@param listview ListView
---@param value integer
function listview_setItemIndex(listview, value) end
