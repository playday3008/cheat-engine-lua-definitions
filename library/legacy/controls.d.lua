---@meta
---
--- legacy / controls
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaButton.pas#L32
---
--- Pre-6.3 spelling of `Button:getModalResult()`.
---@deprecated Use `Button:getModalResult()`.
---@param button Button
---@return integer
function button_getModalResult(button) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaButton.pas#L41
---
--- Pre-6.3 spelling of `Button:setModalResult()`.
---@deprecated Use `Button:setModalResult()`.
---@param button Button
---@param value integer
function button_setModalResult(button, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L17
---
--- Pre-6.3 spelling of `CheatComponent:getActive()`.
---@deprecated Use `CheatComponent:getActive()`.
---@param cheatcomponent CheatComponent
---@return boolean
function cheatcomponent_getActive(cheatcomponent) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L53
---
--- Pre-6.3 accessor for the `CheatComponent.Description` property. `CheatComponent` binds
--- only `setActive` and `getActive` as class methods (LuaCheatComponent.pas:182-183), but
--- `Description` is a published property of `TCheat` (ExtraTrainerComponents.pas:95) and is
--- reachable as `cheatcomponent.Description` through the `lua_getProperty` RTTI fallback
--- `luaclass_index` installs at LuaClass.pas:578.
---@deprecated Use the `CheatComponent.Description` property.
---@param cheatcomponent CheatComponent
---@return string
function cheatcomponent_getDescription(cheatcomponent) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L104
---
--- Pre-6.3 accessor for the `CheatComponent.Descriptionleft` property. `CheatComponent`
--- binds only `setActive` and `getActive` as class methods (LuaCheatComponent.pas:182-183),
--- but `Descriptionleft` is a published property of `TCheat`
--- (ExtraTrainerComponents.pas:97) and is reachable as `cheatcomponent.Descriptionleft`
--- through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578.
---@deprecated Use the `CheatComponent.Descriptionleft` property.
---@param cheatcomponent CheatComponent
---@return integer
function cheatcomponent_getDescriptionLeft(cheatcomponent) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L155
---
--- Pre-6.3 accessor for the `CheatComponent.Editvalue` property. `CheatComponent` binds
--- only `setActive` and `getActive` as class methods (LuaCheatComponent.pas:182-183), but
--- `Editvalue` is a published property of `TCheat` (ExtraTrainerComponents.pas:93) and is
--- reachable as `cheatcomponent.Editvalue` through the `lua_getProperty` RTTI fallback
--- `luaclass_index` installs at LuaClass.pas:578.
---@deprecated Use the `CheatComponent.Editvalue` property.
---@param cheatcomponent CheatComponent
---@return string
function cheatcomponent_getEditValue(cheatcomponent) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L79
---
--- Pre-6.3 accessor for the `CheatComponent.Hotkey` property. `CheatComponent` binds
--- only `setActive` and `getActive` as class methods (LuaCheatComponent.pas:182-183), but
--- `Hotkey` is a published property of `TCheat` (ExtraTrainerComponents.pas:94) and is
--- reachable as `cheatcomponent.Hotkey` through the `lua_getProperty` RTTI fallback
--- `luaclass_index` installs at LuaClass.pas:578.
---@deprecated Use the `CheatComponent.Hotkey` property.
---@param cheatcomponent CheatComponent
---@return string
function cheatcomponent_getHotkey(cheatcomponent) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L130
---
--- Pre-6.3 accessor for the `CheatComponent.Hotkeyleft` property. `CheatComponent` binds
--- only `setActive` and `getActive` as class methods (LuaCheatComponent.pas:182-183), but
--- `Hotkeyleft` is a published property of `TCheat` (ExtraTrainerComponents.pas:96) and is
--- reachable as `cheatcomponent.Hotkeyleft` through the `lua_getProperty` RTTI fallback
--- `luaclass_index` installs at LuaClass.pas:578.
---@deprecated Use the `CheatComponent.Hotkeyleft` property.
---@param cheatcomponent CheatComponent
---@return integer
function cheatcomponent_getHotkeyLeft(cheatcomponent) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L27
---
--- Pre-6.3 spelling of `CheatComponent:setActive()`.
---@deprecated Use `CheatComponent:setActive()`.
---@param cheatcomponent CheatComponent
---@param active boolean
---@param deactivatetime integer?
function cheatcomponent_setActive(cheatcomponent, active, deactivatetime) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L64
---
--- Pre-6.3 accessor for the `CheatComponent.Description` property. `CheatComponent` binds
--- only `setActive` and `getActive` as class methods (LuaCheatComponent.pas:182-183), but
--- `Description` is a published property of `TCheat` (ExtraTrainerComponents.pas:95) and is
--- writable as `cheatcomponent.Description` through the `lua_setProperty` RTTI fallback
--- `luaclass_newindex` installs at LuaClass.pas:494.
---@deprecated Use the `CheatComponent.Description` property.
---@param cheatcomponent CheatComponent
---@param value string
function cheatcomponent_setDescription(cheatcomponent, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L114
---
--- Pre-6.3 accessor for the `CheatComponent.Descriptionleft` property. `CheatComponent`
--- binds only `setActive` and `getActive` as class methods (LuaCheatComponent.pas:182-183),
--- but `Descriptionleft` is a published property of `TCheat`
--- (ExtraTrainerComponents.pas:97) and is writable as `cheatcomponent.Descriptionleft`
--- through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494.
---@deprecated Use the `CheatComponent.Descriptionleft` property.
---@param cheatcomponent CheatComponent
---@param value integer
function cheatcomponent_setDescriptionLeft(cheatcomponent, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L165
---
--- Pre-6.3 accessor for the `CheatComponent.Editvalue` property. `CheatComponent` binds
--- only `setActive` and `getActive` as class methods (LuaCheatComponent.pas:182-183), but
--- `Editvalue` is a published property of `TCheat` (ExtraTrainerComponents.pas:93) and is
--- writable as `cheatcomponent.Editvalue` through the `lua_setProperty` RTTI fallback
--- `luaclass_newindex` installs at LuaClass.pas:494.
---@deprecated Use the `CheatComponent.Editvalue` property.
---@param cheatcomponent CheatComponent
---@param value string
function cheatcomponent_setEditValue(cheatcomponent, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L91
---
--- Pre-6.3 accessor for the `CheatComponent.Hotkey` property. `CheatComponent` binds
--- only `setActive` and `getActive` as class methods (LuaCheatComponent.pas:182-183), but
--- `Hotkey` is a published property of `TCheat` (ExtraTrainerComponents.pas:94) and is
--- writable as `cheatcomponent.Hotkey` through the `lua_setProperty` RTTI fallback
--- `luaclass_newindex` installs at LuaClass.pas:494.
---@deprecated Use the `CheatComponent.Hotkey` property.
---@param cheatcomponent CheatComponent
---@param value string
function cheatcomponent_setHotkey(cheatcomponent, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheatComponent.pas#L142
---
--- Pre-6.3 accessor for the `CheatComponent.Hotkeyleft` property. `CheatComponent` binds
--- only `setActive` and `getActive` as class methods (LuaCheatComponent.pas:182-183), but
--- `Hotkeyleft` is a published property of `TCheat` (ExtraTrainerComponents.pas:96) and is
--- writable as `cheatcomponent.Hotkeyleft` through the `lua_setProperty` RTTI fallback
--- `luaclass_newindex` installs at LuaClass.pas:494.
---@deprecated Use the `CheatComponent.Hotkeyleft` property.
---@param cheatcomponent CheatComponent
---@param value integer
function cheatcomponent_setHotkeyLeft(cheatcomponent, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheckbox.pas#L41
---
--- Pre-6.3 spelling of `CheckBox:getAllowGrayed()`.
---@deprecated Use `CheckBox:getAllowGrayed()`.
---@param checkbox CheckBox
---@return boolean
function checkbox_getAllowGrayed(checkbox) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheckbox.pas#L61
---
--- Pre-6.3 spelling of `CheckBox:getState()`.
---@deprecated Use `CheckBox:getState()`.
---@param checkbox CheckBox
---@return integer
function checkbox_getState(checkbox) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheckbox.pas#L91
---
--- Pre-6.3 spelling of `CheckBox:setOnChange()`.
---@deprecated Use `CheckBox:setOnChange()`.
---@param checkbox CheckBox
---@param value CECallback|string
function checkbox_onChange(checkbox, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheckbox.pas#L50
---
--- Pre-6.3 spelling of `CheckBox:setAllowGrayed()`.
---@deprecated Use `CheckBox:setAllowGrayed()`.
---@param checkbox CheckBox
---@param value boolean
function checkbox_setAllowGrayed(checkbox, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCheckbox.pas#L70
---
--- Pre-6.3 spelling of `CheckBox:setState()`.
---@deprecated Use `CheckBox:setState()`.
---@param checkbox CheckBox
---@param value integer
function checkbox_setState(checkbox, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCombobox.pas#L44
---
--- Pre-6.3 spelling of `ComboBox:clear()`.
---@deprecated Use `ComboBox:clear()`.
---@param combobox ComboBox
function combobox_clear(combobox) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCombobox.pas#L95
---
--- Pre-6.3 spelling of `ComboBox:getCanvas()`.
---@deprecated Use `ComboBox:getCanvas()`.
---@param combobox ComboBox
---@return Canvas
function combobox_getCanvas(combobox) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCombobox.pas#L73
---
--- Pre-6.3 spelling of `ComboBox:getItemIndex()`.
---@deprecated Use `ComboBox:getItemIndex()`.
---@param combobox ComboBox
---@return integer
function combobox_getItemIndex(combobox) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCombobox.pas#L54
---
--- Pre-6.3 spelling of `ComboBox:getItems()`.
---@deprecated Use `ComboBox:getItems()`.
---@param combobox ComboBox
---@return Strings
function combobox_getItems(combobox) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCombobox.pas#L82
---
--- Pre-6.3 spelling of `ComboBox:setItemIndex()`.
---@deprecated Use `ComboBox:setItemIndex()`.
---@param combobox ComboBox
---@param value integer
function combobox_setItemIndex(combobox, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L34
---
--- Pre-6.3 spelling of `Edit:clear()`.
---@deprecated Use `Edit:clear()`.
---@param edit Edit
function edit_clear(edit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L98
---
--- Pre-6.3 spelling of `Edit:clearSelection()`.
---@deprecated Use `Edit:clearSelection()`.
---@param edit Edit
function edit_clearSelection(edit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L107
---
--- Pre-6.3 spelling of `Edit:copyToClipboard()`.
---@deprecated Use `Edit:copyToClipboard()`.
---@param edit Edit
function edit_copyToClipboard(edit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L116
---
--- Pre-6.3 spelling of `Edit:cutToClipboard()`.
---@deprecated Use `Edit:cutToClipboard()`.
---@param edit Edit
function edit_cutToClipboard(edit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L238
---
--- Pre-6.3 spelling of `Edit:getOnChange()`.
---@deprecated Use `Edit:getOnChange()`.
---@param edit Edit
---@return CECallback|nil
function edit_getOnChange(edit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L301
---
--- Pre-6.3 spelling of `Edit:getOnKeyDown()`.
---@deprecated Use `Edit:getOnKeyDown()`.
---@param edit Edit
---@return CECallback|nil
function edit_getOnKeyDown(edit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L283
---
--- Pre-6.3 spelling of `Edit:getOnKeyPress()`.
---@deprecated Use `Edit:getOnKeyPress()`.
---@param edit Edit
---@return CECallback|nil
function edit_getOnKeyPress(edit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L292
---
--- Pre-6.3 spelling of `Edit:getOnKeyUp()`.
---@deprecated Use `Edit:getOnKeyUp()`.
---@param edit Edit
---@return CECallback|nil
function edit_getOnKeyUp(edit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L198
---
--- Pre-6.3 spelling of `Edit:getSelLength()`.
---@deprecated Use `Edit:getSelLength()`.
---@param edit Edit
---@return integer
function edit_getSelLength(edit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L178
---
--- Pre-6.3 spelling of `Edit:getSelStart()`.
---@deprecated Use `Edit:getSelStart()`.
---@param edit Edit
---@return integer
function edit_getSelStart(edit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L217
---
--- Pre-6.3 spelling of `Edit:getSelText()`.
---@deprecated Use `Edit:getSelText()`.
---@param edit Edit
---@return string
function edit_getSelText(edit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L247
---
--- Pre-6.3 spelling of `Edit:setOnChange()`.
---@deprecated Use `Edit:setOnChange()`.
---@param edit Edit
---@param value CECallback|string
function edit_onChange(edit, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L376
---
--- Pre-6.3 spelling of `Edit:setOnKeyDown()`.
---@deprecated Use `Edit:setOnKeyDown()`.
---@param edit Edit
---@param value CECallback
function edit_onKeyDown(edit, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L310
---
--- Pre-6.3 spelling of `Edit:setOnKeyPress()`.
---@deprecated Use `Edit:setOnKeyPress()`.
---@param edit Edit
---@param value CECallback
function edit_onKeyPress(edit, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L343
---
--- Pre-6.3 spelling of `Edit:setOnKeyUp()`.
---@deprecated Use `Edit:setOnKeyUp()`.
---@param edit Edit
---@param value CECallback
function edit_onKeyUp(edit, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L125
---
--- Pre-6.3 spelling of `Edit:pasteFromClipboard()`.
---@deprecated Use `Edit:pasteFromClipboard()`.
---@param edit Edit
function edit_pasteFromClipboard(edit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L52
---
--- Pre-6.3 spelling of `Edit:select()`. Registered against the same implementation as
--- `edit_selectText` (`LuaEdit.pas:451`).
---
--- Not exactly equivalent: `selLength` has no working default here. `LuaEdit.pas:62` counts the
--- edit itself with `lua_gettop`, so a two-argument flat call already passes the `paramc >= 2`
--- test at `LuaEdit.pas:78` and reads the length from the empty stack slot after `selStart`,
--- which gives 0. `edit_select(edit, selStart)` therefore selects nothing, where
--- `edit:select(selStart)` selects through to the end of the text.
---@deprecated Use `Edit:select()`.
---@param edit Edit
---@param selStart integer
---@param selLength integer? Omitting it selects 0 characters, not the rest of the text.
function edit_select(edit, selStart, selLength) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L43
---
--- Pre-6.3 spelling of `Edit:selectAll()`.
---@deprecated Use `Edit:selectAll()`.
---@param edit Edit
function edit_selectAll(edit) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L52
---
--- Pre-6.3 spelling of `Edit:selectText()`.
---
--- Not exactly equivalent: `selLength` has no working default here. `LuaEdit.pas:62` counts the
--- edit itself with `lua_gettop`, so a two-argument flat call already passes the `paramc >= 2`
--- test at `LuaEdit.pas:78` and reads the length from the empty stack slot after `selStart`,
--- which gives 0. `edit_selectText(edit, selStart)` therefore selects nothing, where
--- `edit:selectText(selStart)` selects through to the end of the text.
---@deprecated Use `Edit:selectText()`.
---@param edit Edit
---@param selStart integer
---@param selLength integer? Omitting it selects 0 characters, not the rest of the text.
function edit_selectText(edit, selStart, selLength) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L247
---
--- Pre-6.3 spelling of `Edit:setOnChange()`.
---@deprecated Use `Edit:setOnChange()`.
---@param edit Edit
---@param value CECallback
function edit_setOnChange(edit, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L376
---
--- Pre-6.3 spelling of `Edit:setOnKeyDown()`.
---@deprecated Use `Edit:setOnKeyDown()`.
---@param edit Edit
---@param value CECallback
function edit_setOnKeyDown(edit, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L310
---
--- Pre-6.3 spelling of `Edit:setOnKeyPress()`.
---@deprecated Use `Edit:setOnKeyPress()`.
---@param edit Edit
---@param value CECallback
function edit_setOnKeyPress(edit, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaEdit.pas#L343
---
--- Pre-6.3 spelling of `Edit:setOnKeyUp()`.
---@deprecated Use `Edit:setOnKeyUp()`.
---@param edit Edit
---@param value CECallback
function edit_setOnKeyUp(edit, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L92
---
--- Pre-6.3 spelling of `Image:getCanvas()`.
---@deprecated Use `Image:getCanvas()`.
---@param image Image
---@return Canvas
function image_getCanvas(image) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L101
---
--- Pre-6.3 spelling of `Image:getPicture()`.
---@deprecated Use `Image:getPicture()`.
---@param image Image
---@return Picture
function image_getPicture(image) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L34
---
--- Pre-6.3 spelling of `Image:loadImageFromFile()`.
---@deprecated Use `Image:loadImageFromFile()`.
---@param image Image
---@param filename string
---@return boolean
function image_loadImageFromFile(image, filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L63
---
--- Pre-6.3 spelling of `Image:setStretch()`.
---@deprecated Use `Image:setStretch()`.
---@param image Image
---@param value boolean
function image_stretch(image, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaImage.pas#L82
---
--- Pre-6.3 spelling of `Image:setTransparent()`.
---@deprecated Use `Image:setTransparent()`.
---@param image Image
---@param value boolean
function image_transparent(image, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListbox.pas#L42
---
--- Pre-6.3 spelling of `ListBox:clear()`.
---@deprecated Use `ListBox:clear()`.
---@param listbox ListBox
function listbox_clear(listbox) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListbox.pas#L110
---
--- Pre-6.3 spelling of `ListBox:getCanvas()`.
---@deprecated Use `ListBox:getCanvas()`.
---@param listbox ListBox
---@return Canvas
function listbox_getCanvas(listbox) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListbox.pas#L90
---
--- Pre-6.3 spelling of `ListBox:getItemIndex()`.
---@deprecated Use `ListBox:getItemIndex()`.
---@param listbox ListBox
---@return integer
function listbox_getItemIndex(listbox) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListbox.pas#L70
---
--- Pre-6.3 spelling of `ListBox:getItems()`.
---@deprecated Use `ListBox:getItems()`.
---@param listbox ListBox
---@return Strings
function listbox_getItems(listbox) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaListbox.pas#L100
---
--- Pre-6.3 spelling of `ListBox:setItemIndex()`.
---@deprecated Use `ListBox:setItemIndex()`.
---@param listbox ListBox
---@param value integer
function listbox_setItemIndex(listbox, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L33
---
--- Pre-6.3 spelling of `Memo:append()`.
---@deprecated Use `Memo:append()`.
---@param memo Memo
---@param text string
function memo_append(memo, text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L45
---
--- Pre-6.3 spelling of `Memo:getLines()`.
---@deprecated Use `Memo:getLines()`.
---@param memo Memo
---@return Strings
function memo_getLines(memo) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L122
---
--- Pre-6.3 spelling of `Memo:getScrollbars()`.
---@deprecated Use `Memo:getScrollbars()`.
---@param memo Memo
---@return integer
function memo_getScrollbars(memo) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L103
---
--- Pre-6.3 spelling of `Memo:getWantReturns()`.
---@deprecated Use `Memo:getWantReturns()`.
---@param memo Memo
---@return boolean
function memo_getWantReturns(memo) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L84
---
--- Pre-6.3 spelling of `Memo:getWantTabs()`.
---@deprecated Use `Memo:getWantTabs()`.
---@param memo Memo
---@return boolean
function memo_getWantTabs(memo) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L65
---
--- Pre-6.3 spelling of `Memo:getWordWrap()`.
---@deprecated Use `Memo:getWordWrap()`.
---@param memo Memo
---@return boolean
function memo_getWordWrap(memo) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L131
---
--- Pre-6.3 spelling of `Memo:setScrollbars()`.
---@deprecated Use `Memo:setScrollbars()`.
---@param memo Memo
---@param value integer
function memo_setScrollbars(memo, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L112
---
--- Pre-6.3 spelling of `Memo:setWantReturns()`.
---@deprecated Use `Memo:setWantReturns()`.
---@param memo Memo
---@param value boolean
function memo_setWantReturns(memo, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L93
---
--- Pre-6.3 spelling of `Memo:setWantTabs()`.
---@deprecated Use `Memo:setWantTabs()`.
---@param memo Memo
---@param value boolean
function memo_setWantTabs(memo, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemo.pas#L74
---
--- Pre-6.3 spelling of `Memo:setWordWrap()`.
---@deprecated Use `Memo:setWordWrap()`.
---@param memo Memo
---@param value boolean
function memo_setWordWrap(memo, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L16
---
--- Pre-6.3 spelling of `Menu:getItems()`.
---@deprecated Use `Menu:getItems()`.
---@param menu Menu
---@return MenuItem
function menu_getItems(menu) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L194
---
--- Pre-6.3 spelling of `MenuItem:add()`.
---@deprecated Use `MenuItem:add()`.
---@param menuitem MenuItem
---@param item MenuItem
function menuItem_add(menuitem, item) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L224
---
--- Pre-6.3 spelling of `MenuItem:delete()`.
---@deprecated Use `MenuItem:delete()`.
---@param menuitem MenuItem
---@param index integer
function menuItem_delete(menuitem, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L293
---
--- Pre-6.3 spelling of `MenuItem:doClick()`.
---@deprecated Use `MenuItem:doClick()`.
---@param menuitem MenuItem
function menuItem_doClick(menuitem) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L105
---
--- Pre-6.3 spelling of `MenuItem:getCaption()`.
---@deprecated Use `MenuItem:getCaption()`.
---@param menuitem MenuItem
---@return string
function menuItem_getCaption(menuitem) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L152
---
--- Pre-6.3 spelling of `MenuItem:getCount()`.
---@deprecated Use `MenuItem:getCount()`.
---@param menuitem MenuItem
---@return integer
function menuItem_getCount(menuitem) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L179
---
--- Pre-6.3 spelling of `MenuItem:getItem()`.
---@deprecated Use `MenuItem:getItem()`.
---@param menuitem MenuItem
---@param index integer
---@return MenuItem
function menuItem_getItem(menuitem, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L128
---
--- Pre-6.3 spelling of `MenuItem:getShortcut()`.
---@deprecated Use `MenuItem:getShortcut()`.
---@param menuitem MenuItem
---@return string
function menuItem_getShortcut(menuitem) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L208
---
--- Pre-6.3 spelling of `MenuItem:insert()`.
---@deprecated Use `MenuItem:insert()`.
---@param menuitem MenuItem
---@param index integer
---@param item MenuItem
function menuItem_insert(menuitem, index, item) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L257
---
--- Pre-6.3 spelling of `MenuItem:setOnClick()`.
---@deprecated Use `MenuItem:setOnClick()`.
---@param menuitem MenuItem
---@param f CECallback|string
function menuItem_onClick(menuitem, f) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L114
---
--- Pre-6.3 spelling of `MenuItem:setCaption()`.
---@deprecated Use `MenuItem:setCaption()`.
---@param menuitem MenuItem
---@param value string
function menuItem_setCaption(menuitem, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMenu.pas#L137
---
--- Pre-6.3 spelling of `MenuItem:setShortcut()`.
---@deprecated Use `MenuItem:setShortcut()`.
---@param menuitem MenuItem
---@param value string
function menuItem_setShortcut(menuitem, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L32
---
--- Pre-6.3 spelling of `Panel:getAlignment()`.
---@deprecated Use `Panel:getAlignment()`.
---@param panel Panel
---@return integer
function panel_getAlignment(panel) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L51
---
--- Pre-6.3 spelling of `Panel:getBevelInner()`.
---@deprecated Use `Panel:getBevelInner()`.
---@param panel Panel
---@return integer
function panel_getBevelInner(panel) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L70
---
--- Pre-6.3 spelling of `Panel:getBevelOuter()`.
---@deprecated Use `Panel:getBevelOuter()`.
---@param panel Panel
---@return integer
function panel_getBevelOuter(panel) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L89
---
--- Pre-6.3 spelling of `Panel:getBevelWidth()`.
---@deprecated Use `Panel:getBevelWidth()`.
---@param panel Panel
---@return integer
function panel_getBevelWidth(panel) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L108
---
--- Pre-6.3 spelling of `Panel:getFullRepaint()`.
---@deprecated Use `Panel:getFullRepaint()`.
---@param panel Panel
---@return boolean
function panel_getFullRepaint(panel) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L41
---
--- Pre-6.3 spelling of `Panel:setAlignment()`.
---@deprecated Use `Panel:setAlignment()`.
---@param panel Panel
---@param value integer
function panel_setAlignment(panel, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L60
---
--- Pre-6.3 spelling of `Panel:setBevelInner()`.
---@deprecated Use `Panel:setBevelInner()`.
---@param panel Panel
---@param value integer
function panel_setBevelInner(panel, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L79
---
--- Pre-6.3 spelling of `Panel:setBevelOuter()`.
---@deprecated Use `Panel:setBevelOuter()`.
---@param panel Panel
---@param value integer
function panel_setBevelOuter(panel, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L98
---
--- Pre-6.3 spelling of `Panel:setBevelWidth()`.
---@deprecated Use `Panel:setBevelWidth()`.
---@param panel Panel
---@param value integer
function panel_setBevelWidth(panel, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPanel.pas#L117
---
--- Pre-6.3 spelling of `Panel:setFullRepaint()`.
---@deprecated Use `Panel:setFullRepaint()`.
---@param panel Panel
---@param value boolean
function panel_setFullRepaint(panel, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L62
---
--- Pre-6.3 spelling of `ProgressBar:getMax()`.
---@deprecated Use `ProgressBar:getMax()`.
---@param progressbar ProgressBar
---@return integer
function progressbar_getMax(progressbar) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L81
---
--- Pre-6.3 spelling of `ProgressBar:getMin()`.
---@deprecated Use `ProgressBar:getMin()`.
---@param progressbar ProgressBar
---@return integer
function progressbar_getMin(progressbar) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L100
---
--- Pre-6.3 spelling of `ProgressBar:getPosition()`.
---@deprecated Use `ProgressBar:getPosition()`.
---@param progressbar ProgressBar
---@return integer
function progressbar_getPosition(progressbar) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L71
---
--- Pre-6.3 spelling of `ProgressBar:setMax()`.
---@deprecated Use `ProgressBar:setMax()`.
---@param progressbar ProgressBar
---@param value integer
function progressbar_setMax(progressbar, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L90
---
--- Pre-6.3 spelling of `ProgressBar:setMin()`.
---@deprecated Use `ProgressBar:setMin()`.
---@param progressbar ProgressBar
---@param value integer
function progressbar_setMin(progressbar, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L109
---
--- Pre-6.3 spelling of `ProgressBar:setPosition()`.
---@deprecated Use `ProgressBar:setPosition()`.
---@param progressbar ProgressBar
---@param value integer
function progressbar_setPosition(progressbar, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L51
---
--- Pre-6.3 spelling of `ProgressBar:stepBy()`.
---@deprecated Use `ProgressBar:stepBy()`.
---@param progressbar ProgressBar
---@param integer integer
function progressbar_stepBy(progressbar, integer) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaProgressBar.pas#L43
---
--- Pre-6.3 spelling of `ProgressBar:stepIt()`.
---@deprecated Use `ProgressBar:stepIt()`.
---@param progressbar ProgressBar
function progressbar_stepIt(progressbar) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L59
---
--- Pre-6.3 spelling of `RadioGroup:getColumns()`.
---@deprecated Use `RadioGroup:getColumns()`.
---@param radiogroup RadioGroup
---@return integer
function radiogroup_getColumns(radiogroup) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L80
---
--- Pre-6.3 spelling of `RadioGroup:getItemIndex()`.
---@deprecated Use `RadioGroup:getItemIndex()`.
---@param radiogroup RadioGroup
---@return integer
function radiogroup_getItemIndex(radiogroup) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L50
---
--- Pre-6.3 spelling of `RadioGroup:getItems()`.
---@deprecated Use `RadioGroup:getItems()`.
---@param radiogroup RadioGroup
---@return Strings
function radiogroup_getItems(radiogroup) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L41
---
--- Pre-6.3 spelling of `RadioGroup:getRows()`.
---@deprecated Use `RadioGroup:getRows()`.
---@param radiogroup RadioGroup
---@return integer
function radiogroup_getRows(radiogroup) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L109
---
--- Pre-6.3 spelling of `RadioGroup:setOnClick()`.
---@deprecated Use `RadioGroup:setOnClick()`.
---@param radiogroup RadioGroup
---@param f CECallback|string
function radiogroup_onClick(radiogroup, f) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L68
---
--- Pre-6.3 spelling of `RadioGroup:setColumns()`.
---@deprecated Use `RadioGroup:setColumns()`.
---@param radiogroup RadioGroup
---@param value integer
function radiogroup_setColumns(radiogroup, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRadioGroup.pas#L89
---
--- Pre-6.3 spelling of `RadioGroup:setItemIndex()`.
---@deprecated Use `RadioGroup:setItemIndex()`.
---@param radiogroup RadioGroup
---@param value integer
function radiogroup_setItemIndex(radiogroup, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTimer.pas#L129
---
--- Pre-6.3 spelling of `Timer:getEnabled()`.
---@deprecated Use `Timer:getEnabled()`.
---@param timer Timer
---@return boolean
function timer_getEnabled(timer) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTimer.pas#L114
---
--- Pre-6.3 spelling of `Timer:setOnTimer()`.
---@deprecated Use `Timer:setOnTimer()`.
---@param timer Timer
---@param f CECallback
function timer_onTimer(timer, f) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTimer.pas#L138
---
--- Pre-6.3 spelling of `Timer:setEnabled()`.
---@deprecated Use `Timer:setEnabled()`.
---@param timer Timer
---@param value boolean
function timer_setEnabled(timer, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTimer.pas#L95
---
--- Pre-6.3 spelling of `Timer:setInterval()`.
---@deprecated Use `Timer:setInterval()`.
---@param timer Timer
---@param value integer
function timer_setInterval(timer, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L42
---
--- Pre-6.3 spelling of `TrackBar:getMax()`.
---@deprecated Use `TrackBar:getMax()`.
---@param trackbar TrackBar
---@return integer
function trackbar_getMax(trackbar) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L62
---
--- Pre-6.3 spelling of `TrackBar:getMin()`.
---@deprecated Use `TrackBar:getMin()`.
---@param trackbar TrackBar
---@return integer
function trackbar_getMin(trackbar) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L83
---
--- Pre-6.3 spelling of `TrackBar:getPosition()`.
---@deprecated Use `TrackBar:getPosition()`.
---@param trackbar TrackBar
---@return integer
function trackbar_getPosition(trackbar) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L112
---
--- Pre-6.3 spelling of `TrackBar:setOnChange()`.
---@deprecated Use `TrackBar:setOnChange()`.
---@param trackbar TrackBar
---@param f CECallback|string
function trackbar_onChange(trackbar, f) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L51
---
--- Pre-6.3 spelling of `TrackBar:setMax()`.
---@deprecated Use `TrackBar:setMax()`.
---@param trackbar TrackBar
---@param value integer
function trackbar_setMax(trackbar, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L71
---
--- Pre-6.3 spelling of `TrackBar:setMin()`.
---@deprecated Use `TrackBar:setMin()`.
---@param trackbar TrackBar
---@param value integer
function trackbar_setMin(trackbar, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaTrackbar.pas#L92
---
--- Pre-6.3 spelling of `TrackBar:setPosition()`.
---@deprecated Use `TrackBar:setPosition()`.
---@param trackbar TrackBar
---@param value integer
function trackbar_setPosition(trackbar, value) end
