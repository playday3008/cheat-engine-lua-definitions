---@meta
---
--- classes / lists
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L181
---
--- Pascal class: `TAddresslist`.
---
--- The fields from `SelCount` through `OnAutoAssemblerEdit` are published Pascal properties
--- (the published block runs addresslist.pas:192-215), reached through the `lua_getProperty`
--- RTTI fallback `luaclass_index` installs at LuaClass.pas:578. The two fields after them,
--- `List` and `Header`, are not published - each documents its own lookup path.
---@class AddressList : WinControl
---@field Count integer Read-only.
---@field SelectedRecord MemoryRecord? Nil when no row is selected.
---@field MemoryRecord table<integer|string, MemoryRecord?> Read-only. Index by row number (0-based) or by description; nil when the row number is out of range or no row carries that description - `addresslist_getMemoryRecord` (LuaAddresslist.pas:53) hands `MemRecItems[index]` (nil at or above the row count, addresslist.pas:391-397) or `getRecordWithDescription` (nil for an unknown description, addresslist.pas:856-859) straight to `luaclass_newClass`, which pushes nil for a nil object (LuaClass.pas:208-218).
---@field [integer|string] MemoryRecord? Read-only. Index by row number, or by description; nil when the row number is out of range or no row carries that description. The integer form runs `addresslist_getMemoryRecord` (LuaAddresslist.pas:53) and the string form `addresslist_getMemoryRecordByDescription` (LuaAddresslist.pas:77), installed as the default index handlers at LuaAddresslist.pas:207-208, and both hand a possibly nil record (addresslist.pas:391-397, addresslist.pas:856-859) to `luaclass_newClass`, which pushes nil (LuaClass.pas:208-218).
---@field SelCount integer Read-only. Number of selected rows.
---@field LoadedTableVersion integer Read-only. Version of the cheat table that was loaded.
---@field checkboxActiveSelectedColor integer Checkbox colour for an active, selected row.
---@field CheckboxActiveColor integer Checkbox colour for an active row.
---@field CheckboxSelectedColor integer Checkbox colour for a selected row.
---@field CheckboxColor integer Checkbox colour for a normal row.
---@field SelectedBackgroundColor integer Background colour of a selected row.
---@field SelectedSecondaryBackgroundColor integer Secondary background colour of a selected row.
---@field ExpandSignColor integer Colour of the tree expand/collapse sign.
---@field IncreaseArrowColor integer Colour of the value-increased arrow.
---@field DecreaseArrowColor integer Colour of the value-decreased arrow.
---@field MouseHighlightedRecord MemoryRecord? Read-only. The row under the mouse cursor; nil when the cursor is not over a row.
---@field OnDescriptionChange CECallback `function(addresslist, memrec): boolean`, return true to block the change.
---@field OnAddressChange CECallback `function(addresslist, memrec): boolean`, return true to block the change.
---@field OnTypeChange CECallback `function(addresslist, memrec): boolean`, return true to block the change.
---@field OnValueChange CECallback `function(addresslist, memrec): boolean`, return true to block the change.
---@field OnAutoAssemblerEdit CECallback `function(addresslist, memrec)`, called instead of opening the auto assembler editor; the return value is discarded (addresslist.pas:1233).
---@field List TreeView Read-only. The internal tree view the address list draws its rows in. Not a published property - a runtime component of `TAddresslist`, created as `TTreeviewWithScroll.create(self)` (addresslist.pas:2398) and named `'List'` (addresslist.pas:2399), found by component name through the `component_findComponentByName` fallback `luaclass_index` runs when a key is neither a metatable entry nor a published property (LuaClass.pas:592, LuaComponent.pas:26-38); that fallback runs before the description lookup at LuaClass.pas:604. `TTreeviewWithScroll` descends from `TTreeview` (addresslist.pas:18), so it carries the metatable registered for `TCustomTreeView` (luatreeview.pas:183). Assigning to it does not replace the control: `lua_setProperty` finds no such published property and stores the value in the object's metatable instead (LuaObject.pas:313-321), which then shadows this lookup. Documented by Cheat Engine as `List: The internal Treeview control of the addresslist` (bin/celua.txt:2306).
---@field Header CustomControl Read-only. The header control drawn above the rows. Not a published property - a runtime component of `TAddresslist`, created as `THeaderControl.Create(self)` (addresslist.pas:2450) and named `'Header'` (addresslist.pas:2451), found by component name through the `component_findComponentByName` fallback `luaclass_index` runs when a key is neither a metatable entry nor a published property (LuaClass.pas:592, LuaComponent.pas:26-38); that fallback runs before the description lookup at LuaClass.pas:604. `THeaderControl` is never passed to `luaclass_register`, so `findBestClassForObject` walks its ancestors (LuaClass.pas:156-168) up to `TCustomControl`, registered at LuaCustomControl.pas:73, and the userdata carries the `CustomControl` metatable. Assigning to it does not replace the control: `lua_setProperty` finds no such published property and stores the value in the object's metatable instead (LuaObject.pas:313-321), which then shadows this lookup.
local AddressList = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L17
---@return integer
---@overload fun(): integer
function AddressList:getCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L53
---@param index integer|string Row number, or a description. Row numbers are 0-based: `TAddresslist.GetMemRecItemByIndex` (addresslist.pas:391) indexes `treeview.Items` directly.
---@return MemoryRecord? record Nothing when the index is out of range or the description is unknown.
---@overload fun(index: integer|string): MemoryRecord?
function AddressList:getMemoryRecord(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L77
---@param description string
---@return MemoryRecord? record Nothing when no row carries that description.
---@overload fun(description: string): MemoryRecord?
function AddressList:getMemoryRecordByDescription(description) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L93
---@param ID integer
---@return MemoryRecord? record Nothing when no record has that id.
---@overload fun(ID: integer): MemoryRecord?
function AddressList:getMemoryRecordByID(ID) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L108
---@return MemoryRecord
---@overload fun(): MemoryRecord
function AddressList:createMemoryRecord() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L26
---
--- The table is keyed by each selected row's position in the whole list plus one
--- (LuaAddresslist.pas:42), not by 1..n, so it has holes whenever the selection does not
--- start at the first row: selecting rows 5 and 9 yields keys 6 and 10. Walk it with
--- `pairs`, not `ipairs`, and do not trust `#`.
---@return table<integer, MemoryRecord>? records Nothing when no row is selected.
---@overload fun(): table<integer, MemoryRecord>?
function AddressList:getSelectedRecords() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L117
---@overload fun()
function AddressList:doDescriptionChange() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L124
---@overload fun()
function AddressList:doAddressChange() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L130
---@overload fun()
function AddressList:doTypeChange() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L151
---@overload fun()
function AddressList:doValueChange() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L157
---@return MemoryRecord? record Nothing when no row is selected.
---@overload fun(): MemoryRecord?
function AddressList:getSelectedRecord() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L166
---@param value MemoryRecord
---@overload fun(value: MemoryRecord)
function AddressList:setSelectedRecord(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L136
---@overload fun()
function AddressList:disableAllWithoutExecute() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaAddresslist.pas#L142
---@overload fun()
function AddressList:rebuildDescriptionCache() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaheadersections.pas#L71
---
--- Pascal class: `THeaderSections`.
---@class HeaderSections : Collection
---@field Items table<integer, HeaderSection>
---@field [integer] HeaderSection Same as `Items[index]`.
local HeaderSections = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaheadersections.pas#L15
---@return HeaderSection section The new THeaderSection. It gets `TCollectionItem`'s metatable, so its own properties resolve through the RTTI fallback.
---@overload fun(): HeaderSection
function HeaderSections:add() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaheadersections.pas#L21
---@param index integer
---@return HeaderSection section The inserted THeaderSection. It gets `TCollectionItem`'s metatable, so its own properties resolve through the RTTI fallback.
---@overload fun(index: integer): HeaderSection
function HeaderSections:insert(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaheadersections.pas#L32
---@param index integer
---@overload fun(index: integer)
function HeaderSections:delete(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L114
---
--- `TListColumn` is never passed to `luaclass_register`, so a list column userdata gets
--- `TCollectionItem`'s metatable instead and `listcolumn_addMetaData` is dead code. The
--- methods below are therefore NOT reachable as `column:getCaption()` - use the flat
--- `listcolumn_*` globals, except for `getAutosize`: `initializeLuaListcolumn` never
--- registers a `listcolumn_getAutosize` global, so reading autosize is only possible
--- through the `Autosize` field. The fields still work: they are published properties
--- of the LCL's `TListColumn`, resolved by the `lua_getProperty` RTTI fallback.
---@class ListColumn : CollectionItem
---@field Autosize boolean
---@field Caption string
---@field MaxWidth integer
---@field MinWidth integer
---@field Width integer
---@field Visible boolean Whether the column is drawn. Published property of the LCL's `TListColumn`, reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 - the LCL is not vendored here, but celua.txt:1543 documents it on the ListColumn class and Cheat Engine drives it itself at frmUltimap2Unit.pas:2427/4139 and MainUnit.pas:11505/11509, and frmUltimap2Unit.lfm:799 streams it on a column.
---@field Alignment string|integer How the column's text is aligned. Published property of the LCL's `TListColumn`, reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 - the LCL is not vendored here, but frmBreakpointlistunit.lfm:40 and :45 stream it on items of the `Columns` collection of the `TListView` declared at frmBreakpointlistunit.lfm:13. Reads back the `TAlignment` member name, `'taLeftJustify'`, `'taRightJustify'` or `'taCenter'` (LuaObject.pas:213), and assigning takes that name or the matching integer (LuaObject.pas:299-307).
local ListColumn = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L16
---@return boolean
---@overload fun(): boolean
function ListColumn:getAutosize() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L25
---@param value boolean
---@overload fun(value: boolean)
function ListColumn:setAutosize(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L37
---@return string
---@overload fun(): string
function ListColumn:getCaption() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L46
---@param value string
---@overload fun(value: string)
function ListColumn:setCaption(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L56
---@return integer
---@overload fun(): integer
function ListColumn:getMaxWidth() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L65
---@param value integer
---@overload fun(value: integer)
function ListColumn:setMaxWidth(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L76
---@return integer
---@overload fun(): integer
function ListColumn:getMinWidth() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L85
---@param value integer
---@overload fun(value: integer)
function ListColumn:setMinWidth(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L95
---@return integer
---@overload fun(): integer
function ListColumn:getWidth() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListcolumn.pas#L104
---@param value integer
---@overload fun(value: integer)
function ListColumn:setWidth(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListColumns.pas#L58
---
--- Pascal class: `TListColumns`.
---@class ListColumns : Collection
---@field Column table<integer, ListColumn> Read-only.
---@field [integer] ListColumn Read/write, unlike `Column`. Reading is the same as `Column[index]`; assignment works only through this index form - `luaclass_setDefaultArrayProperty` is handed `listcolumns_setColumn` as its setter (LuaListColumns.pas:66) while the `Column` array property is registered without one (LuaListColumns.pas:65).
---@field Items table<integer, ListColumn> Read-only. Narrows `Collection.Items`: `collection_getItem` hands back `TListColumns`' own items (LuaCollection.pas:55), which are `TListColumn` objects. Only `TListColumns` is registered (LuaListColumns.pas:76), so each item carries `TCollectionItem`'s metatable and its own properties resolve through the RTTI fallback.
local ListColumns = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListColumns.pas#L16
---@return ListColumn
---@overload fun(): ListColumn
function ListColumns:add() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListColumns.pas#L25
---@param index integer
---@return ListColumn
---@overload fun(index: integer): ListColumn
function ListColumns:getColumn(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListColumns.pas#L41
---@param index integer
---@param column ListColumn
---@overload fun(index: integer, column: ListColumn)
function ListColumns:setColumn(index, column) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L219
---
--- Pascal class: `TListItem`.
---@class ListItem : Object
---@field Caption string
---@field Checked boolean
---@field SubItems Strings
---@field Index integer Read-only.
---@field ImageIndex integer
---@field StateIndex integer
---@field Selected boolean
---@field Owner ListItems Read-only.
---@field Data integer
local ListItem = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L107
---@return string
---@overload fun(): string
function ListItem:getCaption() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L116
---@param value string
---@overload fun(value: string)
function ListItem:setCaption(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L127
---@return boolean
---@overload fun(): boolean
function ListItem:getChecked() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L136
---@param value boolean
---@overload fun(value: boolean)
function ListItem:setChecked(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L147
---@param value Strings
---@return Strings value The argument, echoed back: LuaListItem.pas:155 sets `result:=1` without pushing anything, so Lua returns the top of the stack.
---@overload fun(value: Strings): Strings
function ListItem:setSubItems(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L158
---@return Strings
---@overload fun(): Strings
function ListItem:getSubItems() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L205
---@param partialok boolean?
---@overload fun(partialok?: boolean)
function ListItem:makeVisible(partialok) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L16
---@overload fun()
function ListItem:delete() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L167
---@param code string A `TDisplayCode` name: `'drBounds'`, `'drIcon'`, `'drLabel'` or `'drSelectBounds'`. Cheat Engine's numeric branch tests `lua_isnumber(L,2)` on a one-argument call (LuaListItem.pas#L176), so it never fires and a number resolves to `TDisplayCode(-1)`.
---@return Rect
---@overload fun(code: string): Rect
function ListItem:displayRect(code) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItem.pas#L186
---@param subItemIndex integer
---@param code integer|string A TDisplayCode value, or its name.
---@return Rect
---@overload fun(subItemIndex: integer, code: integer|string): Rect
function ListItem:displayRectSubItem(subItemIndex, code) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItems.pas#L98
---
--- Pascal class: `TListItems`.
---@class ListItems : Object
---@field Count integer
---@field Item table<integer, ListItem> Read-only.
---@field [integer] ListItem Read/write, unlike `Item`. Reading is the same as `Item[index]`; assignment works only through this index form - `luaclass_setDefaultArrayProperty` is handed `listitems_setItem` as its setter (LuaListItems.pas:111) while the `Item` array property is registered without one (LuaListItems.pas:110).
local ListItems = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItems.pas#L28
---@overload fun()
function ListItems:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItems.pas#L79
---@return integer
---@overload fun(): integer
function ListItems:getCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItems.pas#L37
---@param index integer
---@return ListItem
---@overload fun(index: integer): ListItem
function ListItems:getItem(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItems.pas#L53
---@param index integer
---@param item ListItem
---@overload fun(index: integer, item: ListItem)
function ListItems:setItem(index, item) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItems.pas#L89
---@return ListItem
---@overload fun(): ListItem
function ListItems:add() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItems.pas#L16
---@overload fun()
function ListItems:beginUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListItems.pas#L22
---@overload fun()
function ListItems:endUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L197
---
--- Pascal class: `TCustomListView`. `createListView` builds a `TCEListView`
--- (ceguicomponents.pas:55) whose own published block is commented out, so it inherits
--- `TListView`'s published properties.
---
--- The fields from `AutoWidthLastColumn` down are those published properties, reached
--- through the `lua_getProperty` RTTI fallback `luaclass_index` installs at
--- LuaClass.pas:578; `listview_addMetaData` registers none of them.
---@class ListView : WinControl
---@field Columns ListColumns Read-only.
---@field Items ListItems
---@field ItemIndex integer
---@field Selected ListItem? Nil when nothing is selected.
---@field Canvas Canvas Read-only.
---@field TopItem ListItem? Read-only. Nothing while the control has no window handle (LuaListview.pas:175).
---@field VisibleRowCount integer Read-only.
---@field AutoWidthLastColumn boolean When true the last column resizes with the control.
---@field HideSelection boolean When true the selection is not drawn while the control lacks focus.
---@field RowSelect boolean When true the whole row is selected instead of just the first column.
---@field OnCustomDraw CECallback Called as `f(sender, rect, defaultDraw)`; the returned value becomes the new `defaultDraw` (LuaCaller.pas:1031). `rect` is a `Rect` table.
---@field OnCustomDrawItem CECallback Called as `f(sender, item, state, defaultDraw)`; the returned value becomes the new `defaultDraw` (LuaCaller.pas:1052). `state` is a table keyed by the integer ordinals of the set `TCustomDrawStateFlag` members (0 cdsSelected, 1 cdsGrayed, 2 cdsDisabled, 3 cdsChecked, 4 cdsFocused, 5 cdsDefault, 6 cdsHot, 7 cdsMarked, 8 cdsIndeterminate), each mapped to true.
---@field OnCustomDrawSubItem CECallback Called as `f(sender, item, subitem, state, defaultDraw)`; the returned value becomes the new `defaultDraw` (LuaCaller.pas:1084). `state` carries the same integer keys as `OnCustomDrawItem`.
---@field OnAdvancedCustomDrawSubItem CECallback Called as `f(sender, item, subitem, state, stage, defaultDraw)`; the returned value becomes the new `defaultDraw` (LuaCaller.pas:993). `state` carries the same integer keys as `OnCustomDrawItem` and `stage` is the `TCustomDrawStage` ordinal. LCL published property of `TListView` - the LCL is not vendored here, and unlike its two siblings no .lfm in this repository streams it: the evidence for the name is the `Sender: TCustomListView` parameter of the handler plus the commented-out transcription of `TListView`'s published list at ceguicomponents.pas:104 (inside the block comment ceguicomponents.pas:56-136). `TLVAdvancedCustomDrawSubItemEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3524), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494.
---@field OnAdvancedCustomDrawItem CECallback Called as `f(sender, item, state, stage, defaultDraw)`; the returned value becomes the new `defaultDraw` (LuaCaller.pas:958). `state` carries the same integer keys as `OnCustomDrawItem` and `stage` is the `TCustomDrawStage` ordinal. LCL published property of `TListView` - the LCL is not vendored here, but AdvancedOptionsUnit.lfm:139 streams it on the `TListView` declared at AdvancedOptionsUnit.lfm:109. `TLVAdvancedCustomDrawItemEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3522), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494.
---@field OnAdvancedCustomDraw CECallback Called as `f(sender, rect, stage, defaultDraw)`; the returned value becomes the new `defaultDraw` (LuaCaller.pas:936). `rect` is a `Rect` table and `stage` is the `TCustomDrawStage` ordinal. LCL published property of `TListView` - the LCL is not vendored here, but AdvancedOptionsUnit.lfm:138 streams it on the `TListView` declared at AdvancedOptionsUnit.lfm:109. `TLVAdvancedCustomDrawEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3520), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494.
---@field OnCompare CECallback Called as `f(sender, listitem1, listitem2, data)` while sorting; return a negative number, 0 or a positive number the way a comparison function does. The result is used only when the call succeeded - a failed call leaves the previous comparison value in place (LuaCaller.pas:929). LCL published property of `TListView` - the LCL is not vendored here, but formmemoryregionsunit.lfm:71 streams it on the `TListView` declared at formmemoryregionsunit.lfm:28. `TLVCompareEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3505), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494.
---@field OnItemChecked CECallback Called as `f(sender, listitem)` when an item's checkbox is toggled; the return value is ignored (LuaCaller.pas:870). LCL published property of `TListView` - the LCL is not vendored here, but HotKeys.lfm:53 streams it on the `TListView` declared at HotKeys.lfm:18 and frmUltimap2Unit.pas:3139 assigns it. `TLVCheckedItemEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3502), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494.
---@field OnColumnClick CECallback Called as `f(sender, listcolumn)` when a column header is clicked; the return value is ignored (LuaCaller.pas:886). LCL published property of `TListView` - the LCL is not vendored here, but FoundCodeUnit.lfm:225 streams it on the `TListView` declared at FoundCodeUnit.lfm:200. `TLVColumnClickEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3504), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494.
---@field OnSelectItem CECallback Called as `f(sender, listitem, selected)` when an item's selection state changes; the return value is ignored (LuaCaller.pas:901). LCL published property of `TListView` - the LCL is not vendored here, but HotKeys.lfm:54 streams it on the `TListView` declared at HotKeys.lfm:18, and FoundCodeUnit.lfm:227 does the same on the one at FoundCodeUnit.lfm:200. `TLVSelectItemEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3507), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494.
---@field ColumnClick boolean When true the column headers act as buttons and fire `OnColumnClick`. LCL published property of `TListView` - the LCL is not vendored here, but ceguicomponents.pas:68 transcribes it in `TListView`'s published list (the commented-out block ceguicomponents.pas:56-136), frmWatchlistUnit.lfm:31 streams `ColumnClick = False` on the `TListView` declared at frmWatchlistUnit.lfm:15, and frmBreakpointlistunit.lfm:49 does the same on the one at frmBreakpointlistunit.lfm:13. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289).
---@field ReadOnly boolean When true the user cannot edit an item's caption in place. LCL published property of `TListView` - the LCL is not vendored here, but ceguicomponents.pas:87 transcribes it in `TListView`'s published list (the commented-out block ceguicomponents.pas:56-136), formmemoryregionsunit.lfm:66 streams `ReadOnly = True` on the `TListView` declared at formmemoryregionsunit.lfm:28 and HotKeys.lfm:48 does the same on the one at HotKeys.lfm:18. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289).
---@field SortDirection string|integer Sort order. Reads back the `TSortDirection` member name, e.g. `'sdDescending'`; assigning takes that name or the matching integer (LuaObject.pas:213, LuaObject.pas:299). LCL published property of `TListView` - the LCL is not vendored here, but ceguicomponents.pas:95 transcribes it in `TListView`'s published list (the commented-out block ceguicomponents.pas:56-136) and formmemoryregionsunit.pas:320 compares it against `sdDescending` on the `TListView` declared at formmemoryregionsunit.pas:33. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494.
---@field SortColumn integer Index of the column the list sorts on. LCL published property of `TListView` - the LCL is not vendored here, but ceguicomponents.pas:93 transcribes it in `TListView`'s published list (the commented-out block ceguicomponents.pas:56-136), frmFindstaticsUnit.pas:400 assigns it as `TListView(Sender).SortColumn:=column.index` from an `OnColumnClick` handler, formChangedAddresses.pas:640 does the same on the `TListView` declared at formChangedAddresses.pas:116, and formmemoryregionsunit.pas:284 reads it into an integer on the `TListView` declared at formmemoryregionsunit.pas:33. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkInteger property is read at LuaObject.pas:205 and written at LuaObject.pas:274).
---@field SortType string|integer What the list sorts on, which is what makes `OnCompare` fire. Reads back the `TSortType` member name, e.g. `'stBoth'`; assigning takes that name or the matching integer (LuaObject.pas:213, LuaObject.pas:299). LCL published property of `TListView` - the LCL is not vendored here, but ceguicomponents.pas:94 transcribes it in `TListView`'s published list (block ceguicomponents.pas:56-136), formmemoryregionsunit.lfm:68 streams `SortType = stBoth` on the `TListView` declared at formmemoryregionsunit.lfm:28, and formChangedAddresses.pas:641 assigns `stData` on the `TListView` declared at formChangedAddresses.pas:116.
---@field Checkboxes boolean When true every row draws a checkbox, which is what makes `ListItem.Checked` and `OnItemChecked` useful. LCL published property of `TListView` - the LCL is not vendored here, but ceguicomponents.pas:64 transcribes it in `TListView`'s published list (block ceguicomponents.pas:56-136) and HotKeys.lfm:25 streams `Checkboxes = True` on the `TListView` declared at HotKeys.lfm:18, the same object whose `OnItemChecked` is declared above.
---@field MultiSelect boolean When true more than one row can be selected at a time, which is what makes `Selected` and `OnSelectItem` useful across rows. LCL published property of `TListView` - the LCL is not vendored here, but ceguicomponents.pas:81 transcribes it in `TListView`'s published list (block ceguicomponents.pas:56-136), formmemoryregionsunit.lfm:64 streams it on the `TListView` declared at formmemoryregionsunit.lfm:28, and frmStackViewUnit.pas:381 assigns it on the `TListView` declared at frmStackViewUnit.lfm:16.
---@field ViewStyle string|integer How the items are arranged. Reads back the `TViewStyle` member name, e.g. `'vsReport'`; assigning takes that name or the matching integer (LuaObject.pas:213, LuaObject.pas:299). `createListView` sets it to `vsReport` (LuaListview.pas:29), so a list view made from Lua starts in report mode. LCL published property of `TListView` - the LCL is not vendored here, but ceguicomponents.pas:101 transcribes it in `TListView`'s published list (block ceguicomponents.pas:56-136) and formmemoryregionsunit.lfm:70 streams `ViewStyle = vsReport` on the `TListView` declared at formmemoryregionsunit.lfm:28.
---@field OnDeletion CECallback Called as `f(sender, listitem)` just before an item is deleted; the return value is ignored - Cheat Engine reuses `TLuaCaller.LVCheckedItemEvent` for this type (LuaCaller.pas:870, `lua_pcall(LuaVM, 2, 0, 0)` at LuaCaller.pas:879). LCL published property of `TListView` - the LCL is not vendored here, and no .lfm in this repository streams it: the evidence for the name is the commented-out transcription of `TListView`'s published list at ceguicomponents.pas:115 (inside the block comment ceguicomponents.pas:56-136), plus `TLVDeletedEvent` being registered at LuaCaller.pas:3503 and used nowhere else in the repository. That registration is what lets a Lua function be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494.
---@field OwnerData boolean When true the list view holds no real items and asks its `OnData` event for each visible row; set `Items.Count` to the number of virtual lines (celua.txt:1631). `OnData` itself cannot be assigned from Lua - no method type for it is among the ones LuaCaller registers (the `registerLuaCall` block runs LuaCaller.pas:3491-3568), so `LuaCaller_setMethodProperty` raises at LuaCaller.pas:226-227. LCL published property of `TListView` - the LCL is not vendored here, but ceguicomponents.pas:82 transcribes it in `TListView`'s published list (the commented-out block ceguicomponents.pas:56-136) and frmReferencedStringsUnit.lfm:48 streams `OwnerData = True` on the `TListView` declared at frmReferencedStringsUnit.lfm:24. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289).
---@field StateImages CustomImageList? Image list the per-row state icons are taken from, indexed by `ListItem.StateIndex`. Nil when none is assigned. LCL published property of `TListView` - the LCL is not vendored here, but ceguicomponents.pas:96 transcribes it in `TListView`'s published list (the commented-out block ceguicomponents.pas:56-136), celua.txt:1634 documents it on the ListView class with celua.txt:1588 describing `ListItem.StateIndex` as `The index in the attached imagelist (StateImages)`, and scrollTreeView.pas:72 republishes the same LCL property on a `TTreeView` descendant. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkClass property is handed back through `luaclass_newClass` at LuaObject.pas:208 and assigned with `SetObjectProp` at LuaObject.pas:291-295); `TCustomImageList` is registered (luacustomimagelist.pas:136), so the result carries the `CustomImageList` metatable.
---@field LargeImages CustomImageList? Image list the large (icon mode) icons are taken from, indexed by `ListItem.ImageIndex`. Nil when none is assigned. LCL published property of `TListView` - the LCL is not vendored here, but ceguicomponents.pas:80 transcribes it in `TListView`'s published list (the commented-out block ceguicomponents.pas:56-136) and celua.txt:1632 documents it on the ListView class, with celua.txt:1587 describing `ListItem.ImageIndex` as `The index in the attached imagelist (LargeImages/SmallImages)`. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkClass property is handed back through `luaclass_newClass` at LuaObject.pas:208 and assigned with `SetObjectProp` at LuaObject.pas:291-295); `TCustomImageList` is registered (luacustomimagelist.pas:136), so the result carries the `CustomImageList` metatable.
---@field SmallImages CustomImageList? Image list the small (report/list mode) icons are taken from, indexed by `ListItem.ImageIndex`. Nil when none is assigned. LCL published property of `TListView` - the LCL is not vendored here, but ceguicomponents.pas:92 transcribes it in `TListView`'s published list (the commented-out block ceguicomponents.pas:56-136) and celua.txt:1633 documents it on the ListView class, with celua.txt:1587 describing `ListItem.ImageIndex` as `The index in the attached imagelist (LargeImages/SmallImages)`. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkClass property is handed back through `luaclass_newClass` at LuaObject.pas:208 and assigned with `SetObjectProp` at LuaObject.pas:291-295); `TCustomImageList` is registered (luacustomimagelist.pas:136), so the result carries the `CustomImageList` metatable.
---@field ScrollBars string|integer Which scroll bars the control shows. Reads back the `TScrollStyle` member name, e.g. `'ssVertical'`; assigning takes that name or the matching integer (LuaObject.pas:213, LuaObject.pas:299-307). LCL published property of `TListView` - the LCL is not vendored here, but ceguicomponents.pas:89 transcribes it in `TListView`'s published list (the commented-out block ceguicomponents.pas:56-136) and FoundCodeUnit.lfm:222 streams `ScrollBars = ssVertical` on the `TListView` declared at FoundCodeUnit.lfm:200, the same object whose `OnColumnClick` (FoundCodeUnit.lfm:225) and `OnSelectItem` (FoundCodeUnit.lfm:227) are declared above. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
local ListView = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L36
---@overload fun()
function ListView:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L63
---@return ListColumns
---@overload fun(): ListColumns
function ListView:getColumns() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L82
---@param x integer
---@param y integer
---@return ListItem? item Nothing when no item sits at that point.
---@overload fun(x: integer, y: integer): ListItem?
function ListView:getItemAt(x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L112
---@return ListItems
---@overload fun(): ListItems
function ListView:getItems() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L102
---@param value ListItems
---@overload fun(value: ListItems)
function ListView:setItems(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L121
---@return integer
---@overload fun(): integer
function ListView:getItemIndex() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L130
---@param value integer
---@overload fun(value: integer)
function ListView:setItemIndex(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L161
---@return Canvas
---@overload fun(): Canvas
function ListView:getCanvas() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L45
---@overload fun()
function ListView:beginUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListview.pas#L54
---@overload fun()
function ListView:endUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenode.pas#L360
---
--- Pascal class: `TTreenode`.
---@class TreeNode : Object
---@field Index integer Read-only.
---@field Level integer Read-only.
---@field Count integer Read-only.
---@field AbsoluteIndex integer Read-only.
---@field ImageIndex integer
---@field Selected boolean
---@field MultiSelected boolean
---@field Parent TreeNode? Read-only. Nil for a top-level node.
---@field HasChildren boolean
---@field Expanded boolean
---@field Visible boolean
---@field Data integer
---@field Text string
---@field Items table<integer, TreeNode> Read-only.
---@field [integer] TreeNode Read-only. Same as `getItems(index)`.
local TreeNode = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenode.pas#L331
---@param text string? Caption of the new child node. Defaults to an empty string.
---@return TreeNode
---@overload fun(text?: string): TreeNode
function TreeNode:add(text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenode.pas#L245
---@return string
---@overload fun(): string
function TreeNode:getText() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenode.pas#L254
---@param value string
---@overload fun(value: string)
function TreeNode:setText(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenode.pas#L280
---@overload fun()
function TreeNode:makeVisible() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenode.pas#L15
---@overload fun()
function TreeNode:delete() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenode.pas#L36
---@param recursive boolean? Defaults to true, so `expand()` with no argument expands the whole subtree.
---@overload fun(recursive?: boolean)
function TreeNode:expand(recursive) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenode.pas#L52
---@param recursive boolean? Defaults to true, so `collapse()` with no argument collapses the whole subtree.
---@overload fun(recursive?: boolean)
function TreeNode:collapse(recursive) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenode.pas#L27
---@overload fun()
function TreeNode:deleteChildren() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenode.pas#L351
---@return TreeNode? Nothing when this is the last node at its level.
---@overload fun(): TreeNode?
function TreeNode:getNextSibling() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenode.pas#L68
---@param index integer
---@return TreeNode
---@overload fun(index: integer): TreeNode
function TreeNode:getItems(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenode.pas#L265
---@param textonly boolean? Defaults to false.
---@return Rect
---@overload fun(textonly?: boolean): Rect
function TreeNode:getDisplayRect(textonly) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenodes.pas#L129
---
--- Pascal class: `TTreeNodes`.
---@class TreeNodes : Object
---@field Count integer Read-only.
---@field Item table<integer, TreeNode> Read-only.
---@field [integer] TreeNode Read-only. Same as `Item[index]`.
local TreeNodes = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenodes.pas#L15
---@overload fun()
function TreeNodes:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenodes.pas#L51
---@return integer
---@overload fun(): integer
function TreeNodes:getCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenodes.pas#L34
---@param index integer
---@return TreeNode
---@overload fun(index: integer): TreeNode
function TreeNodes:getItem(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenodes.pas#L60
---@param text string? Caption of the new node. Defaults to an empty string.
---@return TreeNode
---@overload fun(text?: string): TreeNode
function TreeNodes:add(text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenodes.pas#L104
---@param treenode TreeNode?
---@param text string?
---@return TreeNode
---@overload fun(treenode?: TreeNode, text?: string): TreeNode
function TreeNodes:insert(treenode, text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreenodes.pas#L79
---@param treenode TreeNode?
---@param text string?
---@return TreeNode
---@overload fun(treenode?: TreeNode, text?: string): TreeNode
function TreeNodes:insertBehind(treenode, text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreeview.pas#L154
---
--- Pascal class: `TCustomTreeView`.
---@class TreeView : WinControl
---@field Selected TreeNode? Nil when no node is selected.
---@field Items TreeNodes Read-only.
---@field OnCollapsing CECallback Called as `f(sender, node)` before a node collapses; return false to block the collapse, and only a boolean return is honoured (LuaCaller.pas:862). LCL published property of `TTreeView` - the LCL is not vendored here, but StructuresFrm2.pas:4332 assigns it with a `TTVCollapsingEvent` cast on the `TTreeView` declared at StructuresFrm2.pas:494, and StructuresFrm2.lfm:45 streams it. `TTVCollapsingEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3501), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494.
---@field OnExpanding CECallback Called as `f(sender, node)` before a node expands; return false to block the expansion, and only a boolean return is honoured (LuaCaller.pas:862-863). LCL published property of `TTreeView` - the LCL is not vendored here, but StructuresFrm2.pas:4330 assigns it with a `TTVExpandingEvent` cast and StructuresFrm2.lfm:49 streams it. `TTVExpandingEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3500), so a Lua function can be assigned through the RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494.
---@field MultiSelect boolean Lets more than one node be selected at a time, which is what makes `TreeNode.MultiSelected` useful. LCL published property of `TTreeView` - the LCL is not vendored here, but StructuresFrm2.lfm:34 streams `MultiSelect = True` on the `TTreeView` declared at StructuresFrm2.lfm:16, and `createTreeView` builds a `TCETreeview` descended from `TTreeview` (luatreeview.pas:26, ceguicomponents.pas:20). `treeview_addMetaData` registers no `MultiSelect` entry (luatreeview.pas:154-173), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494).
---@field ReadOnly boolean When true node captions cannot be edited in place. LCL published property of `TTreeView` - the LCL is not vendored here, but StructuresFrm2.lfm:38 streams `ReadOnly = True` on the `TTreeView` declared at StructuresFrm2.lfm:16, and `createTreeView` builds a `TCETreeview` descended from `TTreeview` (luatreeview.pas:26, ceguicomponents.pas:20). `treeview_addMetaData` registers no `ReadOnly` entry (luatreeview.pas:154-173), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494).
---@field Images CustomImageList? Image list the per-node icons are taken from, indexed by `TreeNode.ImageIndex`. Nil when none is assigned. LCL published property of `TTreeView` - the LCL is not vendored here, but scrollTreeView.pas:55 republishes `property Images;` in the real published block that starts at scrollTreeView.pas:32, on the `TTreeView` descendant declared at scrollTreeView.pas:20, and celua.txt:1688 documents `TreeNode.ImageIndex` as `The image to show from the attached ImageList`. `treeview_addMetaData` registers no `Images` entry (luatreeview.pas:154-173), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkClass property is handed back through `luaclass_newClass` at LuaObject.pas:208 and assigned with `SetObjectProp` at LuaObject.pas:291-295); `TCustomImageList` is registered (luacustomimagelist.pas:136), so the result carries the `CustomImageList` metatable.
---@field OnSelectionChanged CECallback Called as `f(sender)` after the selected node changes; the return value is ignored - `TLuaCaller.NotifyEvent` (LuaCaller.pas:423) calls `lua_pcall(L, 1, 0, 0)`. LCL published property of `TTreeView` - the LCL is not vendored here, but celistviewitemeditor.lfm:32 streams `OnSelectionChanged = TreeView1SelectionChanged` on the `TTreeView` declared at celistviewitemeditor.pas:27, a plain ComCtrls/betterControls tree view in the same unit scope `ceguicomponents` resolves `TTreeview` in; scrollTreeView.pas:114 republishes `property OnSelectionChanged;` in the published block that starts at scrollTreeView.pas:32, on the `TTreeView` descendant declared at scrollTreeView.pas:20; and addresslist.pas:2424 assigns `treeview.OnSelectionChanged:=SelectionUpdate`, declared `procedure SelectionUpdate(sender: TObject)` at addresslist.pas:86 - so it is a `TNotifyEvent`, one of the method types LuaCaller registers (LuaCaller.pas:3491). `createTreeView` builds a `TCETreeview` descended from `TTreeview` (luatreeview.pas:26, ceguicomponents.pas:20), and `treeview_addMetaData` registers no `OnSelectionChanged` entry (luatreeview.pas:154-173), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494).
---@field ToolTips boolean Whether hovering a node shows its hint popup; it tracks the `tvoToolTips` member of `Options`. LCL published property of `TTreeView` - the LCL is not vendored here, but formsettingsunit.lfm:42 streams `ToolTips = False` on the `TTreeView` declared at formsettingsunit.lfm:29 - only a published property streams, and that unit does not use `scrollTreeView` - scrollTreeView.pas:76 republishes `property ToolTips;` in the published block that opens at scrollTreeView.pas:32, and Cheat Engine writes it itself at betterControls/newtreeview.pas:29 (`ToolTips:=false;` under dark mode) on the `TNewTreeView=class(TTreeView)` declared at betterControls/newtreeview.pas:11. `createTreeView` builds a `TCETreeview` (luatreeview.pas:26) descended from `TTreeview` (ceguicomponents.pas:20, betterControls/bettercontrols.pas:38), and `treeview_addMetaData` registers no `ToolTips` entry (luatreeview.pas:154-173), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), where a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289.
---@field MultiSelectStyle string How multiple nodes may be selected once `MultiSelect` is on, as a bracketed set string such as `'[msControlSelect,msShiftSelect,msVisibleOnly]'`; assigning takes the same form. Members Cheat Engine's own forms stream: `msControlSelect`, `msShiftSelect`, `msVisibleOnly`, `msSiblingOnly`. LCL published property of `TTreeView` - the LCL is not vendored here, but frmThreadlistunit.lfm:23 streams `MultiSelectStyle = [msControlSelect, msVisibleOnly, msSiblingOnly]` on the `TTreeView` declared at frmThreadlistunit.lfm:16, right after the `MultiSelect = True` at frmThreadlistunit.lfm:22 - only a published property streams, and that unit does not use `scrollTreeView` - and scrollTreeView.pas:125 republishes `property MultiSelectStyle;` right after the `property MultiSelect;` at scrollTreeView.pas:124, in the published block that opens at scrollTreeView.pas:32. `createTreeView` builds a `TCETreeview` (luatreeview.pas:26) descended from `TTreeview` (ceguicomponents.pas:20, betterControls/bettercontrols.pas:38, betterControls/newtreeview.pas:11), and `treeview_addMetaData` registers no `MultiSelectStyle` entry (luatreeview.pas:154-173), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), where a tkSet property is read as a bracketed set string at LuaObject.pas:210 and written at LuaObject.pas:296.
---@field Indent integer Horizontal offset in pixels that each nesting level adds. LCL published property of `TTreeView` - the LCL is not vendored here, but frmEnumerateDLLsUnit.lfm:35 streams `Indent = 19` on the `TTreeView` declared at frmEnumerateDLLsUnit.lfm:26 - only a published property streams, and that unit does not use `scrollTreeView` - and scrollTreeView.pas:56 republishes `property Indent;` in the published block that opens at scrollTreeView.pas:32. `createTreeView` builds a `TCETreeview` (luatreeview.pas:26) descended from `TTreeview` (ceguicomponents.pas:20, betterControls/bettercontrols.pas:38, betterControls/newtreeview.pas:11), and `treeview_addMetaData` registers no `Indent` entry (luatreeview.pas:154-173), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), where a tkInteger property is read at LuaObject.pas:205 and written at LuaObject.pas:274-287.
---@field HideSelection boolean When false the selected node stays highlighted after the tree view loses focus; it tracks the `tvoHideSelection` member of `Options`. LCL published property of `TTreeView` - the LCL is not vendored here, but frmEnumerateDLLsUnit.lfm:34 streams `HideSelection = False` on the `TTreeView` declared at frmEnumerateDLLsUnit.lfm:26 - only a published property streams, that unit does not use `scrollTreeView`, and the same object's `Options` at frmEnumerateDLLsUnit.lfm:43 omits `tvoHideSelection` - and scrollTreeView.pas:53 republishes `property HideSelection;` in the published block that opens at scrollTreeView.pas:32. `createTreeView` builds a `TCETreeview` (luatreeview.pas:26) descended from `TTreeview` (ceguicomponents.pas:20, betterControls/bettercontrols.pas:38, betterControls/newtreeview.pas:11), and `treeview_addMetaData` registers no `HideSelection` entry (luatreeview.pas:154-173), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), where a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289.
---@field ShowRoot boolean Whether the connecting lines of the top-level nodes are drawn; it tracks the `tvoShowRoot` member of `Options`. LCL published property of `TTreeView` - the LCL is not vendored here, but formsettingsunit.lfm:40 streams `ShowRoot = False` on the `TTreeView` declared at formsettingsunit.lfm:29 - only a published property streams, that unit does not use `scrollTreeView`, and the same object's `Options` at formsettingsunit.lfm:45 omits `tvoShowRoot` - and scrollTreeView.pas:70 republishes `property ShowRoot;` in the published block that opens at scrollTreeView.pas:32. `createTreeView` builds a `TCETreeview` (luatreeview.pas:26) descended from `TTreeview` (ceguicomponents.pas:20, betterControls/bettercontrols.pas:38, betterControls/newtreeview.pas:11), and `treeview_addMetaData` registers no `ShowRoot` entry (luatreeview.pas:154-173), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), where a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289.
---@field RowSelect boolean When true a selection highlights the whole row instead of just the node caption; it tracks the `tvoRowSelect` member of `Options`. LCL published property of `TTreeView` - the LCL is not vendored here, but frmEnumerateDLLsUnit.lfm:39 streams `RowSelect = True` on the `TTreeView` declared at frmEnumerateDLLsUnit.lfm:26 - only a published property streams, that unit does not use `scrollTreeView`, and the same object's `Options` at frmEnumerateDLLsUnit.lfm:43 carries `tvoRowSelect` - and scrollTreeView.pas:64 republishes `property RowSelect;` in the published block that opens at scrollTreeView.pas:32. `createTreeView` builds a `TCETreeview` (luatreeview.pas:26) descended from `TTreeview` (ceguicomponents.pas:20, betterControls/bettercontrols.pas:38, betterControls/newtreeview.pas:11), and `treeview_addMetaData` registers no `RowSelect` entry (luatreeview.pas:154-173), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), where a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289.
---@field Options string The `TTreeViewOptions` set that drives most of the tree view's appearance and behaviour, read back as a bracketed set string and assigned in the same form, e.g. `'[tvoAutoItemHeight,tvoReadOnly,tvoRowSelect,tvoShowButtons,tvoShowLines,tvoShowRoot,tvoToolTips]'`. Members Cheat Engine's own forms stream: `tvoAllowMultiselect`, `tvoAutoItemHeight`, `tvoHideSelection`, `tvoKeepCollapsedNodes`, `tvoReadOnly`, `tvoRightClickSelect`, `tvoRowSelect`, `tvoShowButtons`, `tvoShowLines`, `tvoShowRoot`, `tvoThemedDraw`, `tvoToolTips`. LCL published property of `TTreeView` - the LCL is not vendored here, but frmEnumerateDLLsUnit.lfm:43 streams `Options = [tvoAutoItemHeight, tvoKeepCollapsedNodes, tvoReadOnly, tvoRowSelect, tvoShowButtons, tvoShowLines, tvoShowRoot, tvoToolTips]` on the `TTreeView` declared at frmEnumerateDLLsUnit.lfm:26 - only a published property streams, and that unit does not use `scrollTreeView` - and scrollTreeView.pas:119 republishes `property Options;` in the published block that opens at scrollTreeView.pas:32. `createTreeView` builds a `TCETreeview` (luatreeview.pas:26) descended from `TTreeview` (ceguicomponents.pas:20, betterControls/bettercontrols.pas:38, betterControls/newtreeview.pas:11), and `treeview_addMetaData` registers no `Options` entry (luatreeview.pas:154-173), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), where a tkSet property is read as a bracketed set string at LuaObject.pas:210 and written at LuaObject.pas:296.
---@field DefaultItemHeight integer Height in pixels a node is drawn at. LCL published property of `TTreeView` - the LCL is not vendored here, but ServiceDescriptorTables.lfm:22 streams `DefaultItemHeight = 18` on the `TTreeView` declared at ServiceDescriptorTables.lfm:16 - only a published property streams, and that unit does not use `scrollTreeView` - scrollTreeView.pas:46 republishes `property DefaultItemHeight;` in the published block that opens at scrollTreeView.pas:32, and Cheat Engine reads it itself at addresslist.pas:2378 (`treeview.Indent:=Treeview.DefaultItemHeight`) and MainUnit.pas:8929. `createTreeView` builds a `TCETreeview` (luatreeview.pas:26) descended from `TTreeview` (ceguicomponents.pas:20, betterControls/bettercontrols.pas:38, betterControls/newtreeview.pas:11), and `treeview_addMetaData` registers no `DefaultItemHeight` entry (luatreeview.pas:154-173), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), where a tkInteger property is read at LuaObject.pas:205 and written at LuaObject.pas:274-287.
---@field ScrollBars string|integer Which scroll bars the control shows. Reads back the `TScrollStyle` member name, e.g. `'ssVertical'`; assigning takes that name or the matching integer (LuaObject.pas:213, LuaObject.pas:299-307). LCL published property of `TTreeView` - the LCL is not vendored here, but formsettingsunit.lfm:39 streams `ScrollBars = ssVertical` on the `TTreeView` declared at formsettingsunit.lfm:29 - only a published property streams, and that unit does not use `scrollTreeView` - scrollTreeView.pas:65 republishes `property ScrollBars;` in the published block that opens at scrollTreeView.pas:32, and Cheat Engine writes it itself at addresslist.pas:2509. `createTreeView` builds a `TCETreeview` (luatreeview.pas:26) descended from `TTreeview` (ceguicomponents.pas:20, betterControls/bettercontrols.pas:38, betterControls/newtreeview.pas:11), and `treeview_addMetaData` registers no `ScrollBars` entry (luatreeview.pas:154-173), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494).
---@field RightClickSelect boolean When true a right click selects the node under the cursor; it tracks the `tvoRightClickSelect` member of `Options`. LCL published property of `TTreeView` - the LCL is not vendored here, but ServiceDescriptorTables.lfm:26 streams `RightClickSelect = True` on the `TTreeView` declared at ServiceDescriptorTables.lfm:16 - only a published property streams, that unit does not use `scrollTreeView`, and the same object's `Options` at ServiceDescriptorTables.lfm:29 carries `tvoRightClickSelect` - scrollTreeView.pas:63 republishes `property RightClickSelect;` in the published block that opens at scrollTreeView.pas:32, and Cheat Engine writes it itself at addresslist.pas:2408. `createTreeView` builds a `TCETreeview` (luatreeview.pas:26) descended from `TTreeview` (ceguicomponents.pas:20, betterControls/bettercontrols.pas:38, betterControls/newtreeview.pas:11), and `treeview_addMetaData` registers no `RightClickSelect` entry (luatreeview.pas:154-173), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), where a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289.
local TreeView = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreeview.pas#L36
---@return TreeNodes
---@overload fun(): TreeNodes
function TreeView:getItems() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreeview.pas#L45
---@return TreeNode? Nothing when no node is selected.
---@overload fun(): TreeNode?
function TreeView:getSelected() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreeview.pas#L54
---@param value TreeNode? nil clears the selection.
---@overload fun(value?: TreeNode)
function TreeView:setSelected(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreeview.pas#L65
---@overload fun()
function TreeView:fullCollapse() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreeview.pas#L71
---@overload fun()
function TreeView:fullExpand() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreeview.pas#L77
---@overload fun()
function TreeView:beginUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreeview.pas#L83
---@overload fun()
function TreeView:endUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreeview.pas#L90
---
--- Returns nothing. The unconditional `result:=0` at luatreeview.pas:119 overwrites
--- every branch's return count, so the success flag and the error message the
--- function pushes are discarded. Use `loadFromToFile`'s return values as the model
--- for what this one was meant to return.
---@param filename string
---@overload fun(filename: string)
function TreeView:saveToFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luatreeview.pas#L122
---
--- Returns `true` on success (luatreeview.pas:132-133), or `false` plus the exception
--- message when the load failed (luatreeview.pas:137-139). Called with anything other
--- than exactly one argument it returns `nil` plus "Incorrect number of parameters"
--- instead (luatreeview.pas:145-147).
---@param filename string
---@return boolean? success Nil when the argument count was not exactly one.
---@return string? errormessage
---@overload fun(filename: string): boolean?, string?
function TreeView:loadFromToFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L795
---
--- Pascal class: `TCustomVirtualStringTree`, `TVirtualStringTree`.
---@class VirtualStringTree : WinControl
---@field FullRowSelect boolean
---@field FocusedNode userdata?
---@field FocusedColumn integer
---@field NodeParent table<userdata, userdata?>
---@field NodeHeight table<userdata, integer>
---@field HasChildren table<userdata, boolean>
---@field NodeChildCount table<userdata, integer> Read-only.
---@field NodeIndex table<userdata, integer> Read-only.
---@field Selected table<userdata, boolean>
---@field Checked table<userdata, boolean>
---@field Expanded table<userdata, boolean>
---@field Header VTHeader
---@field TreeOptions Object The tree's `TStringTreeOptions`, reached through the RTTI fallback. The class is not registered, so it gets the plain `Object` metatable and its published set properties (`AnimationOptions`, `AutoOptions`, `MiscOptions`, `PaintOptions`, `SelectionOptions`, `StringOptions`) are read and written as set strings, e.g. `tree.TreeOptions.SelectionOptions='[toFullRowSelect,toMultiSelect]'`. `FullRowSelect` is a shortcut for `toFullRowSelect` in `SelectionOptions`.
---@field OnDrawText CECallback `function(sender, canvas, node, column, celltext, cellrect): boolean`, return true to let the normal painting run as well, false to draw the cell entirely yourself. Published event, assigned through the RTTI fallback.
---@field OnPaintText CECallback `function(sender, canvas, node, column, texttype)`, called before the cell text is painted; use it to change the canvas font or paint a background. Any return value is ignored. Published event, assigned through the RTTI fallback.
---@field OnExpanding CECallback `function(sender, node): boolean`, return true to allow the node to expand; also fired by assigning `Expanded[node]=true`. Published event, assigned through the RTTI fallback.
---@field OnFreeNode CECallback `function(sender, node)`, called when a node is deleted. Published event, assigned through the RTTI fallback.
---@field OnInitNode CECallback `function(sender, parentnode, node, initialStates): string`, called when a node is created; `initialStates` arrives as a comma separated set string and the returned string is written back into it. Members: `ivsDisabled`, `ivsExpanded`, `ivsHasChildren`, `ivsMultiline`, `ivsSelected`, `ivsFiltered`, `ivsReInit`. Published event, assigned through the RTTI fallback.
---@field OnGetText CECallback `function(sender, nodeindex, columnindex, node, texttype): string`, return the text the cell should show; `nodeindex` is -1 when `node` is nil. Published event, assigned through the RTTI fallback.
---@field NodeDataSize integer Bytes reserved for each node's data. Published property of the tree, reached through the RTTI fallback. Until it is set, `getNodeDataAsInteger`/`setNodeDataAsInteger` fail with 'This tree has no datasize assigned for nodes' and `getNodeData`/`setNodeData` work on a zero-length buffer.
---@field DefaultText string Text a cell falls back to when `OnGetText` is not assigned or leaves the string empty. Published property of the VirtualTrees package's tree class - the package is not vendored in this repository, but accessedmemory.lfm:186 streams `DefaultText = 'Node'` on the `TLazVirtualStringTree` declared at accessedmemory.lfm:180, in the same block as the `Header.Options` (:201), `TreeOptions.SelectionOptions` (:205) and `OnGetText` (:208) declared above. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
local VirtualStringTree = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L43
---@overload fun()
function VirtualStringTree:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L53
---@overload fun()
function VirtualStringTree:beginUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L62
---@overload fun()
function VirtualStringTree:endUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L71
---@return userdata
---@param parent userdata?
---@overload fun(parent?: userdata): userdata
function VirtualStringTree:addChild(parent) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L112
---@param node userdata
---@overload fun(node: userdata)
function VirtualStringTree:addToSelection(node) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L127
---@param node userdata
---@overload fun(node: userdata)
function VirtualStringTree:removeFromSelection(node) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L160
---@param node userdata
---@return userdata?
---@overload fun(node: userdata): userdata?
function VirtualStringTree:getNodeParent(node) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L142
---@param node userdata
---@return integer? level Nothing when `node` is nil.
---@overload fun(node: userdata): integer?
function VirtualStringTree:getNodeLevel(node) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L415
---@return userdata[]
---@overload fun(): userdata[]
function VirtualStringTree:enumSelectedNodes() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L445
---@return userdata[]
---@overload fun(): userdata[]
function VirtualStringTree:enumCheckedNodes() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L475
---@param node userdata
---@return integer?
---@return string?
---@overload fun(node: userdata): integer?, string?
function VirtualStringTree:getNodeDataAsInteger(node) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L512
---@param node userdata
---@param integer integer
---@return true? success
---@return string? errorMessage
---@overload fun(node: userdata, integer: integer): true?, string?
function VirtualStringTree:setNodeDataAsInteger(node, integer) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L579
---@param node userdata
---@return ByteTable
---@overload fun(node: userdata): ByteTable
function VirtualStringTree:getNodeData(node) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L594
---@param node userdata
---@param data ByteTable
---@overload fun(node: userdata, data: ByteTable)
function VirtualStringTree:setNodeData(node, data) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L554
---@return userdata
---@param node userdata
---@overload fun(node: userdata): userdata
function VirtualStringTree:getNodeDataPointer(node) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L88
---@param node userdata
---@overload fun(node: userdata)
function VirtualStringTree:deleteNode(node) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L103
---@overload fun()
function VirtualStringTree:deleteSelectedNodes() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L569
---@return userdata rootNode
---@overload fun(): userdata
function VirtualStringTree:getRootNode() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L686
---@param node userdata
---@return userdata?
---@overload fun(node: userdata): userdata?
function VirtualStringTree:getFirstChild(node) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L709
---@param node userdata
---@return userdata?
---@overload fun(node: userdata): userdata?
function VirtualStringTree:getNextSibling(node) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L730
---@param fname string
---@return boolean
---@return string?
---@overload fun(fname: string): boolean, string?
function VirtualStringTree:saveToFile(fname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L755
---@param fname string
---@return boolean
---@return string?
---@overload fun(fname: string): boolean, string?
function VirtualStringTree:loadFromFile(fname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L780
---@param node userdata
---@return integer
---@overload fun(node: userdata): integer
function VirtualStringTree:absoluteIndex(node) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L881
---
--- Pascal class: `TVirtualTreeColumn`.
---@class VirtualTreeColumn : Object
---@field Visible boolean
---@field Options string Column flags as a bracketed set string, e.g. `'[coEnabled,coResizable,coVisible]'`. Members: `coAllowClick`, `coDraggable`, `coEnabled`, `coParentBidiMode`, `coParentColor`, `coResizable`, `coShowDropMark`, `coVisible`, `coAutoSpring`, `coFixed`, `coSmartResize`, `coAllowFocus`, `coDisableAnimatedResize`, `coWrapCaption`, `coUseCaptionAlignment`, `coEditable`. `Visible` is a shortcut for `coVisible`. Published property, reached through the RTTI fallback.
---@field Text string The column caption, as set by `VirtualTreeColumns:add`. Published property, reached through the RTTI fallback.
---@field Position integer The column's left-to-right display position, independent of its index in the collection. Published property of the VirtualTrees package's `TVirtualTreeColumn` - the package is not vendored in this repository, but accessedmemory.lfm:191 streams `Position = 0` and accessedmemory.lfm:197 streams `Position = 1` on the `Header.Columns` items (accessedmemory.lfm:188) of the `TLazVirtualStringTree` declared at accessedmemory.lfm:180, between the `Options` (:190) and `Text` (:192) declared above. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
---@field Width integer Column width in pixels. Published property of the VirtualTrees package's `TVirtualTreeColumn` - the package is not vendored in this repository, but accessedmemory.lfm:193 streams `Width = 174` and accessedmemory.lfm:199 streams `Width = 155` on the `Header.Columns` items (accessedmemory.lfm:188) of the `TLazVirtualStringTree` declared at accessedmemory.lfm:180, alongside the `Options` (:190) and `Text` (:192) declared above. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
local VirtualTreeColumn = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L905
---
--- Pascal class: `TVirtualTreeColumns`.
---@class VirtualTreeColumns : Collection
---@field [integer] VirtualTreeColumn Read-only. Same as `Items[index]` (default array property inherited from `Collection`).
---@field Items table<integer, VirtualTreeColumn> Read-only. Narrows `Collection.Items`: the objects are `TVirtualTreeColumn`, which carries its own metatable.
local VirtualTreeColumns = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L887
---
--- Forces `hoVisible` into the owning header's `Options` before adding the column
--- (luavirtualstringtree.pas:893), so the first `add` makes the header visible even when
--- `Header.Options` did not contain `hoVisible`.
---@param Text string? Caption for the new column. The presence test never fails: `VirtualTreeColumns_add` pushes the new column with `luaclass_newClass` (luavirtualstringtree.pas:896) before testing `lua_gettop(L)>=1` (luavirtualstringtree.pas:898), so omitting `Text` assigns `Lua_ToString` of that full userdata, which is `''` (LuaHandler.pas:413-425), instead of leaving the caption untouched.
---@return VirtualTreeColumn
---@overload fun(Text?: string): VirtualTreeColumn
function VirtualTreeColumns:add(Text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luavirtualstringtree.pas#L937
---
--- Pascal class: `TVTHeader`. `VTHeader_addMetaData` registers only `AutoResize`
--- (luavirtualstringtree.pas:940); `AutoSizeIndex`, `Columns` and `Options` are published
--- properties of laz.VirtualTrees' `TVTHeader` - that package is not vendored in this
--- repository - reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks
--- `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
---@class VTHeader : Object
---@field AutoResize boolean
---@field AutoSizeIndex integer Index of the column resized while `AutoResize` (`hoAutoResize`) is on. Published property of laz.VirtualTrees' `TVTHeader` - not vendored here, but accessedmemory.lfm:187 streams `Header.AutoSizeIndex = 1` on the `TLazVirtualStringTree` declared at accessedmemory.lfm:180, and .lfm streaming only reaches published properties. A tkInteger property is read at LuaObject.pas:205 and written at LuaObject.pas:274.
---@field Columns VirtualTreeColumns Published property of laz.VirtualTrees' `TVTHeader` - not vendored here, but accessedmemory.lfm:188 streams `Header.Columns` on the `TLazVirtualStringTree` declared at accessedmemory.lfm:180. A tkClass property is handed back through `luaclass_newClass` at LuaObject.pas:208, and `TVirtualTreeColumns` is registered (luavirtualstringtree.pas:957), so the result carries the `VirtualTreeColumns` metatable.
---@field Options string Header flags as a bracketed set string, e.g. `'[hoVisible,hoColumnResize]'`. Members: `hoAutoResize`, `hoColumnResize`, `hoDblClickResize`, `hoDrag`, `hoHotTrack`, `hoOwnerDraw`, `hoRestrictDrag`, `hoShowHint`, `hoShowImages`, `hoShowSortGlyphs`, `hoVisible`, `hoAutoSpring`, `hoFullRepaintOnResize`, `hoDisableAnimatedResize`, `hoHeightResize`, `hoHeightDblClickResize`, `hoHeaderClickAutoSort`. `AutoResize` is a shortcut for `hoAutoResize` (luavirtualstringtree.pas:929-932). Published property of laz.VirtualTrees' `TVTHeader` - not vendored here, but accessedmemory.lfm:201 streams `Header.Options = [hoAutoResize, hoColumnResize, hoDrag, hoShowSortGlyphs, hoVisible]` and `createVirtualStringTree` itself does `tv.Header.Options:=tv.Header.Options-[hoDrag]` at luavirtualstringtree.pas:35. A tkSet property is read as a set string at LuaObject.pas:210 and written at LuaObject.pas:296.
---@field MainColumn integer Index of the column the tree part - the expand/collapse buttons and the indentation - is drawn in. Published property of laz.VirtualTrees' `TVTHeader`; that package is not vendored in this repository and nothing else here references the name, so the evidence is Cheat Engine's own documentation, which lists it in the `Header class:` property block (celua.txt:3992) at celua.txt:3996, alongside `AutoSizeIndex` (celua.txt:3994), `Columns` (celua.txt:3997) and `Options` (celua.txt:3998). Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (a tkInteger property is read at LuaObject.pas:205 and written at LuaObject.pas:274).
local VTHeader = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaheadersections.pas#L39
---
--- Pascal class: `THeaderSection`.
---
--- `THeaderSection` is never passed to `luaclass_register` - luaheadersections.pas:85 registers
--- only `THeaderSections` - so a header section userdata gets `TCollectionItem`'s metatable,
--- picked by `findBestClassForObject` (LuaClass.pas:136). The fields below are published
--- properties of the LCL's `THeaderSection`, and the LCL is not vendored in this repository;
--- they resolve through the `lua_getProperty` RTTI fallback `luaclass_index` installs at
--- LuaClass.pas:578. They are the ones `StructuresFrm2.lfm:62` streams onto a `Sections` item
--- and that Cheat Engine itself reads and writes (MainUnit.pas:8913, StructuresFrm2.pas:3322).
---@class HeaderSection : CollectionItem
---@field Alignment string|integer LCL published property. Reads back the `TAlignment` member name, `'taLeftJustify'`, `'taRightJustify'` or `'taCenter'`; assigning takes that name or the matching integer.
---@field MinWidth integer LCL published property.
---@field Text string LCL published property. The caption drawn in the section.
---@field Visible boolean LCL published property.
---@field Width integer LCL published property.
---@field ImageIndex integer LCL published property. Index into the header control's image list for the glyph drawn in the section. The LCL is not vendored here and nothing else in this repository references the name, so the evidence is Cheat Engine's own documentation, which lists it in the `HeaderSection class:` property block (celua.txt:1655) at celua.txt:1658, right after `Alignment` (celua.txt:1657). Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (a tkInteger property is read at LuaObject.pas:205 and written at LuaObject.pas:274).
---@field MaxWidth integer LCL published property. Upper bound on the section's width. The LCL is not vendored here, but Cheat Engine drives it itself at disassemblerviewunit.pas:308 and disassemblerviewunit.pas:312 (`header.Sections[3].MaxWidth`, on the `THeaderControl` declared at disassemblerviewunit.pas:48) and celua.txt:1659 lists it on the HeaderSection class.
local HeaderSection = {}