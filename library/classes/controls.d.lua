---@meta
---
--- classes / controls
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaButton.pas#L51
---
--- Pascal class: `TButton`.
---@class Button : WinControl
---@field ModalResult integer
---@field Cancel boolean Makes this the button Escape activates on the owning form. LCL published property of `TButton` - the LCL is not vendored here, but frmBreakpointConditionUnit.lfm:41 streams `Cancel = True` on the `TButton` declared at frmBreakpointConditionUnit.lfm:32, and `createButton` builds a `TButton` (LuaButton.pas:25) of the class bound at LuaButton.pas:68. `button_addMetaData` registers only `ModalResult` (LuaButton.pas:51-58), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494).
---@field Default boolean Makes this the button Enter activates on the owning form. LCL published property of `TButton` - the LCL is not vendored here, but frmBreakpointConditionUnit.lfm:28 streams `Default = True` on the `TButton` declared at frmBreakpointConditionUnit.lfm:15, and `createButton` builds a `TButton` (LuaButton.pas:25) of the class bound at LuaButton.pas:68. `button_addMetaData` registers only `ModalResult` (LuaButton.pas:51-58), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494).
local Button = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaButton.pas#L32
---@return integer
---@overload fun(): integer
function Button:getModalResult() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaButton.pas#L41
---@param value integer
---@overload fun(value: integer)
function Button:setModalResult(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacalendar.pas#L162
---
--- Pascal class: `TCustomCalendar`.
---@class Calendar : WinControl
---@field Date string
---@field DateTime number The date as a `TDateTime`, days since December 30 1899. LCL published property of `TCalendar`, the class `createCalendar` builds (luacalendar.pas:34) - the LCL is not vendored here and no .lfm in this repository streams it, but `calendar_getDate` reads `cal.DateTime` (luacalendar.pas:82) and `calendar_setDate` writes it (luacalendar.pas:97) on the `cal: TCalendar` declared at luacalendar.pas:78 and luacalendar.pas:89, and Cheat Engine's own documentation lists it for this class at `Cheat Engine/bin/celua.txt:1447`, under the `Calendar Class:` heading at celua.txt:1442. `Calendar_addMetaData` registers only `Date` (luacalendar.pas:162-166); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494, where a `tkFloat` property is read at LuaObject.pas:207 and written at LuaObject.pas:290.
local Calendar = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacalendar.pas#L67
---@return string
---@overload fun(): string
function Calendar:getDateLocalFormat() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacecustombutton.pas#L41
---
--- Pascal class: `TCECustomButton`. The fields below are published Pascal properties
--- (betterControls/cecustombutton.pas:98), reached through the `lua_getProperty` RTTI
--- fallback `luaclass_index` installs at LuaClass.pas:578.
---@class CECustomButton : CustomControl
---@field ShowPrefix boolean Render the first single `&` per line as an underscore and `&&` as `&`.
---@field Alignment string|integer Reads back the `TAlignment` member name, `taLeftJustify`, `taRightJustify` or `taCenter`; assigning takes that name or the matching integer.
---@field DrawBorder boolean
---@field BorderColor integer
---@field BorderSize integer
---@field ButtonColor integer
---@field ButtonHighlightedColor integer Used while the mouse hovers over the button.
---@field ButtonDownColor integer Used while the mouse is held down on the button.
---@field RoundingX integer
---@field RoundingY integer
---@field CustomDrawn boolean Do the drawing yourself in `OnPaint`.
---@field GrowFont boolean Resize the font until the caption fits.
---@field FramesPerSecond integer How often `OnPaint` fires while the animator timer runs.
---@field ButtonAnimationSpeed integer Duration of the enter/leave animation.
---@field DrawFocusRect boolean
---@field FocusedSize integer Width of the focus roundrect.
---@field FocusElipseColor integer
---@field Scaled boolean
local CECustomButton = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacecustombutton.pas#L18
---@overload fun()
function CECustomButton:startAnimatorTimer() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacecustombutton.pas#L24
---@overload fun()
function CECustomButton:stopAnimatorTimer() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L179
---
--- Pascal class: `TCheat`. The fields below are published Pascal properties, reached
--- through the `lua_getProperty` RTTI fallback in `luaclass_index`.
---@class CheatComponent : WinControl
---@field CheatNr integer
---@field Textcolor integer
---@field Editleft integer
---@field Editwidth integer
---@field Editvalue string
---@field Hotkey string
---@field Description string
---@field Hotkeyleft integer
---@field Descriptionleft integer
---@field Activated boolean
---@field Activationcolor integer
---@field ShowHotkey boolean
---@field HasEditBox boolean
---@field HasCheckbox boolean
local CheatComponent = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L27
---@param state boolean
---@param deactivatetime integer?
---@overload fun(state: boolean, deactivatetime?: integer)
function CheatComponent:setActive(state, deactivatetime) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L17
---@return boolean
---@overload fun(): boolean
function CheatComponent:getActive() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheckbox.pas#L128
---
--- Pascal class: `TCustomCheckbox`.
---@class CheckBox : WinControl
---@field AllowGrayed boolean
---@field State integer
---@field OnChange CECallback
---@field Checked boolean LCL published property of the checkbox class (`MainUnit.lfm:345` streams it on a `TCheckBox`; the LCL is not vendored here), reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 - `checkbox_addMetaData` registers no `Checked` property.
---@field Alignment string|integer Which side of the box the caption sits on. Reading yields the enumeration member name, e.g. `'taLeftJustify'`; assigning takes that name or the matching ordinal. LCL published property of the checkbox class - the LCL is not vendored here, but MainUnit.lfm:1223 streams `Alignment = taLeftJustify` on the `TCheckBox` declared at MainUnit.lfm:1211 and .lfm streaming only reaches published properties, and `createCheckBox` builds a `TCECheckBox` (LuaCheckbox.pas:33), which is `class(TCheckBox)` (ceguicomponents.pas:477). `checkbox_addMetaData` registers no property for it (LuaCheckbox.pas:128-142); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. `lua_getProperty` has no `tkEnumeration` arm, so it falls into the default branch at LuaObject.pas:213-214 and reads back as the member name, while assigning goes through the `tkEnumeration` arm at LuaObject.pas:299-308.
local CheckBox = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheckbox.pas#L41
---@return boolean
---@overload fun(): boolean
function CheckBox:getAllowGrayed() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheckbox.pas#L50
---@param value boolean
---@overload fun(value: boolean)
function CheckBox:setAllowGrayed(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheckbox.pas#L61
---@return integer
---@overload fun(): integer
function CheckBox:getState() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheckbox.pas#L70
---@param value integer
---@overload fun(value: integer)
function CheckBox:setState(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheckbox.pas#L91
---@param value CECallback? nil clears the handler.
---@overload fun(value?: CECallback)
function CheckBox:setOnChange(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheckbox.pas#L82
---@return CECallback|nil
---@overload fun(): CECallback|nil
function CheckBox:getOnChange() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListbox.pas#L148
---
--- Pascal class: `TCustomListBox`.
---@class ListBox : WinControl
---@field Items Strings
---@field ItemIndex integer
---@field Canvas Canvas Read-only.
---@field Selected table<integer, boolean>
---@field MultiSelect boolean Lets more than one item be selected at a time, which is what makes `Selected` (LuaListbox.pas:163) useful. Published property of the LCL's `TListBox`, reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. The LCL is not vendored here, but `createListBox` builds a `TListBox` (LuaListbox.pas:34) and Cheat Engine streams the property onto its own list boxes, e.g. frmDisassemblyscanunit.lfm:31 and frmCodecaveScannerUnit.lfm:204.
---@field OnDrawItem CECallback Called as `f(sender, index, rect, state)` to draw one item; the return value is ignored (LuaCaller.pas:1692). `rect` is a `Rect` table and `state` is a `TOwnerDrawState` set rendered as a bare comma separated string without brackets, e.g. `'odSelected,odFocused'` (LuaCaller.pas:1705). Fires only while the box's `Style` is an owner-draw style. LCL published property of `TListBox` - the LCL is not vendored here, but ProcessWindowUnit.lfm:173 streams it on the `TListBox` declared at :163, whose `Style` is `lbOwnerDrawFixed` (:177). `TDrawItemEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3550), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494.
---@field ItemHeight integer Height in pixels of one item; 0 lets the widgetset size rows from the font. Needed when `Style` is an owner-draw style. LCL published property of `TListBox` - the LCL is not vendored here, but ProcessWindowUnit.lfm:171 streams `ItemHeight = 0` on the `TListBox` declared at ProcessWindowUnit.lfm:163, and Cheat Engine assigns it at ProcessWindowUnit.pas:1206 and reads it at frmselectionlistunit.pas:175. `listbox_addMetaData` registers no property for it (LuaListbox.pas:148-164); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494, which handle a `tkInteger` property at LuaObject.pas:205 and LuaObject.pas:274.
---@field Style string|integer How the box draws its items, a `TListBoxStyle` member. Reading yields the member name, e.g. `'lbOwnerDrawFixed'`; assigning takes that name or the matching ordinal. `OnDrawItem` only fires while this is an owner-draw style. LCL published property of `TListBox` - the LCL is not vendored here, but ProcessWindowUnit.lfm:177 streams `Style = lbOwnerDrawFixed` on the `TListBox` declared at ProcessWindowUnit.lfm:163. `listbox_addMetaData` registers no property for it (LuaListbox.pas:148-164); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. `lua_getProperty` has no `tkEnumeration` arm, so it falls into the default branch at LuaObject.pas:213-214 and reads back as the member name, while assigning goes through the `tkEnumeration` arm at LuaObject.pas:299-307.
---@field OnSelectionChange CECallback Called as `f(sender, user)` when the highlighted item changes; `user` is the LCL's `User` flag, pushed as a boolean (LuaCaller.pas:414), and the return value is ignored - `TLuaCaller.SelectionChangeEvent` calls `lua_pcall(Luavm, 2, 0, 0)` (LuaCaller.pas:416). LCL published property of `TListBox` - the LCL is not vendored here, but ceguicomponents.pas:279 transcribes it in `TListBox`'s published list (the commented-out block ceguicomponents.pas:236-295 that follows `type TCEListBox=class(TListBox);` at ceguicomponents.pas:235), frmcr3switcherunit.lfm:49 streams `OnSelectionChange = lbCR3ListSelectionChange` on the `TListBox` declared at frmcr3switcherunit.lfm:30 whose handler at frmcr3switcherunit.pas:29 has the matching `(Sender: TObject; User: boolean)` signature, and frameHotkeyConfigUnit.lfm:74 does the same on the `TListBox` declared at frameHotkeyConfigUnit.lfm:30 (handler at frameHotkeyConfigUnit.pas:60). `TSelectionChangeEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3492), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494 (tkMethod is written at LuaObject.pas:297, and the branch for this type is LuaObject.pas:456-457) and read back through the `lua_getProperty` fallback at LuaClass.pas:578.
---@field ExtendedSelect boolean Only meaningful while `MultiSelect` is true: when true a shift-click or drag extends the selection as a range, when false each click toggles a single item. LCL published property of `TListBox` - the LCL is not vendored here, but frameHotkeyConfigUnit.lfm:36 streams `ExtendedSelect = False` on the `TListBox` declared at frameHotkeyConfigUnit.lfm:30, and ceguicomponents.pas:249 transcribes it in `TListBox`'s published list (the commented-out block ceguicomponents.pas:236-295 that follows `type TCEListBox=class(TListBox);` at ceguicomponents.pas:235). `createListBox` builds a `TListBox` (LuaListbox.pas:34). `listbox_addMetaData` registers no property for it (LuaListbox.pas:148-164); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289).
---@field TopIndex integer Index of the item drawn at the top of the visible area; assigning it scrolls the box without changing the selection. LCL published property of `TListBox` - the LCL is not vendored here, but ceguicomponents.pas:293 transcribes it in `TListBox`'s published list (the commented-out block ceguicomponents.pas:236-295 that follows `type TCEListBox=class(TListBox);` at ceguicomponents.pas:235), and Cheat Engine assigns it at debugeventhandler.pas:2745 on `lbDebugEvents`, the `TListBox` declared at frmDebugEventsUnit.pas:26. `createListBox` builds a `TListBox` (LuaListbox.pas:34). `listbox_addMetaData` registers no property for it (LuaListbox.pas:148-164); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494, which handle a `tkInteger` property at LuaObject.pas:205 and LuaObject.pas:274.
---@field Sorted boolean When true the box keeps its items in alphabetical order and an added string is inserted in sorted position rather than appended. LCL published property of `TListBox` - the LCL is not vendored here, but ceguicomponents.pas:289 transcribes it in `TListBox`'s published list (the commented-out block ceguicomponents.pas:236-295 that follows `type TCEListBox=class(TListBox);` at ceguicomponents.pas:235), and Cheat Engine writes it itself at processlist.pas:342 on the `ProcessList: TListBox` parameter declared at processlist.pas:328, and at CEFuncProc.pas:2246. `createListBox` builds a `TListBox` (LuaListbox.pas:34). `listbox_addMetaData` registers no property for it (LuaListbox.pas:148-164); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289).
---@field Options string The published `Options` set, read back as a bracketed set string and assigned in the same form; Cheat Engine's own list boxes stream it empty, `'[]'`. LCL published property of `TListBox` - the LCL is not vendored here and neither celua.txt nor bin/defines.lua names the set's members, but frameHotkeyConfigUnit.lfm:75 streams `Options = []` on the `TListBox` declared at frameHotkeyConfigUnit.lfm:30, .lfm streaming only reaches published properties, and `createListBox` builds a `TListBox` (LuaListbox.pas:34). `listbox_addMetaData` registers no property for it (LuaListbox.pas:148-164); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494, whose tkSet arms are LuaObject.pas:210 and LuaObject.pas:296.
---@field Columns integer Number of columns the items are laid out across; 0 keeps them in one column. LCL published property of `TListBox` - the LCL is not vendored here and no .lfm in this repository streams it on a list box, but ceguicomponents.pas:244 transcribes it in `TListBox`'s published list (the commented-out block ceguicomponents.pas:236-295 that follows `type TCEListBox=class(TListBox);` at ceguicomponents.pas:235), and `createListBox` builds a `TListBox` (LuaListbox.pas:34). `listbox_addMetaData` registers no property for it (LuaListbox.pas:148-164); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494, which handle a `tkInteger` property at LuaObject.pas:205 and LuaObject.pas:274.
---@field BorderStyle string|integer Border drawn around the list, a `TBorderStyle` member. Reading yields the member name, `'bsNone'` or `'bsSingle'`; assigning takes that name or the matching ordinal. LCL published property of `TListBox` - the LCL is not vendored here, but ceguicomponents.pas:241 transcribes it in `TListBox`'s published list (the commented-out block ceguicomponents.pas:236-295 that follows `type TCEListBox=class(TListBox);` at ceguicomponents.pas:235), and ProcessWindowUnit.lfm:170 streams `BorderStyle = bsNone` on the `TListBox` declared at ProcessWindowUnit.lfm:163. `createListBox` builds a `TListBox` (LuaListbox.pas:34). `listbox_addMetaData` registers no property for it (LuaListbox.pas:148-164); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. `lua_getProperty` has no `tkEnumeration` arm, so it falls into the default branch at LuaObject.pas:213-214 and reads back as the member name, while assigning goes through the `tkEnumeration` arm at LuaObject.pas:299-307.
local ListBox = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListbox.pas#L42
---@overload fun()
function ListBox:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListbox.pas#L51
---@overload fun()
function ListBox:clearSelection() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListbox.pas#L60
---@overload fun()
function ListBox:selectAll() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListbox.pas#L70
---@return Strings
---@overload fun(): Strings
function ListBox:getItems() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListbox.pas#L90
---@return integer
---@overload fun(): integer
function ListBox:getItemIndex() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListbox.pas#L100
---@param value integer
---@overload fun(value: integer)
function ListBox:setItemIndex(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListbox.pas#L110
---@return Canvas
---@overload fun(): Canvas
function ListBox:getCanvas() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luachecklistbox.pas#L70
---
--- Pascal class: `TCustomCheckListBox`.
---@class CheckListBox : ListBox
---@field Checked table<integer, boolean>
local CheckListBox = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCombobox.pas#L147
---
--- Pascal class: `tcustomcombobox`.
---@class ComboBox : WinControl
---@field Items Strings
---@field ItemIndex integer
---@field Canvas Canvas Read-only.
---@field DroppedDown boolean
---@field Text string LCL published property of `TComboBox`, the text in the edit portion - the LCL is not vendored here, but HotKeys.lfm:297/317 streams it on a `TComboBox` and HotKeys.pas:376 reads it back. Reached through the `lua_getProperty` RTTI fallback (LuaClass.pas:578).
---@field Style string|integer LCL published property of `TComboBox` - the LCL is not vendored here, but HotKeys.lfm:315 streams `Style = csDropDownList` on the `TComboBox` declared at HotKeys.lfm:297, and likewise HotKeys.lfm:220 on the one at HotKeys.lfm:200 and HotKeys.lfm:401 on the one at HotKeys.lfm:381. `comboBox_addMetaData` registers no property for it (LuaCombobox.pas:147-164); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. `lua_getProperty` has no `tkEnumeration` arm, so reading falls into the default branch at LuaObject.pas:213-214 and yields the `TComboBoxStyle` member name, e.g. `'csDropDownList'`; assigning takes that name or the matching ordinal, which the `tkEnumeration` arm converts with `GetEnumName` (LuaObject.pas:299-308). Decides whether the edit portion is typable and whether the box is owner-drawn.
---@field OnDrawItem CECallback Called as `f(sender, index, rect, state)` to draw one item; the return value is ignored (LuaCaller.pas:1692). `rect` is a `Rect` table and `state` is a `TOwnerDrawState` set rendered as a bare comma separated string without brackets, e.g. `'odSelected,odFocused'` (LuaCaller.pas:1705). Fires only while the box's `Style` is an owner-draw style. LCL published property of `TComboBox` - the LCL is not vendored here, but PointerscannerSettingsFrm.pas:388 assigns it on the `TComboBox` declared at :32, one line after setting `Style` to `csOwnerDrawEditableFixed` (:387), and its handler at :36 has the matching `(Control: TWinControl; Index: Integer; ARect: TRect; State: TOwnerDrawState)` signature. `TDrawItemEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3550), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494.
---@field ItemHeight integer Height in pixels of one row of the drop-down list. LCL published property of `TComboBox` - the LCL is not vendored here, but HotKeys.lfm:209 streams `ItemHeight = 20` on the `TComboBox` declared at HotKeys.lfm:200, and MainUnit.lfm:641 streams `ItemHeight = 15` on the one at MainUnit.lfm:626. `comboBox_addMetaData` registers no property for it (LuaCombobox.pas:147-164); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), which handle a `tkInteger` property at LuaObject.pas:205 and LuaObject.pas:274.
---@field DropDownCount integer How many entries the drop-down list shows before it starts scrolling. LCL published property of `TComboBox` - the LCL is not vendored here, but MainUnit.lfm:639 streams `DropDownCount = 9` on the `TComboBox` declared at MainUnit.lfm:626, MainUnit.lfm:671 streams `DropDownCount = 11` on the one at MainUnit.lfm:659, and MainUnit.pas:7310 assigns it at runtime. `comboBox_addMetaData` registers no property for it (LuaCombobox.pas:147-164); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), which handle a `tkInteger` property at LuaObject.pas:205 and LuaObject.pas:274.
---@field OnDropDown CECallback Called as `f(sender)` when the drop-down list is about to open. LCL published property of `TComboBox` - the LCL is not vendored here, but MainUnit.lfm:689 streams `OnDropDown = VarTypeDropDown` on the `TComboBox` declared at MainUnit.lfm:659, and its handler at MainUnit.pas:704 has the `(Sender: TObject)` signature of a `TNotifyEvent`; the implementation at MainUnit.pas:7308 resizes the list just before it drops down. `comboBox_addMetaData` registers no property for it (LuaCombobox.pas:147-164); `TNotifyEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3491), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494, and read back through the `lua_getProperty` fallback at LuaClass.pas:578.
---@field OnSelect CECallback Called as `f(sender)` when the user picks an entry from the list. LCL published property of `TComboBox` - the LCL is not vendored here, but HotKeys.lfm:219 streams `OnSelect = cbFreezedirectionSelect` on the `TComboBox` declared at HotKeys.lfm:200, and its handler at HotKeys.pas:69 has the `(Sender: TObject)` signature of a `TNotifyEvent` (body at HotKeys.pas:448). `comboBox_addMetaData` registers no property for it (LuaCombobox.pas:147-164); `TNotifyEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3491), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494, and read back through the `lua_getProperty` fallback at LuaClass.pas:578.
---@field OnChange CECallback Called as `f(sender)` when the text in the edit portion changes. LCL published property of `TComboBox` - the LCL is not vendored here, but ceguicomponents.pas:323 lists `property OnChange;` in the commented-out transcription of `TComboBox`'s published list that follows `type TCEComboBox=class(TComboBox);` at ceguicomponents.pas:297, and HotKeys.lfm:313 streams `OnChange = cbActivateSoundChange` on the `TComboBox` declared at HotKeys.lfm:297, whose handler is declared at HotKeys.pas:66 with the `(Sender: TObject)` signature of a `TNotifyEvent` (body at HotKeys.pas:431). `comboBox_addMetaData` registers no property for it (LuaCombobox.pas:147-164); `TNotifyEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3491), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494 (tkMethod at LuaObject.pas:297), and read back through the `lua_getProperty` fallback at LuaClass.pas:578 (tkMethod at LuaObject.pas:209).
local ComboBox = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCombobox.pas#L44
---@overload fun()
function ComboBox:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCombobox.pas#L63
---@param value Strings
---@overload fun(value: Strings)
function ComboBox:setItems(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCombobox.pas#L54
---@return Strings
---@overload fun(): Strings
function ComboBox:getItems() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCombobox.pas#L73
---@return integer
---@overload fun(): integer
function ComboBox:getItemIndex() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCombobox.pas#L82
---@param value integer
---@overload fun(value: integer)
function ComboBox:setItemIndex(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCombobox.pas#L95
---@return Canvas
---@overload fun(): Canvas
function ComboBox:getCanvas() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCombobox.pas#L124
---@return integer
---@overload fun(): integer
function ComboBox:getExtraWidth() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacustomimagelist.pas#L118
---
--- Pascal class: `TCustomImageList`. `createImageList` builds a `TImageList`
--- (luacustomimagelist.pas:25), whose published properties are reachable through the
--- `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and
--- `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. The LCL is not
--- vendored in this repository; formdesignerunit.lfm:379-382 streams these three onto a
--- `TImageList`.
---@class CustomImageList : Component
---@field Count integer Read-only.
---@field Width integer Icon width in pixels; `draw` renders at this size (luacustomimagelist.pas:48). LCL published property; formdesignerunit.lfm:382 streams `Width = 24`.
---@field Height integer Icon height in pixels. LCL published property; formdesignerunit.lfm:380 streams `Height = 24`.
---@field Scaled boolean Makes the list scale its images for the current DPI. LCL published property; formdesignerunit.lfm:381 streams `Scaled = True`.
---@field OnChange CECallback Called as `f(sender)` when the contents of the list change. LCL published property of `TImageList`, the class `createImageList` builds (luacustomimagelist.pas:25) - the LCL is not vendored here and no .lfm in this repository streams it, but Cheat Engine's own documentation lists it for this class at `Cheat Engine/bin/celua.txt:1073` with the `function(sender)` shape, under the `ImageList Class:` heading at celua.txt:1061. `customimagelist_addMetaData` registers only `Count` (luacustomimagelist.pas:118-128); `TNotifyEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3491), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494 (tkMethod at LuaObject.pas:297), and read back through the `lua_getProperty` fallback at LuaClass.pas:578 (tkMethod at LuaObject.pas:209).
---@field Masked boolean Whether the list builds a transparency mask from each image's bottom-left pixel. LCL published property of `TImageList`, the class `createImageList` builds (luacustomimagelist.pas:25) - the LCL is not vendored here and no .lfm in this repository streams it, but Cheat Engine's own documentation lists it for this class at `Cheat Engine/bin/celua.txt:1071`, under the `ImageList Class:` heading at celua.txt:1061, in the same list as the `Count`, `Height`, `Width` and `Scaled` entries this class already declares. `customimagelist_addMetaData` registers only `Count` (luacustomimagelist.pas:118-128); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494, which handle a `tkBool` property at LuaObject.pas:206 and LuaObject.pas:289.
---@field DrawingStyle string|integer How the images are drawn. Reading yields the `TDrawingStyle` member name, `'dsFocus'`, `'dsSelected'`, `'dsNormal'` or `'dsTransparent'`; assigning takes that name or the matching ordinal. LCL published property of `TImageList`, the class `createImageList` builds (luacustomimagelist.pas:25) - the LCL is not vendored here and no .lfm in this repository streams it, but Cheat Engine's own documentation lists it for this class at `Cheat Engine/bin/celua.txt:1068`, under the `ImageList Class:` heading at celua.txt:1061, naming exactly the four member-name strings the RTTI read produces. `customimagelist_addMetaData` registers only `Count` (luacustomimagelist.pas:118-128); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. `lua_getProperty` has no `tkEnumeration` arm, so it falls into the default branch at LuaObject.pas:213-214 and reads back as the member name, while assigning goes through the `tkEnumeration` arm at LuaObject.pas:299-308.
local CustomImageList = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacustomimagelist.pas#L84
---@param img Bitmap
---@param mask Bitmap?
---@return integer
---@overload fun(img: Bitmap, mask?: Bitmap): integer
function CustomImageList:add(img, mask) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacustomimagelist.pas#L30
---@param canvas Canvas
---@param x integer
---@param y integer
---@param index integer
---@overload fun(canvas: Canvas, x: integer, y: integer, index: integer)
function CustomImageList:draw(canvas, x, y, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luacustomimagelist.pas#L52
---
--- Broken in Cheat Engine: `luacustomimagelist.pas:66` reads `image` with the raw
--- `lua_touserdata` instead of `lua_ToCEUserData`, so for the heavy userdata a bitmap
--- object is pushed as it hands `TCustomImageList.GetBitmap` the address of the pointer
--- slot rather than the bitmap itself. Every other object argument in the unit
--- (`luacustomimagelist.pas:43`, `:94`, `:97`) uses `lua_ToCEUserData`.
---@param index integer
---@param image Bitmap Destination bitmap, filled in place.
---@param effect (integer|string)? `TGraphicsDrawEffect` ordinal or enum member name; defaults to `gdeNormal`.
---@overload fun(index: integer, image: Bitmap, effect?: (integer|string))
function CustomImageList:getBitmap(index, image, effect) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L409
---
--- Pascal class: `TCustomEdit`.
---@class Edit : WinControl
---@field SetPasswordChar any Broken in Cheat Engine: `LuaEdit.pas:433` passes `edit_setPasswordChar` as the getter and `edit_getPasswordChar` as the setter, the reverse of `luaclass_addPropertyToTable`'s `(getfunction, setfunction)` order (LuaClass.pas:362). Assigning is ignored - the registered setter only pushes the current `PasswordChar` (LuaEdit.pas:139). Reading does not give the character either, and it is not nil: `luaclass_index` invokes the getter as `lua_call(L,0,1)` (LuaClass.pas:541), so `edit_setPasswordChar` runs with an empty stack, fails its `lua_gettop(L)>0` guard (LuaEdit.pas:149), pushes nothing and still reports one result (LuaEdit.pas:155); `luaD_poscall` is handed `L->top - 1`, the called function's own slot, and copies that out (ldo.c:340, ldo.c:394-399), so what comes back is the getter closure itself - a function value, always truthy. Use the `PasswordChar` field instead.
---@field CaretPos Point
---@field SelStart integer
---@field SelLength integer
---@field SelText string
---@field OnChange CECallback
---@field OnKeyPress CECallback
---@field OnKeyUp CECallback
---@field OnKeyDown CECallback
---@field TextHint string Published property of the LCL's `TEdit`, re-published on `TCEEdit` at ceguicomponents.pas:601 and reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578. Greyed placeholder text shown while the edit is empty.
---@field Text string LCL published property of `TEdit` - the LCL is not vendored here, but StructuresAddElementfrm.lfm:126/139 streams `Text` on a `TEdit`. Reached through the `lua_getProperty` RTTI fallback (LuaClass.pas:578). `Memo` inherits this field, but a memo's content is published as `Lines`; use that on a `Memo`.
---@field MaxLength integer LCL published property of `TEdit` - the LCL is not vendored here, but PointerscannerSettingsFrm.lfm:310 streams `MaxLength = 8` on the `TEdit` declared at :300, and pointerscansettingsipconnectionlist.pas:143 assigns it. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaObject.pas:274). Maximum number of characters the user may type; 0 means no limit.
---@field ReadOnly boolean LCL published property of `TEdit` - the LCL is not vendored here, but HotKeys.lfm:181 streams `ReadOnly = True` on the `TEdit` declared at HotKeys.lfm:170. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaObject.pas:289). `Memo` inherits it, and frmProcesswatcherExtraUnit.lfm:16 streams it on a `TMemo`.
---@field PasswordChar string LCL published property of `TEdit` - the LCL is not vendored here, but frmsetuppsnnodeunit.lfm:185 streams `PasswordChar = '*'` on the `TEdit` declared at :173, and pointerscansettingsipconnectionlist.pas:142 assigns it. Reached through the `lua_getProperty` RTTI fallback (LuaClass.pas:578), which pushes a `tkChar` property as a one-character string (LuaObject.pas:213-214). The character shown in place of each typed character; `#0` means the text is shown as-is. This is the working spelling - the `SetPasswordChar` entry above is Cheat Engine's broken one.
---@field TextHintFontStyle string|integer Published property of Cheat Engine's `TCEEdit` (ceguicomponents.pas:603), the class the form designer instantiates for an edit box: formdesignerunit.pas:517 builds the class name as `'T'` plus the toolbutton's name and formdesignerunit.lfm:99 names that button `CEEdit`, and ceguicomponents.pas:1565 registers the class for streaming. Not present on a `createEdit` edit, which is a plain `TEdit` (LuaEdit.pas:27). `edit_addMetaData` registers no property for it (LuaEdit.pas:409-442); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494). `TFontStyle` is an LCL enumeration and the LCL is not vendored here; `lua_getProperty` has no `tkEnumeration` arm, so it falls into the default branch at LuaObject.pas:213-214 and reads back as the member name, e.g. `'fsBold'`, while assigning takes that name or the matching ordinal (LuaObject.pas:299-305). Stored and streamed only - nothing in Cheat Engine reads it back to paint the hint.
---@field TextHintFontColor integer Published property of Cheat Engine's `TCEEdit` (ceguicomponents.pas:602), the class the form designer instantiates for an edit box: formdesignerunit.pas:517 builds the class name as `'T'` plus the toolbutton's name and formdesignerunit.lfm:99 names that button `CEEdit`, and ceguicomponents.pas:1565 registers the class for streaming. Not present on a `createEdit` edit, which is a plain `TEdit` (LuaEdit.pas:27). `edit_addMetaData` registers no property for it (LuaEdit.pas:409-442); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), which handle a `tkInteger` property at LuaObject.pas:205 and LuaObject.pas:274. Stored and streamed only - nothing in Cheat Engine reads it back to paint the hint.
---@field Alignment string|integer How the text is aligned inside the box. LCL published property of `TEdit` - the LCL is not vendored here, but ceguicomponents.pas:544 lists `property Alignment;` in the commented-out transcription of `TEdit`'s published list that follows `type TCEEdit=class(TEdit)` at ceguicomponents.pas:535, and formChangedAddresses.lfm:57 streams `Alignment = taCenter` on the `TEdit` declared at formChangedAddresses.lfm:45. `edit_addMetaData` registers no property for it (LuaEdit.pas:409-442); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494). `TAlignment` is an LCL enumeration and `lua_getProperty` has no `tkEnumeration` arm, so it falls into the default branch at LuaObject.pas:213-214 and reads back as the member name, `'taLeftJustify'`, `'taRightJustify'` or `'taCenter'`, while assigning takes that name or the matching ordinal (LuaObject.pas:299-308).
---@field NumbersOnly boolean Restricts typed input to digits. LCL published property of `TEdit` - the LCL is not vendored here, but pointerscannerfrm.lfm:296 streams `NumbersOnly = True` on the `TEdit` declared at pointerscannerfrm.lfm:288, and .lfm streaming only reaches published properties. `edit_addMetaData` registers no property for it (LuaEdit.pas:409-442); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), which handle a `tkBool` property at LuaObject.pas:206 and LuaObject.pas:289. Present on a `createEdit` edit, which is a plain `TEdit` (LuaEdit.pas:27).
---@field CharCase string|integer Case the control forces on typed text. LCL published property of `TEdit` - the LCL is not vendored here, but ceguicomponents.pas:551 lists `property CharCase;` in the commented-out transcription of `TEdit`'s published list that follows `type TCEEdit=class(TEdit)` at ceguicomponents.pas:535, PointerscannerSettingsFrm.lfm:309 streams `CharCase = ecUppercase` on the `TEdit` declared at :300 and :339 on the one at :328, and frmFindstaticsUnit.lfm:124/140/156/172 stream it on the `TEdit` objects at :111/:129/:145/:161. `edit_addMetaData` registers no property for it (LuaEdit.pas:409-442); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494). `TEditCharCase` is an LCL enumeration and `lua_getProperty` has no `tkEnumeration` arm, so it falls into the default branch at LuaObject.pas:213-214 and reads back as the member name, e.g. `'ecUppercase'`, while assigning takes that name or the matching ordinal (LuaObject.pas:299-308). Present on a `createEdit` edit, which is a plain `TEdit` (LuaEdit.pas:27).
---@field AutoSelect boolean Selects the whole text when the edit receives focus. LCL published property of `TEdit` - the LCL is not vendored here, but ceguicomponents.pas:547 lists `property AutoSelect;` in the commented-out transcription of `TEdit`'s published list that follows `type TCEEdit=class(TEdit)` at ceguicomponents.pas:535, and formChangedAddresses.lfm:59 streams `AutoSelect = False` on the `TEdit` declared at formChangedAddresses.lfm:45. `edit_addMetaData` registers no property for it (LuaEdit.pas:409-442); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), which handle a `tkBool` property at LuaObject.pas:206 and LuaObject.pas:289.
---@field EchoMode string|integer How typed characters are echoed, and whether `PasswordChar` is used at all. LCL published property of `TEdit` - the LCL is not vendored here, but ceguicomponents.pas:557 lists `property EchoMode;` in the commented-out transcription of `TEdit`'s published list that follows `type TCEEdit=class(TEdit)` at ceguicomponents.pas:535, and frmsetuppsnnodeunit.lfm:183/231/284 stream `EchoMode = emPassword` on the `TEdit` objects declared at :173/:221/:274 (the first of which is also the `PasswordChar = '*'` at :185). `edit_addMetaData` registers no property for it (LuaEdit.pas:409-442); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494). `TEchoMode` is an LCL enumeration and `lua_getProperty` has no `tkEnumeration` arm, so it falls into the default branch at LuaObject.pas:213-214 and reads back as the member name, `'emNormal'`, `'emNone'` or `'emPassword'`, while assigning takes that name or the matching ordinal (LuaObject.pas:299-308).
local Edit = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L34
---@overload fun()
function Edit:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L52
---@param selStart integer?
---@param selLength integer?
---@overload fun(selStart?: integer, selLength?: integer)
function Edit:select(selStart, selLength) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L43
---@overload fun()
function Edit:selectAll() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L52
---@param selStart integer?
---@param selLength integer?
---@overload fun(selStart?: integer, selLength?: integer)
function Edit:selectText(selStart, selLength) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L217
---@return string
---@overload fun(): string
function Edit:getSelText() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L178
---@return integer
---@overload fun(): integer
function Edit:getSelStart() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L198
---@return integer
---@overload fun(): integer
function Edit:getSelLength() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L98
---@overload fun()
function Edit:clearSelection() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L107
---@overload fun()
function Edit:copyToClipboard() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L116
---@overload fun()
function Edit:cutToClipboard() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L125
---@overload fun()
function Edit:pasteFromClipboard() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L238
---@return CECallback|nil
---@overload fun(): CECallback|nil
function Edit:getOnChange() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L247
---@param value CECallback? nil clears the handler.
---@overload fun(value?: CECallback)
function Edit:setOnChange(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L283
---@return CECallback|nil
---@overload fun(): CECallback|nil
function Edit:getOnKeyPress() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L310
---@param value CECallback? nil clears the handler.
---@overload fun(value?: CECallback)
function Edit:setOnKeyPress(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L292
---@return CECallback|nil
---@overload fun(): CECallback|nil
function Edit:getOnKeyUp() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L343
---@param value CECallback? nil clears the handler.
---@overload fun(value?: CECallback)
function Edit:setOnKeyUp(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L301
---@return CECallback|nil
---@overload fun(): CECallback|nil
function Edit:getOnKeyDown() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L376
---@param value CECallback? nil clears the handler.
---@overload fun(value?: CECallback)
function Edit:setOnKeyDown(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGroupbox.pas#L36
---
--- Pascal class: `TCustomGroupBox`.
---@class GroupBox : WinControl
local GroupBox = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L121
---
--- Pascal class: `TCustomImage`. `createImage` builds a `TCEImage=class(TImage)`
--- (ceguicomponents.pas:789, pluginexports.pas:1768-1771), so the LCL's published `TImage`
--- properties are reachable through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks
--- `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
--- The LCL is not vendored in this repository.
---@class Image : GraphicControl
---@field Canvas Canvas Read-only.
---@field Transparent boolean
---@field Stretch boolean
---@field Picture Picture
---@field Center boolean Centers the picture inside the control when the picture is smaller than the control. LCL published property of `TImage`; frmSetCrosshairUnit.lfm:12/18 and MainUnit.lfm:813/825 stream `Center = True` on a `TImage`.
---@field Proportional boolean Keeps the picture's aspect ratio while `Stretch` is on. LCL published property of `TImage`; MainUnit.lfm:813/1139 streams `Proportional = True` next to the `Stretch` (:1140) and `Transparent` (:1141) this class already declares.
---@field AntialiasingMode string|integer Antialiasing used when the picture is scaled. LCL published property of `TImage`; MainUnit.lfm:813/823 streams `AntialiasingMode = amOn`. Reading gives the `TAntialiasingMode` member name, e.g. `'amOn'` (LuaObject.pas:213); assigning takes that name or the matching integer (LuaObject.pas:299).
local Image = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L34
---@param filename string
---@return boolean
---@overload fun(filename: string): boolean
function Image:loadImageFromFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L82
---@param value boolean
---@overload fun(value: boolean)
function Image:setTransparent(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L73
---@return boolean
---@overload fun(): boolean
function Image:getTransparent() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L63
---@param value boolean
---@overload fun(value: boolean)
function Image:setStretch(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L54
---@return boolean
---@overload fun(): boolean
function Image:getStretch() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L92
---@return Canvas
---@overload fun(): Canvas
function Image:getCanvas() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L101
---@return Picture
---@overload fun(): Picture
function Image:getPicture() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L110
---@param value Picture
---@return Picture value The argument, echoed back: LuaImage.pas:118 sets `result:=1` without pushing anything, so Lua returns the top of the stack.
---@overload fun(value: Picture): Picture
function Image:setPicture(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasynedit.pas#L234
---
--- Pascal class: `TSynEdit`.
---@class SynEdit : CustomControl
---@field SelStart integer
---@field SelEnd integer
---@field SelText string
---@field CanPaste boolean Read-only.
---@field CanRedo boolean Read-only.
---@field CanUndo boolean Read-only.
---@field CharWidth integer Read-only.
---@field LineHeight integer Read-only.
---@field CaretX integer
---@field CaretY integer
---@field ReadOnly boolean When true the editor accepts no typed input. Published property of `TSynEdit` - SynEdit is not vendored here, but frmsourcedisplayunit.lfm:461 streams `ReadOnly = True` on the `TSynEdit` declared at frmsourcedisplayunit.lfm:14, and `bin/celua.txt:1343` documents it under the `SynEdit class:` heading at celua.txt:1338. `luasynedit_addMetaData` registers no `ReadOnly` entry (luasynedit.pas:234-259), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494).
---@field Lines Strings The editor's text, as a `Strings` object; `luaclass_newClass` resolves the underlying `TSynEditStringList` up to the nearest registered ancestor, `TStrings` (LuaClass.pas:136, LuaStrings.pas:362). Published property of `TSynEdit` - SynEdit is not vendored here and no .lfm in this repository streams it, but Cheat Engine's own documentation lists it for this class at `Cheat Engine/bin/celua.txt:1341` and frmluaengineunit.pas:1563 reads it on the `mScript: TSynEdit` declared at frmluaengineunit.pas:63. `luasynedit_addMetaData` (luasynedit.pas:234-259) registers no property for it; reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578, whose tkClass branch is LuaObject.pas:208.
---@field Gutter Object The editor's gutter. Comes back as a plain `Object`: the gutter class is not registered and is not a `TComponent` descendant, so `findBestClassForObject` (LuaClass.pas:136) walks its parent chain past every registered class up to `TObject` (LuaObject.pas:511). Had `TComponent` (LuaComponent.pas:134) been in that chain the walk would have stopped there (LuaClass.pas:156-169) and the value would carry the `Component` metatable, the way the sibling `Highlighter` does. Its own published members are then read and written through the same RTTI fallback, e.g. `synedit.Gutter.Visible=false`. Published property of `TSynEdit` - SynEdit is not vendored here, but asktorunluascript.lfm:120-121 streams `Gutter.Visible = False` / `Gutter.Width = 57` and frmsourcedisplayunit.lfm:31 streams `Gutter.Width = 57` on the `TSynEdit` declared at frmsourcedisplayunit.lfm:14, as dotted sub-properties of the editor itself rather than as a bare reference to a separately streamed component the way `Highlighter = SynCppSyn1` is at frmsourcedisplayunit.lfm:35; frmAAEditPrefsUnit.pas:74-75 reads `Gutter.LineNumberPart.Visible` and `Gutter.Visible` and :94-95 writes them back on the `fSynEdit: TCustomSynEdit` declared at frmAAEditPrefsUnit.pas:45; frmsourcedisplayunit.pas:224 sets `seSource.Gutter.Color`; and Cheat Engine's own documentation lists it for this class at `Cheat Engine/bin/celua.txt:1342`. `luasynedit_addMetaData` (luasynedit.pas:234-259) registers no property for it; reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578, whose tkClass branch is LuaObject.pas:208.
---@field Highlighter Component? The syntax highlighter driving the editor; nil when none is assigned. Comes back as a plain `Component`: the highlighter class is not registered, so `luaclass_newClass` resolves it up to the nearest registered ancestor (`findBestClassForObject`, LuaClass.pas:136), which is `TComponent` (LuaComponent.pas:134), and nil is pushed for a nil object (LuaClass.pas:217). Published property of `TSynEdit` - SynEdit is not vendored here, but frmsourcedisplayunit.lfm:35 streams `Highlighter = SynCppSyn1` on the `TSynEdit` declared at frmsourcedisplayunit.lfm:14, naming the `TSynCppSyn` component declared at frmsourcedisplayunit.lfm:921, and `createSynEdit` assigns it itself (luasynedit.pas:36-38). `luasynedit_addMetaData` (luasynedit.pas:234-259) registers no property for it; reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494, whose tkClass arms are LuaObject.pas:208 and LuaObject.pas:291-294.
local SynEdit = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasynedit.pas#L168
---@overload fun()
function SynEdit:CopyToClipboard() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasynedit.pas#L174
---@overload fun()
function SynEdit:CutToClipboard() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasynedit.pas#L180
---@overload fun()
function SynEdit:PasteFromClipboard() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasynedit.pas#L186
---@overload fun()
function SynEdit:ClearUndo() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasynedit.pas#L192
---@overload fun()
function SynEdit:Redo() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasynedit.pas#L198
---@overload fun()
function SynEdit:Undo() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasynedit.pas#L204
---@overload fun()
function SynEdit:MarkTextAsSaved() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasynedit.pas#L210
---@overload fun()
function SynEdit:ClearSelection() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luasynedit.pas#L216
---@overload fun()
function SynEdit:SelectAll() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L141
---
--- Pascal class: `TCustomMemo`.
---@class Memo : Edit
---@field Lines Strings
---@field WordWrap boolean
---@field WantTabs boolean
---@field WantReturns boolean
---@field Scrollbars integer
---@field ScrollBars string|integer Which scroll bars the memo shows. LCL published property of `TMemo` - the LCL is not vendored here, but frmProcesswatcherExtraUnit.lfm:17 streams `ScrollBars = ssVertical` on the `TMemo` declared at frmProcesswatcherExtraUnit.lfm:10, and multilineinputqueryunit.lfm:43 streams it on the `TMemo` declared at multilineinputqueryunit.lfm:27. `memo_addMetaData` registers Cheat Engine's own property under the spelling `Scrollbars` (LuaMemo.pas:161), which is a plain integer (LuaMemo.pas:127, LuaMemo.pas:137), and the metatable lookup in `luaclass_index` is case sensitive (LuaClass.pas:531), so this capitalisation misses that entry and falls through to the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494). `TScrollStyle` is an LCL enumeration and `lua_getProperty` has no `tkEnumeration` arm, so it reads back as the member name, e.g. `'ssVertical'` (LuaObject.pas:213-214), while assigning takes that name or the matching ordinal (LuaObject.pas:299-308).
local Memo = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L33
---@param text string
---@overload fun(text: string)
function Memo:append(text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L45
---@return Strings
---@overload fun(): Strings
function Memo:getLines() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L54
---@param value Strings
---@overload fun(value: Strings)
function Memo:setLines(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L65
---@return boolean
---@overload fun(): boolean
function Memo:getWordWrap() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L74
---@param value boolean
---@overload fun(value: boolean)
function Memo:setWordWrap(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L84
---@return boolean
---@overload fun(): boolean
function Memo:getWantTabs() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L93
---@param value boolean
---@overload fun(value: boolean)
function Memo:setWantTabs(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L103
---@return boolean
---@overload fun(): boolean
function Memo:getWantReturns() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L112
---@param value boolean
---@overload fun(value: boolean)
function Memo:setWantReturns(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L122
---@return integer
---@overload fun(): integer
function Memo:getScrollbars() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L131
---@param value integer
---@overload fun(value: integer)
function Memo:setScrollbars(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L303
---
--- Pascal class: `TMenu`.
---@class Menu : Component
---@field Items MenuItem Read-only.
---@field OnPopup CECallback `function(sender)`, called just before the menu is shown. Published property of the LCL's `TPopupMenu` only - a `createMainMenu` menu does not have it - reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
---@field Images CustomImageList? Published property of the LCL's `TMenu`, reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578. Nil when no image list is assigned; menu items pick icons out of it with `ImageIndex`.
local Menu = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L16
---@return MenuItem
---@overload fun(): MenuItem
function Menu:getItems() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L310
---
--- Pascal class: `TMenuItem`.
---@class MenuItem : Component
---@field MenuIndex integer
---@field Caption string
---@field Shortcut string
---@field Parent MenuItem? Read-only. Nil for the root item `Menu:getItems()` returns, and for an item created by `createMenuItem()` that has not been added to another item yet.
---@field Menu Menu? Read-only. Nil for an item that is not in a menu yet: `menuItem_getMenu` (LuaMenu.pas:170) pushes `menuItem.Menu` through `luaclass_newClass`, which pushes nil for a nil object (LuaClass.pas:217), and `createMenuItem()` only calls `TMenuItem.Create(o)`, which sets the owner and not the parent (LuaMenu.pas:75). The property is registered with a nil setter (LuaMenu.pas:331).
---@field Count integer Read-only.
---@field OnClick CECallback
---@field Item table<integer, MenuItem> Read-only.
---@field [integer] MenuItem Read-only. Same as `Item[index]`.
---@field ShowAlwaysCheckable boolean Published property of the LCL's `TMenuItem`, reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578. Keeps the check gutter reserved even while `Checked` is false.
---@field Default boolean Published property of the LCL's `TMenuItem`, reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578. The default item is drawn bold and is fired on a double-click of the owning control.
---@field ImageIndex integer Published property of the LCL's `TMenuItem`, reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578. Index into the owning menu's `Images` list; -1 for no icon.
---@field GroupIndex integer Published property of the LCL's `TMenuItem`, reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578. Items sharing a group index behave as one radio group.
---@field RadioItem boolean Published property of the LCL's `TMenuItem`, reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578. Draws the check as a radio dot and, with `GroupIndex`, unchecks the item's siblings.
---@field AutoCheck boolean Published property of the LCL's `TMenuItem`, reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578. When true, clicking the item flips its own `Checked`.
---@field Checked boolean Published property of the LCL's `TMenuItem`, reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578. Draws a check mark next to the item.
---@field Visible boolean Published property of the LCL's `TMenuItem`, reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578. False hides the item from the menu.
---@field Enabled boolean Published property of the LCL's `TMenuItem`, reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578. False greys the item out.
---@field FontColor integer Font colour used when the item is owner-drawn; `clDefault` (the initial value, newmainmenu.pas:167) leaves the theme colour alone. Published by `TNewMenuItem` at newmainmenu.pas:20 - Windows only, because bettercontrols.pas:30 aliases `TMenuItem` to `TNewMenuItem` inside the `{$ifdef windows}` block bettercontrols.pas:22-60, and `createMenuItem` builds that alias (LuaMenu.pas:14 and LuaMenu.pas:75). Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. celua.txt:995 documents it as only taking effect in dark mode.
---@field Hint string Hint text shown for the item. Published property of the LCL's `TMenuItem`, not of `TComponent` - the LCL is not vendored here, but frmstructurecompareunit.lfm:534 streams `Hint = 'This lets you specify the maximum number of addresses to show per line'` on the `TMenuItem` declared at frmstructurecompareunit.lfm:532. `menuitem_addMetaData` registers no property for it (LuaMenu.pas:310-336); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494, where a string property falls into the default arms at LuaObject.pas:211-214 and LuaObject.pas:310.
---@field ShortCutKey2 integer Second accelerator for the item, as a raw `TShortCut` ordinal - unlike the registered `Shortcut` property, which `menuItem_getShortcut` converts to text with `ShortCutToText` (LuaMenu.pas:133). Published property of the LCL's `TMenuItem` - the LCL is not vendored here, but frmluaengineunit.lfm:912 streams `ShortCutKey2 = 114` on the `TMenuItem` declared at frmluaengineunit.lfm:908, as a bare ordinal. `menuitem_addMetaData` registers no property for it (LuaMenu.pas:310-336); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494, which handle a `tkInteger` property at LuaObject.pas:205 and LuaObject.pas:274.
---@field SubMenuImages CustomImageList? Image list this item's sub-items take their icons from, overriding the owning menu's `Images`; nil when none is assigned. Published property of the LCL's `TMenuItem` - the LCL is not vendored here, but MemoryBrowserFormUnit.lfm:1749 streams `SubMenuImages = mvImageList` on the `TMenuItem` declared at MemoryBrowserFormUnit.lfm:1747, and `mvImageList` is the `TImageList` declared at MemoryBrowserFormUnit.lfm:2175. `menuitem_addMetaData` registers no property for it (LuaMenu.pas:310-336); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494, whose tkClass arms are LuaObject.pas:208 and LuaObject.pas:291-294. `luaclass_newClass` pushes nil when no list is assigned (LuaClass.pas:217), and `TCustomImageList` is registered (luacustomimagelist.pas:136), so an assigned list carries the `CustomImageList` metatable.
---@field ShortCut integer The item's accelerator as a raw `TShortCut` ordinal - unlike the registered `Shortcut` property, which `menuItem_getShortcut` converts to text with `ShortCutToText` (LuaMenu.pas:133). LCL published property of `TMenuItem` - the LCL is not vendored here, but frmBreakpointlistunit.lfm:77 streams `ShortCut = 46` on the `TMenuItem` declared at frmBreakpointlistunit.lfm:74 and AdvancedOptionsUnit.lfm:188 streams `ShortCut = 16397` on the one at AdvancedOptionsUnit.lfm:185, as bare ordinals. `menuitem_addMetaData` registers its own entry under the spelling `Shortcut` (LuaMenu.pas:329) and the metatable lookup in `luaclass_index` is case sensitive (LuaClass.pas:531), so this capitalisation misses that entry and falls through to the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494), which handle a `tkInteger` property at LuaObject.pas:205 and LuaObject.pas:274.
---@field Action Component? The `TBasicAction` the item is linked to; nil when none is assigned. Published property of the LCL's `TMenuItem` - the LCL is not vendored here, but MainUnit.lfm:2334 streams `Action = actSave` on the `TMenuItem` declared at MainUnit.lfm:2333 and MainUnit.lfm:2376 streams `Action = actOpen` on the one at MainUnit.lfm:2375, where `actSave` is the `TAction` declared at MainUnit.pas:537. `menuitem_addMetaData` registers no property for it (LuaMenu.pas:310-336); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494, whose tkClass arms are LuaObject.pas:208 and LuaObject.pas:291-294. `TAction` is not registered, so the object carries the metatable of its nearest registered ancestor `TComponent` (LuaComponent.pas:134); `luaclass_newClass` pushes nil when no action is assigned (LuaClass.pas:217).
---@field Bitmap Bitmap? Image drawn next to the item, as an alternative to `ImageIndex`. Published property of the LCL's `TMenuItem` - the LCL is not vendored here, but MainUnit.lfm:2336 streams `Bitmap.Data` on the `TMenuItem` declared at MainUnit.lfm:2333 and MainUnit.lfm:2378 does the same on the one at MainUnit.lfm:2375, and .lfm streaming only reaches published properties. `menuitem_addMetaData` registers no property for it (LuaMenu.pas:310-336); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494, whose tkClass arms are LuaObject.pas:208 and LuaObject.pas:291-294. `TBitmap` is not registered but its ancestor `TRasterImage` is (LuaRasterImage.pas:136), so the object carries the `RasterImage` metatable; `luaclass_newClass` pushes nil when the property holds no object (LuaClass.pas:217).
local MenuItem = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L105
---@return string
---@overload fun(): string
function MenuItem:getCaption() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L114
---@param value string
---@overload fun(value: string)
function MenuItem:setCaption(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L128
---@return string
---@overload fun(): string
function MenuItem:getShortcut() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L137
---@param value string
---@overload fun(value: string)
function MenuItem:setShortcut(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L152
---@return integer
---@overload fun(): integer
function MenuItem:getCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L179
---@param index integer
---@return MenuItem
---@overload fun(index: integer): MenuItem
function MenuItem:getItem(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L194
---@param menuitem MenuItem
---@overload fun(menuitem: MenuItem)
function MenuItem:add(menuitem) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L208
---@param index integer
---@param menuitem MenuItem
---@overload fun(index: integer, menuitem: MenuItem)
function MenuItem:insert(index, menuitem) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L224
---@param index integer
---@overload fun(index: integer)
function MenuItem:delete(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L239
---@overload fun()
function MenuItem:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L257
---@param value CECallback? nil clears the handler.
---@overload fun(value?: CECallback)
function MenuItem:setOnClick(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L248
---@return CECallback|nil
---@overload fun(): CECallback|nil
function MenuItem:getOnClick() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L293
---@overload fun()
function MenuItem:doClick() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapagecontrol.pas#L83
---
--- Pascal class: `TPageControl`.
---
--- The fields from `ActivePage` down are published properties of `TPageControl`, reached
--- through the `lua_getProperty` RTTI fallback `luaclass_index` installs at
--- LuaClass.pas:578; `pagecontrol_addMetaData` registers none of them.
---@class PageControl : WinControl
---@field PageCount integer Read-only.
---@field Page table<integer, TabSheet?> Read-only. Indexed from 0, so the last page is `Page[PageCount-1]`: `pagecontrol_getPage` only pushes a page inside `if index<pc.PageCount` and otherwise leaves its return count at 0 (luapagecontrol.pas:70-78), so a read at or above `PageCount` is nil.
---@field ActivePage TabSheet? The tab sheet currently shown; nil while the control has no pages.
---@field TabIndex integer Index of the active tab. Assignable, unlike the read-only `TabSheet.TabIndex`.
---@field ShowTabs boolean Whether the tab strip is drawn.
---@field OnChange CECallback `function(sender)`, called when the active tab changes. LCL published property of `TPageControl` - the LCL is not vendored here, but ProcessWindowUnit.lfm:151 streams `OnChange = TabHeaderChange` on the `TPageControl` declared at ProcessWindowUnit.lfm:142 and formsettingsunit.lfm:73 streams `OnChange = pcSettingChange` on the one at formsettingsunit.lfm:64. `TNotifyEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3491), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494, and read back through the `lua_getProperty` fallback at LuaClass.pas:578.
local PageControl = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapagecontrol.pas#L33
---@return TabSheet
---@overload fun(): TabSheet
function PageControl:addTab() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapagecontrol.pas#L43
---@param index integer
---@return Rect
---@overload fun(index: integer): Rect
function PageControl:tabRect(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L127
---
--- Pascal class: `TCustomPanel`.
---@class Panel : CustomControl
---@field Alignment integer
---@field BevelInner integer
---@field BevelOuter integer
---@field BevelWidth integer
---@field FullRepaint boolean
local Panel = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L32
---@return integer
---@overload fun(): integer
function Panel:getAlignment() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L41
---@param value integer
---@overload fun(value: integer)
function Panel:setAlignment(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L51
---@return integer
---@overload fun(): integer
function Panel:getBevelInner() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L60
---@param value integer
---@overload fun(value: integer)
function Panel:setBevelInner(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L70
---@return integer
---@overload fun(): integer
function Panel:getBevelOuter() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L79
---@param value integer
---@overload fun(value: integer)
function Panel:setBevelOuter(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L89
---@return integer
---@overload fun(): integer
function Panel:getBevelWidth() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L98
---@param value integer
---@overload fun(value: integer)
function Panel:setBevelWidth(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L108
---@return boolean
---@overload fun(): boolean
function Panel:getFullRepaint() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L117
---@param value boolean
---@overload fun(value: boolean)
function Panel:setFullRepaint(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L149
---
--- Pascal class: `TCustomProgressBar`.
---@class ProgressBar : WinControl
---@field Min integer
---@field Max integer
---@field Position integer
---@field Step integer LCL published property of `TProgressBar` - the LCL is not vendored here, but MainUnit.lfm:695/712 and pointerscannerfrm.lfm:132/142 stream `Step = 1` on a `TProgressBar`. Reached through the `lua_getProperty` RTTI fallback (LuaClass.pas:578). The amount `stepIt()` advances `Position` by (VirtualMemory.pas:284, 307).
---@field Style string|integer How the bar draws, a `TProgressBarStyle` member. Reading yields the member name, `'pbstNormal'` or `'pbstMarquee'`; assigning takes that name or the matching ordinal. `'pbstMarquee'` is the indeterminate scrolling bar, where `Position` is ignored. LCL published property of `TProgressBar` - the LCL is not vendored here, but frmTracerUnit.pas:465 sets `progressbar.style:=pbstMarquee` and frmTracerUnit.pas:423-424 reads it back and resets it to `pbstNormal`, on the `progressbar: TProgressbar` declared at frmTracerUnit.pas:54 and created at frmTracerUnit.pas:463; `createProgressBar` builds a `TProgressBar` as well (LuaProgressBar.pas:35), so the `GetPropInfo` lookup at LuaObject.pas:191 finds the published property on the instance's own class even though `luaclass_register` binds `TCustomProgressBar` (LuaProgressBar.pas:181). `progressbar_addMetaData` registers no property for it (LuaProgressBar.pas:162-164); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. `lua_getProperty` has no `tkEnumeration` arm, so reading falls into the default branch at LuaObject.pas:213-214, while the `tkEnumeration` arm at LuaObject.pas:299-308 turns an assigned number into a name with `GetEnumName`.
local ProgressBar = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L43
---@overload fun()
function ProgressBar:stepIt() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L51
---@param integer integer
---@overload fun(integer: integer)
function ProgressBar:stepBy(integer) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L62
---@return integer
---@overload fun(): integer
function ProgressBar:getMax() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L71
---@param value integer
---@overload fun(value: integer)
function ProgressBar:setMax(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L81
---@return integer
---@overload fun(): integer
function ProgressBar:getMin() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L90
---@param value integer
---@overload fun(value: integer)
function ProgressBar:setMin(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L100
---@return integer
---@overload fun(): integer
function ProgressBar:getPosition() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L109
---@param value integer
---@overload fun(value: integer)
function ProgressBar:setPosition(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L119
---@param value integer
---@overload fun(value: integer)
function ProgressBar:setPosition2(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L145
---
--- Pascal class: `TCustomRadioGroup`.
---@class RadioGroup : GroupBox
---@field Columns integer
---@field ItemIndex integer
---@field OnClick CECallback
---@field Items Strings Read-only.
---@field AutoFill boolean Lay the radio buttons out automatically over the group's columns. LCL published property of `TRadioGroup` - the LCL is not vendored here, but frmWatchListAddEntryUnit.lfm:36 streams `AutoFill = True` on the `TRadioGroup` declared at frmWatchListAddEntryUnit.lfm:28, and frmmergepointerscanresultsettingsunit.lfm:30 on the one declared at frmmergepointerscanresultsettingsunit.lfm:24. `radiogroup_addMetaData` registers no property for it; reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
---@field ColumnLayout string|integer Reads back the `TColumnLayout` member name, e.g. `'clVerticalThenHorizontal'`; assigning takes that name or the matching integer. Decides whether the items fill across the columns or down them. LCL published property of `TRadioGroup` - the LCL is not vendored here, but frmWatchListAddEntryUnit.lfm:50 streams `ColumnLayout = clVerticalThenHorizontal` on the `TRadioGroup` declared at frmWatchListAddEntryUnit.lfm:28. `radiogroup_addMetaData` registers no property for it; reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
---@field OnSelectionChanged CECallback `function(sender)`, fired when the selected radio button changes. LCL published property of `TRadioGroup` - the LCL is not vendored here, but frmmergepointerscanresultsettingsunit.lfm:48 streams `OnSelectionChanged = rgGroupMethodSelectionChanged` on the `TRadioGroup` declared at frmmergepointerscanresultsettingsunit.lfm:24, and its handler at frmmergepointerscanresultsettingsunit.pas:24 has the `(Sender: TObject)` signature of a `TNotifyEvent`. `radiogroup_addMetaData` registers no property for it; `TNotifyEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3491), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494, and read back through the `lua_getProperty` fallback at LuaClass.pas:578.
local RadioGroup = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L41
---@return integer
---@overload fun(): integer
function RadioGroup:getRows() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L50
---@return Strings
---@overload fun(): Strings
function RadioGroup:getItems() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L59
---@return integer
---@overload fun(): integer
function RadioGroup:getColumns() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L68
---@param value integer
---@overload fun(value: integer)
function RadioGroup:setColumns(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L80
---@return integer
---@overload fun(): integer
function RadioGroup:getItemIndex() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L89
---@param value integer
---@overload fun(value: integer)
function RadioGroup:setItemIndex(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L109
---@param value CECallback? nil clears the handler.
---@overload fun(value?: CECallback)
function RadioGroup:setOnClick(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luapagecontrol.pas#L98
---
--- Pascal class: `TTabsheet`.
---@class TabSheet : WinControl
---@field TabIndex integer Read-only.
---@field ImageIndex integer Index into the page control's image list for this tab's icon. LCL published property of `TTabSheet` - the LCL is not vendored here, but PEInfounit.lfm:55 streams `ImageIndex = 1` on the `TTabSheet` declared at PEInfounit.lfm:51, and PEInfounit.lfm:71 and :87 do the same on the ones at PEInfounit.lfm:67 and :83. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (a tkInteger property is read at LuaObject.pas:205 and written at LuaObject.pas:274).
---@field TabVisible boolean When false the page's tab is hidden while the page itself stays in the control. LCL published property of `TTabSheet` - the LCL is not vendored here and no .lfm in this repository streams it; the evidence is Cheat Engine's own writes: frmBreakpointConditionUnit.pas:50 and formsettingsunit.pas:2072 set it through `PageControl.Pages[i]`, and ProcessWindowUnit.pas:591 sets it on the `TTabSheet` named `tsWindows` (declared ProcessWindowUnit.pas:97). Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289).
local TabSheet = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTimer.pas#L148
---
--- Pascal class: `TCustomTimer`.
---@class Timer : Component
---@field OnTimer CECallback
---@field Enabled boolean
---@field Interval integer
local Timer = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTimer.pas#L86
---@return integer
---@overload fun(): integer
function Timer:getInterval() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTimer.pas#L95
---@param value integer
---@overload fun(value: integer)
function Timer:setInterval(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTimer.pas#L105
---@return CECallback|nil
---@overload fun(): CECallback|nil
function Timer:getOnTimer() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTimer.pas#L114
---@param value CECallback? nil clears the handler.
---@overload fun(value?: CECallback)
function Timer:setOnTimer(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTimer.pas#L138
---@param value boolean
---@overload fun(value: boolean)
function Timer:setEnabled(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTimer.pas#L129
---@return boolean
---@overload fun(): boolean
function Timer:getEnabled() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L147
---
--- Pascal class: `TCustomTrackbar`.
---@class TrackBar : WinControl
---@field Max integer
---@field Min integer
---@field Position integer
---@field OnChange CECallback
---@field PageSize integer LCL published property of `TTrackBar` (`frmD3DTrainerGeneratorOptionsUnit.lfm:245` streams it on a `TTrackBar`; the LCL is not vendored here), reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 - `trackbar_addMetaData` registers no `PageSize` property. Distance `Position` moves on a page up/down.
---@field Frequency integer LCL published property of `TTrackBar` (`frmAdConfigUnit.lfm:217` streams it on a `TTrackBar`; the LCL is not vendored here), reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 - `trackbar_addMetaData` registers no `Frequency` property. Interval between tick marks.
---@field Reversed boolean LCL published property of `TTrackBar` (`frmnetworkdatacompressionunit.lfm:38` streams it on a `TTrackBar`; the LCL is not vendored here), reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 - `trackbar_addMetaData` registers no `Reversed` property. Runs the scale from Max to Min instead of Min to Max.
---@field Orientation string|integer LCL published property of `TTrackBar` (`frmnetworkdatacompressionunit.lfm:36` streams it on a `TTrackBar`; the LCL is not vendored here), reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 - `trackbar_addMetaData` registers no `Orientation` property. Reads back the `TTrackBarOrientation` member name, `trHorizontal` or `trVertical`; assigning takes that name or the matching integer (LuaObject.pas:299-308).
---@field TickMarks string|integer LCL published property of `TTrackBar` (`ceguicomponents.pas:230` transcribes it in `TTrackBar`'s published list, in the commented-out block at ceguicomponents.pas:181-233 following `type TCETrackBar=class(TTrackBar);` at ceguicomponents.pas:180; the LCL is not vendored here), reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 - `trackbar_addMetaData` registers no `TickMarks` property. Where the tick marks are drawn: reads back the enumeration member name, and assigning takes that name or the matching integer (LuaObject.pas:211-215, LuaObject.pas:299-308).
---@field ScalePos string|integer LCL published property of `TTrackBar` (`ceguicomponents.pas:223` transcribes it in `TTrackBar`'s published list, in the commented-out block at ceguicomponents.pas:181-233 following `type TCETrackBar=class(TTrackBar);` at ceguicomponents.pas:180; the LCL is not vendored here), reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 - `trackbar_addMetaData` registers no `ScalePos` property. Where the scale is drawn: reads back the enumeration member name, and assigning takes that name or the matching integer (LuaObject.pas:211-215, LuaObject.pas:299-308).
---@field SelStart integer LCL published property of `TTrackBar` (`ceguicomponents.pas:225` transcribes it in `TTrackBar`'s published list, in the commented-out block at ceguicomponents.pas:181-233 following `type TCETrackBar=class(TTrackBar);` at ceguicomponents.pas:180; the LCL is not vendored here), reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 - `trackbar_addMetaData` registers no `SelStart` property. Start of the selection range.
---@field SelEnd integer LCL published property of `TTrackBar` (`ceguicomponents.pas:224` transcribes it in `TTrackBar`'s published list, in the commented-out block at ceguicomponents.pas:181-233 following `type TCETrackBar=class(TTrackBar);` at ceguicomponents.pas:180; the LCL is not vendored here), reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 - `trackbar_addMetaData` registers no `SelEnd` property. End of the selection range.
---@field ShowSelRange boolean LCL published property of `TTrackBar` (`ceguicomponents.pas:227` transcribes it in `TTrackBar`'s published list, in the commented-out block at ceguicomponents.pas:181-233 following `type TCETrackBar=class(TTrackBar);` at ceguicomponents.pas:180; the LCL is not vendored here), reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 - `trackbar_addMetaData` registers no `ShowSelRange` property. Whether the `SelStart`..`SelEnd` selection range is drawn.
---@field TickStyle string|integer LCL published property of `TTrackBar` (`ceguicomponents.pas:231` transcribes it in `TTrackBar`'s published list, in the commented-out block at ceguicomponents.pas:181-233 following `type TCETrackBar=class(TTrackBar);` at ceguicomponents.pas:180; the LCL is not vendored here), reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 - `trackbar_addMetaData` registers no `TickStyle` property. Whether the tick marks are drawn automatically, manually or not at all: reads back the enumeration member name, and assigning takes that name or the matching integer (LuaObject.pas:211-215, LuaObject.pas:299-308).
---@field LineSize integer LCL published property of `TTrackBar` (`ceguicomponents.pas:191` transcribes it in `TTrackBar`'s published list, in the commented-out block at ceguicomponents.pas:181-233 following `type TCETrackBar=class(TTrackBar);` at ceguicomponents.pas:180; the LCL is not vendored here), reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 - `trackbar_addMetaData` registers no `LineSize` property. Distance `Position` moves on a single arrow-key step.
local TrackBar = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L42
---@return integer
---@overload fun(): integer
function TrackBar:getMax() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L51
---@param value integer
---@overload fun(value: integer)
function TrackBar:setMax(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L62
---@return integer
---@overload fun(): integer
function TrackBar:getMin() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L71
---@param value integer
---@overload fun(value: integer)
function TrackBar:setMin(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L83
---@return integer
---@overload fun(): integer
function TrackBar:getPosition() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L92
---@param value integer
---@overload fun(value: integer)
function TrackBar:setPosition(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L112
---@param value CECallback? nil clears the handler.
---@overload fun(value?: CECallback)
function TrackBar:setOnChange(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L103
---@return CECallback|nil
---@overload fun(): CECallback|nil
function TrackBar:getOnChange() end
